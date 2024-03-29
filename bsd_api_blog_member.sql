-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bsd_api_blog_member
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu` (
  `tbm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbm_create_date` datetime DEFAULT NULL,
  `tbm_create_id` int(11) DEFAULT NULL,
  `tbm_update_date` datetime DEFAULT NULL,
  `tbm_update_id` int(11) DEFAULT NULL,
  `tbm_name` varchar(255) DEFAULT NULL,
  `tbm_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tbm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,'2021-07-31 15:26:21',0,NULL,NULL,'Product',2),(2,'2021-07-31 15:26:21',0,NULL,NULL,'Order',3),(3,'2021-07-31 15:26:21',0,NULL,NULL,'Packing',4),(4,'2021-07-31 15:26:21',0,NULL,NULL,'Confirm',5),(5,'2021-07-31 15:26:21',0,NULL,NULL,'Report',6),(6,'2021-07-31 15:26:21',0,NULL,NULL,'User',7),(7,'2021-07-31 15:26:21',0,NULL,NULL,'Market',1);
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `tbu_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbu_create_date` datetime DEFAULT NULL,
  `tbu_create_id` int(11) DEFAULT NULL,
  `tbu_update_date` datetime DEFAULT NULL,
  `tbu_update_id` int(11) DEFAULT NULL,
  `tbu_email` varchar(255) DEFAULT NULL,
  `tbu_password` varchar(32) DEFAULT NULL,
  `tbu_firstname` varchar(100) DEFAULT NULL,
  `tbu_lastname` varchar(100) DEFAULT NULL,
  `tbu_mobile_phone` varchar(100) DEFAULT NULL,
  `tbu_place_of_birth` varchar(100) DEFAULT NULL,
  `tbu_date_of_birth` datetime DEFAULT NULL,
  `tbu_status` varchar(20) DEFAULT NULL,
  `tbu_uid` varchar(100) DEFAULT NULL,
  `tbu_photo` varchar(1000) DEFAULT NULL,
  `tbu_token_salt` varchar(36) DEFAULT NULL,
  `tbu_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tbu_id`),
  UNIQUE KEY `tb_user_tbu_email_uindex` (`tbu_email`),
  UNIQUE KEY `tb_user_tbu_uid_uindex` (`tbu_uid`),
  KEY `tb_user_tbu_status_index` (`tbu_status`),
  KEY `tb_user_tbu_password_index` (`tbu_password`),
  KEY `tb_user_tbu_firstname_index` (`tbu_firstname`),
  KEY `tb_user_tbu_lastname_index` (`tbu_lastname`),
  KEY `tb_user_tbu_token_salt_index` (`tbu_token_salt`),
  KEY `tb_user_tbu_role_index` (`tbu_role`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'2019-09-03 15:42:44',0,'2022-11-10 13:15:57',1,'admin@mail.com','202cb962ac59075b964b07152d234b70','admin','admin','123','Jakarta','1981-08-19 00:00:00','active','xycnh1fzl8chkm8cqr20ni6zvh2ai52c3mvw2uwy0s86mscu9u80h6ylym2imghas6h6ffj05taecfoxfu3g0x8alwbt97q9je8f','1111343528-20q4jm5fw1-Cluster-Morizen-Bekasi-Indonesia.jpg','lk4w7b5pwy7ke7poay1njenn1cf1jejoe6fl','ADMIN'),(25,'2022-11-10 09:48:56',1,'2022-11-10 11:36:05',25,'test@email.com','202cb962ac59075b964b07152d234b70','test','test',NULL,NULL,NULL,'active',NULL,NULL,'q2vgl3wgwg8e5exvz1pu6zsseifrtg4j0gvh','ADMIN'),(26,'2022-11-10 13:24:50',0,'2022-11-10 13:24:53',26,'test2@mail.com','202cb962ac59075b964b07152d234b70','test2','test2',NULL,NULL,NULL,'active',NULL,NULL,'xww9b235ydinsy0nnvmrthtje8g4gfritcl3','ADMIN');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_brand`
--

DROP TABLE IF EXISTS `tb_user_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_brand` (
  `tbub_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbub_create_date` datetime DEFAULT NULL,
  `tbub_create_id` int(11) DEFAULT NULL,
  `tbub_update_date` datetime DEFAULT NULL,
  `tbub_update_id` int(11) DEFAULT NULL,
  `tbu_id` int(11) DEFAULT NULL,
  `tbb_brand` varchar(255) DEFAULT NULL,
  `tbb_brand_id` varchar(5) DEFAULT NULL,
  `tbb_brand_check` int(11) DEFAULT NULL,
  PRIMARY KEY (`tbub_id`),
  KEY `tb_user_brand_tbu_id_index` (`tbu_id`),
  KEY `tb_user_brand_tbb_brand_index` (`tbb_brand`),
  KEY `tb_user_brand_tbb_brand_id_index` (`tbb_brand_id`),
  KEY `tb_user_brand_tbb_brand_check_index` (`tbb_brand_check`)
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_brand`
--

LOCK TABLES `tb_user_brand` WRITE;
/*!40000 ALTER TABLE `tb_user_brand` DISABLE KEYS */;
INSERT INTO `tb_user_brand` VALUES (256,'2022-03-29 09:55:17',1,NULL,NULL,2,'Anessa','ANESS',1),(257,'2022-03-29 09:55:17',1,NULL,NULL,2,'BEBE','BEBEB',1),(258,'2022-03-29 09:55:17',1,NULL,NULL,2,'Cetaphil','CETAP',1),(259,'2022-03-29 09:55:17',1,NULL,NULL,2,'cocacola','COCAC',1),(260,'2022-03-29 09:55:17',1,NULL,NULL,2,'Combiphar','COMBH',1),(261,'2022-03-29 09:55:17',1,NULL,NULL,2,'Innisfree','INNIS',1),(262,'2022-03-29 09:55:17',1,NULL,NULL,2,'Interbat','INTER',1),(263,'2022-03-29 09:55:17',1,NULL,NULL,2,'Laneige','LANEI',1),(264,'2022-03-29 09:55:17',1,NULL,NULL,2,'Mamonde','MAMON',1),(265,'2022-03-29 09:55:17',1,NULL,NULL,2,'Mecard','MECAR',1),(266,'2022-03-29 09:55:17',1,NULL,NULL,2,'Mentos','MENTO',1),(267,'2022-03-29 09:55:17',1,NULL,NULL,2,'Mustela','MUSTE',1),(268,'2022-03-29 09:55:17',1,NULL,NULL,2,'Nestle','NESTL',1),(269,'2022-03-29 09:55:17',1,NULL,NULL,2,'Nutrition','NUTRI',1),(270,'2022-03-29 09:55:17',1,NULL,NULL,2,'P&G Health','PNGHE',1),(271,'2022-03-29 09:55:17',1,NULL,NULL,2,'Pillowpeople','PILLO',1),(272,'2022-03-29 09:55:17',1,NULL,NULL,2,'Purina','PURIN',1),(273,'2022-03-29 09:55:17',1,NULL,NULL,2,'Sulwhasoo','SULWH',1),(274,'2022-03-29 09:55:28',1,NULL,NULL,3,'Anessa','ANESS',1),(275,'2022-03-29 09:55:28',1,NULL,NULL,3,'BEBE','BEBEB',1),(276,'2022-03-29 09:55:28',1,NULL,NULL,3,'Cetaphil','CETAP',1),(277,'2022-03-29 09:55:28',1,NULL,NULL,3,'cocacola','COCAC',1),(278,'2022-03-29 09:55:28',1,NULL,NULL,3,'Combiphar','COMBH',1),(279,'2022-03-29 09:55:28',1,NULL,NULL,3,'Innisfree','INNIS',1),(280,'2022-03-29 09:55:28',1,NULL,NULL,3,'Interbat','INTER',1),(281,'2022-03-29 09:55:28',1,NULL,NULL,3,'Laneige','LANEI',1),(282,'2022-03-29 09:55:28',1,NULL,NULL,3,'Mamonde','MAMON',1),(283,'2022-03-29 09:55:28',1,NULL,NULL,3,'Mecard','MECAR',1),(284,'2022-03-29 09:55:28',1,NULL,NULL,3,'Mentos','MENTO',1),(285,'2022-03-29 09:55:28',1,NULL,NULL,3,'Mustela','MUSTE',1),(286,'2022-03-29 09:55:28',1,NULL,NULL,3,'Nestle','NESTL',1),(287,'2022-03-29 09:55:28',1,NULL,NULL,3,'Nutrition','NUTRI',1),(288,'2022-03-29 09:55:28',1,NULL,NULL,3,'P&G Health','PNGHE',1),(289,'2022-03-29 09:55:28',1,NULL,NULL,3,'Pillowpeople','PILLO',1),(290,'2022-03-29 09:55:28',1,NULL,NULL,3,'Purina','PURIN',1),(291,'2022-03-29 09:55:28',1,NULL,NULL,3,'Sulwhasoo','SULWH',1),(292,'2022-03-29 09:55:39',1,NULL,NULL,4,'Anessa','ANESS',1),(293,'2022-03-29 09:55:39',1,NULL,NULL,4,'BEBE','BEBEB',1),(294,'2022-03-29 09:55:39',1,NULL,NULL,4,'Cetaphil','CETAP',1),(295,'2022-03-29 09:55:39',1,NULL,NULL,4,'cocacola','COCAC',1),(296,'2022-03-29 09:55:39',1,NULL,NULL,4,'Combiphar','COMBH',1),(297,'2022-03-29 09:55:39',1,NULL,NULL,4,'Innisfree','INNIS',1),(298,'2022-03-29 09:55:39',1,NULL,NULL,4,'Interbat','INTER',1),(299,'2022-03-29 09:55:39',1,NULL,NULL,4,'Laneige','LANEI',1),(300,'2022-03-29 09:55:39',1,NULL,NULL,4,'Mamonde','MAMON',1),(301,'2022-03-29 09:55:39',1,NULL,NULL,4,'Mecard','MECAR',1),(302,'2022-03-29 09:55:39',1,NULL,NULL,4,'Mentos','MENTO',1),(303,'2022-03-29 09:55:39',1,NULL,NULL,4,'Mustela','MUSTE',1),(304,'2022-03-29 09:55:39',1,NULL,NULL,4,'Nestle','NESTL',1),(305,'2022-03-29 09:55:39',1,NULL,NULL,4,'Nutrition','NUTRI',1),(306,'2022-03-29 09:55:39',1,NULL,NULL,4,'P&G Health','PNGHE',1),(307,'2022-03-29 09:55:39',1,NULL,NULL,4,'Pillowpeople','PILLO',1),(308,'2022-03-29 09:55:39',1,NULL,NULL,4,'Purina','PURIN',1),(309,'2022-03-29 09:55:39',1,NULL,NULL,4,'Sulwhasoo','SULWH',1),(310,'2022-03-29 09:55:49',1,NULL,NULL,5,'Anessa','ANESS',1),(311,'2022-03-29 09:55:49',1,NULL,NULL,5,'BEBE','BEBEB',1),(312,'2022-03-29 09:55:49',1,NULL,NULL,5,'Cetaphil','CETAP',1),(313,'2022-03-29 09:55:49',1,NULL,NULL,5,'cocacola','COCAC',1),(314,'2022-03-29 09:55:49',1,NULL,NULL,5,'Combiphar','COMBH',1),(315,'2022-03-29 09:55:49',1,NULL,NULL,5,'Innisfree','INNIS',1),(316,'2022-03-29 09:55:49',1,NULL,NULL,5,'Interbat','INTER',1),(317,'2022-03-29 09:55:49',1,NULL,NULL,5,'Laneige','LANEI',1),(318,'2022-03-29 09:55:49',1,NULL,NULL,5,'Mamonde','MAMON',1),(319,'2022-03-29 09:55:49',1,NULL,NULL,5,'Mecard','MECAR',1),(320,'2022-03-29 09:55:49',1,NULL,NULL,5,'Mentos','MENTO',1),(321,'2022-03-29 09:55:49',1,NULL,NULL,5,'Mustela','MUSTE',1),(322,'2022-03-29 09:55:49',1,NULL,NULL,5,'Nestle','NESTL',1),(323,'2022-03-29 09:55:49',1,NULL,NULL,5,'Nutrition','NUTRI',1),(324,'2022-03-29 09:55:49',1,NULL,NULL,5,'P&G Health','PNGHE',1),(325,'2022-03-29 09:55:49',1,NULL,NULL,5,'Pillowpeople','PILLO',1),(326,'2022-03-29 09:55:49',1,NULL,NULL,5,'Purina','PURIN',1),(327,'2022-03-29 09:55:49',1,NULL,NULL,5,'Sulwhasoo','SULWH',1),(328,'2022-03-29 09:56:15',1,NULL,NULL,6,'Anessa','ANESS',1),(329,'2022-03-29 09:56:15',1,NULL,NULL,6,'BEBE','BEBEB',1),(330,'2022-03-29 09:56:15',1,NULL,NULL,6,'Cetaphil','CETAP',1),(331,'2022-03-29 09:56:15',1,NULL,NULL,6,'cocacola','COCAC',1),(332,'2022-03-29 09:56:15',1,NULL,NULL,6,'Combiphar','COMBH',1),(333,'2022-03-29 09:56:15',1,NULL,NULL,6,'Innisfree','INNIS',1),(334,'2022-03-29 09:56:15',1,NULL,NULL,6,'Interbat','INTER',1),(335,'2022-03-29 09:56:15',1,NULL,NULL,6,'Laneige','LANEI',1),(336,'2022-03-29 09:56:15',1,NULL,NULL,6,'Mamonde','MAMON',1),(337,'2022-03-29 09:56:15',1,NULL,NULL,6,'Mecard','MECAR',1),(338,'2022-03-29 09:56:15',1,NULL,NULL,6,'Mentos','MENTO',1),(339,'2022-03-29 09:56:15',1,NULL,NULL,6,'Mustela','MUSTE',1),(340,'2022-03-29 09:56:15',1,NULL,NULL,6,'Nestle','NESTL',1),(341,'2022-03-29 09:56:15',1,NULL,NULL,6,'Nutrition','NUTRI',1),(342,'2022-03-29 09:56:15',1,NULL,NULL,6,'P&G Health','PNGHE',1),(343,'2022-03-29 09:56:15',1,NULL,NULL,6,'Pillowpeople','PILLO',1),(344,'2022-03-29 09:56:15',1,NULL,NULL,6,'Purina','PURIN',1),(345,'2022-03-29 09:56:15',1,NULL,NULL,6,'Sulwhasoo','SULWH',1),(346,'2022-03-29 09:56:26',1,NULL,NULL,7,'Anessa','ANESS',1),(347,'2022-03-29 09:56:26',1,NULL,NULL,7,'BEBE','BEBEB',1),(348,'2022-03-29 09:56:26',1,NULL,NULL,7,'Cetaphil','CETAP',1),(349,'2022-03-29 09:56:26',1,NULL,NULL,7,'cocacola','COCAC',1),(350,'2022-03-29 09:56:26',1,NULL,NULL,7,'Combiphar','COMBH',1),(351,'2022-03-29 09:56:26',1,NULL,NULL,7,'Innisfree','INNIS',1),(352,'2022-03-29 09:56:26',1,NULL,NULL,7,'Interbat','INTER',1),(353,'2022-03-29 09:56:26',1,NULL,NULL,7,'Laneige','LANEI',1),(354,'2022-03-29 09:56:26',1,NULL,NULL,7,'Mamonde','MAMON',1),(355,'2022-03-29 09:56:26',1,NULL,NULL,7,'Mecard','MECAR',1),(356,'2022-03-29 09:56:26',1,NULL,NULL,7,'Mentos','MENTO',1),(357,'2022-03-29 09:56:26',1,NULL,NULL,7,'Mustela','MUSTE',1),(358,'2022-03-29 09:56:26',1,NULL,NULL,7,'Nestle','NESTL',1),(359,'2022-03-29 09:56:26',1,NULL,NULL,7,'Nutrition','NUTRI',1),(360,'2022-03-29 09:56:26',1,NULL,NULL,7,'P&G Health','PNGHE',1),(361,'2022-03-29 09:56:26',1,NULL,NULL,7,'Pillowpeople','PILLO',1),(362,'2022-03-29 09:56:26',1,NULL,NULL,7,'Purina','PURIN',1),(363,'2022-03-29 09:56:26',1,NULL,NULL,7,'Sulwhasoo','SULWH',1),(364,'2022-03-29 09:56:35',1,NULL,NULL,8,'Anessa','ANESS',1),(365,'2022-03-29 09:56:35',1,NULL,NULL,8,'BEBE','BEBEB',1),(366,'2022-03-29 09:56:35',1,NULL,NULL,8,'Cetaphil','CETAP',1),(367,'2022-03-29 09:56:35',1,NULL,NULL,8,'cocacola','COCAC',1),(368,'2022-03-29 09:56:35',1,NULL,NULL,8,'Combiphar','COMBH',1),(369,'2022-03-29 09:56:35',1,NULL,NULL,8,'Innisfree','INNIS',1),(370,'2022-03-29 09:56:35',1,NULL,NULL,8,'Interbat','INTER',1),(371,'2022-03-29 09:56:35',1,NULL,NULL,8,'Laneige','LANEI',1),(372,'2022-03-29 09:56:35',1,NULL,NULL,8,'Mamonde','MAMON',1),(373,'2022-03-29 09:56:35',1,NULL,NULL,8,'Mecard','MECAR',1),(374,'2022-03-29 09:56:35',1,NULL,NULL,8,'Mentos','MENTO',1),(375,'2022-03-29 09:56:35',1,NULL,NULL,8,'Mustela','MUSTE',1),(376,'2022-03-29 09:56:35',1,NULL,NULL,8,'Nestle','NESTL',1),(377,'2022-03-29 09:56:35',1,NULL,NULL,8,'Nutrition','NUTRI',1),(378,'2022-03-29 09:56:35',1,NULL,NULL,8,'P&G Health','PNGHE',1),(379,'2022-03-29 09:56:35',1,NULL,NULL,8,'Pillowpeople','PILLO',1),(380,'2022-03-29 09:56:35',1,NULL,NULL,8,'Purina','PURIN',1),(381,'2022-03-29 09:56:35',1,NULL,NULL,8,'Sulwhasoo','SULWH',1),(382,'2022-03-29 09:56:54',1,NULL,NULL,9,'Anessa','ANESS',1),(383,'2022-03-29 09:56:54',1,NULL,NULL,9,'BEBE','BEBEB',1),(384,'2022-03-29 09:56:54',1,NULL,NULL,9,'Cetaphil','CETAP',1),(385,'2022-03-29 09:56:54',1,NULL,NULL,9,'cocacola','COCAC',1),(386,'2022-03-29 09:56:54',1,NULL,NULL,9,'Combiphar','COMBH',1),(387,'2022-03-29 09:56:54',1,NULL,NULL,9,'Innisfree','INNIS',1),(388,'2022-03-29 09:56:54',1,NULL,NULL,9,'Interbat','INTER',1),(389,'2022-03-29 09:56:54',1,NULL,NULL,9,'Laneige','LANEI',1),(390,'2022-03-29 09:56:54',1,NULL,NULL,9,'Mamonde','MAMON',1),(391,'2022-03-29 09:56:54',1,NULL,NULL,9,'Mecard','MECAR',1),(392,'2022-03-29 09:56:54',1,NULL,NULL,9,'Mentos','MENTO',1),(393,'2022-03-29 09:56:54',1,NULL,NULL,9,'Mustela','MUSTE',1),(394,'2022-03-29 09:56:54',1,NULL,NULL,9,'Nestle','NESTL',1),(395,'2022-03-29 09:56:54',1,NULL,NULL,9,'Nutrition','NUTRI',1),(396,'2022-03-29 09:56:54',1,NULL,NULL,9,'P&G Health','PNGHE',1),(397,'2022-03-29 09:56:54',1,NULL,NULL,9,'Pillowpeople','PILLO',1),(398,'2022-03-29 09:56:54',1,NULL,NULL,9,'Purina','PURIN',1),(399,'2022-03-29 09:56:54',1,NULL,NULL,9,'Sulwhasoo','SULWH',1),(400,'2022-03-29 09:57:02',1,NULL,NULL,10,'Anessa','ANESS',1),(401,'2022-03-29 09:57:02',1,NULL,NULL,10,'BEBE','BEBEB',1),(402,'2022-03-29 09:57:02',1,NULL,NULL,10,'Cetaphil','CETAP',1),(403,'2022-03-29 09:57:02',1,NULL,NULL,10,'cocacola','COCAC',1),(404,'2022-03-29 09:57:02',1,NULL,NULL,10,'Combiphar','COMBH',1),(405,'2022-03-29 09:57:02',1,NULL,NULL,10,'Innisfree','INNIS',1),(406,'2022-03-29 09:57:02',1,NULL,NULL,10,'Interbat','INTER',1),(407,'2022-03-29 09:57:02',1,NULL,NULL,10,'Laneige','LANEI',1),(408,'2022-03-29 09:57:02',1,NULL,NULL,10,'Mamonde','MAMON',1),(409,'2022-03-29 09:57:02',1,NULL,NULL,10,'Mecard','MECAR',1),(410,'2022-03-29 09:57:02',1,NULL,NULL,10,'Mentos','MENTO',1),(411,'2022-03-29 09:57:02',1,NULL,NULL,10,'Mustela','MUSTE',1),(412,'2022-03-29 09:57:02',1,NULL,NULL,10,'Nestle','NESTL',1),(413,'2022-03-29 09:57:02',1,NULL,NULL,10,'Nutrition','NUTRI',1),(414,'2022-03-29 09:57:02',1,NULL,NULL,10,'P&G Health','PNGHE',1),(415,'2022-03-29 09:57:02',1,NULL,NULL,10,'Pillowpeople','PILLO',1),(416,'2022-03-29 09:57:02',1,NULL,NULL,10,'Purina','PURIN',1),(417,'2022-03-29 09:57:02',1,NULL,NULL,10,'Sulwhasoo','SULWH',1),(418,'2022-03-29 09:57:11',1,NULL,NULL,11,'Anessa','ANESS',1),(419,'2022-03-29 09:57:11',1,NULL,NULL,11,'BEBE','BEBEB',1),(420,'2022-03-29 09:57:11',1,NULL,NULL,11,'Cetaphil','CETAP',1),(421,'2022-03-29 09:57:11',1,NULL,NULL,11,'cocacola','COCAC',1),(422,'2022-03-29 09:57:11',1,NULL,NULL,11,'Combiphar','COMBH',1),(423,'2022-03-29 09:57:11',1,NULL,NULL,11,'Innisfree','INNIS',1),(424,'2022-03-29 09:57:11',1,NULL,NULL,11,'Interbat','INTER',1),(425,'2022-03-29 09:57:11',1,NULL,NULL,11,'Laneige','LANEI',1),(426,'2022-03-29 09:57:11',1,NULL,NULL,11,'Mamonde','MAMON',1),(427,'2022-03-29 09:57:11',1,NULL,NULL,11,'Mecard','MECAR',1),(428,'2022-03-29 09:57:11',1,NULL,NULL,11,'Mentos','MENTO',1),(429,'2022-03-29 09:57:11',1,NULL,NULL,11,'Mustela','MUSTE',1),(430,'2022-03-29 09:57:11',1,NULL,NULL,11,'Nestle','NESTL',1),(431,'2022-03-29 09:57:11',1,NULL,NULL,11,'Nutrition','NUTRI',1),(432,'2022-03-29 09:57:11',1,NULL,NULL,11,'P&G Health','PNGHE',1),(433,'2022-03-29 09:57:11',1,NULL,NULL,11,'Pillowpeople','PILLO',1),(434,'2022-03-29 09:57:11',1,NULL,NULL,11,'Purina','PURIN',1),(435,'2022-03-29 09:57:11',1,NULL,NULL,11,'Sulwhasoo','SULWH',1),(436,'2022-03-29 09:57:20',1,NULL,NULL,12,'Anessa','ANESS',1),(437,'2022-03-29 09:57:20',1,NULL,NULL,12,'BEBE','BEBEB',1),(438,'2022-03-29 09:57:20',1,NULL,NULL,12,'Cetaphil','CETAP',1),(439,'2022-03-29 09:57:20',1,NULL,NULL,12,'cocacola','COCAC',1),(440,'2022-03-29 09:57:20',1,NULL,NULL,12,'Combiphar','COMBH',1),(441,'2022-03-29 09:57:20',1,NULL,NULL,12,'Innisfree','INNIS',1),(442,'2022-03-29 09:57:20',1,NULL,NULL,12,'Interbat','INTER',1),(443,'2022-03-29 09:57:20',1,NULL,NULL,12,'Laneige','LANEI',1),(444,'2022-03-29 09:57:20',1,NULL,NULL,12,'Mamonde','MAMON',1),(445,'2022-03-29 09:57:20',1,NULL,NULL,12,'Mecard','MECAR',1),(446,'2022-03-29 09:57:20',1,NULL,NULL,12,'Mentos','MENTO',1),(447,'2022-03-29 09:57:20',1,NULL,NULL,12,'Mustela','MUSTE',1),(448,'2022-03-29 09:57:20',1,NULL,NULL,12,'Nestle','NESTL',1),(449,'2022-03-29 09:57:20',1,NULL,NULL,12,'Nutrition','NUTRI',1),(450,'2022-03-29 09:57:20',1,NULL,NULL,12,'P&G Health','PNGHE',1),(451,'2022-03-29 09:57:20',1,NULL,NULL,12,'Pillowpeople','PILLO',1),(452,'2022-03-29 09:57:20',1,NULL,NULL,12,'Purina','PURIN',1),(453,'2022-03-29 09:57:20',1,NULL,NULL,12,'Sulwhasoo','SULWH',1),(454,'2022-03-29 09:57:29',1,NULL,NULL,13,'Anessa','ANESS',1),(455,'2022-03-29 09:57:29',1,NULL,NULL,13,'BEBE','BEBEB',1),(456,'2022-03-29 09:57:29',1,NULL,NULL,13,'Cetaphil','CETAP',1),(457,'2022-03-29 09:57:29',1,NULL,NULL,13,'cocacola','COCAC',1),(458,'2022-03-29 09:57:29',1,NULL,NULL,13,'Combiphar','COMBH',1),(459,'2022-03-29 09:57:29',1,NULL,NULL,13,'Innisfree','INNIS',1),(460,'2022-03-29 09:57:29',1,NULL,NULL,13,'Interbat','INTER',1),(461,'2022-03-29 09:57:29',1,NULL,NULL,13,'Laneige','LANEI',1),(462,'2022-03-29 09:57:29',1,NULL,NULL,13,'Mamonde','MAMON',1),(463,'2022-03-29 09:57:29',1,NULL,NULL,13,'Mecard','MECAR',1),(464,'2022-03-29 09:57:29',1,NULL,NULL,13,'Mentos','MENTO',1),(465,'2022-03-29 09:57:29',1,NULL,NULL,13,'Mustela','MUSTE',1),(466,'2022-03-29 09:57:29',1,NULL,NULL,13,'Nestle','NESTL',1),(467,'2022-03-29 09:57:29',1,NULL,NULL,13,'Nutrition','NUTRI',1),(468,'2022-03-29 09:57:29',1,NULL,NULL,13,'P&G Health','PNGHE',1),(469,'2022-03-29 09:57:29',1,NULL,NULL,13,'Pillowpeople','PILLO',1),(470,'2022-03-29 09:57:29',1,NULL,NULL,13,'Purina','PURIN',1),(471,'2022-03-29 09:57:29',1,NULL,NULL,13,'Sulwhasoo','SULWH',1),(472,'2022-03-29 09:57:36',1,NULL,NULL,14,'Anessa','ANESS',1),(473,'2022-03-29 09:57:36',1,NULL,NULL,14,'BEBE','BEBEB',1),(474,'2022-03-29 09:57:36',1,NULL,NULL,14,'Cetaphil','CETAP',1),(475,'2022-03-29 09:57:36',1,NULL,NULL,14,'cocacola','COCAC',1),(476,'2022-03-29 09:57:36',1,NULL,NULL,14,'Combiphar','COMBH',1),(477,'2022-03-29 09:57:36',1,NULL,NULL,14,'Innisfree','INNIS',1),(478,'2022-03-29 09:57:36',1,NULL,NULL,14,'Interbat','INTER',1),(479,'2022-03-29 09:57:36',1,NULL,NULL,14,'Laneige','LANEI',1),(480,'2022-03-29 09:57:36',1,NULL,NULL,14,'Mamonde','MAMON',1),(481,'2022-03-29 09:57:36',1,NULL,NULL,14,'Mecard','MECAR',1),(482,'2022-03-29 09:57:36',1,NULL,NULL,14,'Mentos','MENTO',1),(483,'2022-03-29 09:57:36',1,NULL,NULL,14,'Mustela','MUSTE',1),(484,'2022-03-29 09:57:36',1,NULL,NULL,14,'Nestle','NESTL',1),(485,'2022-03-29 09:57:36',1,NULL,NULL,14,'Nutrition','NUTRI',1),(486,'2022-03-29 09:57:36',1,NULL,NULL,14,'P&G Health','PNGHE',1),(487,'2022-03-29 09:57:36',1,NULL,NULL,14,'Pillowpeople','PILLO',1),(488,'2022-03-29 09:57:36',1,NULL,NULL,14,'Purina','PURIN',1),(489,'2022-03-29 09:57:36',1,NULL,NULL,14,'Sulwhasoo','SULWH',1),(490,'2022-03-29 14:06:02',1,NULL,NULL,1,'Anessa','ANESS',1),(491,'2022-03-29 14:06:02',1,NULL,NULL,1,'BEBE','BEBEB',1),(492,'2022-03-29 14:06:02',1,NULL,NULL,1,'Cetaphil','CETAP',1),(493,'2022-03-29 14:06:02',1,NULL,NULL,1,'cocacola','COCAC',1),(494,'2022-03-29 14:06:02',1,NULL,NULL,1,'Combiphar','COMBH',1),(495,'2022-03-29 14:06:02',1,NULL,NULL,1,'Innisfree','INNIS',1),(496,'2022-03-29 14:06:02',1,NULL,NULL,1,'Interbat','INTER',1),(497,'2022-03-29 14:06:02',1,NULL,NULL,1,'Laneige','LANEI',1),(498,'2022-03-29 14:06:02',1,NULL,NULL,1,'Mamonde','MAMON',1),(499,'2022-03-29 14:06:02',1,NULL,NULL,1,'Mecard','MECAR',1),(500,'2022-03-29 14:06:02',1,NULL,NULL,1,'Mentos','MENTO',1),(501,'2022-03-29 14:06:02',1,NULL,NULL,1,'Mustela','MUSTE',1),(502,'2022-03-29 14:06:02',1,NULL,NULL,1,'Nestle','NESTL',1),(503,'2022-03-29 14:06:02',1,NULL,NULL,1,'Nutrition','NUTRI',1),(504,'2022-03-29 14:06:02',1,NULL,NULL,1,'P&G Health','PNGHE',1),(505,'2022-03-29 14:06:02',1,NULL,NULL,1,'Pillowpeople','PILLO',1),(506,'2022-03-29 14:06:02',1,NULL,NULL,1,'Purina','PURIN',1),(507,'2022-03-29 14:06:02',1,NULL,NULL,1,'Sulwhasoo','SULWH',1),(508,'2022-03-29 14:06:02',1,NULL,NULL,1,'TRC-1','TRC-1',1),(509,'2022-03-29 14:06:02',1,NULL,NULL,1,'TRC-2','TRC-2',1);
/*!40000 ALTER TABLE `tb_user_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_market`
--

DROP TABLE IF EXISTS `tb_user_market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_market` (
  `tbum_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbum_create_date` datetime DEFAULT NULL,
  `tbum_create_id` int(11) DEFAULT NULL,
  `tbum_update_date` datetime DEFAULT NULL,
  `tbum_update_id` int(11) DEFAULT NULL,
  `tbu_id` int(11) DEFAULT NULL,
  `tbm_market` varchar(255) DEFAULT NULL,
  `tbm_market_check` int(11) DEFAULT NULL,
  PRIMARY KEY (`tbum_id`),
  KEY `tb_user_market_tbu_id_index` (`tbu_id`),
  KEY `tb_user_market_tbm_market_index` (`tbm_market`),
  KEY `tb_user_market_tbm_market_check_index` (`tbm_market_check`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_market`
--

LOCK TABLES `tb_user_market` WRITE;
/*!40000 ALTER TABLE `tb_user_market` DISABLE KEYS */;
INSERT INTO `tb_user_market` VALUES (256,'2022-03-29 09:55:17',1,NULL,NULL,2,'Principal A',1),(257,'2022-03-29 09:55:17',1,NULL,NULL,2,'Distributor A',1),(258,'2022-03-29 09:55:17',1,NULL,NULL,2,'Subdist A',1),(259,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir A',1),(260,'2022-03-29 09:55:17',1,NULL,NULL,2,'Motorist A',1),(261,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir B',1),(262,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir C',1),(263,'2022-03-29 09:55:17',1,NULL,NULL,2,'Subdist B',1),(264,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir D',1),(265,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir E',1),(266,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir F',1),(267,'2022-03-29 09:55:17',1,NULL,NULL,2,'Grosir G',1),(268,'2022-03-29 09:55:17',1,NULL,NULL,2,'Subdist C',1),(269,'2022-03-29 09:55:17',1,NULL,NULL,2,'Distributor B',1),(270,'2022-03-29 09:55:17',1,NULL,NULL,2,'Subdist D',1),(271,'2022-03-29 09:55:17',1,NULL,NULL,2,'Subdist E',1),(272,'2022-03-29 09:55:28',1,NULL,NULL,3,'Distributor A',1),(273,'2022-03-29 09:55:28',1,NULL,NULL,3,'Distributor B',1),(274,'2022-03-29 09:55:28',1,NULL,NULL,3,'Subdist A',1),(275,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir A',1),(276,'2022-03-29 09:55:28',1,NULL,NULL,3,'Motorist A',1),(277,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir B',1),(278,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir C',1),(279,'2022-03-29 09:55:28',1,NULL,NULL,3,'Subdist B',1),(280,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir D',1),(281,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir E',1),(282,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir F',1),(283,'2022-03-29 09:55:28',1,NULL,NULL,3,'Grosir G',1),(284,'2022-03-29 09:55:28',1,NULL,NULL,3,'Subdist C',1),(285,'2022-03-29 09:55:28',1,NULL,NULL,3,'Subdist D',1),(286,'2022-03-29 09:55:28',1,NULL,NULL,3,'Subdist E',1),(287,'2022-03-29 09:55:39',1,NULL,NULL,4,'Distributor A',1),(288,'2022-03-29 09:55:39',1,NULL,NULL,4,'Distributor B',1),(289,'2022-03-29 09:55:39',1,NULL,NULL,4,'Subdist A',1),(290,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir A',1),(291,'2022-03-29 09:55:39',1,NULL,NULL,4,'Motorist A',1),(292,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir B',1),(293,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir C',1),(294,'2022-03-29 09:55:39',1,NULL,NULL,4,'Subdist B',1),(295,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir D',1),(296,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir E',1),(297,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir F',1),(298,'2022-03-29 09:55:39',1,NULL,NULL,4,'Grosir G',1),(299,'2022-03-29 09:55:39',1,NULL,NULL,4,'Subdist C',1),(300,'2022-03-29 09:55:39',1,NULL,NULL,4,'Subdist D',1),(301,'2022-03-29 09:55:39',1,NULL,NULL,4,'Subdist E',1),(302,'2022-03-29 09:55:49',1,NULL,NULL,5,'Subdist A',1),(303,'2022-03-29 09:55:49',1,NULL,NULL,5,'Subdist B',1),(304,'2022-03-29 09:55:49',1,NULL,NULL,5,'Subdist C',1),(305,'2022-03-29 09:55:49',1,NULL,NULL,5,'Subdist D',1),(306,'2022-03-29 09:55:49',1,NULL,NULL,5,'Subdist E',1),(307,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir A',1),(308,'2022-03-29 09:55:49',1,NULL,NULL,5,'Motorist A',1),(309,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir B',1),(310,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir C',1),(311,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir D',1),(312,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir E',1),(313,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir F',1),(314,'2022-03-29 09:55:49',1,NULL,NULL,5,'Grosir G',1),(315,'2022-03-29 09:56:15',1,NULL,NULL,6,'Subdist A',1),(316,'2022-03-29 09:56:15',1,NULL,NULL,6,'Subdist B',1),(317,'2022-03-29 09:56:15',1,NULL,NULL,6,'Subdist C',1),(318,'2022-03-29 09:56:15',1,NULL,NULL,6,'Subdist D',1),(319,'2022-03-29 09:56:15',1,NULL,NULL,6,'Subdist E',1),(320,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir A',1),(321,'2022-03-29 09:56:15',1,NULL,NULL,6,'Motorist A',1),(322,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir B',1),(323,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir C',1),(324,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir D',1),(325,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir E',1),(326,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir F',1),(327,'2022-03-29 09:56:15',1,NULL,NULL,6,'Grosir G',1),(328,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir A',1),(329,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir B',1),(330,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir C',1),(331,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir D',1),(332,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir E',1),(333,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir F',1),(334,'2022-03-29 09:56:26',1,NULL,NULL,7,'Grosir G',1),(335,'2022-03-29 09:56:26',1,NULL,NULL,7,'Motorist A',1),(336,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir A',1),(337,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir B',1),(338,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir C',1),(339,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir D',1),(340,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir E',1),(341,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir F',1),(342,'2022-03-29 09:56:35',1,NULL,NULL,8,'Grosir G',1),(343,'2022-03-29 09:56:35',1,NULL,NULL,8,'Motorist A',1),(344,'2022-03-29 09:56:54',1,NULL,NULL,9,'Motorist A',1),(345,'2022-03-29 09:57:02',1,NULL,NULL,10,'Motorist A',1),(346,'2022-03-29 09:57:11',1,NULL,NULL,11,'Distributor A',1),(347,'2022-03-29 09:57:11',1,NULL,NULL,11,'Distributor B',1),(348,'2022-03-29 09:57:11',1,NULL,NULL,11,'Subdist A',1),(349,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir A',1),(350,'2022-03-29 09:57:11',1,NULL,NULL,11,'Motorist A',1),(351,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir B',1),(352,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir C',1),(353,'2022-03-29 09:57:11',1,NULL,NULL,11,'Subdist B',1),(354,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir D',1),(355,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir E',1),(356,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir F',1),(357,'2022-03-29 09:57:11',1,NULL,NULL,11,'Grosir G',1),(358,'2022-03-29 09:57:11',1,NULL,NULL,11,'Subdist C',1),(359,'2022-03-29 09:57:11',1,NULL,NULL,11,'Subdist D',1),(360,'2022-03-29 09:57:11',1,NULL,NULL,11,'Subdist E',1),(361,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir A',1),(362,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir B',1),(363,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir C',1),(364,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir D',1),(365,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir E',1),(366,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir F',1),(367,'2022-03-29 09:57:20',1,NULL,NULL,12,'Grosir G',1),(368,'2022-03-29 09:57:20',1,NULL,NULL,12,'Motorist A',1),(369,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir A',1),(370,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir B',1),(371,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir C',1),(372,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir D',1),(373,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir E',1),(374,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir F',1),(375,'2022-03-29 09:57:29',1,NULL,NULL,13,'Grosir G',1),(376,'2022-03-29 09:57:29',1,NULL,NULL,13,'Motorist A',1),(377,'2022-03-29 09:57:36',1,NULL,NULL,14,'Principal A',1),(378,'2022-03-29 09:57:36',1,NULL,NULL,14,'Distributor A',1),(379,'2022-03-29 09:57:36',1,NULL,NULL,14,'Subdist A',1),(380,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir A',1),(381,'2022-03-29 09:57:36',1,NULL,NULL,14,'Motorist A',1),(382,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir B',1),(383,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir C',1),(384,'2022-03-29 09:57:36',1,NULL,NULL,14,'Subdist B',1),(385,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir D',1),(386,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir E',1),(387,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir F',1),(388,'2022-03-29 09:57:36',1,NULL,NULL,14,'Grosir G',1),(389,'2022-03-29 09:57:36',1,NULL,NULL,14,'Subdist C',1),(390,'2022-03-29 09:57:36',1,NULL,NULL,14,'Distributor B',1),(391,'2022-03-29 09:57:36',1,NULL,NULL,14,'Subdist D',1),(392,'2022-03-29 09:57:36',1,NULL,NULL,14,'Subdist E',1),(393,'2022-03-29 14:06:02',1,NULL,NULL,1,'Principal A',1),(394,'2022-03-29 14:06:02',1,NULL,NULL,1,'Distributor A',1),(395,'2022-03-29 14:06:02',1,NULL,NULL,1,'Subdist A',1),(396,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir A',1),(397,'2022-03-29 14:06:02',1,NULL,NULL,1,'Motorist A',0),(398,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir B',1),(399,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir C',1),(400,'2022-03-29 14:06:02',1,NULL,NULL,1,'Subdist B',1),(401,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir D',1),(402,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir E',1),(403,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir F',1),(404,'2022-03-29 14:06:02',1,NULL,NULL,1,'Grosir G',1),(405,'2022-03-29 14:06:02',1,NULL,NULL,1,'Subdist C',1),(406,'2022-03-29 14:06:02',1,NULL,NULL,1,'Distributor B',1),(407,'2022-03-29 14:06:02',1,NULL,NULL,1,'Subdist D',1),(408,'2022-03-29 14:06:02',1,NULL,NULL,1,'Subdist E',1);
/*!40000 ALTER TABLE `tb_user_market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_menu`
--

DROP TABLE IF EXISTS `tb_user_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_menu` (
  `tbum_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbum_create_date` datetime DEFAULT NULL,
  `tbum_create_id` int(11) DEFAULT NULL,
  `tbum_update_date` datetime DEFAULT NULL,
  `tbum_update_id` int(11) DEFAULT NULL,
  `tbu_id` int(11) DEFAULT NULL,
  `tbm_id` int(11) DEFAULT NULL,
  `tbum_add` int(11) DEFAULT NULL,
  `tbum_edit` int(11) DEFAULT NULL,
  `tbum_delete` int(11) DEFAULT NULL,
  `tbum_view` int(11) DEFAULT NULL,
  PRIMARY KEY (`tbum_id`),
  KEY `tb_user_menu_tbu_id_index` (`tbu_id`),
  KEY `tb_user_menu_tbm_id_index` (`tbm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_menu`
--

LOCK TABLES `tb_user_menu` WRITE;
/*!40000 ALTER TABLE `tb_user_menu` DISABLE KEYS */;
INSERT INTO `tb_user_menu` VALUES (128,'2022-03-29 09:55:17',1,NULL,NULL,2,4,1,1,1,1),(129,'2022-03-29 09:55:17',1,NULL,NULL,2,7,1,1,1,1),(130,'2022-03-29 09:55:17',1,NULL,NULL,2,2,1,1,1,1),(131,'2022-03-29 09:55:17',1,NULL,NULL,2,3,1,1,1,1),(132,'2022-03-29 09:55:17',1,NULL,NULL,2,1,1,1,1,1),(133,'2022-03-29 09:55:17',1,NULL,NULL,2,5,1,1,1,1),(134,'2022-03-29 09:55:17',1,NULL,NULL,2,6,1,1,1,0),(135,'2022-03-29 09:55:28',1,NULL,NULL,3,4,1,1,1,1),(136,'2022-03-29 09:55:28',1,NULL,NULL,3,7,1,1,1,0),(137,'2022-03-29 09:55:28',1,NULL,NULL,3,2,1,1,1,1),(138,'2022-03-29 09:55:28',1,NULL,NULL,3,3,1,1,1,1),(139,'2022-03-29 09:55:28',1,NULL,NULL,3,1,1,1,1,1),(140,'2022-03-29 09:55:28',1,NULL,NULL,3,5,1,1,1,1),(141,'2022-03-29 09:55:28',1,NULL,NULL,3,6,1,1,1,0),(142,'2022-03-29 09:55:39',1,NULL,NULL,4,4,1,1,1,1),(143,'2022-03-29 09:55:39',1,NULL,NULL,4,7,1,1,1,0),(144,'2022-03-29 09:55:39',1,NULL,NULL,4,2,1,1,1,1),(145,'2022-03-29 09:55:39',1,NULL,NULL,4,3,1,1,1,1),(146,'2022-03-29 09:55:39',1,NULL,NULL,4,1,1,1,1,1),(147,'2022-03-29 09:55:39',1,NULL,NULL,4,5,1,1,1,1),(148,'2022-03-29 09:55:39',1,NULL,NULL,4,6,1,1,1,0),(149,'2022-03-29 09:55:49',1,NULL,NULL,5,4,1,1,1,1),(150,'2022-03-29 09:55:49',1,NULL,NULL,5,7,1,1,1,0),(151,'2022-03-29 09:55:49',1,NULL,NULL,5,2,1,1,1,1),(152,'2022-03-29 09:55:49',1,NULL,NULL,5,3,1,1,1,1),(153,'2022-03-29 09:55:49',1,NULL,NULL,5,1,1,1,1,0),(154,'2022-03-29 09:55:49',1,NULL,NULL,5,5,1,1,1,1),(155,'2022-03-29 09:55:49',1,NULL,NULL,5,6,1,1,1,0),(156,'2022-03-29 09:56:15',1,NULL,NULL,6,4,1,1,1,1),(157,'2022-03-29 09:56:15',1,NULL,NULL,6,7,1,1,1,0),(158,'2022-03-29 09:56:15',1,NULL,NULL,6,2,1,1,1,1),(159,'2022-03-29 09:56:15',1,NULL,NULL,6,3,1,1,1,1),(160,'2022-03-29 09:56:15',1,NULL,NULL,6,1,1,1,1,0),(161,'2022-03-29 09:56:15',1,NULL,NULL,6,5,1,1,1,1),(162,'2022-03-29 09:56:15',1,NULL,NULL,6,6,1,1,1,0),(163,'2022-03-29 09:56:26',1,NULL,NULL,7,4,1,1,1,1),(164,'2022-03-29 09:56:26',1,NULL,NULL,7,7,1,1,1,0),(165,'2022-03-29 09:56:26',1,NULL,NULL,7,2,1,1,1,0),(166,'2022-03-29 09:56:26',1,NULL,NULL,7,3,1,1,1,1),(167,'2022-03-29 09:56:26',1,NULL,NULL,7,1,1,1,1,0),(168,'2022-03-29 09:56:26',1,NULL,NULL,7,5,1,1,1,1),(169,'2022-03-29 09:56:26',1,NULL,NULL,7,6,1,1,1,0),(170,'2022-03-29 09:56:35',1,NULL,NULL,8,4,1,1,1,1),(171,'2022-03-29 09:56:35',1,NULL,NULL,8,7,1,1,1,0),(172,'2022-03-29 09:56:35',1,NULL,NULL,8,2,1,1,1,0),(173,'2022-03-29 09:56:35',1,NULL,NULL,8,3,1,1,1,1),(174,'2022-03-29 09:56:35',1,NULL,NULL,8,1,1,1,1,0),(175,'2022-03-29 09:56:35',1,NULL,NULL,8,5,1,1,1,1),(176,'2022-03-29 09:56:35',1,NULL,NULL,8,6,1,1,1,0),(177,'2022-03-29 09:56:54',1,NULL,NULL,9,4,1,1,1,0),(178,'2022-03-29 09:56:54',1,NULL,NULL,9,7,1,1,1,0),(179,'2022-03-29 09:56:54',1,NULL,NULL,9,2,1,1,1,1),(180,'2022-03-29 09:56:54',1,NULL,NULL,9,3,1,1,1,0),(181,'2022-03-29 09:56:54',1,NULL,NULL,9,1,1,1,1,0),(182,'2022-03-29 09:56:54',1,NULL,NULL,9,5,1,1,1,1),(183,'2022-03-29 09:56:54',1,NULL,NULL,9,6,1,1,1,0),(184,'2022-03-29 09:57:02',1,NULL,NULL,10,4,1,1,1,0),(185,'2022-03-29 09:57:02',1,NULL,NULL,10,7,1,1,1,0),(186,'2022-03-29 09:57:02',1,NULL,NULL,10,2,1,1,1,1),(187,'2022-03-29 09:57:02',1,NULL,NULL,10,3,1,1,1,0),(188,'2022-03-29 09:57:02',1,NULL,NULL,10,1,1,1,1,0),(189,'2022-03-29 09:57:02',1,NULL,NULL,10,5,1,1,1,1),(190,'2022-03-29 09:57:02',1,NULL,NULL,10,6,1,1,1,0),(191,'2022-03-29 09:57:11',1,NULL,NULL,11,4,1,1,1,1),(192,'2022-03-29 09:57:11',1,NULL,NULL,11,7,1,1,1,0),(193,'2022-03-29 09:57:11',1,NULL,NULL,11,2,1,1,1,1),(194,'2022-03-29 09:57:11',1,NULL,NULL,11,3,1,1,1,1),(195,'2022-03-29 09:57:11',1,NULL,NULL,11,1,1,1,1,1),(196,'2022-03-29 09:57:11',1,NULL,NULL,11,5,1,1,1,1),(197,'2022-03-29 09:57:11',1,NULL,NULL,11,6,1,1,1,0),(198,'2022-03-29 09:57:20',1,NULL,NULL,12,4,1,1,1,1),(199,'2022-03-29 09:57:20',1,NULL,NULL,12,7,1,1,1,0),(200,'2022-03-29 09:57:20',1,NULL,NULL,12,2,1,1,1,0),(201,'2022-03-29 09:57:20',1,NULL,NULL,12,3,1,1,1,1),(202,'2022-03-29 09:57:20',1,NULL,NULL,12,1,1,1,1,0),(203,'2022-03-29 09:57:20',1,NULL,NULL,12,5,1,1,1,1),(204,'2022-03-29 09:57:20',1,NULL,NULL,12,6,1,1,1,0),(205,'2022-03-29 09:57:29',1,NULL,NULL,13,4,1,1,1,1),(206,'2022-03-29 09:57:29',1,NULL,NULL,13,7,1,1,1,0),(207,'2022-03-29 09:57:29',1,NULL,NULL,13,2,1,1,1,0),(208,'2022-03-29 09:57:29',1,NULL,NULL,13,3,1,1,1,1),(209,'2022-03-29 09:57:29',1,NULL,NULL,13,1,1,1,1,0),(210,'2022-03-29 09:57:29',1,NULL,NULL,13,5,1,1,1,1),(211,'2022-03-29 09:57:29',1,NULL,NULL,13,6,1,1,1,0),(212,'2022-03-29 09:57:36',1,NULL,NULL,14,4,1,1,1,1),(213,'2022-03-29 09:57:36',1,NULL,NULL,14,7,1,1,1,1),(214,'2022-03-29 09:57:36',1,NULL,NULL,14,2,1,1,1,1),(215,'2022-03-29 09:57:36',1,NULL,NULL,14,3,1,1,1,1),(216,'2022-03-29 09:57:36',1,NULL,NULL,14,1,1,1,1,1),(217,'2022-03-29 09:57:36',1,NULL,NULL,14,5,1,1,1,1),(218,'2022-03-29 09:57:36',1,NULL,NULL,14,6,1,1,1,0),(219,'2022-03-29 14:06:02',1,NULL,NULL,1,4,1,1,1,1),(220,'2022-03-29 14:06:02',1,NULL,NULL,1,7,1,1,1,1),(221,'2022-03-29 14:06:02',1,NULL,NULL,1,2,1,1,1,1),(222,'2022-03-29 14:06:02',1,NULL,NULL,1,3,1,1,1,1),(223,'2022-03-29 14:06:02',1,NULL,NULL,1,1,1,1,1,1),(224,'2022-03-29 14:06:02',1,NULL,NULL,1,5,1,1,1,1),(225,'2022-03-29 14:06:02',1,NULL,NULL,1,6,1,1,1,1);
/*!40000 ALTER TABLE `tb_user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_user_brand`
--

DROP TABLE IF EXISTS `view_user_brand`;
/*!50001 DROP VIEW IF EXISTS `view_user_brand`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_user_brand` (
  `uuid` tinyint NOT NULL,
  `tbu_id` tinyint NOT NULL,
  `tbu_email` tinyint NOT NULL,
  `tbu_firstname` tinyint NOT NULL,
  `tbu_lastname` tinyint NOT NULL,
  `tbb_brand` tinyint NOT NULL,
  `tbb_brand_id` tinyint NOT NULL,
  `tbb_brand_check` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_user_menu`
--

DROP TABLE IF EXISTS `view_user_menu`;
/*!50001 DROP VIEW IF EXISTS `view_user_menu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_user_menu` (
  `uuid` tinyint NOT NULL,
  `tbu_id` tinyint NOT NULL,
  `tbu_email` tinyint NOT NULL,
  `tbu_firstname` tinyint NOT NULL,
  `tbu_lastname` tinyint NOT NULL,
  `tbm_id` tinyint NOT NULL,
  `tbm_name` tinyint NOT NULL,
  `tbum_add` tinyint NOT NULL,
  `tbum_edit` tinyint NOT NULL,
  `tbum_delete` tinyint NOT NULL,
  `tbum_view` tinyint NOT NULL,
  `tbm_sort` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_user_brand`
--

/*!50001 DROP TABLE IF EXISTS `view_user_brand`*/;
/*!50001 DROP VIEW IF EXISTS `view_user_brand`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_user_brand` AS select uuid() AS `uuid`,`tbu`.`tbu_id` AS `tbu_id`,`tbu`.`tbu_email` AS `tbu_email`,`tbu`.`tbu_firstname` AS `tbu_firstname`,`tbu`.`tbu_lastname` AS `tbu_lastname`,`tbub`.`tbb_brand` AS `tbb_brand`,`tbub`.`tbb_brand_id` AS `tbb_brand_id`,`tbub`.`tbb_brand_check` AS `tbb_brand_check` from (`tb_user` `tbu` join `tb_user_brand` `tbub` on(`tbu`.`tbu_id` = `tbub`.`tbu_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_user_menu`
--

/*!50001 DROP TABLE IF EXISTS `view_user_menu`*/;
/*!50001 DROP VIEW IF EXISTS `view_user_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_user_menu` AS select uuid() AS `uuid`,`tbu`.`tbu_id` AS `tbu_id`,`tbu`.`tbu_email` AS `tbu_email`,`tbu`.`tbu_firstname` AS `tbu_firstname`,`tbu`.`tbu_lastname` AS `tbu_lastname`,`tbm`.`tbm_id` AS `tbm_id`,`tbm`.`tbm_name` AS `tbm_name`,`tbum`.`tbum_add` AS `tbum_add`,`tbum`.`tbum_edit` AS `tbum_edit`,`tbum`.`tbum_delete` AS `tbum_delete`,`tbum`.`tbum_view` AS `tbum_view`,`tbm`.`tbm_sort` AS `tbm_sort` from ((`tb_user` `tbu` join `tb_user_menu` `tbum` on(`tbu`.`tbu_id` = `tbum`.`tbu_id`)) join `tb_menu` `tbm` on(`tbum`.`tbm_id` = `tbm`.`tbm_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-10 20:25:33
