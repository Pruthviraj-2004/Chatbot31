-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: technoindustry
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app1_shedtools`
--

DROP TABLE IF EXISTS `app1_shedtools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_shedtools` (
  `shedtool_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `shed_id` int NOT NULL COMMENT 'TRIAL',
  `using_tool_id` int NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`shedtool_id`),
  KEY `app1_shedtools_using_tool_id_addee977` (`using_tool_id`),
  KEY `app1_shedtools_shed_id_367e9af7` (`shed_id`),
  CONSTRAINT `fk_app1_sheddetails_app1_instrumentmodel_0` FOREIGN KEY (`using_tool_id`) REFERENCES `app1_instrumentmodel` (`instrument_no`),
  CONSTRAINT `fk_app1_sheddetails_app1_sheddetails_1` FOREIGN KEY (`shed_id`) REFERENCES `app1_sheddetails` (`shed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_shedtools`
--

LOCK TABLES `app1_shedtools` WRITE;
/*!40000 ALTER TABLE `app1_shedtools` DISABLE KEYS */;
INSERT INTO `app1_shedtools` VALUES (1,2,2,'T'),(2,2,6,'T'),(3,1,4,'T'),(4,3,1,'T'),(5,1,5,'T'),(6,1,1,'T'),(7,4,12,'T'),(9,4,7,'T'),(10,3,8,'T'),(12,4,9,'T'),(13,4,10,'T'),(14,4,6,'T');
/*!40000 ALTER TABLE `app1_shedtools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:23
