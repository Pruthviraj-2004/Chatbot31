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
-- Table structure for table `app1_instrumentmodel`
--

DROP TABLE IF EXISTS `app1_instrumentmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_instrumentmodel` (
  `instrument_no` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `instrument_name` varchar(16) NOT NULL COMMENT 'TRIAL',
  `manufacturer_name` varchar(24) DEFAULT NULL COMMENT 'TRIAL',
  `year_of_purchase` date NOT NULL COMMENT 'TRIAL',
  `gst` smallint NOT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `instrument_range` varchar(16) DEFAULT NULL COMMENT 'TRIAL',
  `least_count` varchar(8) DEFAULT NULL COMMENT 'TRIAL',
  `calibration_frequency` int NOT NULL COMMENT 'TRIAL',
  `type_of_tool_id` int NOT NULL COMMENT 'TRIAL',
  `service_status` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`instrument_no`),
  KEY `app1_instrumentmodel_type_of_tool_id_7bdb85b0` (`type_of_tool_id`),
  CONSTRAINT `fk_app1_instrumentgroupmaster_app1_instrumentgroupmaster_0` FOREIGN KEY (`type_of_tool_id`) REFERENCES `app1_instrumentgroupmaster` (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_instrumentmodel`
--

LOCK TABLES `app1_instrumentmodel` WRITE;
/*!40000 ALTER TABLE `app1_instrumentmodel` DISABLE KEYS */;
INSERT INTO `app1_instrumentmodel` VALUES (1,'TR/APG/01','BAKER','2026-03-16',18,'GOOD','72.953','0.1',1,4,1,'T'),(2,'TR/APG/02','INNOVATIVE','2020-03-16',16,NULL,'84.97',NULL,1,4,0,'T'),(3,'TR/ARG/01','BAKER','2021-03-16',18,'GOOD','72.953',NULL,1,5,0,'T'),(4,'TR/B2/VC/01','MITUTOYO','2022-03-16',18,NULL,'0-300MM','0.02',1,2,0,'T'),(5,'TR/B2/VC/04',NULL,'2016-03-16',18,NULL,'0-600MM','0.02',1,2,0,'T'),(6,'TR/D9/DMM/01','INSIZE','2021-03-16',18,NULL,'0-25MM','0.01',1,1,1,'T'),(7,'TR/D9/MM/04','MITUTOYO','2024-03-17',15,NULL,'25-50 MM','0.01',1,6,0,'T'),(8,'TR/QC/MM/09',NULL,'2024-03-17',17,NULL,'0-25MM','0.01',1,6,1,'T'),(9,'SB/BMM/01',NULL,'2024-03-17',13,NULL,'100-125MM','0.01',1,7,1,'T'),(10,'SB/BMM/02',NULL,'2024-03-17',15,NULL,'75-100MM',NULL,1,7,1,'T'),(12,'TR/MM/13','MITUTOYO','2024-03-17',13,NULL,'25-50 MM','0.001',2,8,1,'T'),(13,'TR/SURTES/01','MITUTOYO','2024-03-30',14,NULL,NULL,NULL,2,10,1,'T');
/*!40000 ALTER TABLE `app1_instrumentmodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:21
