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

--
-- Table structure for table `app1_instrumentfamilygroup`
--

DROP TABLE IF EXISTS `app1_instrumentfamilygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_instrumentfamilygroup` (
  `instrumentfamilyid` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `instrument_family_name` varchar(24) NOT NULL COMMENT 'TRIAL',
  `instrument_group_master_id` int NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`instrumentfamilyid`),
  KEY `app1_instrumentfamilygroup_instrument_group_master_id_fd682a35` (`instrument_group_master_id`),
  CONSTRAINT `fk_app1_deliverychallantools_app1_instrumentgroupmaster_0` FOREIGN KEY (`instrument_group_master_id`) REFERENCES `app1_instrumentgroupmaster` (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_instrumentfamilygroup`
--

LOCK TABLES `app1_instrumentfamilygroup` WRITE;
/*!40000 ALTER TABLE `app1_instrumentfamilygroup` DISABLE KEYS */;
INSERT INTO `app1_instrumentfamilygroup` VALUES (1,'MICROMETER',1,'T'),(2,'MICROMETER',8,'T'),(3,'MICROMETER',7,'T'),(4,'MICROMETER',7,'T'),(5,'GAUGE',4,'T'),(6,'GAUGE',5,'T'),(7,'TESTER',10,'T'),(18,'MICROMETER',1,'T'),(19,'MICROMETER',8,'T');
/*!40000 ALTER TABLE `app1_instrumentfamilygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_instrumentgroupmaster`
--

DROP TABLE IF EXISTS `app1_instrumentgroupmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_instrumentgroupmaster` (
  `tool_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `tool_group_name` varchar(24) NOT NULL COMMENT 'TRIAL',
  `tool_group_code` varchar(8) NOT NULL COMMENT 'TRIAL',
  `instrument_type` varchar(16) NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_instrumentgroupmaster`
--

LOCK TABLES `app1_instrumentgroupmaster` WRITE;
/*!40000 ALTER TABLE `app1_instrumentgroupmaster` DISABLE KEYS */;
INSERT INTO `app1_instrumentgroupmaster` VALUES (1,'DEPTH MICROMETER','DMM','INSTRUMENT','T'),(2,'VERNIER CALIPER','VC','INSTRUMENT','T'),(3,'AIR GAUGE UNIT','AGU','INSTRUMENT','T'),(4,'AIR PLUG GAUGE','APG','INSTRUMENT','T'),(5,'AIR RING GAUGE','ARG','INSTRUMENT','T'),(6,'BALL MICROMETER','MM','INSTRUMENT','T'),(7,'BLADE MICROMETER','BMM','INSTRUMENT','T'),(8,'DIGITAL MICROMETER','DMMM','INSTRUMENT','T'),(9,'BEVEL PROTRACTOR','PRO','INSTRUMENT','T'),(10,'SURFACE TESTER MASTER','SURTES','INSTRUMENT','T');
/*!40000 ALTER TABLE `app1_instrumentgroupmaster` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `app1_servicetools`
--

DROP TABLE IF EXISTS `app1_servicetools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_servicetools` (
  `servicetool_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `service_id` int NOT NULL COMMENT 'TRIAL',
  `tool_id` int NOT NULL COMMENT 'TRIAL',
  `vendor_id` int NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`servicetool_id`),
  UNIQUE KEY `app1_servicetools_service_id_tool_id_vendor_id_8e42e5b6_uniq` (`service_id`,`tool_id`,`vendor_id`),
  KEY `app1_servicetools_vendor_id_b13432e3` (`vendor_id`),
  KEY `app1_servicetools_tool_id_468d95e1` (`tool_id`),
  KEY `app1_servicetools_service_id_a2245c25` (`service_id`),
  CONSTRAINT `fk_app1_serviceorder_app1_instrumentmodel_1` FOREIGN KEY (`tool_id`) REFERENCES `app1_instrumentmodel` (`instrument_no`),
  CONSTRAINT `fk_app1_serviceorder_app1_serviceorder_2` FOREIGN KEY (`service_id`) REFERENCES `app1_serviceorder` (`service_id`),
  CONSTRAINT `fk_app1_serviceorder_app1_vendor_0` FOREIGN KEY (`vendor_id`) REFERENCES `app1_vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_servicetools`
--

LOCK TABLES `app1_servicetools` WRITE;
/*!40000 ALTER TABLE `app1_servicetools` DISABLE KEYS */;
INSERT INTO `app1_servicetools` VALUES (1,6,1,1,'T'),(2,6,2,1,'T'),(3,8,1,1,'T'),(4,8,2,1,'T'),(5,8,3,1,'T'),(6,9,6,1,'T'),(7,9,7,1,'T'),(8,9,8,1,'T'),(11,17,1,1,'T'),(12,17,2,1,'T'),(13,18,5,1,'T'),(14,18,7,1,'T'),(15,18,10,1,'T'),(16,19,5,1,'T'),(17,19,7,1,'T'),(18,19,10,1,'T'),(19,20,1,1,'T'),(20,20,2,1,'T'),(21,21,1,1,'T'),(22,21,2,1,'T'),(23,22,1,1,'T'),(24,22,2,1,'T'),(25,23,1,1,'T'),(26,23,2,1,'T');
/*!40000 ALTER TABLE `app1_servicetools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_sheddetails`
--

DROP TABLE IF EXISTS `app1_sheddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_sheddetails` (
  `shed_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `name` varchar(24) NOT NULL COMMENT 'TRIAL',
  `location` varchar(16) NOT NULL COMMENT 'TRIAL',
  `phone_number` varchar(10) NOT NULL COMMENT 'TRIAL',
  `trial985` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`shed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_sheddetails`
--

LOCK TABLES `app1_sheddetails` WRITE;
/*!40000 ALTER TABLE `app1_sheddetails` DISABLE KEYS */;
INSERT INTO `app1_sheddetails` VALUES (1,'D9-MCSHOP','Banglore','8888888888','T'),(2,'B5-MCSHOP','SHIMOGA','7777777777','T'),(3,'SBI','Banglore','7777777778','T'),(4,'QA','Manglore','7777777888','T'),(5,'QA CMM LAB','Udupi','9999988888','T'),(6,'Stock','Mysore','6666699999','T');
/*!40000 ALTER TABLE `app1_sheddetails` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `app1_transporttools`
--

DROP TABLE IF EXISTS `app1_transporttools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_transporttools` (
  `transporttool_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `tool_id` int NOT NULL COMMENT 'TRIAL',
  `transport_id` int NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`transporttool_id`),
  UNIQUE KEY `app1_transporttools_transport_id_tool_id_431fe1c7_uniq` (`transport_id`,`tool_id`),
  KEY `app1_transporttools_transport_id_ba1f9a2e` (`transport_id`),
  KEY `app1_transporttools_tool_id_8302848b` (`tool_id`),
  CONSTRAINT `fk_app1_transportorder_app1_instrumentmodel_1` FOREIGN KEY (`tool_id`) REFERENCES `app1_instrumentmodel` (`instrument_no`),
  CONSTRAINT `fk_app1_transportorder_app1_transportorder_0` FOREIGN KEY (`transport_id`) REFERENCES `app1_transportorder` (`movement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_transporttools`
--

LOCK TABLES `app1_transporttools` WRITE;
/*!40000 ALTER TABLE `app1_transporttools` DISABLE KEYS */;
INSERT INTO `app1_transporttools` VALUES (1,1,1,'T'),(2,2,1,'T'),(3,12,2,'T'),(4,10,2,'T'),(5,5,2,'T'),(7,5,3,'T'),(8,8,3,'T'),(9,2,3,'T'),(10,2,4,'T'),(11,4,4,'T'),(12,7,4,'T'),(13,9,4,'T'),(15,2,5,'T'),(16,4,5,'T'),(17,7,5,'T'),(18,9,5,'T'),(20,1,6,'T'),(21,2,6,'T'),(22,3,6,'T'),(23,4,6,'T'),(24,5,6,'T'),(25,1,7,'T'),(26,2,7,'T'),(27,3,7,'T'),(28,4,7,'T'),(29,6,7,'T'),(30,1,8,'T'),(31,4,8,'T'),(32,5,8,'T'),(39,1,13,'T'),(40,2,13,'T'),(41,1,14,'T'),(42,4,14,'T'),(43,6,14,'T'),(44,4,15,'T'),(45,5,15,'T'),(46,12,15,'T'),(47,4,16,'T'),(48,5,16,'T'),(49,12,16,'T'),(50,4,17,'T'),(51,5,17,'T'),(52,12,17,'T'),(53,4,18,'T'),(54,5,18,'T'),(55,12,18,'T'),(56,4,19,'T'),(57,5,19,'T'),(58,12,19,'T'),(59,4,20,'T'),(60,5,20,'T'),(73,1,25,'T'),(74,4,25,'T'),(75,5,25,'T'),(76,1,26,'T'),(77,4,26,'T'),(78,5,26,'T'),(79,1,27,'T'),(80,4,27,'T'),(81,5,27,'T'),(82,1,28,'T'),(83,4,28,'T'),(84,5,28,'T'),(85,1,29,'T'),(86,4,29,'T'),(87,5,29,'T');
/*!40000 ALTER TABLE `app1_transporttools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_vendor`
--

DROP TABLE IF EXISTS `app1_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_vendor` (
  `vendor_id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `name` varchar(24) NOT NULL COMMENT 'TRIAL',
  `location` varchar(16) NOT NULL COMMENT 'TRIAL',
  `address` varchar(64) NOT NULL COMMENT 'TRIAL',
  `phone_number` varchar(10) NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_vendor`
--

LOCK TABLES `app1_vendor` WRITE;
/*!40000 ALTER TABLE `app1_vendor` DISABLE KEYS */;
INSERT INTO `app1_vendor` VALUES (1,'Pruthviraj','Bengaluru','S-16, ARYABHATTA BLOCK, MSR NAGAR, MATTHIKERE','7353647516','T'),(6,'VTest1','Banglore','abc','2345678909','T'),(7,'VTest2','Banglore','abcd','5678765467','T');
/*!40000 ALTER TABLE `app1_vendor` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `name` varchar(150) NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `group_id` int NOT NULL COMMENT 'TRIAL',
  `permission_id` int NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  CONSTRAINT `fk_auth_group_auth_group_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fk_auth_group_auth_permission_0` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `content_type_id` int NOT NULL COMMENT 'TRIAL',
  `codename` varchar(100) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`),
  CONSTRAINT `fk_auth_group_permissions_django_content_type_0` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry','T'),(2,1,'change_logentry','Can change log entry','T'),(3,1,'delete_logentry','Can delete log entry','T'),(4,1,'view_logentry','Can view log entry','T'),(5,2,'add_permission','Can add permission','T'),(6,2,'change_permission','Can change permission','T'),(7,2,'delete_permission','Can delete permission','T'),(8,2,'view_permission','Can view permission','T'),(9,3,'add_group','Can add group','T'),(10,3,'change_group','Can change group','T'),(11,3,'delete_group','Can delete group','T'),(12,3,'view_group','Can view group','T'),(13,4,'add_user','Can add user','T'),(14,4,'change_user','Can change user','T'),(15,4,'delete_user','Can delete user','T'),(16,4,'view_user','Can view user','T'),(17,5,'add_contenttype','Can add content type','T'),(18,5,'change_contenttype','Can change content type','T'),(19,5,'delete_contenttype','Can delete content type','T'),(20,5,'view_contenttype','Can view content type','T'),(21,6,'add_session','Can add session','T'),(22,6,'change_session','Can change session','T'),(23,6,'delete_session','Can delete session','T'),(24,6,'view_session','Can view session','T'),(25,7,'add_instrumentgroupmaster','Can add instrument group master','T'),(26,7,'change_instrumentgroupmaster','Can change instrument group master','T'),(27,7,'delete_instrumentgroupmaster','Can delete instrument group master','T'),(28,7,'view_instrumentgroupmaster','Can view instrument group master','T'),(29,8,'add_instrumentmodel','Can add instrument model','T'),(30,8,'change_instrumentmodel','Can change instrument model','T'),(31,8,'delete_instrumentmodel','Can delete instrument model','T'),(32,8,'view_instrumentmodel','Can view instrument model','T'),(33,9,'add_sheddetails','Can add shed details','T'),(34,9,'change_sheddetails','Can change shed details','T'),(35,9,'delete_sheddetails','Can delete shed details','T'),(36,9,'view_sheddetails','Can view shed details','T'),(37,10,'add_shedtools','Can add shed tools','T'),(38,10,'change_shedtools','Can change shed tools','T'),(39,10,'delete_shedtools','Can delete shed tools','T'),(40,10,'view_shedtools','Can view shed tools','T'),(41,11,'add_instrumentreport','Can add instrument report','T'),(42,11,'change_instrumentreport','Can change instrument report','T'),(43,11,'delete_instrumentreport','Can delete instrument report','T'),(44,11,'view_instrumentreport','Can view instrument report','T'),(45,12,'add_toolmovement','Can add tool movement','T'),(46,12,'change_toolmovement','Can change tool movement','T'),(47,12,'delete_toolmovement','Can delete tool movement','T'),(48,12,'view_toolmovement','Can view tool movement','T'),(49,13,'add_acceptancependinglist','Can add acceptance pending list','T'),(50,13,'change_acceptancependinglist','Can change acceptance pending list','T'),(51,13,'delete_acceptancependinglist','Can delete acceptance pending list','T'),(52,13,'view_acceptancependinglist','Can view acceptance pending list','T'),(53,14,'add_serviceorder','Can add service order','T'),(54,14,'change_serviceorder','Can change service order','T'),(55,14,'delete_serviceorder','Can delete service order','T'),(56,14,'view_serviceorder','Can view service order','T'),(57,15,'add_servicetools','Can add service tools','T'),(58,15,'change_servicetools','Can change service tools','T'),(59,15,'delete_servicetools','Can delete service tools','T'),(60,15,'view_servicetools','Can view service tools','T'),(61,16,'add_transportorder','Can add transport order','T'),(62,16,'change_transportorder','Can change transport order','T'),(63,16,'delete_transportorder','Can delete transport order','T'),(64,16,'view_transportorder','Can view transport order','T'),(65,17,'add_transporttools','Can add transport tools','T'),(66,17,'change_transporttools','Can change transport tools','T'),(67,17,'delete_transporttools','Can delete transport tools','T'),(68,17,'view_transporttools','Can view transport tools','T'),(69,18,'add_vendor','Can add vendor','T'),(70,18,'change_vendor','Can change vendor','T'),(71,18,'delete_vendor','Can delete vendor','T'),(72,18,'view_vendor','Can view vendor','T'),(73,19,'add_vendorsent','Can add vendor sent','T'),(74,19,'change_vendorsent','Can change vendor sent','T'),(75,19,'delete_vendorsent','Can delete vendor sent','T'),(76,19,'view_vendorsent','Can view vendor sent','T'),(77,20,'add_vendorreceived','Can add vendor received','T'),(78,20,'change_vendorreceived','Can change vendor received','T'),(79,20,'delete_vendorreceived','Can delete vendor received','T'),(80,20,'view_vendorreceived','Can view vendor received','T'),(81,21,'add_vendorhandles','Can add vendor handles','T'),(82,21,'change_vendorhandles','Can change vendor handles','T'),(83,21,'delete_vendorhandles','Can delete vendor handles','T'),(84,21,'view_vendorhandles','Can view vendor handles','T'),(85,22,'add_instrumentfamilygroup','Can add instrument family group','T'),(86,22,'change_instrumentfamilygroup','Can change instrument family group','T'),(87,22,'delete_instrumentfamilygroup','Can delete instrument family group','T'),(88,22,'view_instrumentfamilygroup','Can view instrument family group','T'),(89,23,'add_deliverychallan','Can add delivery challan','T'),(90,23,'change_deliverychallan','Can change delivery challan','T'),(91,23,'delete_deliverychallan','Can delete delivery challan','T'),(92,23,'view_deliverychallan','Can view delivery challan','T'),(93,24,'add_deliverychallantools','Can add delivery challan tools','T'),(94,24,'change_deliverychallantools','Can change delivery challan tools','T'),(95,24,'delete_deliverychallantools','Can delete delivery challan tools','T'),(96,24,'view_deliverychallantools','Can view delivery challan tools','T'),(97,25,'add_calibrationreport','Can add calibration report','T'),(98,25,'change_calibrationreport','Can change calibration report','T'),(99,25,'delete_calibrationreport','Can delete calibration report','T'),(100,25,'view_calibrationreport','Can view calibration report','T'),(101,26,'add_instrumenttransporthistory','Can add instrument transport history','T'),(102,26,'change_instrumenttransporthistory','Can change instrument transport history','T'),(103,26,'delete_instrumenttransporthistory','Can delete instrument transport history','T'),(104,26,'view_instrumenttransporthistory','Can view instrument transport history','T'),(105,27,'add_news','Can add news','T'),(106,27,'change_news','Can change news','T'),(107,27,'delete_news','Can delete news','T'),(108,27,'view_news','Can view news','T');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `password` varchar(128) NOT NULL COMMENT 'TRIAL',
  `last_login` datetime DEFAULT NULL COMMENT 'TRIAL',
  `is_superuser` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `username` varchar(150) NOT NULL COMMENT 'TRIAL',
  `last_name` varchar(150) NOT NULL COMMENT 'TRIAL',
  `email` varchar(254) NOT NULL COMMENT 'TRIAL',
  `is_staff` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `is_active` tinyint(1) NOT NULL COMMENT 'TRIAL',
  `date_joined` datetime NOT NULL COMMENT 'TRIAL',
  `first_name` varchar(150) NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$Z3uRRchHgiKxn9MpeoUx66$I2zKUMFq88KkiQyB4tQhV+9PC+K/Ge9o5YPdEX2g0l0=','2024-04-23 08:03:00',1,'admin5','','',1,1,'2024-03-16 05:16:42','','T');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `user_id` int NOT NULL COMMENT 'TRIAL',
  `group_id` int NOT NULL COMMENT 'TRIAL',
  `trial989` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  CONSTRAINT `fk_auth_user_auth_group_0` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fk_auth_user_auth_user_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `user_id` int NOT NULL COMMENT 'TRIAL',
  `permission_id` int NOT NULL COMMENT 'TRIAL',
  `trial992` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  CONSTRAINT `fk_auth_user_groups_auth_permission_0` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `fk_auth_user_groups_auth_user_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `object_id` longtext COMMENT 'TRIAL',
  `object_repr` varchar(200) NOT NULL COMMENT 'TRIAL',
  `action_flag` smallint NOT NULL COMMENT 'TRIAL',
  `change_message` longtext NOT NULL COMMENT 'TRIAL',
  `content_type_id` int DEFAULT NULL COMMENT 'TRIAL',
  `user_id` int NOT NULL COMMENT 'TRIAL',
  `action_time` datetime NOT NULL COMMENT 'TRIAL',
  `trial992` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  CONSTRAINT `fk_auth_user_user_permissions_auth_user_0` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `fk_auth_user_user_permissions_django_content_type_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'1','InstrumentGroupMaster object (1)',1,'[{\"added\": {}}]',7,1,'2024-03-16 05:23:28','T'),(2,'1','InstrumentGroupMaster object (1)',3,'',7,1,'2024-03-16 05:24:25','T'),(3,'1','InstrumentGroupMaster object (1)',1,'[{\"added\": {}}]',7,1,'2024-03-16 05:25:05','T'),(4,'2','InstrumentGroupMaster object (2)',1,'[{\"added\": {}}]',7,1,'2024-03-16 05:25:22','T'),(5,'3','InstrumentGroupMaster object (3)',1,'[{\"added\": {}}]',7,1,'2024-03-16 05:25:44','T'),(6,'4','InstrumentGroupMaster object (4)',1,'[{\"added\": {}}]',7,1,'2024-03-16 05:26:07','T'),(7,'5','InstrumentGroupMaster object (5)',1,'[{\"added\": {}}]',7,1,'2024-03-16 05:26:24','T'),(8,'1','InstrumentModel object (1)',1,'[{\"added\": {}}]',8,1,'2024-03-16 05:27:52','T'),(9,'2','TR/APG/02 (AIR PLUG GAUGE (INSTRUMENT))',1,'[{\"added\": {}}]',8,1,'2024-03-16 05:38:23','T'),(10,'3','TR/ARG/01 (AIR RING GAUGE (INSTRUMENT))',1,'[{\"added\": {}}]',8,1,'2024-03-16 05:39:16','T'),(11,'4','TR/B2/VC/01 (VERNIER CALIPER (INSTRUMENT))',1,'[{\"added\": {}}]',8,1,'2024-03-16 05:40:49','T'),(12,'5','TR/B2/VC/04 (VERNIER CALIPER (INSTRUMENT))',1,'[{\"added\": {}}]',8,1,'2024-03-16 05:41:27','T'),(13,'6','TR/D9/DMM/01 (DEPTH MICROMETER (INSTRUMENT))',1,'[{\"added\": {}}]',8,1,'2024-03-16 05:42:10','T'),(14,'1','D9-MCSHOP',1,'[{\"added\": {}}]',9,1,'2024-03-16 05:49:10','T'),(15,'2','B5-MCSHOP',1,'[{\"added\": {}}]',9,1,'2024-03-16 05:49:55','T'),(16,'3','SBI',1,'[{\"added\": {}}]',9,1,'2024-03-16 05:50:11','T'),(17,'4','QA',1,'[{\"added\": {}}]',9,1,'2024-03-16 05:50:40','T'),(18,'5','QA CMM LAB',1,'[{\"added\": {}}]',9,1,'2024-03-16 05:51:04','T'),(19,'1','TR/APG/02 in B5-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-16 05:53:02','T'),(20,'2','TR/D9/DMM/01 in B5-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-16 05:53:25','T'),(21,'3','TR/B2/VC/01 in D9-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-16 05:53:45','T'),(22,'4','TR/APG/01 in SBI',1,'[{\"added\": {}}]',10,1,'2024-03-16 05:53:50','T'),(23,'5','TR/D9/DMM/01 in SBI',1,'[{\"added\": {}}]',10,1,'2024-03-16 05:53:55','T'),(24,'6','TR/APG/01 in QA CMM LAB',1,'[{\"added\": {}}]',10,1,'2024-03-16 05:54:02','T'),(25,'5','TR/B2/VC/04 in SBI',2,'[{\"changed\": {\"fields\": [\"Using tool\"]}}]',10,1,'2024-03-16 05:54:22','T'),(26,'1','Report for TR/APG/01',1,'[{\"added\": {}}]',11,1,'2024-03-16 05:54:48','T'),(27,'1','Movement ID: 1 - Date: 2024-03-16',1,'[{\"added\": {}}]',12,1,'2024-03-16 06:01:28','T'),(28,'1','Movement ID: 1 - Date: 2024-03-16',2,'[{\"changed\": {\"fields\": [\"Acknowledgment\", \"Tool count\"]}}]',12,1,'2024-03-16 06:01:47','T'),(29,'2','Movement ID: 2 - Date: 2024-03-16',1,'[{\"added\": {}}]',12,1,'2024-03-16 06:02:15','T'),(30,'3506','Slip No: 3506 - Instrument: TR/APG/02',1,'[{\"added\": {}}]',13,1,'2024-03-16 06:10:49','T'),(31,'1','Report for TR/APG/01',3,'',11,1,'2024-03-16 13:34:05','T'),(32,'3506','Slip No: 3506 - Instrument: TR/APG/02',3,'',13,1,'2024-03-16 13:34:14','T'),(33,'1','Service ID: 1 - Description: GOOD',1,'[{\"added\": {}}]',14,1,'2024-03-16 14:05:19','T'),(34,'1','ServiceTool ID: 1 - Service ID: 1 - Tool ID: 1',1,'[{\"added\": {}}]',15,1,'2024-03-16 14:05:32','T'),(35,'2','ServiceTool ID: 2 - Service ID: 1 - Tool ID: 2',1,'[{\"added\": {}}]',15,1,'2024-03-16 14:05:38','T'),(36,'3','ServiceTool ID: 3 - Service ID: 1 - Tool ID: 2',1,'[{\"added\": {}}]',15,1,'2024-03-16 14:05:42','T'),(37,'3','ServiceTool ID: 3 - Service ID: 1 - Tool ID: 2',3,'',15,1,'2024-03-16 14:05:51','T'),(38,'1','Service ID: 1',2,'[]',14,1,'2024-03-16 14:18:57','T'),(39,'1','Movement ID: 1 - Date: 2024-03-16',1,'[{\"added\": {}}]',16,1,'2024-03-16 14:19:21','T'),(40,'1','TransportTool ID: 1 - Transport ID: 1 - Tool ID: 1',1,'[{\"added\": {}}]',17,1,'2024-03-16 14:19:35','T'),(41,'2','TransportTool ID: 2 - Transport ID: 1 - Tool ID: 2',1,'[{\"added\": {}}]',17,1,'2024-03-16 14:19:39','T'),(42,'6','Stock',1,'[{\"added\": {}}]',9,1,'2024-03-17 05:47:59','T'),(43,'6','BALL MICROMETER',1,'[{\"added\": {}}]',7,1,'2024-03-17 05:48:31','T'),(44,'7','BLADE MICROMETER',1,'[{\"added\": {}}]',7,1,'2024-03-17 05:49:52','T'),(45,'8','DIGITAL MICROMETER',1,'[{\"added\": {}}]',7,1,'2024-03-17 05:50:28','T'),(46,'7','TR/D9/MM/04 (BALL MICROMETER)',1,'[{\"added\": {}}]',8,1,'2024-03-17 05:53:48','T'),(47,'8','TR/QC/MM/09 (BALL MICROMETER)',1,'[{\"added\": {}}]',8,1,'2024-03-17 05:54:23','T'),(48,'9','SB/BMM/01 (BLADE MICROMETER)',1,'[{\"added\": {}}]',8,1,'2024-03-17 05:55:17','T'),(49,'10','SB/BMM/02 (BLADE MICROMETER)',1,'[{\"added\": {}}]',8,1,'2024-03-17 05:55:50','T'),(50,'11','SB/DMMM/02 (DIGITAL MICROMETER)',1,'[{\"added\": {}}]',8,1,'2024-03-17 05:56:41','T'),(51,'12','TR/MM/13 (DIGITAL MICROMETER)',1,'[{\"added\": {}}]',8,1,'2024-03-17 05:57:16','T'),(52,'7','TR/MM/13 in D9-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:57:48','T'),(53,'8','SB/DMMM/02 in SBI',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:58:23','T'),(54,'9','TR/D9/MM/04 in D9-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:58:53','T'),(55,'10','TR/QC/MM/09 in Stock',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:59:03','T'),(56,'11','TR/D9/DMM/01 in B5-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:59:25','T'),(57,'12','SB/BMM/01 in Stock',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:59:37','T'),(58,'13','SB/BMM/02 in D9-MCSHOP',1,'[{\"added\": {}}]',10,1,'2024-03-17 05:59:46','T'),(59,'14','TR/D9/DMM/01 in SBI',1,'[{\"added\": {}}]',10,1,'2024-03-17 06:00:07','T'),(60,'2','Movement ID: 2 - Date: 2024-03-17',1,'[{\"added\": {}}]',16,1,'2024-03-17 06:08:37','T'),(61,'3','TransportTool ID: 3 - Transport ID: 2 - Tool ID: 2',1,'[{\"added\": {}}]',17,1,'2024-03-17 06:08:48','T'),(62,'4','TransportTool ID: 4 - Transport ID: 2 - Tool ID: 10',1,'[{\"added\": {}}]',17,1,'2024-03-17 06:08:55','T'),(63,'3','TransportTool ID: 3 - Transport ID: 2 - Tool ID: 12',2,'[{\"changed\": {\"fields\": [\"Tool\"]}}]',17,1,'2024-03-17 06:09:04','T'),(64,'5','TransportTool ID: 5 - Transport ID: 2 - Tool ID: 5',1,'[{\"added\": {}}]',17,1,'2024-03-17 06:09:08','T'),(65,'1','Vendor Name: Pruthviraj',1,'[{\"added\": {}}]',18,1,'2024-03-17 08:51:34','T'),(66,'2','Vendor Name: ABC',1,'[{\"added\": {}}]',18,1,'2024-03-17 08:51:51','T'),(67,'1','VendorReceived ID: 1 - Vendor: Pruthviraj',1,'[{\"added\": {}}]',20,1,'2024-03-17 08:58:03','T'),(68,'1','VendorReceived ID: 1 - Vendor: Pruthviraj',3,'',20,1,'2024-03-17 08:59:30','T'),(69,'1','VendorReceived ID: 1 - Vendor: Pruthviraj',1,'[{\"added\": {}}]',20,1,'2024-03-17 09:00:25','T'),(70,'2','VendorReceived ID: 2 - Vendor: ABC',1,'[{\"added\": {}}]',20,1,'2024-03-17 09:00:34','T'),(71,'1','VendorSent ID: 1 - Vendor: ABC',1,'[{\"added\": {}}]',19,1,'2024-03-17 09:01:46','T'),(72,'1','Vendor: Pruthviraj - Tool: 1 - TurnAround Time: 2',1,'[{\"added\": {}}]',21,1,'2024-03-17 09:16:40','T'),(73,'2','Vendor: Pruthviraj - Tool: 3 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-03-17 09:16:52','T'),(74,'9','BEVEL PROTRACTOR',1,'[{\"added\": {}}]',7,1,'2024-03-17 14:22:36','T'),(75,'1','Vendor: Pruthviraj - Tool: 2 - TurnAround Time: 2',2,'[{\"changed\": {\"fields\": [\"Tool\"]}}]',21,1,'2024-03-17 14:43:10','T'),(76,'1','Instrument Family Name: MICROMETER',1,'[{\"added\": {}}]',22,1,'2024-03-18 17:13:13','T'),(77,'2','Instrument Family Name: MICROMETER',1,'[{\"added\": {}}]',22,1,'2024-03-18 17:13:18','T'),(78,'3','Instrument Family Name: MICROMETER',1,'[{\"added\": {}}]',22,1,'2024-03-18 17:13:25','T'),(79,'3','Instrument Family Name: MICROMETER',2,'[{\"changed\": {\"fields\": [\"Instrument group master\"]}}]',22,1,'2024-03-18 17:13:30','T'),(80,'3','Instrument Family Name: MICROMETER',2,'[{\"changed\": {\"fields\": [\"Instrument group master\"]}}]',22,1,'2024-03-18 17:13:35','T'),(81,'4','Instrument Family Name: MICROMETER',1,'[{\"added\": {}}]',22,1,'2024-03-18 17:13:45','T'),(82,'5','Instrument Family Name: GAUGE',1,'[{\"added\": {}}]',22,1,'2024-03-18 17:13:58','T'),(83,'6','Instrument Family Name: GAUGE',1,'[{\"added\": {}}]',22,1,'2024-03-18 17:14:07','T'),(84,'2','Service ID: 2',3,'',14,1,'2024-03-19 13:10:44','T'),(85,'1','Service ID: 1',3,'',14,1,'2024-03-19 13:10:44','T'),(86,'5','ServiceTool ID: 5 - Service ID: 1 - Tool ID: 6',3,'',15,1,'2024-03-19 13:10:56','T'),(87,'4','ServiceTool ID: 4 - Service ID: 1 - Tool ID: 4',3,'',15,1,'2024-03-19 13:10:56','T'),(88,'2','ServiceTool ID: 2 - Service ID: 1 - Tool ID: 2',3,'',15,1,'2024-03-19 13:10:56','T'),(89,'1','ServiceTool ID: 1 - Service ID: 1 - Tool ID: 1',3,'',15,1,'2024-03-19 13:10:57','T'),(90,'2','Service ID: 2',3,'',14,1,'2024-03-19 13:11:05','T'),(91,'1','Service ID: 1',3,'',14,1,'2024-03-19 13:11:05','T'),(92,'1','Service ID: 1',1,'[{\"added\": {}}]',14,1,'2024-03-19 13:17:27','T'),(93,'2','Service ID: 2',1,'[{\"added\": {}}]',14,1,'2024-03-19 13:17:40','T'),(94,'6','ServiceTool ID: 6 - Service ID: 1 - Tool ID: 1',1,'[{\"added\": {}}]',15,1,'2024-03-19 13:18:13','T'),(95,'7','ServiceTool ID: 7 - Service ID: 1 - Tool ID: 2',1,'[{\"added\": {}}]',15,1,'2024-03-19 13:18:17','T'),(96,'8','ServiceTool ID: 8 - Service ID: 2 - Tool ID: 3',1,'[{\"added\": {}}]',15,1,'2024-03-19 13:18:25','T'),(97,'9','ServiceTool ID: 9 - Service ID: 2 - Tool ID: 6',1,'[{\"added\": {}}]',15,1,'2024-03-19 13:18:31','T'),(98,'3','Vendor: Pruthviraj - Tool: 1 - TurnAround Time: 2',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:58:31','T'),(99,'4','Vendor: Pruthviraj - Tool: 4 - TurnAround Time: 4',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:58:44','T'),(100,'5','Vendor: Pruthviraj - Tool: 5 - TurnAround Time: 5',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:58:53','T'),(101,'6','Vendor: Pruthviraj - Tool: 6 - TurnAround Time: 2',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:59:01','T'),(102,'7','Vendor: Pruthviraj - Tool: 7 - TurnAround Time: 7',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:59:12','T'),(103,'8','Vendor: Pruthviraj - Tool: 7 - TurnAround Time: 4',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:59:22','T'),(104,'9','Vendor: Pruthviraj - Tool: 8 - TurnAround Time: 6',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:59:29','T'),(105,'10','Vendor: Pruthviraj - Tool: 9 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:59:38','T'),(106,'11','Vendor: Pruthviraj - Tool: 10 - TurnAround Time: 4',1,'[{\"added\": {}}]',21,1,'2024-03-21 11:59:55','T'),(107,'12','Vendor: Pruthviraj - Tool: 11 - TurnAround Time: 2',1,'[{\"added\": {}}]',21,1,'2024-03-21 12:00:04','T'),(108,'13','Vendor: Pruthviraj - Tool: 12 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-03-21 12:00:11','T'),(109,'8','Vendor: Pruthviraj - Tool: 7 - TurnAround Time: 4',3,'',21,1,'2024-03-21 12:00:39','T'),(110,'5','Service ID: 5',3,'',14,1,'2024-03-21 12:01:45','T'),(111,'4','Service ID: 4',3,'',14,1,'2024-03-21 12:01:45','T'),(112,'3','Service ID: 3',3,'',14,1,'2024-03-21 12:01:45','T'),(113,'2','Service ID: 2',3,'',14,1,'2024-03-21 12:01:45','T'),(114,'1','Service ID: 1',3,'',14,1,'2024-03-21 12:01:45','T'),(115,'20','ServiceTool ID: 20 - Service ID: 5 - Tool ID: 11',3,'',15,1,'2024-03-21 12:01:57','T'),(116,'19','ServiceTool ID: 19 - Service ID: 5 - Tool ID: 8',3,'',15,1,'2024-03-21 12:01:57','T'),(117,'18','ServiceTool ID: 18 - Service ID: 5 - Tool ID: 6',3,'',15,1,'2024-03-21 12:01:57','T'),(118,'17','ServiceTool ID: 17 - Service ID: 5 - Tool ID: 4',3,'',15,1,'2024-03-21 12:01:57','T'),(119,'16','ServiceTool ID: 16 - Service ID: 5 - Tool ID: 2',3,'',15,1,'2024-03-21 12:01:57','T'),(120,'15','ServiceTool ID: 15 - Service ID: 4 - Tool ID: 11',3,'',15,1,'2024-03-21 12:01:57','T'),(121,'14','ServiceTool ID: 14 - Service ID: 4 - Tool ID: 8',3,'',15,1,'2024-03-21 12:01:57','T'),(122,'13','ServiceTool ID: 13 - Service ID: 4 - Tool ID: 6',3,'',15,1,'2024-03-21 12:01:57','T'),(123,'12','ServiceTool ID: 12 - Service ID: 4 - Tool ID: 4',3,'',15,1,'2024-03-21 12:01:57','T'),(124,'11','ServiceTool ID: 11 - Service ID: 4 - Tool ID: 2',3,'',15,1,'2024-03-21 12:01:57','T'),(125,'10','ServiceTool ID: 10 - Service ID: 3 - Tool ID: 3',3,'',15,1,'2024-03-21 12:01:57','T'),(126,'9','ServiceTool ID: 9 - Service ID: 2 - Tool ID: 6',3,'',15,1,'2024-03-21 12:01:57','T'),(127,'8','ServiceTool ID: 8 - Service ID: 2 - Tool ID: 3',3,'',15,1,'2024-03-21 12:01:57','T'),(128,'7','ServiceTool ID: 7 - Service ID: 1 - Tool ID: 2',3,'',15,1,'2024-03-21 12:01:57','T'),(129,'6','ServiceTool ID: 6 - Service ID: 1 - Tool ID: 1',3,'',15,1,'2024-03-21 12:01:57','T'),(130,'5','Service ID: 5',3,'',14,1,'2024-03-21 12:02:03','T'),(131,'4','Service ID: 4',3,'',14,1,'2024-03-21 12:02:03','T'),(132,'3','Service ID: 3',3,'',14,1,'2024-03-21 12:02:03','T'),(133,'2','Service ID: 2',3,'',14,1,'2024-03-21 12:02:03','T'),(134,'1','Service ID: 1',3,'',14,1,'2024-03-21 12:02:03','T'),(135,'6','Service ID: 6',1,'[{\"added\": {}}]',14,1,'2024-03-21 12:05:54','T'),(136,'1','Service ID: 6 - Tool ID: 1 - Service Vendor: Vendor Name: Pruthviraj',1,'[{\"added\": {}}]',15,1,'2024-03-21 12:06:03','T'),(137,'2','Service ID: 6 - Tool ID: 2 - Service Vendor: Vendor Name: Pruthviraj',1,'[{\"added\": {}}]',15,1,'2024-03-21 12:06:10','T'),(138,'2','Vendor: ABC Received Date: 2024-03-17',3,'',20,1,'2024-03-21 12:54:55','T'),(139,'1','Vendor: Pruthviraj Received Date: 2024-03-17',3,'',20,1,'2024-03-21 12:54:55','T'),(140,'1','Vendor: ABC Sent Date: 2024-03-17',3,'',19,1,'2024-03-21 12:55:02','T'),(141,'1','DeliveryChallan ID: 1 - Vendor: Pruthviraj',1,'[{\"added\": {}}]',23,1,'2024-03-21 13:24:28','T'),(142,'1','DeliveryChallan ID: 1 - Tool ID: 2',1,'[{\"added\": {}}]',24,1,'2024-03-21 13:29:10','T'),(143,'2','DeliveryChallan ID: 1 - Tool ID: 2',1,'[{\"added\": {}}]',24,1,'2024-03-21 13:29:17','T'),(144,'10','Movement ID: 10 - Date: 2024-04-16',3,'',16,1,'2024-03-23 07:48:53','T'),(145,'9','Movement ID: 9 - Date: 2024-04-16',3,'',16,1,'2024-03-23 07:48:53','T'),(146,'1','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Calibration Report No: MMS/1217/013-M12',1,'[{\"added\": {}}]',25,1,'2024-03-23 13:32:35','T'),(147,'1','Instrument: 1 - Movement ID: 1',1,'[{\"added\": {}}]',26,1,'2024-03-24 06:38:24','T'),(148,'1','Movement ID: 1 - Date: 2024-03-16',2,'[]',16,1,'2024-03-24 06:45:58','T'),(149,'1','Instrument: 1 - Movement ID: 1',3,'',26,1,'2024-03-24 06:58:10','T'),(150,'2','Movement ID: 2 - Date: 2024-03-16',3,'',12,1,'2024-03-24 06:58:23','T'),(151,'1','Movement ID: 1 - Date: 2024-03-16',3,'',12,1,'2024-03-24 06:58:23','T'),(152,'10','Service ID: 16 - Tool ID: 2 - Service Vendor: Vendor Name: Pruthviraj',3,'',15,1,'2024-03-25 08:37:00','T'),(153,'9','Service ID: 16 - Tool ID: 1 - Service Vendor: Vendor Name: Pruthviraj',3,'',15,1,'2024-03-25 08:37:00','T'),(154,'16','Service ID: 16',3,'',14,1,'2024-03-25 08:37:07','T'),(155,'15','Service ID: 15',3,'',14,1,'2024-03-25 08:37:07','T'),(156,'14','Service ID: 14',3,'',14,1,'2024-03-25 08:37:07','T'),(157,'13','Service ID: 13',3,'',14,1,'2024-03-25 08:37:07','T'),(158,'4','DeliveryChallan ID: 3 - Tool ID: 1',3,'',24,1,'2024-03-26 19:35:19','T'),(159,'3','DeliveryChallan ID: 2 - Tool ID: 1',3,'',24,1,'2024-03-26 19:35:19','T'),(160,'3','DeliveryChallan ID: 3 - Vendor: Pruthviraj',3,'',23,1,'2024-03-26 19:35:27','T'),(161,'2','DeliveryChallan ID: 2 - Vendor: Pruthviraj',3,'',23,1,'2024-03-26 19:35:27','T'),(162,'1','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Calibration Report No: MMS/1217/013-M12',3,'',25,1,'2024-03-26 19:40:51','T'),(163,'5','DeliveryChallan ID: 4 - Tool ID: 6',3,'',24,1,'2024-03-26 19:41:00','T'),(164,'2','DeliveryChallan ID: 1 - Tool ID: 2',3,'',24,1,'2024-03-26 19:41:00','T'),(165,'1','DeliveryChallan ID: 1 - Tool ID: 2',3,'',24,1,'2024-03-26 19:41:00','T'),(166,'4','DeliveryChallan ID: 4 - Vendor: Pruthviraj',3,'',23,1,'2024-03-26 19:41:06','T'),(167,'1','DeliveryChallan ID: 1 - Vendor: Pruthviraj',3,'',23,1,'2024-03-26 19:41:06','T'),(168,'11','TR/D9/DMM/01 in B5-MCSHOP',3,'',10,1,'2024-03-28 19:27:00','T'),(169,'5','TR/B2/VC/04 in QA',2,'[{\"changed\": {\"fields\": [\"Shed\"]}}]',10,1,'2024-03-29 06:25:28','T'),(170,'14','Vendor: ABC - Tool: 1 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-03-29 10:08:15','T'),(171,'15','Vendor: ABC - Tool: 2 - TurnAround Time: 6',1,'[{\"added\": {}}]',21,1,'2024-03-29 10:08:22','T'),(172,'16','Vendor: ABC - Tool: 8 - TurnAround Time: 6',1,'[{\"added\": {}}]',21,1,'2024-03-29 10:08:31','T'),(173,'12','DeliveryChallan ID: 12 - Tool ID: 7',3,'',24,1,'2024-03-30 09:15:51','T'),(174,'11','DeliveryChallan ID: 11 - Tool ID: 12',3,'',24,1,'2024-03-30 09:15:51','T'),(175,'10','DeliveryChallan ID: 10 - Tool ID: 12',3,'',24,1,'2024-03-30 09:15:51','T'),(176,'9','DeliveryChallan ID: 8 - Tool ID: 12',3,'',24,1,'2024-03-30 09:15:51','T'),(177,'8','DeliveryChallan ID: 7 - Tool ID: 7',3,'',24,1,'2024-03-30 09:15:51','T'),(178,'7','DeliveryChallan ID: 6 - Tool ID: 7',3,'',24,1,'2024-03-30 09:15:51','T'),(179,'6','DeliveryChallan ID: 5 - Tool ID: 7',3,'',24,1,'2024-03-30 09:15:51','T'),(180,'2','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Calibration Report No: MMS/1217/013-M12',3,'',25,1,'2024-03-30 09:16:01','T'),(181,'3','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Calibration Report No: MMS/1217/013-M12',3,'',25,1,'2024-03-30 09:16:01','T'),(182,'4','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Calibration Report No: MMS/1217/013-M123',3,'',25,1,'2024-03-30 09:16:01','T'),(183,'12','DeliveryChallan ID: 12 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(184,'11','DeliveryChallan ID: 11 - Vendor: ABC',3,'',23,1,'2024-03-30 09:16:08','T'),(185,'10','DeliveryChallan ID: 10 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(186,'9','DeliveryChallan ID: 9 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(187,'8','DeliveryChallan ID: 8 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(188,'7','DeliveryChallan ID: 7 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(189,'6','DeliveryChallan ID: 6 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(190,'5','DeliveryChallan ID: 5 - Vendor: Pruthviraj',3,'',23,1,'2024-03-30 09:16:08','T'),(191,'13','DeliveryChallan ID: 13 - Vendor: Pruthviraj',1,'[{\"added\": {}}]',23,1,'2024-03-30 09:19:45','T'),(192,'1','Calibration Tool: TR/D9/DMM/01 (DEPTH MICROMETER) - Notification Date: 2024-03-20',1,'[{\"added\": {}}]',25,1,'2024-03-30 09:20:19','T'),(193,'13','DeliveryChallan ID: 13 - Tool ID: 6',1,'[{\"added\": {}}]',24,1,'2024-03-30 09:20:31','T'),(194,'12','TR/MM/13 (DIGITAL MICROMETER)',2,'[{\"changed\": {\"fields\": [\"Calibration frequency\"]}}]',8,1,'2024-03-30 13:05:13','T'),(195,'10','SURFACE TESTER MASTER',1,'[{\"added\": {}}]',7,1,'2024-03-30 18:48:17','T'),(196,'11','CROSS HATCH TESTER',1,'[{\"added\": {}}]',7,1,'2024-03-30 18:48:39','T'),(197,'7','Instrument Family Name: TESTER',1,'[{\"added\": {}}]',22,1,'2024-03-30 18:48:51','T'),(198,'8','Instrument Family Name: TESTER',1,'[{\"added\": {}}]',22,1,'2024-03-30 18:48:55','T'),(199,'13','TR/SURTES/01 (SURFACE TESTER MASTER)',1,'[{\"added\": {}}]',8,1,'2024-03-30 18:49:55','T'),(200,'14','fdg ()',3,'',8,1,'2024-03-30 19:25:11','T'),(201,'9','Instrument Family Name: TESTER',3,'',22,1,'2024-03-30 19:25:18','T'),(202,'12','',3,'',7,1,'2024-03-30 19:25:24','T'),(203,'20','Vendor: Mouli - Tool: 11 - TurnAround Time: 5',1,'[{\"added\": {}}]',21,1,'2024-03-31 10:58:55','T'),(204,'21','Vendor: ABC - Tool: 11 - TurnAround Time: 7',1,'[{\"added\": {}}]',21,1,'2024-03-31 11:04:41','T'),(205,'22','Vendor: ABCD - Tool: 11 - TurnAround Time: 8',1,'[{\"added\": {}}]',21,1,'2024-03-31 11:04:50','T'),(206,'13','',3,'',7,1,'2024-04-01 12:39:40','T'),(207,'10','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-01 12:39:51','T'),(208,'13','',3,'',7,1,'2024-04-01 12:39:56','T'),(209,'15','TR/TST/01 ()',3,'',8,1,'2024-04-01 12:40:43','T'),(210,'13','',3,'',7,1,'2024-04-01 12:40:47','T'),(211,'16','TR/TST/01 ()',3,'',8,1,'2024-04-01 12:53:01','T'),(212,'11','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-01 12:53:06','T'),(213,'14','',3,'',7,1,'2024-04-01 12:53:11','T'),(214,'17','TR/TST/01 ()',3,'',8,1,'2024-04-01 12:55:17','T'),(215,'12','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-01 12:55:24','T'),(216,'15','',3,'',7,1,'2024-04-01 12:55:29','T'),(217,'18','TR/TST/01 ()',3,'',8,1,'2024-04-01 12:59:37','T'),(218,'13','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-01 12:59:42','T'),(219,'16','',3,'',7,1,'2024-04-01 12:59:47','T'),(220,'19','TR/TST/01 ()',3,'',8,1,'2024-04-01 13:23:01','T'),(221,'14','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-01 13:23:06','T'),(222,'17','',3,'',7,1,'2024-04-01 13:23:10','T'),(223,'20','TR/TST/02 ()',3,'',8,1,'2024-04-02 13:10:43','T'),(224,'15','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-02 13:10:49','T'),(225,'18','',3,'',7,1,'2024-04-02 13:10:54','T'),(226,'38','DeliveryChallan ID: 38 - Vendor: ABCD',1,'[{\"added\": {}}]',23,1,'2024-04-03 12:10:46','T'),(227,'39','DeliveryChallan ID: 39 - Vendor: ABC',1,'[{\"added\": {}}]',23,1,'2024-04-03 12:42:03','T'),(228,'30','DeliveryChallan ID: 36 - Tool ID: 9',1,'[{\"added\": {}}]',24,1,'2024-04-03 12:42:18','T'),(229,'31','DeliveryChallan ID: 39 - Tool ID: 10',1,'[{\"added\": {}}]',24,1,'2024-04-03 12:42:31','T'),(230,'17','TR/ARG/01 in Test9',1,'[{\"added\": {}}]',10,1,'2024-04-03 12:42:41','T'),(231,'18','TR/B2/VC/04 in Test9',1,'[{\"added\": {}}]',10,1,'2024-04-03 12:42:44','T'),(232,'24','Movement ID: 24 - Date: 2024-04-03',1,'[{\"added\": {}}]',16,1,'2024-04-03 12:43:02','T'),(233,'71','TransportTool ID: 71 - Transport ID: 24 - Tool ID: 11',1,'[{\"added\": {}}]',17,1,'2024-04-03 12:43:11','T'),(234,'72','TransportTool ID: 72 - Transport ID: 24 - Tool ID: 4',1,'[{\"added\": {}}]',17,1,'2024-04-03 12:43:16','T'),(235,'16','Instrument Family Name: TESTERs',3,'',22,1,'2024-04-03 19:10:49','T'),(236,'21','TR/TST/01 ()',3,'',8,1,'2024-04-03 19:10:58','T'),(237,'19','',3,'',7,1,'2024-04-03 19:11:04','T'),(238,'20','sdf',1,'[{\"added\": {}}]',7,1,'2024-04-03 19:11:14','T'),(239,'17','Instrument Family Name: TESTERs',1,'[{\"added\": {}}]',22,1,'2024-04-03 19:11:41','T'),(240,'11','CROSS HATCH TESTER',3,'',7,1,'2024-04-03 19:24:04','T'),(241,'19','TR/APG/02 in Test9',1,'[{\"added\": {}}]',10,1,'2024-04-03 19:29:16','T'),(242,'8','Test9',3,'',9,1,'2024-04-03 19:29:24','T'),(243,'30','Service ID: 30',3,'',14,1,'2024-04-03 19:31:51','T'),(244,'26','Service ID: 26',3,'',14,1,'2024-04-03 19:32:09','T'),(245,'25','DeliveryChallan ID: 25 - Vendor: Pruthviraj',3,'',23,1,'2024-04-03 19:32:38','T'),(246,'29','Service ID: 29',3,'',14,1,'2024-04-03 19:33:50','T'),(247,'28','Service ID: 28',3,'',14,1,'2024-04-03 19:33:50','T'),(248,'27','Service ID: 27',3,'',14,1,'2024-04-03 19:33:50','T'),(249,'25','Service ID: 25',2,'[]',14,1,'2024-04-03 19:33:54','T'),(250,'18','Instrument Family Name: MICROMETER',1,'[{\"added\": {}}]',22,1,'2024-04-04 12:16:29','T'),(251,'19','Instrument Family Name: MICROMETER',1,'[{\"added\": {}}]',22,1,'2024-04-04 12:19:27','T'),(252,'6','TR/D9/DMM/01 (DEPTH MICROMETER)',2,'[{\"changed\": {\"fields\": [\"Service status\"]}}]',8,1,'2024-04-23 08:08:52','T'),(253,'9','SB/BMM/01 (BLADE MICROMETER)',2,'[{\"changed\": {\"fields\": [\"Service status\"]}}]',8,1,'2024-04-23 08:09:00','T'),(254,'2','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Notification Date: 2024-04-23',2,'[{\"changed\": {\"fields\": [\"Next calibration date\", \"Notification date\"]}}]',25,1,'2024-04-23 08:15:14','T'),(255,'7','Calibration Tool: TR/MM/13 (DIGITAL MICROMETER) - Notification Date: 2024-04-23',2,'[{\"changed\": {\"fields\": [\"Next calibration date\", \"Notification date\"]}}]',25,1,'2024-04-23 08:21:52','T'),(256,'19','Calibration Tool: TR/QC/MM/09 (BALL MICROMETER) - Notification Date: 2024-04-23',2,'[{\"changed\": {\"fields\": [\"Next calibration date\", \"Notification date\"]}}]',25,1,'2024-04-23 08:24:04','T'),(257,'18','Calibration Tool: SB/BMM/02 (BLADE MICROMETER) - Notification Date: 2024-04-23',2,'[{\"changed\": {\"fields\": [\"Next calibration date\", \"Notification date\"]}}]',25,1,'2024-04-23 08:26:21','T'),(258,'23','Vendor: Pruthviraj - Tool: 13 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-04-23 08:37:04','T'),(259,'20','Calibration Tool: TR/SURTES/01 (SURFACE TESTER MASTER) - Notification Date: 2024-04-23',2,'[{\"changed\": {\"fields\": [\"Next calibration date\", \"Notification date\"]}}]',25,1,'2024-04-23 08:37:32','T'),(260,'1','Pruthvi Raj',1,'[{\"added\": {}}]',27,1,'2024-04-23 09:16:25','T'),(261,'20','Calibration Tool: TR/SURTES/01 (SURFACE TESTER MASTER) - Notification Date: 2024-04-23',2,'[{\"changed\": {\"fields\": [\"Calibration report file\"]}}]',25,1,'2024-04-23 09:23:19','T'),(262,'22','Calibration Tool: TR/APG/02 (AIR PLUG GAUGE) - Notification Date: 2025-03-21',2,'[{\"changed\": {\"fields\": [\"Calibration report file\"]}}]',25,1,'2024-04-23 09:42:10','T'),(263,'22','Calibration Tool: TR/APG/02 (AIR PLUG GAUGE) - Notification Date: 2025-03-21',2,'[{\"changed\": {\"fields\": [\"Calibration report file\"]}}]',25,1,'2024-04-23 10:24:49','T'),(264,'24','Calibration Tool: TR/ARG/01 (AIR RING GAUGE) - Notification Date: 2025-03-20',3,'',25,1,'2024-04-23 10:29:05','T'),(265,'23','Calibration Tool: TR/APG/02 (AIR PLUG GAUGE) - Notification Date: 2025-03-21',3,'',25,1,'2024-04-23 10:29:05','T'),(266,'22','Calibration Tool: TR/APG/02 (AIR PLUG GAUGE) - Notification Date: 2025-03-21',3,'',25,1,'2024-04-23 10:29:05','T'),(267,'47','DeliveryChallan ID: 47 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:30:32','T'),(268,'46','DeliveryChallan ID: 46 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:30:33','T'),(269,'45','DeliveryChallan ID: 45 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:30:33','T'),(270,'44','DeliveryChallan ID: 44 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:30:33','T'),(271,'27','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Notification Date: 2025-03-21',2,'[{\"changed\": {\"fields\": [\"Calibration report file\"]}}]',25,1,'2024-04-23 10:34:01','T'),(272,'49','DeliveryChallan ID: 49 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:35:39','T'),(273,'48','DeliveryChallan ID: 48 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:35:39','T'),(274,'43','DeliveryChallan ID: 43 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:35:39','T'),(275,'42','DeliveryChallan ID: 42 - Vendor: Pruthviraj',3,'',23,1,'2024-04-23 10:35:39','T'),(276,'27','Calibration Tool: TR/APG/01 (AIR PLUG GAUGE) - Notification Date: 2025-03-21',3,'',25,1,'2024-04-23 10:35:58','T'),(277,'26','Calibration Tool: TR/ARG/01 (AIR RING GAUGE) - Notification Date: 2025-03-20',3,'',25,1,'2024-04-23 10:35:58','T'),(278,'25','Calibration Tool: TR/ARG/01 (AIR RING GAUGE) - Notification Date: 2025-03-20',3,'',25,1,'2024-04-23 10:35:58','T'),(279,'5','Vendor Name: akds',1,'[{\"added\": {}}]',18,1,'2024-04-23 11:53:10','T'),(280,'24','Vendor: akds - Tool: 2 - TurnAround Time: 2',1,'[{\"added\": {}}]',21,1,'2024-04-23 11:53:19','T'),(281,'5','Vendor Name: akds',3,'',18,1,'2024-04-28 07:04:16','T'),(282,'6','Vendor Name: VTest1',1,'[{\"added\": {}}]',18,1,'2024-04-28 07:04:43','T'),(283,'7','Vendor Name: VTest2',1,'[{\"added\": {}}]',18,1,'2024-04-28 07:04:59','T'),(284,'25','Vendor: VTest1 - Tool: 1 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:05:10','T'),(285,'26','Vendor: VTest1 - Tool: 2 - TurnAround Time: 4',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:05:17','T'),(286,'27','Vendor: VTest1 - Tool: 3 - TurnAround Time: 5',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:05:25','T'),(287,'28','Vendor: VTest1 - Tool: 4 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:05:34','T'),(288,'29','Vendor: VTest1 - Tool: 5 - TurnAround Time: 3',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:05:41','T'),(289,'30','Vendor: VTest2 - Tool: 7 - TurnAround Time: 4',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:05:51','T'),(290,'31','Vendor: VTest2 - Tool: 8 - TurnAround Time: 6',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:06:01','T'),(291,'32','Vendor: VTest2 - Tool: 9 - TurnAround Time: 7',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:06:10','T'),(292,'33','Vendor: VTest2 - Tool: 10 - TurnAround Time: 5',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:06:21','T'),(293,'34','Vendor: VTest2 - Tool: 12 - TurnAround Time: 6',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:06:33','T'),(294,'35','Vendor: VTest2 - Tool: 13 - TurnAround Time: 5',1,'[{\"added\": {}}]',21,1,'2024-04-28 07:06:42','T');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `app_label` varchar(100) NOT NULL COMMENT 'TRIAL',
  `model` varchar(100) NOT NULL COMMENT 'TRIAL',
  `trial992` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry','T'),(2,'auth','permission','T'),(3,'auth','group','T'),(4,'auth','user','T'),(5,'contenttypes','contenttype','T'),(6,'sessions','session','T'),(7,'app1','instrumentgroupmaster','T'),(8,'app1','instrumentmodel','T'),(9,'app1','sheddetails','T'),(10,'app1','shedtools','T'),(11,'app1','instrumentreport','T'),(12,'app1','toolmovement','T'),(13,'app1','acceptancependinglist','T'),(14,'app1','serviceorder','T'),(15,'app1','servicetools','T'),(16,'app1','transportorder','T'),(17,'app1','transporttools','T'),(18,'app1','vendor','T'),(19,'app1','vendorsent','T'),(20,'app1','vendorreceived','T'),(21,'app1','vendorhandles','T'),(22,'app1','instrumentfamilygroup','T'),(23,'app1','deliverychallan','T'),(24,'app1','deliverychallantools','T'),(25,'app1','calibrationreport','T'),(26,'app1','instrumenttransporthistory','T'),(27,'app1','news','T');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `app` varchar(255) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `applied` datetime NOT NULL COMMENT 'TRIAL',
  `trial992` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-16 05:16:16','T'),(2,'auth','0001_initial','2024-03-16 05:16:16','T'),(3,'admin','0001_initial','2024-03-16 05:16:16','T'),(4,'admin','0002_logentry_remove_auto_add','2024-03-16 05:16:17','T'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-16 05:16:17','T'),(6,'contenttypes','0002_remove_content_type_name','2024-03-16 05:16:17','T'),(7,'auth','0002_alter_permission_name_max_length','2024-03-16 05:16:17','T'),(8,'auth','0003_alter_user_email_max_length','2024-03-16 05:16:17','T'),(9,'auth','0004_alter_user_username_opts','2024-03-16 05:16:17','T'),(10,'auth','0005_alter_user_last_login_null','2024-03-16 05:16:17','T'),(11,'auth','0006_require_contenttypes_0002','2024-03-16 05:16:17','T'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-16 05:16:17','T'),(13,'auth','0008_alter_user_username_max_length','2024-03-16 05:16:17','T'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-16 05:16:17','T'),(15,'auth','0010_alter_group_name_max_length','2024-03-16 05:16:17','T'),(16,'auth','0011_update_proxy_permissions','2024-03-16 05:16:17','T'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-16 05:16:17','T'),(18,'sessions','0001_initial','2024-03-16 05:16:17','T'),(19,'app1','0001_initial','2024-03-16 05:22:16','T'),(20,'app1','0002_alter_instrumentgroupmaster_instrument_type','2024-03-16 05:24:46','T'),(21,'app1','0003_alter_instrumentmodel_description_and_more','2024-03-16 05:37:17','T'),(22,'app1','0004_sheddetails_alter_instrumentmodel_instrument_range_and_more','2024-03-16 05:45:14','T'),(23,'app1','0005_toolmovement','2024-03-16 06:00:37','T'),(24,'app1','0006_alter_toolmovement_destination_shed_and_more','2024-03-16 06:09:40','T'),(25,'app1','0007_remove_instrumentreport_instrument_and_more','2024-03-16 13:35:26','T'),(26,'app1','0008_serviceorder_servicetools','2024-03-16 14:02:38','T'),(27,'app1','0009_alter_servicetools_unique_together','2024-03-16 14:09:27','T'),(28,'app1','0010_transportorder_serviceorder_tool_count_and_more','2024-03-16 14:18:43','T'),(29,'app1','0011_vendor','2024-03-17 08:51:00','T'),(30,'app1','0012_vendorsent_vendorreceived','2024-03-17 08:57:13','T'),(31,'app1','0013_alter_vendorreceived_tool_alter_vendorsent_tool','2024-03-17 08:59:57','T'),(32,'app1','0014_vendorhandles','2024-03-17 09:16:08','T'),(33,'app1','0015_instrumentfamilygroup','2024-03-18 17:12:22','T'),(34,'app1','0016_serviceorder_vendor','2024-03-19 13:16:59','T'),(35,'app1','0017_alter_servicetools_unique_together_and_more','2024-03-21 12:05:22','T'),(36,'app1','0018_remove_vendorsent_tool_remove_vendorsent_vendor_and_more','2024-03-21 13:04:38','T'),(37,'app1','0019_deliverychallan_deliverychallantools','2024-03-21 13:24:05','T'),(38,'app1','0020_calibrationreport','2024-03-23 13:30:18','T'),(39,'app1','0021_instrumenttransporthistory','2024-03-24 06:38:04','T'),(40,'app1','0022_remove_toolmovement_destination_shed_and_more','2024-03-24 07:01:43','T'),(41,'app1','0023_deliverychallantools_calibration_report','2024-03-26 19:42:30','T'),(42,'app1','0024_calibrationreport_notification_date','2024-03-30 09:19:23','T'),(43,'app1','0025_alter_shedtools_shed_alter_shedtools_using_tool','2024-04-03 19:28:32','T'),(44,'app1','0026_alter_deliverychallan_service_and_more','2024-04-03 19:31:30','T'),(45,'app1','0027_instrumentmodel_service_status','2024-04-23 08:07:50','T'),(46,'app1','0028_news','2024-04-23 09:10:15','T'),(47,'app1','0029_calibrationreport_calibration_report_file','2024-04-23 09:22:48','T'),(48,'app1','0030_delete_news','2024-04-23 09:26:11','T'),(49,'app1','0031_alter_calibrationreport_calibration_report_file','2024-04-23 10:28:45','T');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL COMMENT 'TRIAL',
  `session_data` longtext NOT NULL COMMENT 'TRIAL',
  `expire_date` datetime NOT NULL COMMENT 'TRIAL',
  `trial992` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8j5zizc4bunso38ke1sb1gx9kjgt2pm0','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rzB7D:2sXr-VMPMFKhWLjvT_SEba-RGxK1i1kqMol1HfZse8M','2024-05-07 08:03:00','T'),('9jlfbdc9eft4zbhj6eokptrubqacecp3','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rlMPh:zI29rlniGH810lyiOLnYZu7Old8bQ3wMema89qtsbaQ','2024-03-30 05:16:57','T'),('e95tdzli8mhpmws3kul59noxni1ty362','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rnGxs:gq4mfxEUuSUjFQc7e7kVNt40NGj1IWX9nxsdvH2UUUc','2024-04-04 11:52:08','T'),('g7ui0alrxbnf0f2f9bokbzq6sfw2sdd5','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rlr87:u2Ry0aFXVKESX3oIgi8lyYrKG731pnErxGqu1jzEfcU','2024-03-31 14:04:52','T'),('imzzd31n901w2gk4st3iuddxfy0ch25m','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rnw4D:H-UJkRTxov1xw5KQARHA98-r8jTxK7Mpl8t85YGydjM','2024-04-06 07:45:25','T'),('j56v8rayg0kdj8ljrn0v2qw4koo1jeko','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rlUAP:SbIQJ1Qm6LrBT6RDKVr2k6rzwrA1IJzeivWXmICap-4','2024-03-30 13:33:41','T'),('tn8gbuuge4gjvqebcf2sikju714dldyc','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rpCSn:3J7UYLO98Trdgej9tf3wWWd_4DE-HnJOZQKfcNdlMuA','2024-04-09 19:28:01','T'),('xv0wmx2z2ytnusi41wpez3j5f2wvaos5','.eJxVjDsOwjAQBe_iGln-rm1Kes4Q7dprHECOlE-FuDtESgHtm5n3EgNuaxu2hedhLOIstDj9boT5wX0H5Y79Nsk89XUeSe6KPOgir1Ph5-Vw_w4aLu1bkw0EuiprAkSf0KDzUSVyVedoWKVqnQtZcWH2VptgAAF8LADkCZx4fwC_UTbr:1rpp5z:hln5vCc61lkHApCz9zJK_56MrN-6Nz7ay1BRwx9XvK8','2024-04-11 12:43:04','T');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sqlite_sequence` (
  `name` longtext COMMENT 'TRIAL',
  `seq` longtext COMMENT 'TRIAL',
  `trial992` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations','49','T'),('django_admin_log','294','T'),('django_content_type','27','T'),('auth_permission','108','T'),('auth_group','0','T'),('auth_user','1','T'),('app1_instrumentgroupmaster','20','T'),('app1_sheddetails','10','T'),('app1_shedtools','19','T'),('app1_transportorder','29','T'),('app1_transporttools','87','T'),('app1_vendor','7','T'),('app1_vendorhandles','35','T'),('app1_instrumentfamilygroup','19','T'),('app1_serviceorder','31','T'),('app1_servicetools','38','T'),('app1_deliverychallan','50','T'),('app1_deliverychallantools','42','T'),('app1_instrumentmodel','13','T'),('app1_calibrationreport','28','T');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:47:25
