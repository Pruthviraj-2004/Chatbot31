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
-- Table structure for table `app1_vendorhandles`
--

DROP TABLE IF EXISTS `app1_vendorhandles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_vendorhandles` (
  `vendorhandle_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `turnaround_time` int NOT NULL COMMENT 'TRIAL',
  `cost` double NOT NULL COMMENT 'TRIAL',
  `tool_id` int NOT NULL COMMENT 'TRIAL',
  `vendor_id` int NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`vendorhandle_id`),
  KEY `app1_vendorhandles_vendor_id_510fda52` (`vendor_id`),
  KEY `app1_vendorhandles_tool_id_e0231463` (`tool_id`),
  CONSTRAINT `fk_app1_vendor_app1_instrumentmodel_1` FOREIGN KEY (`tool_id`) REFERENCES `app1_instrumentmodel` (`instrument_no`),
  CONSTRAINT `fk_app1_vendor_app1_vendor_0` FOREIGN KEY (`vendor_id`) REFERENCES `app1_vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_vendorhandles`
--

LOCK TABLES `app1_vendorhandles` WRITE;
/*!40000 ALTER TABLE `app1_vendorhandles` DISABLE KEYS */;
INSERT INTO `app1_vendorhandles` VALUES (1,2,100,2,1,'T'),(2,3,45,3,1,'T'),(3,2,50,1,1,'T'),(4,4,45,4,1,'T'),(5,5,56,5,1,'T'),(6,2,67,6,1,'T'),(7,7,60,7,1,'T'),(9,6,80,8,1,'T'),(10,3,100,9,1,'T'),(11,4,90,10,1,'T'),(13,3,90,12,1,'T'),(23,3,345,13,1,'T'),(25,3,34,1,6,'T'),(26,4,45,2,6,'T'),(27,5,65,3,6,'T'),(28,3,65,4,6,'T'),(29,3,45,5,6,'T'),(30,4,42,7,7,'T'),(31,6,76,8,7,'T'),(32,7,54,9,7,'T'),(33,5,28,10,7,'T'),(34,6,45,12,7,'T'),(35,5,45,13,7,'T');
/*!40000 ALTER TABLE `app1_vendorhandles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:24
