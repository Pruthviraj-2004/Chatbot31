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
-- Table structure for table `app1_calibrationreport`
--

DROP TABLE IF EXISTS `app1_calibrationreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_calibrationreport` (
  `calibrationtool_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `calibration_date` date NOT NULL COMMENT 'TRIAL',
  `calibration_report_no` varchar(32) NOT NULL COMMENT 'TRIAL',
  `calibration_agency` varchar(32) NOT NULL COMMENT 'TRIAL',
  `result` float NOT NULL COMMENT 'TRIAL',
  `action` varchar(16) NOT NULL COMMENT 'TRIAL',
  `next_calibration_date` date NOT NULL COMMENT 'TRIAL',
  `remark` longtext NOT NULL COMMENT 'TRIAL',
  `calibration_tool_id` int NOT NULL COMMENT 'TRIAL',
  `notification_date` date NOT NULL COMMENT 'TRIAL',
  `calibration_report_file` varchar(250) DEFAULT NULL COMMENT 'TRIAL',
  `trial982` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`calibrationtool_id`),
  KEY `app1_calibrationreport_calibration_tool_id_9142b981` (`calibration_tool_id`),
  CONSTRAINT `fk_sqlite_master_app1_instrumentmodel_0` FOREIGN KEY (`calibration_tool_id`) REFERENCES `app1_instrumentmodel` (`instrument_no`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_calibrationreport`
--

LOCK TABLES `app1_calibrationreport` WRITE;
/*!40000 ALTER TABLE `app1_calibrationreport` DISABLE KEYS */;
INSERT INTO `app1_calibrationreport` VALUES (1,'2024-03-30','MMS/1217/013-M12','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-03-30','Ok',6,'2024-03-20','samplereport.txt','T'),(2,'2024-03-23','MMS/1217/013-M123','WAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2024-04-23','okkk',1,'2024-04-23','samplereport.txt','T'),(4,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-03-23','okkk',6,'2024-03-20','samplereport.txt','T'),(6,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-03-25','okkk',12,'2024-03-20','samplereport.txt','T'),(7,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2024-04-23','okkk',12,'2024-04-23','samplereport.txt','T'),(8,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2026-03-23','okkk',12,'2025-03-20','samplereport.txt','T'),(9,'2024-03-23','MMS/1217/013-M123','WAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2026-03-23','okkk',12,'2026-03-20','samplereport.txt','T'),(11,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2026-03-23','okkk',12,'2026-03-20','samplereport.txt','T'),(12,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2026-03-23','okkk',12,'2026-03-20','samplereport.txt','T'),(13,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-03-23','okkk',1,'2025-03-21','samplereport.txt','T'),(15,'2024-03-30','MMS/1217/013-M123','WAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-03-30','okkk',8,'2025-03-24','samplereport.txt','T'),(18,'2024-03-23','MMS/1217/013-M1234','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2024-04-23','okkk',10,'2024-04-23','samplereport.txt','T'),(19,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2024-04-23','okkk',8,'2024-04-23','samplereport.txt','T'),(20,'2024-04-23','MMS/1217/013-M12345','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2024-04-23','okkk',13,'2024-04-23','calibration_reports/Resume_3.pdf','T'),(21,'2024-04-23','MMS/1217/013-M12345','WAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-04-23','okkk',5,'2025-04-18','samplereport.txt','T'),(28,'2024-03-23','MMS/1217/013-M123','MICROWAVE MEASUREMENT SOLUTION',65.9,'ACCEPTABLE','2025-03-23','okkk',10,'2025-03-19','calibration_reports/Resume_1.pdf','T');
/*!40000 ALTER TABLE `app1_calibrationreport` ENABLE KEYS */;
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
