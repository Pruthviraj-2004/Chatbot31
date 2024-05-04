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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:25
