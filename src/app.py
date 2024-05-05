import traceback
from dotenv import load_dotenv
from langchain_core.messages import AIMessage, HumanMessage
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_community.utilities import SQLDatabase
from langchain_core.output_parsers import StrOutputParser
from langchain_openai import ChatOpenAI
from langchain_groq import ChatGroq
import streamlit as st

# def init_database(user: str, password: str, host: str, port: str, database: str) -> SQLDatabase:
#   db_uri = f"mysql+mysqlconnector://{user}:{password}@{host}:{port}/{database}"
#   return SQLDatabase.from_uri(db_uri)

def init_database() -> SQLDatabase:
  db_uri = "mysql+mysqlconnector://sql6704164:9BUqrKUvx1@sql6.freesqldatabase.com:3306/sql6704164"
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
  llm = ChatOpenAI(model="gpt-3.5-turbo", api_key="sk-proj-fzSeeXdcEINyG09yeUULT3BlbkFJXbWuka1ZPks9j5LVRqrZ")

  # llm = ChatOpenAI(model="gpt-3.5-1106")
  # gpt-3.5-turbo-0125
  # llm = ChatGroq(model="mixtral-8x7b-32768", temperature=0)
  
  def get_schema(_):
    return db.get_table_info()
  
  return (
    RunnablePassthrough.assign(schema=get_schema)
    | prompt
    | llm
    | StrOutputParser()
  )
    
# def get_response(user_query: str, db: SQLDatabase, chat_history: list):
#   sql_chain = get_sql_chain(db)
  
#   template = """
#     You are a data analyst at a company. You are interacting with a user who is asking you questions about the company's database.
#     Based on the table schema below, question, sql query, and sql response, write a natural language response.
#     <SCHEMA>{schema}</SCHEMA>

#     Conversation History: {chat_history}
#     SQL Query: <SQL>{query}</SQL>
#     User question: {question}
#     SQL Response: {response}
#     Please Note: "if SQL Response is showing an error give a meaningful message on How to write a prompt that the system would understand based on the error.
#     Please give examples of prompt related to user query.
#     if there is no error from the sql response then provide the actual result."
#     """
  
#   prompt = ChatPromptTemplate.from_template(template)
#   print(prompt)
  
#   llm = ChatOpenAI(model="gpt-3.5-turbo-0125", api_key="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")
#   # llm = ChatOpenAI(model="gpt-3.5-1106")
#   # llm = ChatGroq(model="mixtral-8x7b-32768", temperature=0)
  
#   chain = (
#     RunnablePassthrough.assign(query=sql_chain).assign(
#       schema=lambda _: db.get_table_info(),
#       response=lambda vars: db.run(vars["query"]),
#     )
#     | prompt
#     | llm
#     | StrOutputParser()
#   )
  
#   return chain.invoke({
#     "question": user_query,
#     "chat_history": chat_history,
#   })
    
def get_response(user_query: str, db: SQLDatabase, chat_history: list):
    try:
        sql_chain = get_sql_chain(db)
        
        template = """
            You are a data analyst at a company. You are interacting with a user who is asking you questions about the company's database.
            Based on the table schema below, question, sql query, and sql response, write a natural language response.
            <SCHEMA>{schema}</SCHEMA>
        
            Conversation History: {chat_history}
            SQL Query: <SQL>{query}</SQL>
            User question: {question}
            SQL Response: {response}
            Please Note: If the SQL Response is showing an error, provide a meaningful message on how to write a prompt that the system would understand based on the error.
            """
        
        prompt = ChatPromptTemplate.from_template(template)
        llm = ChatOpenAI(model="gpt-3.5-turbo", api_key="sk-proj-fzSeeXdcEINyG09yeUULT3BlbkFJXbWuka1ZPks9j5LVRqrZ")

        
        chain = (
            RunnablePassthrough.assign(query=sql_chain).assign(
                schema=lambda _: db.get_table_info(),
                response=lambda vars: db.run(vars["query"]),
            )
            | prompt
            | llm
            | StrOutputParser()
        )
        
        return chain.invoke({
            "question": user_query,
            "chat_history": chat_history,
        })
    
    except Exception as e:
        # Provide user-friendly feedback for SQL errors
        error_message = str(e)
        if "foreign key constraint" in error_message.lower():
            return "Sorry, I couldn't delete the vendor because it is associated with other data in the system. Please remove any associated data first, and then try again."
        else:
            return "Sorry, something went wrong while processing your request. Please try again or contact support for assistance."

  
if "chat_history" not in st.session_state:
    st.session_state.chat_history = [
      AIMessage(content="Hello! I'm a SQL assistant. Ask me anything about your database."),
    ]

load_dotenv()

st.set_page_config(page_title="Chat with MySQL", page_icon=":speech_balloon:")

st.title("Chat with MySQL")

with st.sidebar:
#     st.subheader("Settings")
#     st.write("This is a simple chat application using MySQL. Connect to the database and start chatting.")
    
#     st.text_input("Host", value="localhost", key="Host")
#     st.text_input("Port", value="3306", key="Port")
#     st.text_input("User", value="root", key="User")
#     st.text_input("Password", type="password", value="7516", key="Password")
#     st.text_input("Database", value="ipl_prediction", key="Database")
    
#     if st.button("Connect"):
#         with st.spinner("Connecting to database..."):
#             db = init_database(
#                 st.session_state["User"],
#                 st.session_state["Password"],
#                 st.session_state["Host"],
#                 st.session_state["Port"],
#                 st.session_state["Database"]
#             )
#             st.session_state.db = db
#             st.success("Connected to database!")

      db = init_database()
      st.session_state.db = db

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
