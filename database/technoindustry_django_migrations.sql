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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:23
