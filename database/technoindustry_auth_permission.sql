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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:22
