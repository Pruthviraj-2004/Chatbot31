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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:24
