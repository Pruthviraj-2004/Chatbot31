from dotenv import load_dotenv
import streamlit as st
import os
from langchain_core.messages import AIMessage, HumanMessage
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_community.utilities import SQLDatabase
from langchain_core.output_parsers import StrOutputParser
from langchain_openai import ChatOpenAI
import matplotlib.pyplot as plt
import pandas as pd

# OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
OPENAI_API_KEY = st.secrets["OPENAI_API_KEY"]

def init_database(user: str, password: str, host: str, port: str, database: str) -> SQLDatabase:

    db_uri = f"mssql+pymssql://{user}:{password}@{host}:{port}/{database}"

    # Initialize SQLDatabase directly with the URI
    return SQLDatabase.from_uri(db_uri)


def get_sql_chain(db):
    template = """
  You are a data analyst at a company. You are interacting with a user who is asking you questions about the company's database.
  Based on the table schema below, write a SQL query that would answer the user's question. Take the conversation history into account.
  
  <SCHEMA>{schema}</SCHEMA>
  
  Conversation History: {chat_history}
  
  Write only the SQL query and nothing else. Do not wrap the SQL query in any other text, not even backticks.
  
  For example:
  Question: which 3 artists have the most tracks?
  SQL Query: SELECT ArtistId, COUNT(*) as track_count FROM Track GROUP BY ArtistId ORDER BY track_count DESC LIMIT 3;
  Question: Name 10 artists
  SQL Query: SELECT Name FROM Artist LIMIT 10;
  
  Your turn:
  
  Question: {question}
  SQL Query:
  """

    prompt = ChatPromptTemplate.from_template(template)

    llm = ChatOpenAI(model="gpt-3.5-turbo", api_key=OPENAI_API_KEY)

    def get_schema(_):
        return db.get_table_info()

    return (
        RunnablePassthrough.assign(schema=get_schema)
        | prompt
        | llm
        | StrOutputParser()
    )


def get_response(user_query: str, db: SQLDatabase, chat_history: list):
    sql_chain = get_sql_chain(db)

    template = """
    You are a data analyst at a company. You are interacting with a user who is asking you questions about the company's database.
    Based on the table schema below, question, sql query, and sql response, write a natural language response.
    <SCHEMA>{schema}</SCHEMA>

    Conversation History: {chat_history}
    SQL Query: <SQL>{query}</SQL>
    User question: {question}
    SQL Response: {response}
    Please Note: "if SQL Response is showing an error give a meaningful message on How to write a prompt that the system would understand based on the error.
    Please give examples of prompt related to user query.
    if there is no error from the sql response then provide the actual result."
    """

    prompt = ChatPromptTemplate.from_template(template)

    llm = ChatOpenAI(model="gpt-3.5-turbo", api_key=OPENAI_API_KEY)

    chain = (
        RunnablePassthrough.assign(query=sql_chain).assign(
            schema=lambda _: db.get_table_info(),
            response=lambda vars: db.run(vars["query"]),
        )
        | prompt
        | llm
        | StrOutputParser()
    )

    # Invoke the chain and get the response
    response = chain.invoke({
        "question": user_query,
        "chat_history": chat_history,
    })

    if "pie chart" in user_query.lower():
        # Extract vendor names and tool counts from the response
        vendors = []
        tool_counts = []
        for line in response.split('\n'):
            elements = line.split(',')
            vendor_name = None
            tool_count = None
            for element in elements:
                if "Vendor Name" in element:
                    try:
                        vendor_name = element.split(": ")[1].strip()  # Extract only the vendor name
                    except IndexError:
                        print("Error extracting vendor name from line:", line)
                elif "Tool Handles" in element:
                    # Extract the tool count using regular expression to find the digits
                    import re
                    try:
                        tool_count = int(re.search(r'\d+', element).group())
                    except AttributeError:
                        print("Error extracting tool count from line:", line)
            # Append vendor name and tool count only if both are extracted successfully
            if vendor_name is not None and tool_count is not None:
                vendors.append(vendor_name)
                tool_counts.append(tool_count)

        print(vendors)
        print(tool_counts)

        if vendors and tool_counts:
            # Display the pie chart
            calculate_pie_chart(vendors, tool_counts)

    return response


def calculate_pie_chart(vendors, tool_counts):
    """
    Generates and displays a pie chart based on the provided vendor names and corresponding tool counts.

    Args:
        vendors (list): List of vendor names.
        tool_counts (list): List of corresponding tool counts for each vendor.
    """

    print("Vendors:", vendors)
    print("Tool Counts:", tool_counts)

    # Create a pie chart
    plt.figure(figsize=(8, 6))
    plt.pie(tool_counts, labels=vendors, autopct='%1.1f%%', startangle=140)
    plt.title('Vendor-wise Distribution of Tools Handled')
    plt.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

    # Display the pie chart
    st.pyplot()


if "chat_history" not in st.session_state:
    st.session_state.chat_history = [
      AIMessage(content="Hello! I'm a SQL assistant. Ask me anything about your database."),
    ]

load_dotenv()

st.set_page_config(page_title="Chat with TechnoRings Database", page_icon=":speech_balloon:")

st.title("Chat with TecnhoRings Database")

with st.sidebar:
    st.subheader("Settings")
    st.write("This is a simple chat application using MySQL. Connect to the database and start chatting.")
    
    st.text_input("Host", value="localhost", key="Host")
    st.text_input("Port", value="3306", key="Port")
    st.text_input("User", value="root", key="User")
    st.text_input("Password", type="password", value="7516", key="Password")
    st.text_input("Database", value="technoindustry", key="Database")
    
    if st.button("Connect"):
        with st.spinner("Connecting to database..."):
            db = init_database(
                st.session_state["User"],
                st.session_state["Password"],
                st.session_state["Host"],
                st.session_state["Port"],
                st.session_state["Database"]
            )
            st.session_state.db = db
            st.success("Connected to database!")

for message in st.session_state.chat_history:
    if isinstance(message, AIMessage):
        with st.chat_message("AI"):
            st.markdown(message.content)
    elif isinstance(message, HumanMessage):
        with st.chat_message("Human"):
            st.markdown(message.content)

user_query = st.chat_input("Type a message...")
if user_query is not None and user_query.strip() != "":
    st.session_state.chat_history.append(HumanMessage(content=user_query))
    
    with st.chat_message("Human"):
        st.markdown(user_query)
        
    with st.chat_message("AI"):
        response = get_response(user_query, st.session_state.db, st.session_state.chat_history)
        st.markdown(response)
        
    st.session_state.chat_history.append(AIMessage(content=response))
   