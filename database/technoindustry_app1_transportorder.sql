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
-- Table structure for table `app1_transportorder`
--

DROP TABLE IF EXISTS `app1_transportorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_transportorder` (
  `movement_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `movement_date` date NOT NULL COMMENT 'TRIAL',
  `acknowledgment` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `tool_count` int NOT NULL COMMENT 'TRIAL',
  `destination_shed_id` int NOT NULL COMMENT 'TRIAL',
  `source_shed_id` int NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`movement_id`),
  KEY `app1_transportorder_source_shed_id_d573bf8d` (`source_shed_id`),
  KEY `app1_transportorder_destination_shed_id_c8e9b67b` (`destination_shed_id`),
  CONSTRAINT `fk_app1_shedtools_app1_sheddetails_0` FOREIGN KEY (`source_shed_id`) REFERENCES `app1_sheddetails` (`shed_id`),
  CONSTRAINT `fk_app1_shedtools_app1_sheddetails_1` FOREIGN KEY (`destination_shed_id`) REFERENCES `app1_sheddetails` (`shed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_transportorder`
--

LOCK TABLES `app1_transportorder` WRITE;
/*!40000 ALTER TABLE `app1_transportorder` DISABLE KEYS */;
INSERT INTO `app1_transportorder` VALUES (1,'2024-03-16',0,2,3,1,'T'),(2,'2024-03-17',1,3,6,6,'T'),(3,'2024-03-18',0,4,6,1,'T'),(4,'2024-03-18',0,6,4,2,'T'),(5,'2024-03-18',0,6,4,2,'T'),(6,'2024-03-20',0,2,5,2,'T'),(7,'2024-03-31',0,5,2,1,'T'),(8,'2024-04-16',0,3,6,1,'T'),(11,'2024-03-07',1,1,2,1,'T'),(12,'2024-03-07',1,1,4,1,'T'),(13,'2024-04-07',0,2,3,1,'T'),(14,'2024-04-16',0,3,2,1,'T'),(15,'2024-03-18',0,3,6,1,'T'),(16,'2024-03-18',0,3,4,1,'T'),(17,'2024-03-18',0,3,4,1,'T'),(18,'2024-03-18',0,3,4,6,'T'),(19,'2024-03-18',0,3,5,4,'T'),(20,'2024-03-18',1,3,1,5,'T'),(25,'2024-03-18',1,3,4,1,'T'),(26,'2024-04-04',1,3,6,4,'T'),(27,'2024-04-04',1,3,4,6,'T'),(28,'2024-04-04',1,3,5,4,'T'),(29,'2024-04-04',1,3,1,5,'T');
/*!40000 ALTER TABLE `app1_transportorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:22
