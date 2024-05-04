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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:25
