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
-- Table structure for table `app1_deliverychallantools`
--

DROP TABLE IF EXISTS `app1_deliverychallantools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_deliverychallantools` (
  `deliverychallantool_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `deliverychallan_id` int NOT NULL COMMENT 'TRIAL',
  `tool_id` int NOT NULL COMMENT 'TRIAL',
  `calibration_report_id` int DEFAULT NULL COMMENT 'TRIAL',
  `trial982` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`deliverychallantool_id`),
  KEY `app1_deliverychallantools_calibration_report_id_711f84a8` (`calibration_report_id`),
  KEY `app1_deliverychallantools_tool_id_ab423804` (`tool_id`),
  KEY `app1_deliverychallantools_deliverychallan_id_b5e57fc4` (`deliverychallan_id`),
  CONSTRAINT `fk_app1_deliverychallan_app1_calibrationreport_0` FOREIGN KEY (`calibration_report_id`) REFERENCES `app1_calibrationreport` (`calibrationtool_id`),
  CONSTRAINT `fk_app1_deliverychallan_app1_deliverychallan_2` FOREIGN KEY (`deliverychallan_id`) REFERENCES `app1_deliverychallan` (`deliverychallan_id`),
  CONSTRAINT `fk_app1_deliverychallan_app1_instrumentmodel_1` FOREIGN KEY (`tool_id`) REFERENCES `app1_instrumentmodel` (`instrument_no`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_deliverychallantools`
--

LOCK TABLES `app1_deliverychallantools` WRITE;
/*!40000 ALTER TABLE `app1_deliverychallantools` DISABLE KEYS */;
INSERT INTO `app1_deliverychallantools` VALUES (18,18,12,6,'T'),(19,19,12,7,'T'),(20,20,12,8,'T'),(21,21,12,9,'T'),(33,41,8,19,'T'),(42,50,10,28,'T');
/*!40000 ALTER TABLE `app1_deliverychallantools` ENABLE KEYS */;
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
