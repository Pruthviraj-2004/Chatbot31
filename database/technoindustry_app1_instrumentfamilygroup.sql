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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:21
