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
-- Table structure for table `app1_serviceorder`
--

DROP TABLE IF EXISTS `app1_serviceorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_serviceorder` (
  `service_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `date` date NOT NULL COMMENT 'TRIAL',
  `amount` double NOT NULL COMMENT 'TRIAL',
  `description` varchar(100) NOT NULL COMMENT 'TRIAL',
  `tool_count` int NOT NULL COMMENT 'TRIAL',
  `vendor_id` int NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`service_id`),
  KEY `app1_serviceorder_vendor_id_2230c4c7` (`vendor_id`),
  CONSTRAINT `fk_app1_instrumentmodel_app1_vendor_0` FOREIGN KEY (`vendor_id`) REFERENCES `app1_vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_serviceorder`
--

LOCK TABLES `app1_serviceorder` WRITE;
/*!40000 ALTER TABLE `app1_serviceorder` DISABLE KEYS */;
INSERT INTO `app1_serviceorder` VALUES (6,'2024-03-21',1000,'GOOD',2,1,'T'),(7,'2024-03-19',2000,'Goods',3,1,'T'),(8,'2024-02-19',10001,'GOOD',3,1,'T'),(9,'2024-04-16',10005,'Goodss',3,1,'T'),(17,'2024-04-07',10005,'Service description',2,1,'T'),(18,'2025-03-19',100022,'Goods',3,1,'T'),(19,'2025-03-19',100022,'Goods',3,1,'T'),(20,'2024-04-07',10005,'Service description',2,1,'T'),(21,'2024-04-07',10005,'Service description',2,1,'T'),(22,'2024-04-07',10005,'Service description',2,1,'T'),(23,'2024-05-07',10005,'Service description',2,1,'T');
/*!40000 ALTER TABLE `app1_serviceorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:25
