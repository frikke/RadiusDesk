-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: rd
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.10.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (35,NULL,NULL,NULL,'Realms','A list of realms to which an access provider can belong - DO NOT DELETE!!',71,84),(29,NULL,NULL,NULL,'Access Providers','A container with rights available to Access Providers - DO NOT DELETE!!',1,64),(30,NULL,NULL,NULL,'Permanent Users','A container with rights for Permanent Users - DO NOT DELETE!!',65,70),(31,29,NULL,NULL,'Controllers','A container with the various controllers and their actions which can be used by the Access Providers',2,55),(32,29,NULL,NULL,'Other Rights','A list of other rights which can be configured for an Access Provider',56,63),(33,30,NULL,NULL,'Controllers','A container with the various controllers and their actions which can be used by the Permanent Users',66,67),(34,30,NULL,NULL,'Other Rights','A list of other rights which can be configured for a Permanent User',68,69),(67,31,NULL,NULL,'Realms','',23,32),(68,67,NULL,NULL,'index','',24,25),(63,32,NULL,NULL,'Can Change Rights','This is a key option to allow an Access Provider the ability to change the rights of any of his Access Provider children',59,60),(42,32,NULL,NULL,'View users or vouchers not created self','',57,58),(43,31,NULL,NULL,'Vouchers','',3,6),(44,43,NULL,NULL,'index','',4,5),(45,31,NULL,NULL,'PermanentUsers','',7,10),(46,45,NULL,NULL,'index','',8,9),(64,32,NULL,NULL,'Can disable activity recording','Can disable Activity Recording on Access Provider children',61,62),(58,31,NULL,NULL,'AccessProviders','Access Providers can only do these actions on any access provider that is a child of the Access Provider',11,22),(59,58,NULL,NULL,'index','Without this right, the Access Providers option will not be shown in the Access Provider\'s menu',12,13),(60,58,NULL,NULL,'add','Without this right an Access Provider will not be able to create Access Provider children',14,15),(61,58,NULL,NULL,'edit','',16,17),(62,58,NULL,NULL,'delete','',18,19),(65,58,NULL,NULL,'change_password','',20,21),(69,67,NULL,NULL,'add','',26,27),(70,67,NULL,NULL,'edit','',28,29),(71,67,NULL,NULL,'delete','',30,31),(100,35,'Realm',22,'RootPrivate',NULL,80,81),(89,35,'Realm',11,'AP Private',NULL,76,77),(91,35,'Realm',13,'AP Public',NULL,78,79),(101,35,'Realm',23,'RootPublic',NULL,82,83),(102,31,NULL,NULL,'Nas','Nas Devices - These rights are also considering the hierarchy of the Access Provider',33,44),(103,102,NULL,NULL,'index','Without this right there will be no NAS Devices in the AP\'s menu',34,35),(104,102,NULL,NULL,'add','',36,37),(105,102,NULL,NULL,'edit','',38,39),(106,102,NULL,NULL,'delete','',40,41),(107,31,NULL,NULL,'Tags','Tags for NAS Devices',45,54),(108,107,NULL,NULL,'index','Without this right, there will be no NAS Device tags in the AP\'s menu',46,47),(109,107,NULL,NULL,'add','',48,49),(110,107,NULL,NULL,'edit','',50,51),(111,107,NULL,NULL,'delete','',52,53),(112,102,NULL,NULL,'manage_tags','Attach or remove tags to NAS devices',42,43);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (3115,NULL,'Group',8,NULL,1,4),(3116,NULL,'Group',9,NULL,5,14),(3117,NULL,'Group',10,NULL,15,16),(3118,3115,'User',44,NULL,2,3),(3132,3116,'User',58,NULL,6,7),(3145,3116,'User',59,NULL,8,9),(3146,3116,'User',60,NULL,10,11),(3147,3116,'User',61,NULL,12,13);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (16,3116,44,'-1','-1','-1','-1'),(17,3116,46,'-1','-1','-1','-1'),(18,3116,59,'1','1','1','1'),(19,3116,60,'1','1','1','1'),(20,3116,62,'1','1','1','1'),(21,3116,42,'-1','-1','-1','-1'),(22,3116,61,'1','1','1','1'),(23,3116,63,'-1','-1','-1','-1'),(24,3116,64,'1','1','1','1'),(26,3132,63,'1','1','1','1'),(25,3116,65,'1','1','1','1'),(27,3132,42,'-1','-1','-1','-1'),(28,3132,64,'-1','-1','-1','-1'),(32,3132,44,'1','1','1','1'),(33,3132,46,'1','1','1','1'),(34,3132,59,'1','1','1','1'),(68,3132,69,'1','1','1','1'),(66,3132,68,'1','1','1','1'),(61,3116,68,'1','1','1','1'),(62,3116,69,'1','1','1','1'),(63,3116,70,'1','1','1','1'),(64,3116,71,'1','1','1','1'),(72,3132,91,'1','1','1','1'),(73,3132,101,'1','1','1','-1'),(75,3116,103,'1','1','1','1'),(74,3118,101,'1','1','-1','-1'),(76,3116,104,'1','1','1','1'),(77,3116,105,'1','1','1','1'),(78,3116,106,'-1','-1','-1','-1'),(79,3116,108,'1','1','1','1'),(80,3116,109,'1','1','1','1'),(81,3116,110,'1','1','1','1'),(82,3116,111,'1','1','1','1'),(83,3116,112,'1','1','1','1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `lft` char(36) DEFAULT NULL,
  `rght` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('5049e773-93c4-4d1b-a24d-26cfb442a47e',NULL,'1','2','Skating'),('5049e775-e948-4335-a1cb-2646b442a47e',NULL,'3','12','Skating'),('5049e792-4094-4737-bbcd-2644b442a47e','5049e775-e948-4335-a1cb-2646b442a47e','4','11','Klap hom'),('5049e7bd-6c28-4899-bf3c-2643b442a47e','5049e792-4094-4737-bbcd-2644b442a47e','5','6','Weer pappie'),('5049e83b-1e18-4aff-88dc-2645b442a47e','5049e792-4094-4737-bbcd-2644b442a47e','7','8','Weer pappie'),('5049f420-3f08-4714-9d8f-2642b442a47e','5049e792-4094-4737-bbcd-2644b442a47e','9','10','Weer pappie');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `icon_file` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'United Kingdom','GB','/cake2/rd_cake/webroot/img/flags/GB.png','2012-10-05 04:55:12','2012-11-23 21:15:38'),(5,'South Africa','ZA','/cake2/rd_cake/webroot/img/flags/ZA.png','2012-10-07 04:30:48','2012-10-07 04:30:48'),(17,'Brazil','BR','/cake2/rd_cake/webroot/img/flags/BR.png','2012-12-04 15:24:50','2012-12-04 15:35:35'),(18,'Iran','IR','/cake2/rd_cake/webroot/img/flags/IR.png','2013-01-01 15:27:17','2013-01-01 15:27:17');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (8,'Administrators','2012-12-10 13:13:09','2012-12-10 13:13:09'),(9,'Access Providers','2012-12-10 13:13:19','2012-12-10 13:13:19'),(10,'Users','2012-12-10 13:13:28','2012-12-10 13:13:28');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (4,'English','en','2012-10-05 04:55:28','2012-10-06 07:58:26'),(5,'Afrikaans','af','2012-10-07 04:30:59','2012-10-07 21:15:04'),(12,'Portuguese','pt','2012-12-04 15:25:04','2012-12-04 15:25:04'),(13,'Persian','fa','2013-01-01 15:27:33','2013-01-01 15:27:33');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_notes`
--

DROP TABLE IF EXISTS `na_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_notes`
--

LOCK TABLES `na_notes` WRITE;
/*!40000 ALTER TABLE `na_notes` DISABLE KEYS */;
INSERT INTO `na_notes` VALUES (23,11,28,'2013-01-15 10:17:44','2013-01-15 10:17:44');
/*!40000 ALTER TABLE `na_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_realms`
--

DROP TABLE IF EXISTS `na_realms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_realms`
--

LOCK TABLES `na_realms` WRITE;
/*!40000 ALTER TABLE `na_realms` DISABLE KEYS */;
INSERT INTO `na_realms` VALUES (1,10,23,'2013-01-10 20:53:34','2013-01-10 20:53:34'),(2,10,13,'2013-01-10 20:53:34','2013-01-10 20:53:34'),(3,10,11,'2013-01-10 20:53:34','2013-01-10 20:53:34'),(4,11,22,'2013-01-10 22:57:39','2013-01-10 22:57:39'),(5,11,23,'2013-01-10 22:57:39','2013-01-10 22:57:39');
/*!40000 ALTER TABLE `na_realms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `na_tags`
--

DROP TABLE IF EXISTS `na_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `na_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `na_tags`
--

LOCK TABLES `na_tags` WRITE;
/*!40000 ALTER TABLE `na_tags` DISABLE KEYS */;
INSERT INTO `na_tags` VALUES (1,6,16,'2013-01-10 10:03:46','2013-01-10 10:03:46'),(2,10,15,'2013-01-10 22:38:20','2013-01-10 22:38:20'),(3,4,13,'2013-01-11 06:47:09','2013-01-11 06:47:09');
/*!40000 ALTER TABLE `na_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas`
--

DROP TABLE IF EXISTS `nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client',
  `connection_type` enum('direct','openvpn','pptp','dynamic') DEFAULT 'direct',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `monitor` tinyint(1) NOT NULL DEFAULT '0',
  `record_auth` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic_attribute` varchar(50) NOT NULL DEFAULT '',
  `dynamic_value` varchar(50) NOT NULL DEFAULT '',
  `heartbeat_id` varchar(50) NOT NULL DEFAULT '',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `session_auto_close` tinyint(1) NOT NULL DEFAULT '0',
  `session_dead_time` int(5) NOT NULL DEFAULT '3600',
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nasname` (`nasname`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas`
--

LOCK TABLES `nas` WRITE;
/*!40000 ALTER TABLE `nas` DISABLE KEYS */;
INSERT INTO `nas` VALUES (2,'','jkjkj','other',NULL,'jkjkj',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Called-Station-Id','jkjkljkj','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 13:39:57','2013-01-09 13:39:57'),(3,'','kkk','other',NULL,'kkk',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Mikrotik-Realm','kkkkkkkkk','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 13:46:19','2013-01-09 13:46:19'),(4,'dynamic-1','vvvv','other',NULL,'vvvv',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Mikrotik-Realm','bbbbbbbbbb','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 14:00:09','2013-01-09 14:00:09'),(8,'dynamic-2','99','other',NULL,'00',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Mikrotik-Realm','0000','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 14:11:05','2013-01-09 14:11:05'),(6,'dynamic-3','e','other',NULL,'z',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Mikrotik-Realm','z','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 14:01:22','2013-01-09 14:01:22'),(7,'dynamic-4','zzz','other',NULL,'zz',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Mikrotik-Realm','eeeeeeeee','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 14:09:51','2013-01-09 14:09:51'),(9,'10.8.1.9','bb','other',NULL,'bbb',NULL,NULL,'RADIUS Client','openvpn',0,0,0,'','','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-09 14:28:50','2013-01-09 14:28:50'),(10,'Gooi','Hom','other',NULL,'Pappie',NULL,NULL,'RADIUS Client','direct',0,0,0,'','','',600,0,3600,0,NULL,NULL,'logo.jpg',58,'2013-01-10 20:53:34','2013-01-10 20:53:34'),(11,'dynamic-5','gaan','other',NULL,'bars',NULL,NULL,'RADIUS Client','dynamic',0,0,0,'Mikrotik-Realm','hjkhjkh','',600,0,3600,0,NULL,NULL,'logo.jpg',44,'2013-01-10 22:57:39','2013-01-10 22:57:39');
/*!40000 ALTER TABLE `nas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (28,'Coool Dude!',0,44,'2013-01-15 10:17:44','2013-01-15 10:17:44'),(30,'Laat lees',0,58,'2013-01-16 08:06:51','2013-01-16 08:06:51'),(32,'Slaat hom pappies',0,44,'2013-01-16 08:43:01','2013-01-16 08:43:01'),(35,'Blib blib blib',0,44,'2013-01-16 12:55:25','2013-01-16 12:55:25'),(36,'blib blip blib',0,58,'2013-01-16 12:55:48','2013-01-16 12:55:48');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvpn_clients`
--

DROP TABLE IF EXISTS `openvpn_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvpn_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `subnet` int(3) DEFAULT NULL,
  `peer1` int(3) DEFAULT NULL,
  `peer2` int(3) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvpn_clients`
--

LOCK TABLES `openvpn_clients` WRITE;
/*!40000 ALTER TABLE `openvpn_clients` DISABLE KEYS */;
INSERT INTO `openvpn_clients` VALUES (61,'Koos','',1,1,2,16,'2013-01-09 10:59:12','2013-01-09 10:59:12'),(62,'Bad','Ass',1,5,6,17,'2013-01-09 11:05:36','2013-01-09 11:05:36'),(63,'GooiHom','',1,9,10,9,'2013-01-09 14:28:50','2013-01-09 14:28:50');
/*!40000 ALTER TABLE `openvpn_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phrase_keys`
--

DROP TABLE IF EXISTS `phrase_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phrase_keys` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phrase_keys`
--

LOCK TABLES `phrase_keys` WRITE;
/*!40000 ALTER TABLE `phrase_keys` DISABLE KEYS */;
INSERT INTO `phrase_keys` VALUES (1,'spclCountry','Your Country where you are','2012-10-04 08:23:52','2012-10-07 21:04:56'),(2,'spclLanguage','Your language','2012-10-04 08:24:21','2012-10-07 04:01:48'),(6,'sUsername','Username','2012-10-04 12:53:36','2012-10-07 18:40:18'),(7,'sPassword','Password','2012-10-07 21:58:45','2012-10-07 21:58:45'),(16,'sChoose_a_language','Label','2012-11-24 00:08:24','2012-11-24 00:08:24'),(10,'sEnter_username','Typical login screen error','2012-11-23 22:28:25','2012-11-23 22:28:25'),(11,'sEnter_password','Typical login screen error','2012-11-23 22:29:29','2012-11-23 22:29:29'),(12,'sOK','OK like a confirmation or submit button','2012-11-23 22:42:19','2012-11-23 22:42:19'),(13,'sAuthenticate_please','Login window\'s title','2012-11-23 22:43:46','2012-11-23 22:43:46'),(14,'sChanging_language_please_wait','The splash message while changing the language','2012-11-23 22:47:51','2012-11-23 22:47:51'),(15,'sNew_language_selected','Splash heading while changing language','2012-11-23 22:49:05','2012-11-23 22:49:05'),(17,'sAbout','About button','2012-11-29 17:20:23','2012-11-29 17:20:23'),(18,'sFailure','This is in the error messages','2012-12-03 18:02:04','2012-12-03 18:02:04'),(19,'sReload','CRUD buttons','2012-12-04 16:03:35','2012-12-04 16:03:35'),(20,'sAdd','CRUD Buttons','2012-12-04 22:25:58','2012-12-04 22:25:58'),(21,'sDelete','CRUD Buttons','2012-12-04 22:26:17','2012-12-04 22:26:17'),(22,'sEdit','CDUR Buttons','2012-12-04 22:26:37','2012-12-04 22:26:37'),(23,'sCopy','CRUD PHP Phrases','2012-12-04 22:27:09','2012-12-04 22:38:02'),(24,'sEdit_meta_info','CRUD PHP Phrases','2012-12-04 22:27:45','2012-12-04 22:27:45'),(25,'sAdd_comment','CRUD PHP Phrases','2012-12-04 22:28:15','2012-12-04 22:28:15'),(27,'sKey','Javascript Phrases','2012-12-04 22:43:51','2012-12-04 22:43:51'),(28,'sComment','Many places','2012-12-04 22:44:27','2012-12-04 22:44:27'),(29,'sEnglish_use_as_reference','Javascript Phrases','2012-12-04 22:45:23','2012-12-04 22:48:11'),(30,'sTranslated','i18n','2012-12-04 22:46:14','2012-12-04 22:48:35'),(31,'sJavascript_Phrases','Tab heading','2012-12-04 22:52:38','2012-12-04 22:52:38'),(32,'sPHP_Phrases','Tab heading','2012-12-04 22:53:06','2012-12-04 22:53:06'),(33,'sChoose a {k}','Test key passing','2013-01-05 08:24:17','2013-01-05 08:24:17'),(34,'sResult_count_{count}','Template key replaced by Extjs','2013-01-05 08:44:24','2013-01-05 08:44:24');
/*!40000 ALTER TABLE `phrase_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phrase_values`
--

DROP TABLE IF EXISTS `phrase_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phrase_values` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `country_id` int(5) DEFAULT NULL,
  `language_id` int(5) DEFAULT NULL,
  `phrase_key_id` int(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phrase_values`
--

LOCK TABLES `phrase_values` WRITE;
/*!40000 ALTER TABLE `phrase_values` DISABLE KEYS */;
INSERT INTO `phrase_values` VALUES (13,4,4,6,'Username','2012-10-05 04:55:28','2012-11-24 14:36:26'),(12,4,4,2,'English','2012-10-05 04:55:28','2012-10-05 04:55:28'),(11,4,4,1,'United Kingdom','2012-10-05 04:55:28','2012-10-05 04:55:28'),(14,5,5,1,'Suid-Afrika','2012-10-07 04:30:59','2012-10-07 21:59:21'),(15,5,5,2,'Afrikaans','2012-10-07 04:30:59','2012-10-07 21:59:25'),(16,5,5,6,'Gebruikernaam','2012-10-07 04:30:59','2012-11-24 15:00:29'),(18,4,4,7,'Password','2012-10-07 21:58:45','2012-10-07 21:59:45'),(19,5,5,7,'Wagwoord','2012-10-07 21:58:45','2012-11-28 14:55:01'),(40,4,4,16,'Choose a language','2012-11-24 00:08:24','2012-11-24 00:08:35'),(41,5,5,16,'Kies jou taal','2012-11-24 00:08:24','2012-11-24 00:08:46'),(28,4,4,10,'Enter username','2012-11-23 22:28:25','2012-11-23 22:28:54'),(29,5,5,10,'Verskaf gebruikersnaam','2012-11-23 22:28:25','2012-11-23 22:31:15'),(30,4,4,11,'Enter password','2012-11-23 22:29:29','2012-11-23 22:29:39'),(31,5,5,11,'Verskaf wagwoord','2012-11-23 22:29:29','2012-11-23 22:31:27'),(32,4,4,12,'OK','2012-11-23 22:42:19','2012-11-23 22:42:41'),(33,5,5,12,'Reg','2012-11-23 22:42:19','2012-11-23 22:42:32'),(34,4,4,13,'Authenticate please','2012-11-23 22:43:46','2012-11-23 22:44:07'),(35,5,5,13,'Geldigheidsvasstelling','2012-11-23 22:43:46','2012-11-23 22:44:29'),(36,4,4,14,' Changing language, please wait','2012-11-23 22:47:51','2012-11-23 22:49:44'),(37,5,5,14,'Verander die taal, net so oomblik ','2012-11-23 22:47:51','2012-11-23 22:50:08'),(38,4,4,15,'New language selected','2012-11-23 22:49:05','2012-11-23 23:30:23'),(39,5,5,15,'Nuwe taal gekies','2012-11-23 22:49:05','2012-11-27 06:31:39'),(42,4,4,17,'About','2012-11-29 17:20:23','2012-11-29 17:20:34'),(43,5,5,17,'Rakende','2012-11-29 17:20:23','2012-11-29 17:20:50'),(44,4,4,18,'Failure','2012-12-03 18:02:04','2012-12-04 12:16:02'),(45,5,5,18,'Probleme','2012-12-03 18:02:04','2012-12-04 13:27:11'),(124,4,4,19,'Reload','2012-12-04 16:03:35','2012-12-04 16:03:59'),(123,17,12,18,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(122,17,12,17,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(121,17,12,15,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(120,17,12,14,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(119,17,12,13,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(118,17,12,12,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(117,17,12,11,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(116,17,12,10,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(115,17,12,16,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(114,17,12,7,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(113,17,12,6,'(modify me)','2012-12-04 15:25:04','2012-12-04 15:25:04'),(112,17,12,2,'Portuguese','2012-12-04 15:25:04','2012-12-04 15:25:04'),(111,17,12,1,'Brazil','2012-12-04 15:25:04','2012-12-04 15:25:04'),(125,5,5,19,'Verfris','2012-12-04 16:03:35','2012-12-04 16:03:49'),(126,17,12,19,'(new addition)','2012-12-04 16:03:35','2012-12-04 16:03:35'),(127,4,4,20,'Add','2012-12-04 22:25:58','2012-12-04 22:30:08'),(128,5,5,20,'Nuwe','2012-12-04 22:25:58','2012-12-04 22:28:33'),(129,17,12,20,'(new addition)','2012-12-04 22:25:58','2012-12-04 22:25:58'),(130,4,4,21,'Delete','2012-12-04 22:26:17','2012-12-04 22:30:03'),(131,5,5,21,'Verwyder','2012-12-04 22:26:17','2012-12-04 22:28:42'),(132,17,12,21,'(new addition)','2012-12-04 22:26:17','2012-12-04 22:26:17'),(133,4,4,22,'Edit','2012-12-04 22:26:37','2012-12-04 22:29:59'),(134,5,5,22,'Redigeer','2012-12-04 22:26:37','2012-12-04 22:28:46'),(135,17,12,22,'(new addition)','2012-12-04 22:26:37','2012-12-04 22:26:37'),(136,4,4,23,'Copy','2012-12-04 22:27:09','2012-12-04 22:29:53'),(137,5,5,23,'Dupliseer','2012-12-04 22:27:09','2012-12-04 22:28:57'),(138,17,12,23,'(new addition)','2012-12-04 22:27:09','2012-12-04 22:27:09'),(139,4,4,24,'Edit meta-info','2012-12-04 22:27:45','2012-12-04 22:29:49'),(140,5,5,24,'Redigeer meta-data','2012-12-04 22:27:45','2012-12-04 22:29:10'),(141,17,12,24,'(new addition)','2012-12-04 22:27:45','2012-12-04 22:27:45'),(142,4,4,25,'Add comment','2012-12-04 22:28:15','2012-12-04 22:29:40'),(143,5,5,25,'Nuwe komentaar','2012-12-04 22:28:15','2012-12-04 22:29:24'),(144,17,12,25,'(new addition)','2012-12-04 22:28:15','2012-12-04 22:28:15'),(148,4,4,27,'Key','2012-12-04 22:43:51','2013-01-02 08:15:30'),(149,5,5,27,'Sleutel','2012-12-04 22:43:51','2012-12-04 22:44:05'),(150,17,12,27,'(new addition)','2012-12-04 22:43:51','2012-12-04 22:43:51'),(151,4,4,28,'Comment','2012-12-04 22:44:27','2013-01-02 08:15:38'),(152,5,5,28,'Nota','2012-12-04 22:44:27','2012-12-04 22:44:45'),(153,17,12,28,'(new addition)','2012-12-04 22:44:27','2012-12-04 22:44:27'),(154,4,4,29,'English (use as reference)','2012-12-04 22:45:23','2013-01-02 08:16:36'),(155,5,5,29,'Engels (gebruik as verwysing)','2012-12-04 22:45:23','2012-12-04 22:50:32'),(156,17,12,29,'(new addition)','2012-12-04 22:45:23','2012-12-04 22:45:23'),(157,4,4,30,'Translated','2012-12-04 22:46:14','2013-01-02 08:16:49'),(158,5,5,30,'Vertaalde Term','2012-12-04 22:46:14','2012-12-04 22:46:26'),(159,17,12,30,'(new addition)','2012-12-04 22:46:14','2012-12-04 22:46:14'),(160,4,4,31,'Javascript Phrases','2012-12-04 22:52:38','2013-01-02 08:17:06'),(161,5,5,31,'Javascript Frases','2012-12-04 22:52:38','2012-12-04 22:53:26'),(162,17,12,31,'(new addition)','2012-12-04 22:52:38','2012-12-04 22:52:38'),(163,4,4,32,'PHP Phrases','2012-12-04 22:53:06','2013-01-02 08:17:18'),(164,5,5,32,'PHP Frases','2012-12-04 22:53:06','2012-12-04 22:53:33'),(165,17,12,32,'(new addition)','2012-12-04 22:53:06','2012-12-04 22:53:06'),(166,18,13,1,'Ø§ÛŒØ±Ø§Ù†','2013-01-01 15:27:33','2013-01-01 15:30:48'),(167,18,13,2,'ÙØ§Ø±Ø³ÛŒ','2013-01-01 15:27:33','2013-01-01 15:30:54'),(168,18,13,6,'Ù†Ø§Ù… Ú©Ø§Ø±Ø¨Ø±ÛŒ','2013-01-01 15:27:34','2013-01-01 16:15:46'),(169,18,13,7,'Ø±Ù…Ø² Ø¹Ø¨ÙˆØ±','2013-01-01 15:27:34','2013-01-01 16:16:25'),(170,18,13,16,'ÛŒÚ© Ø²Ø¨Ø§Ù† Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯','2013-01-01 15:27:34','2013-01-01 16:17:08'),(171,18,13,10,'Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯ Ù†Ø§Ù… Ú©Ø§Ø±Ø¨Ø±ÛŒ','2013-01-01 15:27:34','2013-01-01 16:17:40'),(172,18,13,11,'Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯ Ø±Ù…Ø² Ø¹Ø¨ÙˆØ±','2013-01-01 15:27:34','2013-01-01 16:18:04'),(173,18,13,12,'Ø®ÙˆØ¨','2013-01-01 15:27:34','2013-01-01 16:18:24'),(174,18,13,13,'ØªØµØ¯ÛŒÙ‚ Ù„Ø·ÙØ§','2013-01-01 15:27:34','2013-01-01 16:18:55'),(175,18,13,14,'ØªØºÛŒÛŒØ± Ø²Ø¨Ø§Ù†ØŒ Ù„Ø·ÙØ§ ØµØ¨Ø± Ú©Ù†ÛŒØ¯','2013-01-01 15:27:34','2013-01-01 16:19:34'),(176,18,13,15,'Ø²Ø¨Ø§Ù† Ø¬Ø¯ÛŒØ¯ Ø§Ù†ØªØ®Ø§Ø¨','2013-01-01 15:27:34','2013-01-01 16:20:04'),(177,18,13,17,'Ø¯Ø± Ø­Ø¯ÙˆØ¯','2013-01-01 15:27:34','2013-01-01 16:20:51'),(178,18,13,18,'Ø´Ú©Ø³Øª','2013-01-01 15:27:34','2013-01-01 16:21:42'),(179,18,13,19,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(180,18,13,20,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(181,18,13,21,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(182,18,13,22,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(183,18,13,23,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(184,18,13,24,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(185,18,13,25,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(186,18,13,27,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(187,18,13,28,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(188,18,13,29,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(189,18,13,30,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(190,18,13,31,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(191,18,13,32,'(modify me)','2013-01-01 15:27:34','2013-01-01 15:27:34'),(192,4,4,33,' {k} choose you must','2013-01-05 08:24:17','2013-01-05 08:31:43'),(193,5,5,33,'(new addition)','2013-01-05 08:24:17','2013-01-05 08:24:17'),(194,17,12,33,'(new addition)','2013-01-05 08:24:17','2013-01-05 08:24:17'),(195,18,13,33,'(new addition)','2013-01-05 08:24:17','2013-01-05 08:24:17'),(196,4,4,34,'There are {count} items','2013-01-05 08:44:24','2013-01-05 08:44:44'),(197,5,5,34,'(new addition)','2013-01-05 08:44:24','2013-01-05 08:44:24'),(198,17,12,34,'(new addition)','2013-01-05 08:44:24','2013-01-05 08:44:24'),(199,18,13,34,'(new addition)','2013-01-05 08:44:24','2013-01-05 08:44:24');
/*!40000 ALTER TABLE `phrase_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radcheck`
--

DROP TABLE IF EXISTS `radcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(32) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=MyISAM AUTO_INCREMENT=15032 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radcheck`
--

LOCK TABLES `radcheck` WRITE;
/*!40000 ALTER TABLE `radcheck` DISABLE KEYS */;
INSERT INTO `radcheck` VALUES (15029,'dvdwalt','Cleartext-Password','==','qwerty'),(15030,'pvdwalt','Cleartext-Password','==','qwerty'),(15031,'pvdwalt','Sleartext-Password','==','qwerty');
/*!40000 ALTER TABLE `radcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realm_notes`
--

DROP TABLE IF EXISTS `realm_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realm_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realm_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realm_notes`
--

LOCK TABLES `realm_notes` WRITE;
/*!40000 ALTER TABLE `realm_notes` DISABLE KEYS */;
INSERT INTO `realm_notes` VALUES (21,23,35,'2013-01-16 12:55:25','2013-01-16 12:55:25'),(22,23,36,'2013-01-16 12:55:48','2013-01-16 12:55:48');
/*!40000 ALTER TABLE `realm_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realms`
--

DROP TABLE IF EXISTS `realms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realms`
--

LOCK TABLES `realms` WRITE;
/*!40000 ALTER TABLE `realms` DISABLE KEYS */;
INSERT INTO `realms` VALUES (11,'AP Private',0,'logo.jpg','','','','','','','','','','',NULL,NULL,58,'2012-12-20 16:00:02','2012-12-20 16:00:02'),(13,'AP Public',1,'logo.jpg','','','','','','','','','','',NULL,NULL,58,'2012-12-20 16:00:30','2012-12-20 16:00:30'),(22,'RootPrivate',0,'logo.jpg','','','','','','','','','','',NULL,NULL,44,'2013-01-04 17:48:20','2013-01-04 17:48:20'),(23,'RootPublic',1,'logo.jpg','','','','','','','','','','',NULL,NULL,44,'2013-01-04 17:48:37','2013-01-04 17:48:37');
/*!40000 ALTER TABLE `realms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_notes`
--

DROP TABLE IF EXISTS `tag_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_notes`
--

LOCK TABLES `tag_notes` WRITE;
/*!40000 ALTER TABLE `tag_notes` DISABLE KEYS */;
INSERT INTO `tag_notes` VALUES (17,10,30,'2013-01-16 08:06:52','2013-01-16 08:06:52'),(18,13,32,'2013-01-16 08:43:01','2013-01-16 08:43:01');
/*!40000 ALTER TABLE `tag_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (13,'RootPrivate',0,44,'2013-01-07 08:19:15','2013-01-07 08:19:15'),(14,'RootPublic',1,44,'2013-01-07 08:20:13','2013-01-07 08:20:13'),(15,'Gooi',1,58,'2013-01-07 10:29:34','2013-01-07 10:29:34'),(16,'Home',1,58,'2013-01-07 10:29:50','2013-01-16 09:59:57'),(17,'Gooi hom pappie',1,61,'2013-01-17 14:28:42','2013-01-17 14:28:42');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notes`
--

DROP TABLE IF EXISTS `user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notes`
--

LOCK TABLES `user_notes` WRITE;
/*!40000 ALTER TABLE `user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` char(36) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `monitor` tinyint(1) NOT NULL DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `realm_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (44,'root','9b2b0416194bfdd0db089b9c09fad3163eae5383','50c5c405-06f0-418b-8d34-6a9d03662c24','root','','','','',1,0,4,8,4,NULL,NULL,14,1,10,'2012-12-10 13:14:13','2012-12-20 23:45:00'),(58,'ap','f487af6f7caae763ccf4b063d9055a91304685b9','50c5fe31-4f1c-4449-b90a-5b1403662c24','','','','','',1,1,5,9,5,44,NULL,NULL,2,9,'2012-12-10 17:22:25','2013-01-02 09:08:56'),(59,'ab','f380fca6e01ffa71b9946bcd384c666f0e1fab5a','50ef8dd9-f380-4a9b-9f0f-2b6f03662c24','','','','','',1,1,5,9,5,58,NULL,NULL,3,4,'2013-01-11 05:58:17','2013-01-11 05:58:17'),(60,'ac','059e8aa58f663b04f4cbdb897553ebd374f6dd2f','50f68dc4-c11c-4cf6-ba44-3e2703662c24','','','','','',1,1,5,9,5,58,NULL,NULL,5,6,'2013-01-16 13:23:48','2013-01-16 13:23:48'),(61,'ad','7a6d0efcba484e3b435bd95c19ba6acc445dd214','50f68ddf-b904-4227-95f6-243c03662c24','','','','','',1,1,5,9,5,58,NULL,NULL,7,8,'2013-01-16 13:24:15','2013-01-16 13:24:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-17 14:52:18
