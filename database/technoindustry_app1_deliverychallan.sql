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
-- Table structure for table `app1_deliverychallan`
--

DROP TABLE IF EXISTS `app1_deliverychallan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_deliverychallan` (
  `deliverychallan_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `received_date` date NOT NULL COMMENT 'TRIAL',
  `service_id` int NOT NULL COMMENT 'TRIAL',
  `shed_id` int NOT NULL COMMENT 'TRIAL',
  `vendor_id` int NOT NULL COMMENT 'TRIAL',
  `trial982` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`deliverychallan_id`),
  KEY `app1_deliverychallan_vendor_id_30ba180a` (`vendor_id`),
  KEY `app1_deliverychallan_shed_id_0cca8d3d` (`shed_id`),
  KEY `app1_deliverychallan_service_id_252cb32e` (`service_id`),
  CONSTRAINT `fk_app1_calibrationreport_app1_serviceorder_2` FOREIGN KEY (`service_id`) REFERENCES `app1_serviceorder` (`service_id`),
  CONSTRAINT `fk_app1_calibrationreport_app1_sheddetails_1` FOREIGN KEY (`shed_id`) REFERENCES `app1_sheddetails` (`shed_id`),
  CONSTRAINT `fk_app1_calibrationreport_app1_vendor_0` FOREIGN KEY (`vendor_id`) REFERENCES `app1_vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_deliverychallan`
--

LOCK TABLES `app1_deliverychallan` WRITE;
/*!40000 ALTER TABLE `app1_deliverychallan` DISABLE KEYS */;
INSERT INTO `app1_deliverychallan` VALUES (17,'2024-03-17',9,3,1,'T'),(18,'2024-03-17',9,3,1,'T'),(19,'2024-03-17',22,3,1,'T'),(20,'2024-03-17',22,3,1,'T'),(21,'2024-03-17',22,3,1,'T'),(27,'2024-03-10',18,3,1,'T'),(29,'2024-03-10',18,3,1,'T'),(30,'2024-03-10',18,3,1,'T'),(31,'2024-03-10',18,3,1,'T'),(32,'2024-03-10',18,3,1,'T'),(33,'2024-03-10',19,2,1,'T'),(34,'2024-03-10',19,2,1,'T'),(35,'2024-03-10',19,2,1,'T'),(41,'2024-03-17',6,1,1,'T'),(50,'2024-03-17',17,3,1,'T');
/*!40000 ALTER TABLE `app1_deliverychallan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:26
