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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 17:35:22
