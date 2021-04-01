-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: robotcalltest
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `m01_servers`
--

DROP TABLE IF EXISTS `m01_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m01_servers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `server_id` varchar(4) NOT NULL COMMENT 'サーバID',
  `server_name` varchar(64) DEFAULT NULL COMMENT 'サーバ名',
  `server_type` varchar(1) DEFAULT NULL COMMENT 'サーバ種類	 0 : inbound, 1 : outbound',
  `server_ip` varchar(20) DEFAULT NULL COMMENT 'サーバIP',
  `server_port` varchar(20) DEFAULT NULL COMMENT 'サーバポート',
  `call_module_port` varchar(10) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT 'ユーザー',
  `password` varchar(128) DEFAULT NULL COMMENT 'パスワード',
  `root_user` varchar(64) DEFAULT NULL,
  `root_pass` varchar(128) DEFAULT NULL,
  `local_path` varchar(64) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='m01サーバ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m01_servers`
--

LOCK TABLES `m01_servers` WRITE;
/*!40000 ALTER TABLE `m01_servers` DISABLE KEYS */;
INSERT INTO `m01_servers` VALUES (2,'0001','devrc-outsv001','1','10.1.1.01','22','17000','robo','xxxxxxxx','root',NULL,'/home/ftpuser/robo/','N',NULL,NULL,NULL,NULL,NULL,NULL),(3,'0002','devrc-insv001','0','10.1.1.02','22','17000','robo','xxxxxxxx','root','gsrc20!6QWERdemo','/home/ftpuser/robo/inbound/','N',NULL,NULL,NULL,NULL,NULL,NULL),(5,'0003','dev_outdummy','1','10.1.1.03','22','17119','robo','xxxxxxxx','root',NULL,'/home/ftpuser/robo/','Y',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m01_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m02_companies`
--

DROP TABLE IF EXISTS `m02_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m02_companies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `company_code` varchar(128) NOT NULL,
  `company_name` varchar(128) NOT NULL COMMENT '会社名',
  `ch_num` varchar(4) NOT NULL COMMENT 'チャネル数',
  `dial_interval` int(5) DEFAULT '1010',
  `audio_mix_flag` varchar(45) DEFAULT '0' COMMENT '0：なし、1:あり',
  `max_redial` int(5) DEFAULT '0',
  `tel_num` varchar(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザ',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザ',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `accept_consent_flag` varchar(1) DEFAULT '0' COMMENT '0：SMS履歴判定利用不可、1：SMS履歴判定利用可能',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='m02 会社マスター';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m02_companies`
--

LOCK TABLES `m02_companies` WRITE;
/*!40000 ALTER TABLE `m02_companies` DISABLE KEYS */;
INSERT INTO `m02_companies` VALUES (1,'002','companyA','株式会社A','30',1010,'1',4,NULL,'N','2016-01-22 15:03:01','ascadmin','ManageAccount_add_edit_account','2020-03-03 16:32:34','ascend','ManageAccount_add_edit_account','0');
/*!40000 ALTER TABLE `m02_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m03_auths`
--

DROP TABLE IF EXISTS `m03_auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m03_auths` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `post_code` varchar(4) NOT NULL COMMENT '権限コード',
  `rank` int(2) DEFAULT NULL,
  `order_num` int(2) DEFAULT NULL,
  `post_name` varchar(64) DEFAULT NULL COMMENT '権限名	 G10,G20,G30,U10,U20,U30',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='m03ユーザ権限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m03_auths`
--

LOCK TABLES `m03_auths` WRITE;
/*!40000 ALTER TABLE `m03_auths` DISABLE KEYS */;
INSERT INTO `m03_auths` VALUES (1,'U10',4,4,'管理者','N',NULL,NULL,NULL,NULL,NULL,NULL),(2,'U20',5,5,'作成閲覧','N',NULL,NULL,NULL,NULL,NULL,NULL),(3,'U30',5,7,'閲覧のみ','N',NULL,NULL,NULL,NULL,NULL,NULL),(4,'G10',1,1,'GS管理者','N',NULL,NULL,NULL,NULL,NULL,NULL),(5,'G20',2,2,'GS作成閲覧','N',NULL,NULL,NULL,NULL,NULL,NULL),(6,'G30',3,3,'GS閲覧のみ','N',NULL,NULL,NULL,NULL,NULL,NULL),(7,'U25',5,6,'発信NG','N',NULL,NULL,NULL,NULL,NULL,NULL),(8,'U25',5,6,'発信NG','Y',NULL,NULL,NULL,NULL,NULL,NULL),(9,'U25',5,6,'発信NG','Y',NULL,NULL,NULL,NULL,NULL,NULL),(10,'U25',5,6,'発信NG','Y',NULL,NULL,NULL,NULL,NULL,NULL),(11,'A10',99,99,'API利用のみ','N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m03_auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m04_controller_actions`
--

DROP TABLE IF EXISTS `m04_controller_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m04_controller_actions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `post_code` varchar(4) NOT NULL COMMENT '権限コード',
  `controller_name` varchar(64) DEFAULT NULL COMMENT 'コントローラ名',
  `function_name` varchar(64) DEFAULT NULL COMMENT 'フンクション名',
  `memo` text COMMENT '備考',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8 COMMENT='m04機能リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m04_controller_actions`
--

LOCK TABLES `m04_controller_actions` WRITE;
/*!40000 ALTER TABLE `m04_controller_actions` DISABLE KEYS */;
INSERT INTO `m04_controller_actions` VALUES (1,'G20','Template','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(2,'G20','CallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(3,'G20','Schedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(4,'G20','StatusSchedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(5,'G20','CallListNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(6,'G20','InboundTemplate','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(7,'G20','IncomingCallHistory','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(8,'G30','Template','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(9,'G30','Template','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(10,'G30','Template','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(11,'G30','Template','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(12,'G30','Template','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(13,'G30','CallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(14,'G30','CallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(15,'G30','CallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(16,'G30','CallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(17,'G30','DetailCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(18,'G30','DetailCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(19,'G30','DetailCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(20,'G30','DetailCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(21,'G30','RDD','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(22,'G30','Schedule','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(23,'G30','Schedule','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(24,'G30','Schedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(25,'G30','Schedule','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(26,'G30','Schedule','status',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL),(27,'G30','Schedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(28,'G30','Schedule','call_right_away',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(29,'G30','StatusSchedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(30,'G30','StatusSchedule','reopen',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(31,'G30','StatusSchedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(32,'G30','CallListNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(33,'G30','CallListNg','upload',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(34,'G30','CallListNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(35,'G30','CallListNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(36,'G30','CallListNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(37,'G30','DetailCallListNg','update',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(38,'G30','DetailCallListNg','record',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(39,'G30','DetailCallListNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(40,'G30','DetailCallListNg','add',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(41,'G30','InboundTemplate','setting_call_tell',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(42,'G30','InboundTemplate','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(43,'G30','InboundTemplate','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(44,'G30','InboundTemplate','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(45,'G30','InboundTemplate','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(46,'G30','InboundTemplate','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(47,'G30','CallListReject','record',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(48,'G30','CallListReject','upload',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(49,'G30','CallListReject','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(50,'G30','IncomingCallHistory','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(51,'G30','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(52,'G30','ManageUser','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(53,'G30','ManageUser','unlock',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(54,'G30','ManageUser','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(55,'G30','ManageUser','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(56,'G30','ManagerNew','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(57,'G30','ManagerNew','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(58,'G30','ManagerNew','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(59,'U10','ManagerAccount','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(60,'U10','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(61,'U10','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(62,'U20','ManagerAccount','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(63,'U20','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(64,'U20','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(65,'U20','ManageUser','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(66,'U20','ManageUser','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(67,'U20','ManageUser','unlock',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(68,'U20','ManageUser','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(69,'U20','ManageUser','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(70,'U20','ManagerNew','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(71,'U20','ManagerNew','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(72,'U20','ManagerNew','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(73,'U20','ManagerNew','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(74,'U30','Template','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(75,'U30','Template','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(76,'U30','Template','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(77,'U30','Template','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(78,'U30','Template','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(79,'U30','CallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(80,'U30','CallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(81,'U30','CallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(82,'U30','CallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(83,'U30','DetailCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(84,'U30','DetailCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(85,'U30','DetailCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(86,'U30','DetailCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(87,'U30','RDD','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(88,'U30','Schedule','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(89,'U30','Schedule','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(90,'U30','Schedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(91,'U30','Schedule','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(92,'U30','Schedule','status',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL),(93,'U30','Schedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(94,'U30','Schedule','call_right_away',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(95,'U30','StatusSchedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(96,'U30','StatusSchedule','reopen',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(97,'U30','StatusSchedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(98,'U30','CallListNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(99,'U30','CallListNg','upload',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(100,'U30','CallListNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(101,'U30','CallListNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(102,'U30','CallListNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(103,'U30','DetailCallListNg','update',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(104,'U30','DetailCallListNg','record',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(105,'U30','DetailCallListNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(106,'U30','DetailCallListNg','add',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(107,'U30','InboundTemplate','setting_call_tell',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(108,'U30','InboundTemplate','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(109,'U30','InboundTemplate','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(110,'U30','InboundTemplate','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(111,'U30','InboundTemplate','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(112,'U30','InboundTemplate','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(113,'U30','CallListReject','record',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(114,'U30','CallListReject','upload',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(115,'U30','CallListReject','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(116,'U30','IncomingCallHistory','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(117,'U30','ManagerAccount','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(118,'U30','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(119,'U30','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(120,'U30','ManageUser','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(121,'U30','ManageUser','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(122,'U30','ManageUser','unlock',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(123,'U30','ManageUser','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(124,'U30','ManageUser','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(125,'U30','ManagerNew','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(126,'U30','ManagerNew','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(127,'U30','ManagerNew','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(128,'U30','ManagerNew','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(129,'G30','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(130,'G30','ManagerAccount','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(131,'U25','ManageUser','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(132,'U25','ManageUser','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(133,'U25','ManageUser','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(134,'U25','ManageUser','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(135,'U25','ManageUser','unlock',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(136,'U25','ManagerAccount','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(137,'U25','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(138,'U25','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(139,'U25','RDD','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(140,'U25','Template','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(141,'U25','Template','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(142,'U25','Template','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(143,'U25','Template','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(144,'U25','Template','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(145,'U25','CallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(146,'U25','CallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(147,'U25','CallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(148,'U25','CallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(149,'U25','DetailCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(150,'U25','DetailCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(151,'U25','DetailCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(152,'U25','DetailCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(153,'U25','InboundTemplate','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(154,'U25','InboundTemplate','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(155,'U25','InboundTemplate','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(156,'U25','InboundTemplate','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(157,'U25','InboundTemplate','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(158,'U25','InboundTemplate','setting_call_tell',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(159,'U25','IncomingCallHistory','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(160,'U25','Schedule','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(161,'U25','Schedule','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(162,'U25','Schedule','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(163,'U25','Schedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(164,'U25','Schedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(165,'U25','Schedule','call_right_away',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(166,'U25','StatusSchedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(167,'U25','StatusSchedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(168,'U25','StatusSchedule','reopen',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(169,'U25','ManagerNew','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(170,'U25','ManagerNew','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(171,'U25','ManagerNew','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(172,'U25','ManagerNew','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(173,'G30','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(174,'G30','ManagerAccount','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(175,'U25','ManageUser','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(176,'U25','ManageUser','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(177,'U25','ManageUser','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(178,'U25','ManageUser','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(179,'U25','ManageUser','unlock',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(180,'U25','ManagerAccount','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(181,'U25','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(182,'U25','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(183,'U25','RDD','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(184,'U25','Template','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(185,'U25','Template','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(186,'U25','Template','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(187,'U25','Template','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(188,'U25','Template','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(189,'U25','CallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(190,'U25','CallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(191,'U25','CallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(192,'U25','CallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(193,'U25','DetailCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(194,'U25','DetailCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(195,'U25','DetailCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(196,'U25','DetailCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(197,'U25','InboundTemplate','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(198,'U25','InboundTemplate','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(199,'U25','InboundTemplate','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(200,'U25','InboundTemplate','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(201,'U25','InboundTemplate','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(202,'U25','InboundTemplate','setting_call_tell',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(203,'U25','IncomingCallHistory','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(204,'U25','Schedule','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(205,'U25','Schedule','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(206,'U25','Schedule','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(207,'U25','Schedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(208,'U25','Schedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(209,'U25','Schedule','call_right_away',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(210,'U25','StatusSchedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(211,'U25','StatusSchedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(212,'U25','StatusSchedule','reopen',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(213,'U25','ManagerNew','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(214,'U25','ManagerNew','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(215,'U25','ManagerNew','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(216,'U25','ManagerNew','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(217,'U25','ManageUser','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(218,'U25','ManageUser','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(219,'U25','ManageUser','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(220,'U25','ManageUser','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(221,'U25','ManageUser','unlock',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(222,'U25','ManagerAccount','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(223,'U25','ManagerAccount','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(224,'U25','ManagerAccount','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(225,'U25','RDD','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(226,'U25','Template','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(227,'U25','Template','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(228,'U25','Template','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(229,'U25','Template','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(230,'U25','Template','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(231,'U25','CallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(232,'U25','CallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(233,'U25','CallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(234,'U25','CallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(235,'U25','DetailCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(236,'U25','DetailCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(237,'U25','DetailCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(238,'U25','DetailCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(239,'U25','InboundTemplate','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(240,'U25','InboundTemplate','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(241,'U25','InboundTemplate','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(242,'U25','InboundTemplate','import',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(243,'U25','InboundTemplate','export',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(244,'U25','InboundTemplate','setting_call_tell',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(245,'U25','IncomingCallHistory','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(246,'U25','Schedule','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(247,'U25','Schedule','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(248,'U25','Schedule','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(249,'U25','Schedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(250,'U25','Schedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(251,'U25','Schedule','call_right_away',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(252,'U25','StatusSchedule','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(253,'U25','StatusSchedule','stop_call',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(254,'U25','StatusSchedule','reopen',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(255,'U25','ManagerNew','list',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(256,'U25','ManagerNew','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(257,'U25','ManagerNew','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(258,'U25','ManagerNew','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(259,'U30','IncomingNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(260,'U30','IncomingNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(261,'U30','IncomingNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(262,'U30','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(263,'U25','IncomingNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(264,'U25','IncomingNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(265,'U25','IncomingNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(266,'U25','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(267,'G30','IncomingNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(268,'G30','IncomingNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(269,'G30','IncomingNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(270,'G30','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(271,'G20','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(272,'U30','IncomingNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(273,'U30','IncomingNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(274,'U30','IncomingNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(275,'U30','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(276,'U25','IncomingNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(277,'U25','IncomingNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(278,'U25','IncomingNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(279,'U25','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(280,'G30','IncomingNg','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(281,'G30','IncomingNg','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(282,'G30','IncomingNg','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(283,'G30','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(284,'G20','IncomingNg','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(285,'U30','InboundCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(286,'U30','InboundCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(287,'U30','InboundCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(288,'U30','InboundCallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(289,'U25','InboundCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(290,'U25','InboundCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(291,'U25','InboundCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(292,'U25','InboundCallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(293,'G30','InboundCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(294,'G30','InboundCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(295,'G30','InboundCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(296,'G30','InboundCallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(297,'G20','InboundCallList','download',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(298,'G30','DetailInboundCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(299,'G30','DetailInboundCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(300,'G30','DetailInboundCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(301,'G30','DetailInboundCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(302,'U30','DetailInboundCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(303,'U30','DetailInboundCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(304,'U30','DetailInboundCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(305,'U30','DetailInboundCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(306,'U25','DetailInboundCallList','create',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(307,'U25','DetailInboundCallList','delete',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(308,'U25','DetailInboundCallList','edit',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(309,'U25','DetailInboundCallList','report_not_effective',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL),(310,'G20','SettingInbound','download',NULL,'N',NULL,NULL,'2016-04-12 19:54:45',NULL,NULL,NULL),(311,'G30','SettingInbound','create',NULL,'N',NULL,NULL,'2016-04-12 19:54:48',NULL,NULL,NULL),(312,'G30','SettingInbound','delete',NULL,'N',NULL,NULL,'2016-04-12 19:54:48',NULL,NULL,NULL),(313,'G30','SettingInbound','download',NULL,'N',NULL,NULL,'2016-04-12 19:54:48',NULL,NULL,NULL),(314,'U30','SettingInbound','create',NULL,'N',NULL,NULL,'2016-04-12 19:54:48',NULL,NULL,NULL),(315,'U30','SettingInbound','delete',NULL,'N',NULL,NULL,'2016-04-12 19:54:48',NULL,NULL,NULL),(316,'U30','SettingInbound','download',NULL,'N',NULL,NULL,'2016-04-12 19:54:49',NULL,NULL,NULL),(317,'U25','SettingInbound','create',NULL,'N',NULL,NULL,'2016-04-12 19:54:49',NULL,NULL,NULL),(318,'U25','SettingInbound','delete',NULL,'N',NULL,NULL,'2016-04-12 19:54:49',NULL,NULL,NULL),(319,'U25','SettingInbound','download',NULL,'N',NULL,NULL,'2016-04-12 19:54:49',NULL,NULL,NULL),(404,'G20','SmsSendList','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(405,'G30','SmsSendList','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(406,'G30','SmsSendList','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(407,'G30','SmsSendList','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(408,'G30','SmsSendList','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(409,'U25','SmsSendList','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(410,'U25','SmsSendList','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(411,'U25','SmsSendList','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(412,'U25','SmsSendList','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(413,'U30','SmsSendList','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(414,'U30','SmsSendList','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(415,'U30','SmsSendList','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(416,'U30','SmsSendList','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(417,'G30','DetailSmsSendList','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(418,'G30','DetailSmsSendList','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(419,'G30','DetailSmsSendList','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(420,'G30','DetailSmsSendList','report_not_effective',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(421,'U25','DetailSmsSendList','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(422,'U25','DetailSmsSendList','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(423,'U25','DetailSmsSendList','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(424,'U25','DetailSmsSendList','report_not_effective',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(425,'U30','DetailSmsSendList','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(426,'U30','DetailSmsSendList','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(427,'U30','DetailSmsSendList','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(428,'U30','DetailSmsSendList','report_not_effective',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(429,'G20','SmsSendListNG','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(430,'G30','SmsSendListNG','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(431,'G30','SmsSendListNG','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(432,'G30','SmsSendListNG','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(433,'G30','SmsSendListNG','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(434,'U25','SmsSendListNG','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(435,'U25','SmsSendListNG','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(436,'U25','SmsSendListNG','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(437,'U25','SmsSendListNG','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(438,'U30','SmsSendListNG','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(439,'U30','SmsSendListNG','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(440,'U30','SmsSendListNG','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(441,'U30','SmsSendListNG','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(442,'G30','SmsTemplate','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(443,'G30','SmsTemplate','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(444,'G30','SmsTemplate','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(445,'U25','SmsTemplate','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(446,'U25','SmsTemplate','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(447,'U25','SmsTemplate','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(448,'U30','SmsTemplate','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(449,'U30','SmsTemplate','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(450,'U30','SmsTemplate','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(451,'G20','SmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(452,'G30','SmsSchedule','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(453,'G30','SmsSchedule','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(454,'G30','SmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(455,'G30','SmsSchedule','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(456,'G30','SmsSchedule','stop_send',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(457,'G30','SmsSchedule','resend',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(458,'U25','SmsSchedule','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(459,'U25','SmsSchedule','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(460,'U25','SmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(461,'U25','SmsSchedule','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(462,'U25','SmsSchedule','stop_send',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(463,'U25','SmsSchedule','resend',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(464,'U30','SmsSchedule','create',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(465,'U30','SmsSchedule','delete',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(466,'U30','SmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(467,'U30','SmsSchedule','edit',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(468,'U30','SmsSchedule','stop_send',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(469,'U30','SmsSchedule','resend',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(470,'G20','StatusSmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(471,'G30','StatusSmsSchedule','stop_send',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(472,'G30','StatusSmsSchedule','resend',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(473,'G30','StatusSmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(474,'G30','StatusSmsSchedule','finish',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(475,'U25','StatusSmsSchedule','stop_send',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(476,'U25','StatusSmsSchedule','resend',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(477,'U25','StatusSmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(478,'U25','StatusSmsSchedule','finish',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(479,'U30','StatusSmsSchedule','stop_send',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(480,'U30','StatusSmsSchedule','resend',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(481,'U30','StatusSmsSchedule','download',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(482,'U30','StatusSmsSchedule','finish',NULL,'N',NULL,NULL,'2016-05-30 13:45:23',NULL,NULL,NULL),(483,'G30','ManageMenu','edit',NULL,'N',NULL,NULL,'2016-08-26 15:50:28',NULL,NULL,NULL);
/*!40000 ALTER TABLE `m04_controller_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m05_users`
--

DROP TABLE IF EXISTS `m05_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m05_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `user_no` int(20) DEFAULT NULL,
  `user_id` varchar(20) NOT NULL COMMENT 'ユーザーID',
  `user_name` varchar(64) DEFAULT NULL COMMENT 'ユーザー名',
  `user_pass` varchar(128) NOT NULL COMMENT 'パスワード',
  `password_change_date` datetime NOT NULL COMMENT 'パスワード変更日',
  `post_code` varchar(4) NOT NULL COMMENT '権限コード',
  `login_flag` varchar(1) NOT NULL DEFAULT 'N',
  `lock_flag` varchar(1) DEFAULT 'N' COMMENT 'ロックフラグ',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='m05ユーザーマスター';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m05_users`
--

LOCK TABLES `m05_users` WRITE;
/*!40000 ALTER TABLE `m05_users` DISABLE KEYS */;
INSERT INTO `m05_users` VALUES (1,'002',7,'fabbi','fabbi','e5f86b4277bafaa894783096ca64656a083c98f50bcba9cf9971b5773dff8ee2','2021-05-11 17:45:04','G10','Y','N','N','2021-02-09 17:35:47','s_kamo','ManageUser_add_and_edit_user','2021-03-31 15:49:06','s_kamo','ManageUser_add_and_edit_user');
/*!40000 ALTER TABLE `m05_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m06_company_externals`
--

DROP TABLE IF EXISTS `m06_company_externals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m06_company_externals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `external_number` varchar(20) NOT NULL COMMENT 'サーバID',
  `out_system` varchar(20) DEFAULT NULL,
  `out_price` varchar(20) DEFAULT NULL,
  `out_unit` varchar(20) DEFAULT NULL,
  `out_phone` varchar(20) DEFAULT NULL,
  `out_mobile` varchar(20) DEFAULT NULL,
  `out_voice` varchar(20) DEFAULT NULL,
  `in_system` varchar(20) DEFAULT NULL,
  `in_price` varchar(20) DEFAULT NULL,
  `in_unit` varchar(20) DEFAULT NULL,
  `in_phone` varchar(20) DEFAULT NULL,
  `in_mobile` varchar(20) DEFAULT NULL,
  `in_voice` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='m06会社・サーバマスタ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m06_company_externals`
--

LOCK TABLES `m06_company_externals` WRITE;
/*!40000 ALTER TABLE `m06_company_externals` DISABLE KEYS */;
INSERT INTO `m06_company_externals` VALUES (1,'002','0363863696','接続','3','1秒','3','10','あり','接続','3','1秒','3','10','あり','N','2016-01-22 15:03:01','ascend','ManageAccount_add_edit_account','2016-09-07 11:41:20','ascend','ManageAccount_delete_account');
/*!40000 ALTER TABLE `m06_company_externals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m07_server_externals`
--

DROP TABLE IF EXISTS `m07_server_externals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m07_server_externals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `server_id` varchar(4) NOT NULL COMMENT 'サーバID',
  `in_server_id` varchar(4) NOT NULL COMMENT 'インバウンドサーバID',
  `external_prefix` varchar(6) NOT NULL COMMENT '外線番号prefix	 Aサーバ紐づけ',
  `external_number` varchar(20) NOT NULL COMMENT '外線番号',
  `kaisen_code` varchar(64) DEFAULT NULL,
  `in_proc_num` int(5) DEFAULT NULL,
  `enosip_port` varchar(64) DEFAULT NULL,
  `bukken_company_id` varchar(64) DEFAULT NULL,
  `bukken_shop_id` varchar(64) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='m07サーバ・外線番号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m07_server_externals`
--

LOCK TABLES `m07_server_externals` WRITE;
/*!40000 ALTER TABLE `m07_server_externals` DISABLE KEYS */;
INSERT INTO `m07_server_externals` VALUES (1,'0001','0002','001902','0363863695','GS1',3,'1 12-13',NULL,NULL,'N',NULL,NULL,NULL,'2017-11-06 19:12:39',NULL,NULL),(2,'0001','0002','002902','0363863696','GS1',3,'2-4',NULL,NULL,'N',NULL,NULL,NULL,'2017-11-06 19:12:39',NULL,NULL);
/*!40000 ALTER TABLE `m07_server_externals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m08_sms_api_infos`
--

DROP TABLE IF EXISTS `m08_sms_api_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m08_sms_api_infos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL,
  `service_id` varchar(20) NOT NULL COMMENT 'SMSサービスID・企画ID',
  `url` varchar(128) DEFAULT NULL COMMENT 'APIのURL',
  `group_id` varchar(20) DEFAULT NULL COMMENT 'グループID',
  `user` varchar(128) DEFAULT NULL COMMENT '送信ユーザーID',
  `pass` varchar(128) DEFAULT NULL COMMENT 'パスワード',
  `max_parallel_session` varchar(20) DEFAULT NULL COMMENT '最大同時セッション数',
  `max_send_in_minute` varchar(20) DEFAULT NULL COMMENT '分間送信要求受付数',
  `proxy_host` varchar(128) DEFAULT NULL COMMENT 'プロキシサーバー',
  `proxy_port` varchar(128) DEFAULT NULL COMMENT 'プロキシポート番号',
  `proxy_user` varchar(128) DEFAULT NULL COMMENT 'プロキシユーザー名',
  `proxy_pass` varchar(128) DEFAULT NULL COMMENT 'プロキシパスワード',
  `display_number` varchar(20) DEFAULT NULL COMMENT '通知番号',
  `role_code` varchar(20) DEFAULT NULL COMMENT '10:運用管理ユーザー, 20:運用ユーザー, 30:送信ユーザー',
  `memo` varchar(128) DEFAULT NULL COMMENT 'メモ',
  `batch_sleep_time` int(11) DEFAULT '0' COMMENT '連続送信間にのスリップタイム.単位:ミリ秒',
  `api_id` varchar(1) NOT NULL,
  `sms_short_url_allow_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '0:利用不可、1:利用可',
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='m08 SMS API接続情報';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m08_sms_api_infos`
--

LOCK TABLES `m08_sms_api_infos` WRITE;
/*!40000 ALTER TABLE `m08_sms_api_infos` DISABLE KEYS */;
INSERT INTO `m08_sms_api_infos` VALUES (1,'002','CDgyo3MyOac128','https://push.karaden.jp/v2/',NULL,'','9AUeAaonm52EvyUJ','2','120',NULL,NULL,NULL,NULL,'0120558656(試験用.)',NULL,NULL,500,'2','1','N','2020-01-16 14:48:05','kato',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m08_sms_api_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m09_kaisen_infos`
--

DROP TABLE IF EXISTS `m09_kaisen_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m09_kaisen_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kaisen_code` varchar(64) NOT NULL,
  `max_schedule` int(11) NOT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`kaisen_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m09_kaisen_infos`
--

LOCK TABLES `m09_kaisen_infos` WRITE;
/*!40000 ALTER TABLE `m09_kaisen_infos` DISABLE KEYS */;
INSERT INTO `m09_kaisen_infos` VALUES (1,'GS1',20,'N','2017-11-08 17:58:31','ascend',NULL,NULL,NULL,NULL),(2,'GS2',3,'N','2017-11-08 17:58:31','ascend',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m09_kaisen_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m10_api_users`
--

DROP TABLE IF EXISTS `m10_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m10_api_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_pass` varchar(128) NOT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `api_key` varchar(30) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m10_api_users`
--

LOCK TABLES `m10_api_users` WRITE;
/*!40000 ALTER TABLE `m10_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `m10_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m90_pulldown_codes`
--

DROP TABLE IF EXISTS `m90_pulldown_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m90_pulldown_codes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type_code` varchar(40) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL COMMENT '値	 value値',
  `item_name` varchar(64) DEFAULT NULL COMMENT '表示名称	 表示名',
  `order_num` int(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ	 1:削除。過去選択済みの場合は表示だけする',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8 COMMENT='m90 プルダウンコード';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m90_pulldown_codes`
--

LOCK TABLES `m90_pulldown_codes` WRITE;
/*!40000 ALTER TABLE `m90_pulldown_codes` DISABLE KEYS */;
INSERT INTO `m90_pulldown_codes` VALUES (1,'call_type','0','番号通知',1,'N','2015-08-20 15:49:07',NULL),(2,'call_type','1','非通知',2,'N','2015-08-20 15:49:07',NULL),(3,'proc_num','1','1ch',1,'N','2015-08-20 15:49:07',NULL),(4,'proc_num','5','5ch',6,'N','2015-08-20 15:49:07',NULL),(5,'proc_num','10','10ch',11,'N','2015-08-20 15:49:07',NULL),(6,'proc_num','15','15ch',16,'N','2015-08-20 15:49:07',NULL),(7,'proc_num','20','20ch',21,'N','2015-08-20 15:49:07',NULL),(8,'proc_num','25','25ch',26,'N','2015-08-20 15:49:07',NULL),(9,'dial_interval','1010','10秒',1,'N','2015-08-20 15:49:07',NULL),(10,'dial_interval','2010','20秒',2,'N','2015-08-20 15:49:07',NULL),(11,'dial_interval','3010','30秒',3,'N','2015-08-20 15:49:07',NULL),(12,'dial_interval','4010','4秒',5,'N','2015-08-20 15:49:07',NULL),(13,'dial_wait_time','60','60秒',5,'N','2015-08-20 15:49:07',NULL),(14,'dial_wait_time','30','30秒',2,'N','2015-08-20 15:49:07',NULL),(15,'dial_wait_time','40','40秒',3,'N','2015-08-20 15:49:07',NULL),(16,'dial_wait_time','50','50秒',4,'N','2015-08-20 15:49:07',NULL),(17,'ans_timeout','10000','10秒',1,'N','2015-08-20 15:49:07',NULL),(18,'ans_timeout','20000','20秒',2,'N','2015-08-20 15:49:07',NULL),(19,'ans_timeout','30000','30秒',2,'N','2015-08-20 15:49:07',NULL),(20,'ans_timeout','40000','40秒',3,'N','2015-08-20 15:49:07',NULL),(21,'ans_timeout','50000','50秒',5,'N','2015-08-20 15:49:07',NULL),(22,'ans_timeout','60000','60秒',6,'N','2015-08-20 15:49:07',NULL),(23,'ans_timeout_count','0','なし',1,'N','2015-08-20 15:49:07',NULL),(24,'ans_timeout_count','1','1回',2,'N','2015-08-20 15:49:07',NULL),(51,'proc_num','30','30ch',31,'N','2015-08-20 15:49:07',NULL),(64,'proc_num','35','35ch',36,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(65,'proc_num','40','40ch',41,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(66,'proc_num','45','45ch',46,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(67,'proc_num','50','50ch',51,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(68,'proc_num','55','55ch',56,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(69,'proc_num','60','60ch',61,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(70,'proc_num','65','65ch',66,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(71,'proc_num','70','70ch',71,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(72,'proc_num','75','75ch',76,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(73,'proc_num','80','80ch',81,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(74,'proc_num','85','85ch',86,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(75,'proc_num','90','90ch',91,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(76,'proc_num','95','95ch',96,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(77,'proc_num','100','100ch',101,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(78,'proc_num','105','105ch',106,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(79,'proc_num','110','110ch',111,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(80,'proc_num','115','115ch',116,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(81,'proc_num','120','120ch',121,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(82,'proc_num','125','125ch',126,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(83,'proc_num','130','130ch',131,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(84,'proc_num','135','135ch',136,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(85,'proc_num','140','140ch',141,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(86,'proc_num','145','145ch',146,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(87,'proc_num','150','150ch',151,'N','2015-08-20 15:49:07','0000-00-00 00:00:00'),(88,'trans_cancel_time','5','5秒',1,'N','2015-09-10 18:21:29',NULL),(89,'trans_cancel_time','10','10秒',2,'N','2015-09-10 18:21:29',NULL),(90,'trans_cancel_time','15','15秒',3,'N','2015-09-10 18:21:29',NULL),(91,'trans_cancel_time','20','20秒',5,'N','2015-09-10 18:21:29',NULL),(92,'trans_cancel_time','25','25秒',6,'N','2015-09-10 18:21:29',NULL),(93,'callback_flag','0','BUSY',1,'N','2015-09-10 18:21:29',NULL),(94,'callback_flag','1','音声再生',2,'N','2015-09-10 18:21:29',NULL),(96,'proc_num','3','3ch',3,'N','2015-08-20 15:49:07',NULL),(97,'schedule_time_reload','0','---',1,'N','2015-09-28 17:01:33',NULL),(98,'schedule_time_reload','1','1分',2,'N','2015-09-28 17:01:33',NULL),(99,'schedule_time_reload','2','2分',3,'N','2015-09-28 17:01:33',NULL),(100,'schedule_time_reload','5','5分',5,'N','2015-09-28 17:01:33',NULL),(101,'schedule_time_reload','10','10分',6,'N','2015-09-28 17:01:33',NULL),(102,'schedule_time_reload','15','15分',7,'N','2015-09-28 17:01:33',NULL),(103,'schedule_time_reload','20','20分',8,'N','2015-09-28 17:01:33',NULL),(129,'list_item','---','---',0,'Y',NULL,NULL),(130,'list_item','tel_no','電話番号',1,'N',NULL,NULL),(131,'list_item','customer_name','名前',2,'N',NULL,NULL),(132,'list_item','address','住所',3,'N',NULL,NULL),(133,'list_item','birthday','生年月日',5,'N',NULL,NULL),(134,'list_item','money','金額',6,'N',NULL,NULL),(135,'list_item','customize1','備考1',7,'N',NULL,NULL),(136,'list_item','customize2','備考2',8,'N',NULL,NULL),(137,'list_item','customize3','備考3',9,'N',NULL,NULL),(138,'list_item','customize4','備考4',10,'N',NULL,NULL),(139,'list_item','customize5','備考5',11,'N',NULL,NULL),(140,'list_item','customize6','備考6',12,'Y',NULL,NULL),(141,'list_item','customize7','備考7',13,'Y',NULL,NULL),(142,'template_ques','1','再生',1,'N',NULL,NULL),(143,'template_ques','2','質問',2,'N',NULL,NULL),(144,'template_ques','3','数値認証',3,'N',NULL,NULL),(145,'template_ques','4','番号入力',5,'N',NULL,NULL),(146,'template_ques','5','転送',6,'N',NULL,NULL),(147,'template_ques','6','録音',7,'N',NULL,NULL),(148,'template_ques','7','カウント',8,'N',NULL,NULL),(149,'template_ques','8','切断',11,'N',NULL,NULL),(151,'template_answ_loop','1','1回',1,'N',NULL,NULL),(152,'template_answ_loop','2','2回',2,'N',NULL,NULL),(153,'template_answ_loop','3','3回',3,'N',NULL,NULL),(154,'template_answ_loop','4','4回',5,'N',NULL,NULL),(155,'template_answ_loop','5','5回',6,'N',NULL,NULL),(157,'schedule_redial_flag','0','0回',1,'N',NULL,NULL),(158,'schedule_redial_flag','1','1回',2,'N',NULL,NULL),(159,'schedule_redial_time','10','10分後',1,'N',NULL,NULL),(160,'schedule_redial_time','30','30分後',2,'N',NULL,NULL),(161,'schedule_redial_time','60','1時間後',3,'N',NULL,NULL),(162,'schedule_redial_time','120','2時間後',5,'N',NULL,NULL),(164,'out_setup_sys','1','発信',1,'N',NULL,NULL),(165,'out_setup_sys','3','接続',2,'N',NULL,NULL),(166,'in_setup_sys','0','---',0,'N',NULL,NULL),(167,'in_setup_sys','2','着信',1,'N',NULL,NULL),(168,'in_setup_sys','3','接続',2,'N',NULL,NULL),(169,'in_unit','0','---',0,'N',NULL,NULL),(170,'in_unit','1','1秒',1,'N',NULL,NULL),(171,'in_unit','60','1分',2,'N',NULL,NULL),(172,'out_unit','0','---',0,'N',NULL,NULL),(173,'out_unit','1','1秒',1,'N',NULL,NULL),(174,'out_unit','60','1分',2,'N',NULL,NULL),(176,'out_voice','1','あり',1,'N',NULL,NULL),(177,'out_voice','0','なし',2,'N',NULL,NULL),(178,'in_voice','0','---',0,'N',NULL,NULL),(179,'in_voice','1','あり',1,'N',NULL,NULL),(180,'in_voice','2','なし',2,'N',NULL,NULL),(181,'audio_mix','tel_no','電話番号',1,'N',NULL,NULL),(182,'audio_mix','customer_name','名前',2,'N',NULL,NULL),(183,'audio_mix','address','住所',3,'N',NULL,NULL),(184,'audio_mix','birthday','生年月日',5,'N',NULL,NULL),(185,'audio_mix','money','金額',6,'N',NULL,NULL),(186,'out_setup_sys','0','---',0,'N',NULL,NULL),(187,'question_repeat','0','なし',1,'N',NULL,NULL),(188,'question_repeat','1','1回',2,'N',NULL,NULL),(189,'question_repeat','2','2回',3,'Y',NULL,NULL),(190,'question_repeat','3','3回',5,'Y',NULL,NULL),(191,'question_repeat','4','4回',6,'Y',NULL,NULL),(192,'answer_no','1','1',1,'N',NULL,NULL),(193,'answer_no','2','2',2,'N',NULL,NULL),(194,'answer_no','3','3',3,'N',NULL,NULL),(195,'answer_no','4','4',5,'N',NULL,NULL),(196,'answer_no','5','5',6,'N',NULL,NULL),(197,'answer_no','6','6',7,'N',NULL,NULL),(198,'answer_no','7','7',8,'N',NULL,NULL),(199,'answer_no','8','8',9,'N',NULL,NULL),(200,'answer_no','9','9',10,'N',NULL,NULL),(201,'answer_no','0','0',11,'N',NULL,NULL),(202,'answer_no','51','*',12,'N',NULL,NULL),(203,'answer_no','52','#',13,'N',NULL,NULL),(204,'template_ques','9','タイムアウト',12,'N',NULL,NULL),(205,'auth_item','birthday','生年月日',1,'N',NULL,NULL),(206,'auth_item','money','金額',2,'N',NULL,NULL),(207,'in_unit','180','3分',3,'N',NULL,NULL),(208,'out_unit','180','3分',3,'N',NULL,NULL),(209,'proc_num','2','2ch',2,'N',NULL,NULL),(210,'sync_voice','1','あり',1,'N',NULL,NULL),(211,'sync_voice','0','なし',2,'N',NULL,NULL),(212,'outgoing_time','6','06',7,'N',NULL,NULL),(213,'outgoing_time','7','07',8,'N',NULL,NULL),(214,'outgoing_time','8','08',9,'N',NULL,NULL),(215,'outgoing_time','9','09',10,'N',NULL,NULL),(216,'outgoing_time','10','10',11,'N',NULL,NULL),(217,'outgoing_time','11','11',12,'N',NULL,NULL),(218,'outgoing_time','12','12',13,'N',NULL,NULL),(219,'outgoing_time','13','13',14,'N',NULL,NULL),(220,'outgoing_time','14','14',15,'N',NULL,NULL),(221,'outgoing_time','15','15',16,'N',NULL,NULL),(222,'outgoing_time','16','16',17,'N',NULL,NULL),(223,'outgoing_time','17','17',18,'N',NULL,NULL),(224,'outgoing_time','18','18',19,'N',NULL,NULL),(225,'outgoing_time','19','19',20,'N',NULL,NULL),(226,'outgoing_time','20','20',21,'N',NULL,NULL),(228,'schedule_redial_flag','2','2回',3,'N',NULL,NULL),(229,'schedule_redial_flag','3','3回',5,'N',NULL,NULL),(230,'schedule_redial_flag','4','4回',6,'N',NULL,NULL),(231,'schedule_redial_flag','5','5回',7,'N',NULL,NULL),(232,'proc_num','4','4ch',5,'N','2016-02-08 18:14:00','0000-00-00 00:00:00'),(233,'proc_num','6','6ch',7,'N','2016-02-08 18:14:00','0000-00-00 00:00:00'),(234,'proc_num','7','7ch',8,'N','2016-02-08 18:14:00','0000-00-00 00:00:00'),(235,'proc_num','8','8ch',9,'N','2016-02-08 18:14:00','0000-00-00 00:00:00'),(236,'proc_num','9','9ch',10,'N','2016-02-08 18:14:00','0000-00-00 00:00:00'),(237,'outgoing_time','21','21',22,'N',NULL,NULL),(238,'outgoing_time','22','22',23,'N',NULL,NULL),(239,'outgoing_time','23','23',24,'N',NULL,NULL),(240,'inbound_template_busy','0','busy',0,'N','2016-04-12 19:54:42',NULL),(241,'template_ques','10','文字列認証',4,'N','2016-04-25 17:55:31',NULL),(242,'list_item','consentday','利用承諾日',14,'N',NULL,NULL),(243,'template_ques','11','物件番号入力',9,'Y',NULL,NULL),(244,'template_ques','12','FAX番号入力',10,'Y',NULL,NULL),(245,'template_ques','11','物件番号入力',9,'N',NULL,NULL),(246,'template_ques','12','物件FAX送信',10,'N',NULL,NULL),(247,'dial_wait_time','25','25秒',1,'N',NULL,NULL),(248,'dial_wait_time','20','20秒',6,'N',NULL,NULL),(249,'template_ques','13','SMS',13,'N','2017-01-13 15:10:53',NULL),(251,'template_ques','14','物件入力(賃料、平米) ',14,'N',NULL,NULL),(252,'template_ques','16','通知番号SMS送信',16,'N','2017-10-04 14:42:29',NULL),(253,'proc_num','21','21ch',22,'N','2017-02-23 11:40:00',NULL),(254,'proc_num','22','22ch',23,'N','2017-02-23 11:40:00',NULL),(255,'proc_num','23','23ch',24,'N','2017-02-23 11:40:00',NULL),(256,'proc_num','24','24ch',25,'N','2017-02-23 11:40:00',NULL),(257,'proc_num','11','11ch',12,'N','2017-02-23 11:40:00',NULL),(258,'proc_num','12','12ch',13,'N','2017-02-23 11:40:00',NULL),(259,'proc_num','13','13ch',14,'N','2017-02-23 11:40:00',NULL),(260,'proc_num','14','14ch',15,'N','2017-02-23 11:40:00',NULL),(261,'proc_num','16','16ch',17,'N','2017-02-23 11:40:00',NULL),(262,'proc_num','17','17ch',18,'N','2017-02-23 11:40:00',NULL),(263,'proc_num','18','18ch',19,'N','2017-02-23 11:40:00',NULL),(264,'proc_num','19','19ch',20,'N','2017-02-23 11:40:00',NULL),(265,'template_ques','17','着信番号照合',17,'N','2019-05-31 14:00:00',NULL),(266,'dial_wait_time','15','15秒',7,'N','2020-03-06 11:51:22',NULL),(267,'template_ques','18','番号指定SMS送信',18,'N','2020-04-08 17:19:53',NULL),(268,'proc_num','26','26ch',27,'N','2020-07-01 10:30:00','0000-00-00 00:00:00'),(269,'proc_num','27','27ch',28,'N','2020-07-01 10:30:00','0000-00-00 00:00:00'),(270,'proc_num','28','28ch',29,'N','2020-07-01 10:30:00','0000-00-00 00:00:00'),(271,'proc_num','29','29ch',30,'N','2020-07-01 10:30:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `m90_pulldown_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m91_menu_manage_items`
--

DROP TABLE IF EXISTS `m91_menu_manage_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m91_menu_manage_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `menu_item_code` varchar(20) DEFAULT NULL,
  `menu_item_name` varchar(64) DEFAULT NULL,
  `order_num` int(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m91_menu_manage_items`
--

LOCK TABLES `m91_menu_manage_items` WRITE;
/*!40000 ALTER TABLE `m91_menu_manage_items` DISABLE KEYS */;
INSERT INTO `m91_menu_manage_items` VALUES (1,'outbound','アウトバウンド',1,'N','2016-08-26 15:50:29',NULL),(2,'inbound','インバウンド',2,'N','2016-08-26 15:50:29',NULL),(3,'sms','SMS',3,'N','2016-08-26 15:50:29',NULL);
/*!40000 ALTER TABLE `m91_menu_manage_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m92_limit_functions`
--

DROP TABLE IF EXISTS `m92_limit_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m92_limit_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL,
  `template_type` int(11) DEFAULT '0' COMMENT '0： インバウンド. １： アウトバウンド',
  `function_name` varchar(64) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m92_limit_functions`
--

LOCK TABLES `m92_limit_functions` WRITE;
/*!40000 ALTER TABLE `m92_limit_functions` DISABLE KEYS */;
INSERT INTO `m92_limit_functions` VALUES (1,'002',0,'template_section','14','N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `m92_limit_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m99_system_parameters`
--

DROP TABLE IF EXISTS `m99_system_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m99_system_parameters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `function_id` varchar(64) NOT NULL COMMENT '機能ID',
  `parameter_id` varchar(64) NOT NULL COMMENT 'パラメータ',
  `parameter_value` varchar(64) DEFAULT NULL COMMENT 'パラメータ値',
  `memo` text COMMENT '備考',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='m99パラメータ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m99_system_parameters`
--

LOCK TABLES `m99_system_parameters` WRITE;
/*!40000 ALTER TABLE `m99_system_parameters` DISABLE KEYS */;
INSERT INTO `m99_system_parameters` VALUES (1,'LIST','MAX_TEL','120000','リストの最大件数','N',NULL,NULL),(2,'RDD','MAX_LIST','50',NULL,'N',NULL,NULL),(3,'CHANGE_PASS','TIME_TO_CHANGE_PASS','7776000',NULL,'N',NULL,NULL),(4,'SCRIPT','MAX_QUES','50',NULL,'N',NULL,NULL),(5,'SCHEDULE','MAX_SCHEDULE','15','間隔でスケジュール。','N',NULL,NULL),(6,'SCHEDULE','TIME_PREPARE_PROCNUM','900','second','N',NULL,NULL),(7,'SCHEDULE','MIN_TIME_CALL','900','second','N',NULL,NULL),(8,'SCHEDULE','PATH_QUESTION_RECORD','/home/ftpuser/robo/schedule/',NULL,'N',NULL,NULL),(9,'LIST','MAX_LIST_ITEM','10000',NULL,'N',NULL,NULL),(10,'COMPANY','GS_COMPANY_ID','002','GS会社ID固定','N',NULL,NULL),(11,'LIST','MAX_TEL_NG','20000',NULL,'N',NULL,NULL),(12,'LIST','MAX_TEL_NG','10000',NULL,'N',NULL,NULL),(13,'LIST','MAX_INCOMING_NG_TEL','10000',NULL,'N',NULL,NULL),(15,'LIST','MAX_INBOUND_TEL','120000',NULL,'N',NULL,NULL),(16,'LIST','MAX_SMS_TEL','120000','SMSリストの最大件数','N',NULL,NULL),(17,'LIST_SMS','MAX_SMS_TEL','10000','','N','2016-05-10 10:10:16',NULL),(18,'SMS_SCHEDULE','MIN_TIME_SEND','900','seconds','N','2016-05-12 10:33:13',NULL),(19,'SMS_SCHEDULE','MAX_SCHEDULE','15','間隔でスケジュール。','N','2016-05-12 10:33:13',NULL),(20,'SMS_BATCH','LOCAL_PATH','/home/ftpuser/robo/sms/',NULL,'N','2016-05-20 16:06:30',NULL),(21,'INBOUND','PATH_QUESTION_RECORD','/home/ftpuser/robo/inbound/schedule/',NULL,'N','2016-05-24 16:06:30',NULL),(22,'SMS_BATCH','FORCE_STOP_TIME','600','seconds','N','0000-00-00 00:00:00',NULL),(23,'HIDDEN_CALL_LIST','HIDDEN_CALL_LIST','生年月日',NULL,'N','2019-04-04 14:52:34',NULL),(24,'HIDDEN_CALL_LIST','HIDDEN_CALL_LIST','誕生日',NULL,'N',NULL,NULL);
/*!40000 ALTER TABLE `m99_system_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t100_sms_send_lists`
--

DROP TABLE IF EXISTS `t100_sms_send_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t100_sms_send_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `list_no` int(11) DEFAULT NULL,
  `list_name` varchar(128) DEFAULT NULL COMMENT '発信リスト名',
  `list_test_flag` varchar(1) DEFAULT '0' COMMENT 'テストリストフラグ	 １：テストリスト',
  `tel_total` int(12) DEFAULT NULL,
  `muko_tel_total` int(12) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='t10発信リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t100_sms_send_lists`
--

LOCK TABLES `t100_sms_send_lists` WRITE;
/*!40000 ALTER TABLE `t100_sms_send_lists` DISABLE KEYS */;
INSERT INTO `t100_sms_send_lists` VALUES (1,'002',1,'サンプル送信リスト1','1',2,2,'N','2021-02-26 17:17:39','kamo_s','SmsSendList_upload_file','2021-02-26 17:17:39',NULL,NULL),(2,'002',2,'サンプル送信リスト2','1',3,3,'N','2021-02-26 17:18:47','kamo_s','SmsSendList_upload_file','2021-02-26 17:18:47',NULL,NULL),(3,'002',3,'サンプル送信リスト3','1',1,1,'N','2021-03-01 14:07:04','kamo_s','SmsSendList_upload_file','2021-03-01 14:07:04',NULL,NULL);
/*!40000 ALTER TABLE `t100_sms_send_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t101_sms_tel_lists`
--

DROP TABLE IF EXISTS `t101_sms_tel_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t101_sms_tel_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `list_id` bigint(20) NOT NULL,
  `tel_no` int(11) DEFAULT NULL,
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL,
  `muko_flag` varchar(1) DEFAULT 'N' COMMENT '無効フラグ',
  `muko_modified` datetime DEFAULT NULL COMMENT '無効時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `consentday` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_list_id` (`list_id`),
  KEY `idx_customize1` (`customize1`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize11` (`customize11`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='t11 発信電話番号リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t101_sms_tel_lists`
--

LOCK TABLES `t101_sms_tel_lists` WRITE;
/*!40000 ALTER TABLE `t101_sms_tel_lists` DISABLE KEYS */;
INSERT INTO `t101_sms_tel_lists` VALUES (1,1,1,'09000000000','ダミー1','1000','1234','1990年03月21日','','','','','','','N',NULL,'N','2021-02-26 17:17:39','kamo_s','SmsSendList_upload_file',NULL,NULL,NULL,NULL),(2,1,2,'09000000001','ダミー2','2000','5678','1985年12月01日','','','','','','','N',NULL,'N','2021-02-26 17:17:39','kamo_s','SmsSendList_upload_file',NULL,NULL,NULL,NULL),(3,2,1,'09000000002','ダミー3','3000','1234','88888','','','','','','','N',NULL,'N','2021-02-26 17:18:47','kamo_s','SmsSendList_upload_file',NULL,NULL,NULL,NULL),(4,2,2,'09000000003','ダミー4','4000','5678','77777','','','','','','','N',NULL,'N','2021-02-26 17:18:47','kamo_s','SmsSendList_upload_file',NULL,NULL,NULL,NULL),(5,2,3,'09000000004','ダミー5','5000','0123','66666','','','','','','','N',NULL,'N','2021-02-26 17:18:47','kamo_s','SmsSendList_upload_file',NULL,NULL,NULL,NULL),(6,3,1,'09000000005','','','','','','','','','','','N',NULL,'N','2021-03-01 14:07:04','kamo_s','SmsSendList_upload_file',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t101_sms_tel_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t102_sms_list_items`
--

DROP TABLE IF EXISTS `t102_sms_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t102_sms_list_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) NOT NULL,
  `list_id` varchar(20) NOT NULL,
  `order_num` int(6) DEFAULT NULL,
  `item_name` varchar(64) DEFAULT NULL,
  `item_code` varchar(64) DEFAULT NULL,
  `column` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t102_sms_list_items`
--

LOCK TABLES `t102_sms_list_items` WRITE;
/*!40000 ALTER TABLE `t102_sms_list_items` DISABLE KEYS */;
INSERT INTO `t102_sms_list_items` VALUES (1,'002','1',1,'電話番号','tel_no','customize1','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:17:39'),(2,'002','1',2,'名前','customer_name','customize2','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:17:39'),(3,'002','1',3,'金額','money','customize3','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:17:39'),(4,'002','1',4,'認証番号','','customize4','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:17:39'),(5,'002','1',5,'生年月日','birthday','customize5','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:17:39'),(6,'002','2',1,'電話番号','tel_no','customize1','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:18:47'),(7,'002','2',2,'名前','customer_name','customize2','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:18:47'),(8,'002','2',3,'金額','money','customize3','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:18:47'),(9,'002','2',4,'認証番号','','customize4','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:18:47'),(10,'002','2',5,'顧客番号','','customize5','N','kamo_s','SmsSendList_upload_file','2021-02-26 17:18:47'),(11,'002','3',1,'電話番号','tel_no','customize1','N','kamo_s','SmsSendList_upload_file','2021-03-01 14:07:04');
/*!40000 ALTER TABLE `t102_sms_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t10_call_lists`
--

DROP TABLE IF EXISTS `t10_call_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t10_call_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `list_no` int(11) DEFAULT NULL,
  `list_name` varchar(128) DEFAULT NULL COMMENT '発信リスト名',
  `list_test_flag` varchar(1) DEFAULT '0' COMMENT 'テストリストフラグ	 １：テストリスト',
  `tel_total` int(12) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='t10発信リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t10_call_lists`
--

LOCK TABLES `t10_call_lists` WRITE;
/*!40000 ALTER TABLE `t10_call_lists` DISABLE KEYS */;
INSERT INTO `t10_call_lists` VALUES (1,'002',1,'ダミー番号1','1',2,'N','2021-02-26 16:27:46','kamo_s','CallList_upload_file','2021-02-26 16:27:46',NULL,NULL),(2,'002',2,'ダミー番号2','1',3,'N','2021-02-26 16:29:50','kamo_s','CallList_upload_file','2021-02-26 16:29:50',NULL,NULL),(3,'002',3,'ダミー番号3','1',1,'N','2021-03-01 12:11:23','kamo_s','CallList_upload_file','2021-03-01 12:11:23',NULL,NULL);
/*!40000 ALTER TABLE `t10_call_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t11_tel_lists`
--

DROP TABLE IF EXISTS `t11_tel_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t11_tel_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `list_id` bigint(20) NOT NULL,
  `tel_no` int(11) DEFAULT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `fee` varchar(64) DEFAULT NULL,
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL,
  `muko_flag` varchar(1) DEFAULT 'N' COMMENT '無効フラグ N:有効、Y：無効',
  `muko_modified` datetime DEFAULT NULL COMMENT '無効時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_list_id` (`list_id`),
  KEY `idx_customize1` (`customize1`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize11` (`customize11`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='t11 発信電話番号リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t11_tel_lists`
--

LOCK TABLES `t11_tel_lists` WRITE;
/*!40000 ALTER TABLE `t11_tel_lists` DISABLE KEYS */;
INSERT INTO `t11_tel_lists` VALUES (1,1,1,NULL,NULL,NULL,NULL,'09000000000','ダミー1','1000','1234','1990年03月21日','','','','','','','N',NULL,'N','2021-02-26 16:27:46','kamo_s','CallList_upload_file',NULL,NULL,NULL),(2,1,2,NULL,NULL,NULL,NULL,'09000000001','ダミー2','2000','5678','1985年12月01日','','','','','','','N',NULL,'N','2021-02-26 16:27:46','kamo_s','CallList_upload_file',NULL,NULL,NULL),(3,2,1,NULL,NULL,NULL,NULL,'09000000002','ダミー3','3000','1234','88888','','','','','','','N',NULL,'N','2021-02-26 16:29:50','kamo_s','CallList_upload_file',NULL,NULL,NULL),(4,2,2,NULL,NULL,NULL,NULL,'09000000003','ダミー4','4000','5678','77777','','','','','','','N',NULL,'N','2021-02-26 16:29:50','kamo_s','CallList_upload_file',NULL,NULL,NULL),(5,2,3,NULL,NULL,NULL,NULL,'09000000004','ダミー5','5000','0123','66666','','','','','','','N',NULL,'N','2021-02-26 16:29:50','kamo_s','CallList_upload_file',NULL,NULL,NULL),(6,3,1,NULL,NULL,NULL,NULL,'09000000005','ダミー6','4000','5678','12345','20001112','2000年11月12日','','','','','N',NULL,'N','2021-03-01 12:11:23','kamo_s','CallList_upload_file',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t11_tel_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t12_list_items`
--

DROP TABLE IF EXISTS `t12_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t12_list_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) NOT NULL,
  `list_id` varchar(20) NOT NULL,
  `order_num` int(6) DEFAULT NULL,
  `item_name` varchar(64) DEFAULT NULL,
  `item_code` varchar(64) DEFAULT NULL,
  `column` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t12_list_items`
--

LOCK TABLES `t12_list_items` WRITE;
/*!40000 ALTER TABLE `t12_list_items` DISABLE KEYS */;
INSERT INTO `t12_list_items` VALUES (1,'002','1',1,'電話番号','tel_no','customize1','N','kamo_s','CallList_upload_file','2021-02-26 16:27:46'),(2,'002','1',2,'名前','customer_name','customize2','N','kamo_s','CallList_upload_file','2021-02-26 16:27:46'),(3,'002','1',3,'金額','money','customize3','N','kamo_s','CallList_upload_file','2021-02-26 16:27:46'),(4,'002','1',4,'認証番号','','customize4','N','kamo_s','CallList_upload_file','2021-02-26 16:27:46'),(5,'002','1',5,'生年月日','birthday','customize5','N','kamo_s','CallList_upload_file','2021-02-26 16:27:46'),(6,'002','2',1,'電話番号','tel_no','customize1','N','kamo_s','CallList_upload_file','2021-02-26 16:29:50'),(7,'002','2',2,'名前','customer_name','customize2','N','kamo_s','CallList_upload_file','2021-02-26 16:29:50'),(8,'002','2',3,'金額','money','customize3','N','kamo_s','CallList_upload_file','2021-02-26 16:29:50'),(9,'002','2',4,'認証番号','','customize4','N','kamo_s','CallList_upload_file','2021-02-26 16:29:50'),(10,'002','2',5,'顧客番号','','customize5','N','kamo_s','CallList_upload_file','2021-02-26 16:29:50'),(11,'002','3',1,'電話番号','tel_no','customize1','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23'),(12,'002','3',2,'名前','customer_name','customize2','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23'),(13,'002','3',3,'金額','money','customize3','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23'),(14,'002','3',4,'認証番号','','customize4','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23'),(15,'002','3',5,'顧客番号','','customize5','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23'),(16,'002','3',6,'誕生日','','customize6','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23'),(17,'002','3',7,'生年月日','birthday','customize7','N','kamo_s','CallList_upload_file','2021-03-01 12:11:23');
/*!40000 ALTER TABLE `t12_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t13_inbound_list_items`
--

DROP TABLE IF EXISTS `t13_inbound_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t13_inbound_list_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) NOT NULL,
  `list_id` varchar(20) NOT NULL,
  `order_num` int(6) DEFAULT NULL,
  `item_name` varchar(64) DEFAULT NULL,
  `item_code` varchar(64) DEFAULT NULL,
  `column` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t13_inbound_list_items`
--

LOCK TABLES `t13_inbound_list_items` WRITE;
/*!40000 ALTER TABLE `t13_inbound_list_items` DISABLE KEYS */;
INSERT INTO `t13_inbound_list_items` VALUES (1,'002','1',1,'認証番号','認証番号','customize1','N','kamo_s','InboundCallList_upload_file','2021-02-26 16:50:18'),(2,'002','1',2,'電話番号','tel_no','customize2','N','kamo_s','InboundCallList_upload_file','2021-02-26 16:50:18'),(3,'002','1',3,'名前','customer_name','customize3','N','kamo_s','InboundCallList_upload_file','2021-02-26 16:50:18'),(4,'002','1',4,'金額','money','customize4','N','kamo_s','InboundCallList_upload_file','2021-02-26 16:50:18'),(5,'002','1',5,'生年月日','birthday','customize5','N','kamo_s','InboundCallList_upload_file','2021-02-26 16:50:18'),(6,'002','2',1,'金額','money','customize1','N','kamo_s','InboundCallList_upload_file','2021-02-26 17:08:54'),(7,'002','2',2,'電話番号','tel_no','customize2','N','kamo_s','InboundCallList_upload_file','2021-02-26 17:08:54'),(8,'002','2',3,'名前','customer_name','customize3','N','kamo_s','InboundCallList_upload_file','2021-02-26 17:08:54'),(9,'002','2',4,'認証番号','認証番号','customize4','N','kamo_s','InboundCallList_upload_file','2021-02-26 17:08:54'),(10,'002','2',5,'顧客番号','顧客番号','customize5','N','kamo_s','InboundCallList_upload_file','2021-02-26 17:08:54');
/*!40000 ALTER TABLE `t13_inbound_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t14_outgoing_ng_lists`
--

DROP TABLE IF EXISTS `t14_outgoing_ng_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t14_outgoing_ng_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `list_ng_no` int(10) NOT NULL,
  `list_name` varchar(128) DEFAULT NULL COMMENT 'リスト名',
  `total` int(11) DEFAULT NULL COMMENT '総件数',
  `expired_date_from` date DEFAULT NULL COMMENT '有効期限開始',
  `expired_date_to` date DEFAULT NULL COMMENT '有効期限終了',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t14発信NGリスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t14_outgoing_ng_lists`
--

LOCK TABLES `t14_outgoing_ng_lists` WRITE;
/*!40000 ALTER TABLE `t14_outgoing_ng_lists` DISABLE KEYS */;
INSERT INTO `t14_outgoing_ng_lists` VALUES (1,'002',1,'ダミーNGリスト',7,NULL,NULL,'N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,'2021-02-26 16:37:38');
/*!40000 ALTER TABLE `t14_outgoing_ng_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t15_outgoing_ng_tels`
--

DROP TABLE IF EXISTS `t15_outgoing_ng_tels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t15_outgoing_ng_tels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `list_ng_id` varchar(20) NOT NULL COMMENT '発信NGリストID',
  `no` int(20) NOT NULL,
  `tel_no` varchar(20) NOT NULL COMMENT '電話番号',
  `memo` varchar(128) DEFAULT NULL COMMENT '備考',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`),
  KEY `idx_listid_telno` (`tel_no`,`list_ng_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='t15発信NG番号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t15_outgoing_ng_tels`
--

LOCK TABLES `t15_outgoing_ng_tels` WRITE;
/*!40000 ALTER TABLE `t15_outgoing_ng_tels` DISABLE KEYS */;
INSERT INTO `t15_outgoing_ng_tels` VALUES (1,'1',1,'09000000000','ダミー０','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL),(2,'1',2,'09000000001','ダミー１','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL),(3,'1',3,'09000000002','ダミー２','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL),(4,'1',4,'09000000003','ダミー３','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL),(5,'1',5,'09000000004','ダミー４','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL),(6,'1',6,'09000000005','ダミー５','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL),(7,'1',7,'09000000006','ダミー６','N','kamo_s','CallListNg_upload_file','2021-02-26 16:37:38',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t15_outgoing_ng_tels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t16_inbound_call_lists`
--

DROP TABLE IF EXISTS `t16_inbound_call_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t16_inbound_call_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `list_no` int(11) DEFAULT NULL,
  `list_name` varchar(128) DEFAULT NULL COMMENT '発信リスト名',
  `item_main` varchar(128) DEFAULT NULL,
  `list_test_flag` varchar(1) DEFAULT '0' COMMENT 'テストリストフラグ	 １：テストリスト',
  `tel_total` int(12) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='t16インバウンド発信リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t16_inbound_call_lists`
--

LOCK TABLES `t16_inbound_call_lists` WRITE;
/*!40000 ALTER TABLE `t16_inbound_call_lists` DISABLE KEYS */;
INSERT INTO `t16_inbound_call_lists` VALUES (1,'002',1,'ダミーリスト1','認証番号','1',2,'N','2021-02-26 16:50:18','kamo_s','InboundCallList_upload_file','2021-02-26 16:50:18',NULL,NULL),(2,'002',2,'ダミーリスト2','金額','1',3,'N','2021-02-26 17:08:53','kamo_s','InboundCallList_upload_file','2021-02-26 17:08:53',NULL,NULL);
/*!40000 ALTER TABLE `t16_inbound_call_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t17_inbound_tel_lists`
--

DROP TABLE IF EXISTS `t17_inbound_tel_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t17_inbound_tel_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `list_id` bigint(20) NOT NULL,
  `tel_no` int(11) DEFAULT NULL,
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL COMMENT '項目11',
  `muko_flag` varchar(1) DEFAULT 'N' COMMENT '無効フラグ N:有効、Y：無効',
  `muko_modified` datetime DEFAULT NULL COMMENT '無効時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_list_id` (`list_id`),
  KEY `idx_customize1` (`customize1`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize11` (`customize11`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='t17インバウンド発信電話番号リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t17_inbound_tel_lists`
--

LOCK TABLES `t17_inbound_tel_lists` WRITE;
/*!40000 ALTER TABLE `t17_inbound_tel_lists` DISABLE KEYS */;
INSERT INTO `t17_inbound_tel_lists` VALUES (1,1,1,'1234','09000000000','ダミー1','1000','1990年03月21日','','','','','','','N',NULL,'N','2021-02-26 16:50:18','kamo_s','InboundCallList_upload_file',NULL,NULL,NULL),(2,1,2,'5678','09000000001','ダミー2','2000','1985年12月01日','','','','','','','N',NULL,'N','2021-02-26 16:50:18','kamo_s','InboundCallList_upload_file',NULL,NULL,NULL),(3,2,1,'3000','09000000002','ダミー3','1234','88888','','','','','','','N',NULL,'N','2021-02-26 17:08:53','kamo_s','InboundCallList_upload_file',NULL,NULL,NULL),(4,2,2,'4000','09000000003','ダミー4','5678','77777','','','','','','','N',NULL,'N','2021-02-26 17:08:53','kamo_s','InboundCallList_upload_file',NULL,NULL,NULL),(5,2,3,'5000','09000000004','ダミー5','0123','66666','','','','','','','N',NULL,'N','2021-02-26 17:08:53','kamo_s','InboundCallList_upload_file',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t17_inbound_tel_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t18_incoming_ng_lists`
--

DROP TABLE IF EXISTS `t18_incoming_ng_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t18_incoming_ng_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `list_ng_no` int(10) NOT NULL,
  `list_name` varchar(128) DEFAULT NULL COMMENT 'リスト名',
  `total` int(11) DEFAULT NULL COMMENT '総件数',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t17着信拒否リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t18_incoming_ng_lists`
--

LOCK TABLES `t18_incoming_ng_lists` WRITE;
/*!40000 ALTER TABLE `t18_incoming_ng_lists` DISABLE KEYS */;
INSERT INTO `t18_incoming_ng_lists` VALUES (1,'002',1,'ダミー拒否リスト',7,'N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,'2021-02-26 17:12:52');
/*!40000 ALTER TABLE `t18_incoming_ng_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t19_incoming_ng_tels`
--

DROP TABLE IF EXISTS `t19_incoming_ng_tels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t19_incoming_ng_tels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `list_ng_id` varchar(20) NOT NULL COMMENT '発信NGリストID',
  `no` int(20) DEFAULT NULL,
  `tel_no` varchar(20) NOT NULL COMMENT '着信拒否番号',
  `memo` varchar(128) DEFAULT NULL COMMENT '備考',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='t18着信拒否情報';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t19_incoming_ng_tels`
--

LOCK TABLES `t19_incoming_ng_tels` WRITE;
/*!40000 ALTER TABLE `t19_incoming_ng_tels` DISABLE KEYS */;
INSERT INTO `t19_incoming_ng_tels` VALUES (1,'1',1,'09000000000','ダミー０','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL),(2,'1',2,'09000000001','ダミー１','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL),(3,'1',3,'09000000002','ダミー２','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL),(4,'1',4,'09000000003','ダミー３','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL),(5,'1',5,'09000000004','ダミー４','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL),(6,'1',6,'09000000005','ダミー５','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL),(7,'1',7,'09000000006','ダミー６','N','kamo_s','InboundRestrict_upload_file','2021-02-26 17:12:52',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t19_incoming_ng_tels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t200_sms_send_schedules`
--

DROP TABLE IF EXISTS `t200_sms_send_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t200_sms_send_schedules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT 'サーバID',
  `schedule_no` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `schedule_name` varchar(64) NOT NULL,
  `service_id` varchar(20) NOT NULL,
  `display_number` varchar(20) DEFAULT NULL,
  `list_id` varchar(20) NOT NULL COMMENT '送信リストID',
  `template_id` varchar(20) NOT NULL COMMENT 'スクリプトID',
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '0：まだ、1：実行中、2：手動停止、3：停止、4：終了、5：停止中、6：終了中',
  `send_total` int(12) DEFAULT NULL,
  `resend_flag` varchar(1) DEFAULT 'N',
  `stop_time` datetime DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `consent_flag` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t200 SMSスケジュール';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t200_sms_send_schedules`
--

LOCK TABLES `t200_sms_send_schedules` WRITE;
/*!40000 ALTER TABLE `t200_sms_send_schedules` DISABLE KEYS */;
INSERT INTO `t200_sms_send_schedules` VALUES (1,'002',1,'サンプルスケジュール','CDgyo3MyOac128','0120558656(試験用.)','3','1','4',1,'N','2021-03-01 13:55:04','N','2021-03-01 13:51:57','s_kamo','SmsSchedule_Create_Schedule','2021-03-01 13:56:03',NULL,'sms_api(set_status_schedule)','0');
/*!40000 ALTER TABLE `t200_sms_send_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t201_sms_send_times`
--

DROP TABLE IF EXISTS `t201_sms_send_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t201_sms_send_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` varchar(20) NOT NULL COMMENT 'スケジュールID',
  `time_start` datetime NOT NULL COMMENT '開始時間',
  `time_end` datetime NOT NULL COMMENT '終了時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t201 SMSスケジュール詳細';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t201_sms_send_times`
--

LOCK TABLES `t201_sms_send_times` WRITE;
/*!40000 ALTER TABLE `t201_sms_send_times` DISABLE KEYS */;
INSERT INTO `t201_sms_send_times` VALUES (1,'1','2021-03-01 13:55:00','2021-03-01 15:05:00','N','2021-03-01 13:51:57','s_kamo','SmsSchedule_Create_Schedule','2021-03-01 13:51:57',NULL,NULL);
/*!40000 ALTER TABLE `t201_sms_send_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t202_sms_send_logs`
--

DROP TABLE IF EXISTS `t202_sms_send_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t202_sms_send_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` varchar(20) NOT NULL COMMENT 'スケジュールID',
  `time_start` datetime NOT NULL COMMENT '開始時間',
  `time_end` datetime DEFAULT NULL COMMENT '終了時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t202 SMSスケジュール履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t202_sms_send_logs`
--

LOCK TABLES `t202_sms_send_logs` WRITE;
/*!40000 ALTER TABLE `t202_sms_send_logs` DISABLE KEYS */;
INSERT INTO `t202_sms_send_logs` VALUES (1,'1','2021-02-01 13:55:03','2021-02-01 13:55:04','N','2021-02-01 13:55:03',NULL,'sms_api','2021-03-01 13:55:04',NULL,'sms_api');
/*!40000 ALTER TABLE `t202_sms_send_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t20_out_schedules`
--

DROP TABLE IF EXISTS `t20_out_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t20_out_schedules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_no` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `company_id` varchar(20) NOT NULL COMMENT 'サーバID',
  `schedule_name` varchar(64) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '０：まだ、１：実行中、２：停止、３：一旦終了、4：終了、５：停止中、６：終了中、7：リダイヤル待ち',
  `call_type` varchar(1) NOT NULL COMMENT '番号通知	 0 : 通知、1 : 未通知',
  `external_number` varchar(20) NOT NULL COMMENT '外線番号',
  `list_ng_id` varchar(20) DEFAULT NULL COMMENT '発信NGリスト',
  `list_id` varchar(20) NOT NULL COMMENT '発信リストID',
  `template_id` varchar(20) NOT NULL COMMENT 'スクリプトID',
  `proc_num` varchar(20) DEFAULT NULL COMMENT '起動プロセス数',
  `dial_wait_time` varchar(20) DEFAULT NULL COMMENT '呼び出し時間設定',
  `ans_timeout` varchar(20) DEFAULT NULL COMMENT '回答待ち時間設定',
  `term_valid_count` varchar(20) DEFAULT NULL COMMENT '自動停止有効回答数',
  `term_connect_count` varchar(20) DEFAULT NULL COMMENT '自動停止接続数',
  `recall` int(1) DEFAULT '0' COMMENT '*0:なし、1:あり',
  `recall_time` varchar(20) DEFAULT NULL COMMENT 'リダイヤル間隔',
  `recall_flag` int(1) DEFAULT '0' COMMENT '実行回数',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `cron_flag` varchar(1) DEFAULT 'Y',
  `cron_record_flag` varchar(1) DEFAULT 'Y' COMMENT 'N-取得した,Y-まだ取得しない',
  `called_total` int(12) DEFAULT NULL,
  `yuko_total` int(12) DEFAULT NULL,
  `tel_total` int(7) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t20 スケジュール';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t20_out_schedules`
--

LOCK TABLES `t20_out_schedules` WRITE;
/*!40000 ALTER TABLE `t20_out_schedules` DISABLE KEYS */;
INSERT INTO `t20_out_schedules` VALUES (1,1,'002','サンプルスケジュール','4','0','0363863696','','3','1','1','25','10000','','',0,NULL,0,'N','N','Y',1,NULL,NULL,'2021-03-01 11:51:20','s_kamo','OutSchedule_Create_Schedule','2021-03-01 11:55:09',NULL,NULL);
/*!40000 ALTER TABLE `t20_out_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t21_out_times`
--

DROP TABLE IF EXISTS `t21_out_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t21_out_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` varchar(20) NOT NULL COMMENT 'スケジュールID',
  `time_start` datetime NOT NULL COMMENT '開始時間',
  `time_end` datetime NOT NULL COMMENT '終了時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t21スケジュール詳細';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t21_out_times`
--

LOCK TABLES `t21_out_times` WRITE;
/*!40000 ALTER TABLE `t21_out_times` DISABLE KEYS */;
INSERT INTO `t21_out_times` VALUES (1,'1','2021-03-01 11:55:00','2021-03-01 13:40:00','N','2021-03-01 11:51:20','s_kamo','OutSchedule_Create_Schedule','2021-03-01 11:51:20',NULL,NULL);
/*!40000 ALTER TABLE `t21_out_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t22_out_logs`
--

DROP TABLE IF EXISTS `t22_out_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t22_out_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` varchar(20) NOT NULL COMMENT 'スケジュールID',
  `time_start` datetime NOT NULL COMMENT '開始時間',
  `time_end` datetime DEFAULT NULL COMMENT '終了時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='t21スケジュール詳細';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t22_out_logs`
--

LOCK TABLES `t22_out_logs` WRITE;
/*!40000 ALTER TABLE `t22_out_logs` DISABLE KEYS */;
INSERT INTO `t22_out_logs` VALUES (1,'1','2021-02-01 01:00:00','2021-02-01 10:00:00','N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t22_out_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t25_inbounds`
--

DROP TABLE IF EXISTS `t25_inbounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t25_inbounds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL,
  `inbound_no` bigint(20) NOT NULL,
  `external_number` varchar(20) NOT NULL COMMENT '外線番号',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '０：メッセージ、１：busy、２：終了',
  `template_id` varchar(20) NOT NULL COMMENT 'スクリプトID',
  `list_ng_id` varchar(20) DEFAULT NULL,
  `list_id` varchar(20) DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `cron_record_flag` varchar(1) DEFAULT 'N',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `bukken_fax_flag` varchar(1) DEFAULT '0' COMMENT '0: Faxなし。またはFAX送信済み。1: 送信中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='t25 着信設定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t25_inbounds`
--

LOCK TABLES `t25_inbounds` WRITE;
/*!40000 ALTER TABLE `t25_inbounds` DISABLE KEYS */;
INSERT INTO `t25_inbounds` VALUES (2,'002',1,'0363863696',2,'',NULL,NULL,'2021-03-01 12:54:16',NULL,'N','N','2021-03-01 12:54:16','kamo_s','InboundIncomingHistory_Create_SettingInbound','2021-03-01 12:54:16',NULL,NULL,'0');
/*!40000 ALTER TABLE `t25_inbounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t300_sms_templates`
--

DROP TABLE IF EXISTS `t300_sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t300_sms_templates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` bigint(20) NOT NULL,
  `template_no` bigint(20) NOT NULL COMMENT '会社毎発番',
  `template_name` varchar(128) NOT NULL COMMENT 'メッセージ件名',
  `template_type` int(1) DEFAULT NULL,
  `description` text,
  `content` varchar(1000) DEFAULT NULL COMMENT '本文',
  `sms_use_short_url` varchar(1) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='t300 SMSテンプレート';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t300_sms_templates`
--

LOCK TABLES `t300_sms_templates` WRITE;
/*!40000 ALTER TABLE `t300_sms_templates` DISABLE KEYS */;
INSERT INTO `t300_sms_templates` VALUES (1,2,1,'サンプルSMSテンプレート',1,'','サンプルテンプレートです。\nhttp://sample.com/','','N','2021-02-26 17:15:56','kamo_s','SmsTemplate_add_sms_template','2021-02-26 17:15:56',NULL,NULL),(2,2,2,'サンプルSMSテンプレート2',1,'','{名前}さんこんにちは。\nSMSサンプルテンプレートです。\nhttp://sample2.com/','1','N','2021-02-26 17:20:02','kamo_s','SmsTemplate_add_sms_template','2021-02-26 17:20:02',NULL,NULL);
/*!40000 ALTER TABLE `t300_sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t30_templates`
--

DROP TABLE IF EXISTS `t30_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t30_templates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `template_no` int(20) NOT NULL COMMENT 'スクリプトID	 会社毎発番',
  `template_name` varchar(128) NOT NULL COMMENT 'スクリプト名',
  `template_type` int(1) DEFAULT NULL,
  `question_total` int(4) NOT NULL COMMENT '質問総件数',
  `description` text COMMENT '説明',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='t30 テンプレート';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t30_templates`
--

LOCK TABLES `t30_templates` WRITE;
/*!40000 ALTER TABLE `t30_templates` DISABLE KEYS */;
INSERT INTO `t30_templates` VALUES (1,'002',1,'サンプルテンプレート',1,6,'再生、質問','N','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-03-01 11:49:04','kamo_s','Template_save_template'),(2,'002',2,'サンプルテンプレート2',1,6,'再生、数値認証','N','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:35','kamo_s','Template_save_template'),(3,'002',1,'サンプルテンプレート(インバウンド)1',0,6,'再生、質問','N','2021-02-26 16:46:47','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:47',NULL,NULL),(4,'002',2,'サンプルテンプレート(インバウンド)2',0,8,'再生、着信番号照合、文字列認証','N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:26','kamo_s','InboundTemplate_save_template');
/*!40000 ALTER TABLE `t30_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t31_template_questions`
--

DROP TABLE IF EXISTS `t31_template_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t31_template_questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `template_id` varchar(20) NOT NULL COMMENT 'スクリプトID	 会社毎発番',
  `question_no` int(4) NOT NULL COMMENT '質問番号',
  `question_type` varchar(2) DEFAULT NULL,
  `question_title` varchar(64) DEFAULT NULL COMMENT '質問タイトル',
  `question_yuko` int(1) DEFAULT '0',
  `jump_question` int(4) DEFAULT NULL,
  `audio_type` varchar(1) DEFAULT NULL COMMENT '０：音声ファイル,１：音声合成',
  `audio_id` int(11) DEFAULT NULL,
  `audio_name` varchar(64) DEFAULT NULL,
  `audio_content` text COMMENT '音声内容',
  `question_repeat` varchar(4) DEFAULT NULL COMMENT '繰り返し',
  `auth_match_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `auth_item` varchar(20) DEFAULT NULL COMMENT '認証項目',
  `second_record` int(11) DEFAULT NULL,
  `yuko_button_record` varchar(1) DEFAULT '0' COMMENT '1:有効',
  `digit` varchar(4) DEFAULT NULL COMMENT '桁数',
  `trans_tel` varchar(20) DEFAULT NULL COMMENT '転送先',
  `trans_seat_num` varchar(4) DEFAULT NULL COMMENT '席数',
  `trans_empty_seat_flag` varchar(1) DEFAULT '0' COMMENT '空き',
  `trans_timeout_audio_type` varchar(1) DEFAULT NULL COMMENT '音声種類',
  `trans_timeout_audio_id` int(11) DEFAULT NULL,
  `trans_timeout_audio_name` varchar(64) DEFAULT NULL,
  `trans_timeout_audio_content` text COMMENT '音声内容',
  `trans_timeout` varchar(4) DEFAULT NULL,
  `trans_playback_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `recheck_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `recheck_audio_type` varchar(1) DEFAULT NULL COMMENT '音声種類',
  `recheck_audio_id` int(11) DEFAULT NULL,
  `recheck_audio_name` varchar(64) DEFAULT NULL,
  `recheck_audio_content` text COMMENT '音声内容',
  `recheck_button_next` int(4) DEFAULT NULL,
  `recheck_button_prev` int(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `bukken_audio_type` varchar(1) DEFAULT NULL,
  `bukken_audio_id` int(11) DEFAULT NULL,
  `bukken_audio_name` varchar(64) DEFAULT NULL,
  `bukken_audio_content` text,
  `bukken_answer_no` int(4) DEFAULT NULL,
  `bukken_diagram_audio_type` varchar(1) DEFAULT NULL,
  `bukken_diagram_audio_id` int(11) DEFAULT NULL,
  `bukken_diagram_audio_name` varchar(64) DEFAULT NULL,
  `bukken_diagram_audio_content` text,
  `bukken_diagram_answer_no` int(4) DEFAULT NULL,
  `bukken_cont_audio_type` varchar(1) DEFAULT NULL,
  `bukken_cont_audio_id` int(11) DEFAULT NULL,
  `bukken_cont_audio_name` varchar(64) DEFAULT NULL,
  `bukken_cont_audio_content` text,
  `square_audio_type` varchar(1) DEFAULT NULL,
  `square_audio_id` int(11) DEFAULT NULL,
  `square_audio_name` varchar(64) DEFAULT NULL,
  `square_audio_content` text,
  `square_digit` varchar(4) DEFAULT NULL,
  `sms_display_number` varchar(20) DEFAULT NULL,
  `sms_content` varchar(1000) DEFAULT NULL,
  `sms_error_audio_type` varchar(1) DEFAULT NULL,
  `sms_error_audio_id` int(11) DEFAULT NULL,
  `sms_error_audio_name` varchar(64) DEFAULT NULL,
  `sms_error_audio_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='t31テンプレート質問';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t31_template_questions`
--

LOCK TABLES `t31_template_questions` WRITE;
/*!40000 ALTER TABLE `t31_template_questions` DISABLE KEYS */;
INSERT INTO `t31_template_questions` VALUES (1,'1',1,'1','',0,2,'1',NULL,'','こんにちは。こちらはサンプルテンプレートです。','0','0','',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-03-01 11:49:05','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'1',2,'2','',1,5,'1',NULL,'','0から9のなかで、好きな番号を選んでください。','1','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-03-01 11:49:05','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'1',3,'1','数値',0,5,'1',NULL,'','数値が選択されました。ご回答ありがとうございました。','0','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:13:20','kamo_s','Template_save_template','2021-03-01 11:49:05','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'1',4,'1','日本食',0,6,'1',NULL,'','日本食が選択されました。ご回答ありがとうございました。','0','0','',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'Y','2021-02-26 16:13:20','kamo_s','Template_save_template','2021-03-01 11:49:04','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'1',4,'1','数値以外',0,2,'1',NULL,'','もう一度、選びなおしてください。','0','0','',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:13:20','kamo_s','Template_save_template','2021-03-01 11:49:05','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'1',5,'8','',0,NULL,'0',NULL,'','','0','0','',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:13:20','kamo_s','Template_save_template','2021-03-01 11:49:05','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'1',6,'9','',0,NULL,'1',NULL,'','タイムアウトしました。','0','0','',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:13:20','kamo_s','Template_save_template','2021-03-01 11:49:05','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'2',1,'1','',0,2,'2',NULL,'','こちらはサンプルテンプレートその２です。\r\nお名前は{名前}さんですね。','0','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:36','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'2',2,'3','',1,4,'2',NULL,'','数値認証を行います。金額を4桁で入力してください。','0','0','金額',NULL,'0','4','','','0','0',NULL,'','','','0','1','2',NULL,'','でよろしいですか。よろしければ1を、間違っていれば1以外を押してください。',1,NULL,'N','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:36','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'2',3,'1','認証成功',0,5,'2',NULL,'','認証に成功しました。','0','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:37','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'2',4,'1','認証失敗',0,5,'2',NULL,'','認証に失敗しました。','0','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:37','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'2',5,'8','',0,NULL,'0',NULL,'','','0','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:34:47','kamo_s','Template_save_template','2021-02-26 16:36:37','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'2',6,'9','',0,NULL,'2',NULL,'','タイムアウトになりました。','0','0','電話番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:34:47','kamo_s','Template_save_template','2021-02-26 16:36:37','kamo_s','Template_save_template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'3',1,'1','',0,2,'1',NULL,'','こちらは、インバウンドのサンプルテンプレートです。','0','0',NULL,NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:46:47','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:47',NULL,NULL,'0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'3',2,'2','',1,NULL,'1',NULL,'','0から9で、好きな番号を入力してください。','0','0',NULL,NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:46:47','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:47',NULL,NULL,'0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'3',3,'1','',0,5,'1',NULL,'','数値が入力されました。ご回答ありがとうございました。','0','0',NULL,NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL,'0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'3',4,'1','',0,5,'1',NULL,'','数値以外が入力されました。ご回答ありがとうございました。','0','0',NULL,NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL,'0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'3',5,'8','',0,NULL,'0',NULL,'','','0','0',NULL,NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL,'0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'3',6,'9','',0,NULL,'1',NULL,'','タイムアウトになりました。','0','0',NULL,NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL,'0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'4',1,'17','',0,NULL,'0',NULL,'','','0','0','認証番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:29','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'4',2,'1','着信番号照合成功',0,4,'2',NULL,'','着信番号照合に成功しました。お名前は{名前}さんですね。','0','0','認証番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:29','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'4',3,'1','着信番号照合失敗',0,7,'2',NULL,'','着信番号照合に失敗しました。切断します。','0','0','認証番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:30','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'4',4,'10','',1,NULL,'2',NULL,'','文字列認証を行います。認証番号を、4桁で入力してください。','0','1','認証番号',NULL,'0','4','','','0','0',NULL,'','','','0','1','2',NULL,'','でよろしいですか。よろしければ1を、間違っていれば1以外を押してください。',1,NULL,'N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:30','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'4',5,'1','文字列認証成功',0,5,'2',NULL,'','文字列認証に成功しました。','0','0','認証番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:30','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'4',6,'1','文字列認証失敗',0,5,'2',NULL,'','文字列認証に失敗しました。','0','0','認証番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:31','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'4',7,'8','',0,NULL,'0',NULL,'','','0','0','認証番号',NULL,'0',NULL,'','','0','0',NULL,'','','','0','0','0',NULL,'','',1,NULL,'N','2021-02-26 17:00:13','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:31','kamo_s','InboundTemplate_save_template','0',NULL,'','',1,'0',NULL,'','',1,'0',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'4',8,'9','',0,NULL,'2',NULL,'','タイムアウトしました。','0','0','',NULL,'0',NULL,'','','0','',NULL,'','','','0','0','',NULL,'','',NULL,NULL,'N','2021-02-26 17:00:13','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:32','kamo_s','InboundTemplate_save_template','',NULL,'','',NULL,'',NULL,'','',NULL,'',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t31_template_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t32_template_buttons`
--

DROP TABLE IF EXISTS `t32_template_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t32_template_buttons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `template_id` varchar(20) NOT NULL COMMENT 'スクリプトID',
  `question_no` int(4) NOT NULL COMMENT '質問番号',
  `answer_no` int(4) NOT NULL COMMENT '回答番号（ボタン） 認証質問場合 1  < ,2 =, 3 > ',
  `yuko_flag` varchar(1) DEFAULT '0' COMMENT '0:無効、１：有効',
  `jump_question` int(4) DEFAULT NULL COMMENT 'ジャンプ先質問番号',
  `answer_content` varchar(128) DEFAULT NULL COMMENT 'テキスト',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='t32 回答ボタン設定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t32_template_buttons`
--

LOCK TABLES `t32_template_buttons` WRITE;
/*!40000 ALTER TABLE `t32_template_buttons` DISABLE KEYS */;
INSERT INTO `t32_template_buttons` VALUES (1,'1',2,1,'0',3,'フォー','Y','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-02-26 16:36:05','kamo_s','Template_save_template'),(2,'1',2,2,'0',3,'バインミー','Y','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-02-26 16:36:05','kamo_s','Template_save_template'),(3,'1',2,3,'0',4,'おにぎり','Y','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-02-26 16:36:05','kamo_s','Template_save_template'),(4,'1',2,4,'0',4,'焼きそば','Y','2021-02-26 16:13:19','kamo_s','Template_save_template','2021-02-26 16:36:05','kamo_s','Template_save_template'),(5,'2',2,1,'0',4,'','Y','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:35','kamo_s','Template_save_template'),(6,'2',2,2,'0',3,'','Y','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:36','kamo_s','Template_save_template'),(7,'2',2,3,'0',4,'','Y','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:36','kamo_s','Template_save_template'),(8,'2',2,99,'0',NULL,'','Y','2021-02-26 16:34:46','kamo_s','Template_save_template','2021-02-26 16:36:36','kamo_s','Template_save_template'),(9,'1',2,1,'0',3,'フォー','Y','2021-02-26 16:36:06','kamo_s','Template_save_template','2021-03-01 11:49:04','kamo_s','Template_save_template'),(10,'1',2,2,'0',3,'バインミー','Y','2021-02-26 16:36:06','kamo_s','Template_save_template','2021-03-01 11:49:04','kamo_s','Template_save_template'),(11,'1',2,3,'0',4,'おにぎり','Y','2021-02-26 16:36:06','kamo_s','Template_save_template','2021-03-01 11:49:04','kamo_s','Template_save_template'),(12,'1',2,4,'0',4,'焼きそば','Y','2021-02-26 16:36:06','kamo_s','Template_save_template','2021-03-01 11:49:04','kamo_s','Template_save_template'),(13,'2',2,1,'0',4,'','N','2021-02-26 16:36:36','kamo_s','Template_save_template','2021-02-26 16:36:36',NULL,NULL),(14,'2',2,2,'1',3,'','N','2021-02-26 16:36:36','kamo_s','Template_save_template','2021-02-26 16:36:36',NULL,NULL),(15,'2',2,3,'0',4,'','N','2021-02-26 16:36:36','kamo_s','Template_save_template','2021-02-26 16:36:36',NULL,NULL),(16,'2',2,99,'0',NULL,'','N','2021-02-26 16:36:36','kamo_s','Template_save_template','2021-02-26 16:36:36',NULL,NULL),(17,'3',2,0,'1',3,'','N','2021-02-26 16:46:47','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:47',NULL,NULL),(18,'3',2,1,'1',3,'','N','2021-02-26 16:46:47','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:47',NULL,NULL),(19,'3',2,2,'1',3,'','N','2021-02-26 16:46:47','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:47',NULL,NULL),(20,'3',2,3,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(21,'3',2,4,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(22,'3',2,5,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(23,'3',2,6,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(24,'3',2,7,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(25,'3',2,8,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(26,'3',2,9,'1',3,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(27,'3',2,51,'1',4,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(28,'3',2,52,'1',4,'','N','2021-02-26 16:46:48','kamo_s','InboundTemplate_save_template','2021-02-26 16:46:48',NULL,NULL),(29,'4',1,1,'0',2,NULL,'Y','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:27','kamo_s','InboundTemplate_save_template'),(30,'4',1,2,'0',3,NULL,'Y','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:28','kamo_s','InboundTemplate_save_template'),(31,'4',4,1,'0',5,'','Y','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:28','kamo_s','InboundTemplate_save_template'),(32,'4',4,2,'0',6,'','Y','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:28','kamo_s','InboundTemplate_save_template'),(33,'4',4,99,'0',NULL,'','Y','2021-02-26 17:00:12','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:29','kamo_s','InboundTemplate_save_template'),(34,'4',1,1,'0',2,NULL,'N','2021-02-26 17:07:29','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:29',NULL,NULL),(35,'4',1,2,'0',3,NULL,'N','2021-02-26 17:07:29','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:29',NULL,NULL),(36,'4',4,1,'1',5,'','N','2021-02-26 17:07:30','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:30',NULL,NULL),(37,'4',4,2,'0',6,'','N','2021-02-26 17:07:30','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:30',NULL,NULL),(38,'4',4,99,'0',NULL,'','N','2021-02-26 17:07:30','kamo_s','InboundTemplate_save_template','2021-02-26 17:07:30',NULL,NULL),(39,'1',2,0,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(40,'1',2,1,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(41,'1',2,2,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(42,'1',2,3,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(43,'1',2,4,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(44,'1',2,5,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(45,'1',2,6,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(46,'1',2,7,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(47,'1',2,8,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(48,'1',2,9,'1',3,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(49,'1',2,51,'1',4,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL),(50,'1',2,52,'1',4,'','N','2021-03-01 11:49:05','kamo_s','Template_save_template','2021-03-01 11:49:05',NULL,NULL);
/*!40000 ALTER TABLE `t32_template_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t40_news`
--

DROP TABLE IF EXISTS `t40_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t40_news` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(20) NOT NULL COMMENT '会社ID',
  `title` varchar(128) DEFAULT NULL COMMENT 'タイトル',
  `content` text COMMENT '内容',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t40ニュース';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t40_news`
--

LOCK TABLES `t40_news` WRITE;
/*!40000 ALTER TABLE `t40_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `t40_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t500_sms_list_histories`
--

DROP TABLE IF EXISTS `t500_sms_list_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t500_sms_list_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `list_id` bigint(20) NOT NULL COMMENT '発信リストID',
  `list_name` varchar(128) DEFAULT NULL COMMENT '発信リスト名',
  `list_test_flag` varchar(1) DEFAULT '0' COMMENT 'テストリストフラグ	 １：テストリスト',
  `tel_total` varchar(6) DEFAULT NULL COMMENT '総件数',
  `muko_tel_total` int(12) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t500SMS送信リスト履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t500_sms_list_histories`
--

LOCK TABLES `t500_sms_list_histories` WRITE;
/*!40000 ALTER TABLE `t500_sms_list_histories` DISABLE KEYS */;
INSERT INTO `t500_sms_list_histories` VALUES (1,1,3,'サンプル送信リスト3','1','1',1,'N','2021-03-01 13:55:02',NULL,'sms_api',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t500_sms_list_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t501_sms_tel_histories`
--

DROP TABLE IF EXISTS `t501_sms_tel_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t501_sms_tel_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL,
  `carrier` varchar(128) DEFAULT NULL,
  `muko_flag` varchar(1) DEFAULT 'N' COMMENT '無効フラグ',
  `muko_modified` datetime DEFAULT NULL COMMENT '無効時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `consentday` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_schedule_id` (`schedule_id`),
  KEY `idx_customize11` (`customize11`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize1` (`customize1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t501 SMS送信電話番号履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t501_sms_tel_histories`
--

LOCK TABLES `t501_sms_tel_histories` WRITE;
/*!40000 ALTER TABLE `t501_sms_tel_histories` DISABLE KEYS */;
INSERT INTO `t501_sms_tel_histories` VALUES (1,1,'09000000005','','','','','','','','','','','docomo','N',NULL,'N','2021-03-01 13:55:02',NULL,'sms_api','2021-03-01 13:56:03',NULL,'sms_api',NULL);
/*!40000 ALTER TABLE `t501_sms_tel_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t50_list_histories`
--

DROP TABLE IF EXISTS `t50_list_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t50_list_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `list_id` bigint(20) NOT NULL COMMENT '発信リストID',
  `list_name` varchar(128) DEFAULT NULL COMMENT '発信リスト名',
  `list_test_flag` varchar(1) DEFAULT '0' COMMENT 'テストリストフラグ	 １：テストリスト',
  `tel_total` varchar(6) DEFAULT NULL COMMENT '総件数',
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t50発信リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t50_list_histories`
--

LOCK TABLES `t50_list_histories` WRITE;
/*!40000 ALTER TABLE `t50_list_histories` DISABLE KEYS */;
INSERT INTO `t50_list_histories` VALUES (1,1,3,'ダミー番号3','1','1','N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t50_list_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t51_tel_histories`
--

DROP TABLE IF EXISTS `t51_tel_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t51_tel_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL,
  `muko_flag` varchar(1) DEFAULT 'N' COMMENT '無効フラグ',
  `muko_modified` datetime DEFAULT NULL COMMENT '無効時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_schedule_id` (`schedule_id`),
  KEY `idx_customize11` (`customize11`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize1` (`customize1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t51 発信電話番号リスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t51_tel_histories`
--

LOCK TABLES `t51_tel_histories` WRITE;
/*!40000 ALTER TABLE `t51_tel_histories` DISABLE KEYS */;
INSERT INTO `t51_tel_histories` VALUES (1,1,'09000000005','かも','4000','5678','12345','20001112','2000年11月12日','','','','','N',NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t51_tel_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t52_tel_redials`
--

DROP TABLE IF EXISTS `t52_tel_redials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t52_tel_redials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `redial_flag` int(20) NOT NULL COMMENT 'リダイアル数',
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_schedule_id` (`schedule_id`),
  KEY `idx_customize11` (`customize11`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize1` (`customize1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t52 発信電話番号リダイヤル';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t52_tel_redials`
--

LOCK TABLES `t52_tel_redials` WRITE;
/*!40000 ALTER TABLE `t52_tel_redials` DISABLE KEYS */;
/*!40000 ALTER TABLE `t52_tel_redials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t54_list_ng_histories`
--

DROP TABLE IF EXISTS `t54_list_ng_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t54_list_ng_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `list_ng_id` bigint(20) NOT NULL COMMENT '発信NGリストID',
  `list_name` varchar(128) DEFAULT NULL COMMENT 'リスト名',
  `total` int(11) DEFAULT NULL COMMENT '総件数',
  `expired_date_from` datetime DEFAULT NULL COMMENT '有効期限開始',
  `expired_date_to` datetime DEFAULT NULL COMMENT '有効期限終了',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t54発信NGリスト';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t54_list_ng_histories`
--

LOCK TABLES `t54_list_ng_histories` WRITE;
/*!40000 ALTER TABLE `t54_list_ng_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t54_list_ng_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t55_tel_ng_histories`
--

DROP TABLE IF EXISTS `t55_tel_ng_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t55_tel_ng_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `tel_no` varchar(20) NOT NULL COMMENT '電話番号',
  `memo` varchar(128) DEFAULT NULL COMMENT '備考',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t55発信NG番号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t55_tel_ng_histories`
--

LOCK TABLES `t55_tel_ng_histories` WRITE;
/*!40000 ALTER TABLE `t55_tel_ng_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t55_tel_ng_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t56_inbound_list_histories`
--

DROP TABLE IF EXISTS `t56_inbound_list_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t56_inbound_list_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` varchar(20) NOT NULL COMMENT '着信設定ID',
  `list_id` varchar(20) NOT NULL COMMENT '着信リストID',
  `list_name` varchar(128) DEFAULT NULL COMMENT '着信リスト名',
  `list_test_flag` varchar(1) DEFAULT '0' COMMENT 'テストリストフラグ	 １：テストリスト',
  `item_main` varchar(128) DEFAULT NULL,
  `tel_total` int(11) DEFAULT NULL COMMENT '総件数',
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t56着信リスト履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t56_inbound_list_histories`
--

LOCK TABLES `t56_inbound_list_histories` WRITE;
/*!40000 ALTER TABLE `t56_inbound_list_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t56_inbound_list_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t57_inbound_tel_histories`
--

DROP TABLE IF EXISTS `t57_inbound_tel_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t57_inbound_tel_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` varchar(20) NOT NULL COMMENT '着信設定ID',
  `customize1` varchar(128) DEFAULT NULL COMMENT '項目1',
  `customize2` varchar(128) DEFAULT NULL COMMENT '項目2',
  `customize3` varchar(128) DEFAULT NULL COMMENT '項目3',
  `customize4` varchar(128) DEFAULT NULL COMMENT '項目4',
  `customize5` varchar(128) DEFAULT NULL COMMENT '項目5',
  `customize6` varchar(128) DEFAULT NULL COMMENT '項目6',
  `customize7` varchar(128) DEFAULT NULL COMMENT '項目7',
  `customize8` varchar(128) DEFAULT NULL COMMENT '項目8',
  `customize9` varchar(128) DEFAULT NULL COMMENT '項目9',
  `customize10` varchar(128) DEFAULT NULL COMMENT '項目10',
  `customize11` varchar(128) DEFAULT NULL COMMENT '項目10',
  `muko_flag` varchar(1) DEFAULT 'N' COMMENT '無効フラグ',
  `muko_modified` datetime DEFAULT NULL COMMENT '無効時間',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_inbound_id` (`inbound_id`),
  KEY `idx_customize1` (`customize1`),
  KEY `idx_customize2` (`customize2`),
  KEY `idx_customize3` (`customize3`),
  KEY `idx_customize4` (`customize4`),
  KEY `idx_customize5` (`customize5`),
  KEY `idx_customize6` (`customize6`),
  KEY `idx_customize7` (`customize7`),
  KEY `idx_customize8` (`customize8`),
  KEY `idx_customize9` (`customize9`),
  KEY `idx_customize10` (`customize10`),
  KEY `idx_customize11` (`customize11`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t57着信電話リスト履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t57_inbound_tel_histories`
--

LOCK TABLES `t57_inbound_tel_histories` WRITE;
/*!40000 ALTER TABLE `t57_inbound_tel_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t57_inbound_tel_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t58_inbound_list_ng_histories`
--

DROP TABLE IF EXISTS `t58_inbound_list_ng_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t58_inbound_list_ng_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` varchar(20) NOT NULL COMMENT '着信設定ID',
  `list_ng_id` varchar(20) NOT NULL COMMENT '着信拒否リストID',
  `list_name` varchar(128) DEFAULT NULL COMMENT '着信拒否リスト名',
  `total` int(11) DEFAULT NULL COMMENT '総件数',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t58着信拒否履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t58_inbound_list_ng_histories`
--

LOCK TABLES `t58_inbound_list_ng_histories` WRITE;
/*!40000 ALTER TABLE `t58_inbound_list_ng_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t58_inbound_list_ng_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t59_inbound_tel_ng_histories`
--

DROP TABLE IF EXISTS `t59_inbound_tel_ng_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t59_inbound_tel_ng_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` varchar(20) NOT NULL COMMENT '着信設定ID',
  `tel_no` varchar(20) NOT NULL COMMENT '電話番号',
  `memo` varchar(128) DEFAULT NULL COMMENT '備考',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t59着信拒否番号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t59_inbound_tel_ng_histories`
--

LOCK TABLES `t59_inbound_tel_ng_histories` WRITE;
/*!40000 ALTER TABLE `t59_inbound_tel_ng_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t59_inbound_tel_ng_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t600_sms_template_histories`
--

DROP TABLE IF EXISTS `t600_sms_template_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t600_sms_template_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `template_id` bigint(20) DEFAULT NULL,
  `template_name` varchar(128) NOT NULL COMMENT 'テンプレート名',
  `description` text COMMENT '説明',
  `content` varchar(1000) DEFAULT NULL,
  `use_short_url` varchar(1) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t600 SMSテンプレート履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t600_sms_template_histories`
--

LOCK TABLES `t600_sms_template_histories` WRITE;
/*!40000 ALTER TABLE `t600_sms_template_histories` DISABLE KEYS */;
INSERT INTO `t600_sms_template_histories` VALUES (1,1,1,'サンプルSMSテンプレート','','サンプルテンプレートです。\nhttp://sample.com/','0','N','2021-03-01 13:55:02',NULL,'sms_api',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t600_sms_template_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t60_template_histories`
--

DROP TABLE IF EXISTS `t60_template_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t60_template_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `template_id` bigint(20) DEFAULT NULL,
  `template_name` varchar(128) NOT NULL COMMENT 'スクリプト名',
  `question_total` varchar(4) NOT NULL COMMENT '質問総件数',
  `description` text COMMENT '説明',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t60 テンプレート';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t60_template_histories`
--

LOCK TABLES `t60_template_histories` WRITE;
/*!40000 ALTER TABLE `t60_template_histories` DISABLE KEYS */;
INSERT INTO `t60_template_histories` VALUES (1,1,1,'サンプルテンプレート','6','再生、質問','N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t60_template_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t61_question_histories`
--

DROP TABLE IF EXISTS `t61_question_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t61_question_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL,
  `question_no` int(4) NOT NULL COMMENT '質問番号',
  `question_type` varchar(2) DEFAULT NULL,
  `question_title` varchar(64) DEFAULT NULL COMMENT '質問タイトル',
  `question_yuko` int(1) DEFAULT '0' COMMENT '1:有効',
  `audio_type` varchar(1) DEFAULT NULL COMMENT '０：音声ファイル,１：音声合成',
  `audio_id` int(11) DEFAULT NULL,
  `audio_name` varchar(64) DEFAULT NULL,
  `audio_content` text COMMENT '音声内容',
  `question_repeat` varchar(4) DEFAULT NULL COMMENT '繰り返し',
  `auth_match_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `auth_item` varchar(20) DEFAULT NULL COMMENT '認証項目',
  `second_record` int(11) DEFAULT NULL,
  `yuko_button_record` varchar(1) DEFAULT '0' COMMENT '1:有効',
  `digit` varchar(4) DEFAULT NULL COMMENT '桁数',
  `trans_tel` varchar(20) DEFAULT NULL COMMENT '転送先',
  `trans_seat_num` varchar(4) DEFAULT NULL COMMENT '席数',
  `trans_empty_seat_flag` varchar(1) DEFAULT '0' COMMENT '空き',
  `trans_timeout_audio_type` varchar(1) DEFAULT NULL COMMENT '音声種類',
  `trans_timeout_audio_id` int(11) DEFAULT NULL,
  `trans_timeout_audio_name` varchar(64) DEFAULT NULL,
  `trans_timeout_audio_content` text COMMENT '音声内容',
  `trans_timeout` varchar(4) DEFAULT NULL,
  `recheck_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `recheck_audio_type` varchar(1) DEFAULT NULL COMMENT '音声種類',
  `recheck_audio_id` int(11) DEFAULT NULL,
  `recheck_audio_name` varchar(64) DEFAULT NULL,
  `recheck_audio_content` text COMMENT '音声内容',
  `recheck_button_next` int(4) DEFAULT NULL,
  `recheck_button_prev` int(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `sms_display_number` varchar(20) DEFAULT NULL,
  `sms_content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='t61テンプレート質問';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t61_question_histories`
--

LOCK TABLES `t61_question_histories` WRITE;
/*!40000 ALTER TABLE `t61_question_histories` DISABLE KEYS */;
INSERT INTO `t61_question_histories` VALUES (1,1,1,'1','',0,'1',NULL,NULL,'こんにちは。こちらはサンプルテンプレートです。',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,2,'2','',1,'1',NULL,NULL,'0から9のなかで、好きな番号を選んでください。','1','0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,3,'1','数値',0,'1',NULL,NULL,'数値が選択されました。ご回答ありがとうございました。',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,4,'1','数値以外',0,'1',NULL,NULL,'もう一度、選びなおしてください。',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,5,'8','',0,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,6,'9','',0,'1',NULL,NULL,'タイムアウトしました。',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t61_question_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t62_button_histories`
--

DROP TABLE IF EXISTS `t62_button_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t62_button_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` bigint(20) NOT NULL COMMENT 'スケジュールID',
  `question_no` int(4) NOT NULL COMMENT '質問番号',
  `answer_no` int(4) DEFAULT NULL COMMENT '回答番号（ボタン）',
  `yuko_flag` varchar(1) DEFAULT NULL COMMENT '有効チェック',
  `jump_question` varchar(4) DEFAULT NULL COMMENT 'ジャンプ先質問番号',
  `answer_content` varchar(128) DEFAULT NULL COMMENT 'テキスト',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_schedule_id` (`schedule_id`),
  KEY `idx_question_no` (`question_no`),
  KEY `idx_answer_no` (`answer_no`),
  KEY `idx_answer_content` (`answer_content`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='t62 回答ボタン設定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t62_button_histories`
--

LOCK TABLES `t62_button_histories` WRITE;
/*!40000 ALTER TABLE `t62_button_histories` DISABLE KEYS */;
INSERT INTO `t62_button_histories` VALUES (1,1,2,0,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(2,1,2,1,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(3,1,2,2,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(4,1,2,3,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(5,1,2,4,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(6,1,2,5,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(7,1,2,6,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(8,1,2,7,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(9,1,2,8,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(10,1,2,9,'1','3','','N',NULL,NULL,NULL,NULL,NULL,NULL),(11,1,2,51,'1','4','','N',NULL,NULL,NULL,NULL,NULL,NULL),(12,1,2,52,'1','4','','N',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t62_button_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t63_inbound_template_histories`
--

DROP TABLE IF EXISTS `t63_inbound_template_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t63_inbound_template_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` bigint(20) NOT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `template_name` varchar(128) NOT NULL COMMENT 'スクリプト名',
  `question_total` varchar(4) NOT NULL COMMENT '質問総件数',
  `description` text COMMENT '説明',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t63 テンプレート';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t63_inbound_template_histories`
--

LOCK TABLES `t63_inbound_template_histories` WRITE;
/*!40000 ALTER TABLE `t63_inbound_template_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t63_inbound_template_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t64_inbound_question_histories`
--

DROP TABLE IF EXISTS `t64_inbound_question_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t64_inbound_question_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` bigint(20) NOT NULL,
  `question_no` int(4) NOT NULL COMMENT '質問番号',
  `question_type` varchar(2) NOT NULL COMMENT '質問種類',
  `question_title` varchar(64) DEFAULT NULL COMMENT '質問タイトル',
  `question_yuko` int(1) DEFAULT '0' COMMENT '1:有効',
  `jump_question` int(4) DEFAULT NULL,
  `audio_type` varchar(1) DEFAULT NULL COMMENT '０：音声ファイル,１：音声合成',
  `audio_id` int(11) DEFAULT NULL,
  `audio_name` varchar(64) DEFAULT NULL,
  `audio_content` text COMMENT '音声内容',
  `question_repeat` varchar(4) DEFAULT NULL COMMENT '繰り返し',
  `auth_match_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `auth_item` varchar(20) DEFAULT NULL COMMENT '認証項目',
  `second_record` int(11) DEFAULT NULL,
  `yuko_button_record` varchar(1) DEFAULT '0' COMMENT '1:有効',
  `digit` varchar(4) DEFAULT NULL COMMENT '桁数',
  `trans_tel` varchar(20) DEFAULT NULL COMMENT '転送先',
  `trans_seat_num` varchar(4) DEFAULT NULL COMMENT '席数',
  `trans_empty_seat_flag` varchar(1) DEFAULT '0' COMMENT '空き',
  `trans_timeout_audio_type` varchar(1) DEFAULT NULL COMMENT '音声種類',
  `trans_timeout_audio_id` int(11) DEFAULT NULL,
  `trans_timeout_audio_name` varchar(64) DEFAULT NULL,
  `trans_timeout_audio_content` text COMMENT '音声内容',
  `trans_timeout` varchar(4) DEFAULT NULL,
  `recheck_flag` varchar(1) DEFAULT '0' COMMENT '0:なし,1:あり',
  `recheck_audio_type` varchar(1) DEFAULT NULL COMMENT '音声種類',
  `recheck_audio_id` int(11) DEFAULT NULL,
  `recheck_audio_name` varchar(64) DEFAULT NULL,
  `recheck_audio_content` text COMMENT '音声内容',
  `recheck_button_next` int(4) DEFAULT NULL,
  `recheck_button_prev` int(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `bukken_audio_type` varchar(1) DEFAULT NULL,
  `bukken_audio_id` varchar(11) DEFAULT NULL,
  `bukken_audio_name` varchar(64) DEFAULT NULL,
  `bukken_audio_content` text,
  `bukken_answer_no` int(11) DEFAULT NULL,
  `bukken_diagram_audio_type` varchar(1) DEFAULT NULL,
  `bukken_diagram_audio_id` varchar(11) DEFAULT NULL,
  `bukken_diagram_audio_name` varchar(64) DEFAULT NULL,
  `bukken_diagram_audio_content` text,
  `bukken_diagram_answer_no` int(11) DEFAULT NULL,
  `bukken_cont_audio_type` varchar(1) DEFAULT NULL,
  `bukken_cont_audio_id` int(11) DEFAULT NULL,
  `bukken_cont_audio_name` varchar(64) DEFAULT NULL,
  `bukken_cont_audio_content` varchar(64) DEFAULT NULL,
  `sms_display_number` varchar(20) DEFAULT NULL,
  `sms_content` varchar(1000) DEFAULT NULL,
  `sms_error_audio_type` varchar(1) DEFAULT NULL,
  `sms_error_audio_id` int(11) DEFAULT NULL,
  `sms_error_audio_name` varchar(64) DEFAULT NULL,
  `sms_error_audio_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t64テンプレート質問';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t64_inbound_question_histories`
--

LOCK TABLES `t64_inbound_question_histories` WRITE;
/*!40000 ALTER TABLE `t64_inbound_question_histories` DISABLE KEYS */;
INSERT INTO `t64_inbound_question_histories` VALUES (1,2,1,'2','test',0,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t64_inbound_question_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t65_inbound_button_histories`
--

DROP TABLE IF EXISTS `t65_inbound_button_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t65_inbound_button_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` bigint(20) NOT NULL,
  `question_no` int(4) NOT NULL COMMENT '質問番号',
  `answer_no` int(4) DEFAULT NULL COMMENT '回答番号（ボタン）',
  `yuko_flag` varchar(1) DEFAULT NULL COMMENT '有効チェック',
  `jump_question` varchar(4) DEFAULT NULL COMMENT 'ジャンプ先質問番号',
  `answer_content` varchar(128) DEFAULT NULL COMMENT 'テキスト',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  KEY `idx_schedule_id` (`inbound_id`),
  KEY `idx_question_no` (`question_no`),
  KEY `idx_answer_no` (`answer_no`),
  KEY `idx_answer_content` (`answer_content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t65 回答ボタン設定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t65_inbound_button_histories`
--

LOCK TABLES `t65_inbound_button_histories` WRITE;
/*!40000 ALTER TABLE `t65_inbound_button_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t65_inbound_button_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t70_rdd_tels`
--

DROP TABLE IF EXISTS `t70_rdd_tels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t70_rdd_tels` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tel_no` varchar(20) DEFAULT NULL COMMENT '番号',
  `address` varchar(128) DEFAULT NULL COMMENT '地域',
  `keisai_flag` varchar(1) DEFAULT NULL COMMENT '掲載フラグ	 0:未掲載、1：掲載',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t70番号増殖WORK';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t70_rdd_tels`
--

LOCK TABLES `t70_rdd_tels` WRITE;
/*!40000 ALTER TABLE `t70_rdd_tels` DISABLE KEYS */;
/*!40000 ALTER TABLE `t70_rdd_tels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t71_prefectures`
--

DROP TABLE IF EXISTS `t71_prefectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t71_prefectures` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `prefecture_name` varchar(64) DEFAULT NULL COMMENT '都道府県名',
  `prefecture_name_kana` varchar(64) DEFAULT NULL COMMENT '都道府県名',
  `prefecture_code` varchar(4) DEFAULT NULL COMMENT '都道府県コード',
  `num` int(11) DEFAULT NULL COMMENT '総件数',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t71都道府県';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t71_prefectures`
--

LOCK TABLES `t71_prefectures` WRITE;
/*!40000 ALTER TABLE `t71_prefectures` DISABLE KEYS */;
/*!40000 ALTER TABLE `t71_prefectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t72_districts`
--

DROP TABLE IF EXISTS `t72_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t72_districts` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `prefecture_code` varchar(4) DEFAULT NULL COMMENT '都道府県コード',
  `district_name` varchar(128) DEFAULT NULL COMMENT '市区名',
  `district_name_kana` varchar(64) DEFAULT NULL COMMENT '市区名カナ',
  `district_code` varchar(4) DEFAULT NULL COMMENT '市区コード',
  `num` int(11) DEFAULT NULL COMMENT '件数',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t72市区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t72_districts`
--

LOCK TABLES `t72_districts` WRITE;
/*!40000 ALTER TABLE `t72_districts` DISABLE KEYS */;
/*!40000 ALTER TABLE `t72_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t800_sms_send_results`
--

DROP TABLE IF EXISTS `t800_sms_send_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t800_sms_send_results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` varchar(20) NOT NULL COMMENT 'スケジュール',
  `tel_no` varchar(20) NOT NULL COMMENT '電話番号',
  `entry_id` varchar(64) DEFAULT NULL,
  `memo` text COMMENT 'メモ',
  `del_flag` varchar(45) DEFAULT 'N',
  `send_datetime` datetime DEFAULT NULL COMMENT '発信日時',
  `end_datetime` datetime DEFAULT NULL COMMENT '切断日時',
  `status` varchar(20) DEFAULT NULL COMMENT 'ステータス',
  `warning_msg` varchar(256) DEFAULT NULL COMMENT '送信結果のメッセージ',
  `sms_short_url_key` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`schedule_id`,`tel_no`,`send_datetime`,`end_datetime`,`status`),
  KEY `idx_tel_no` (`tel_no`),
  KEY `idx_call_datetime` (`send_datetime`),
  KEY `idx_cut_datetime` (`end_datetime`),
  KEY `idx_status` (`status`),
  KEY `idx_schedule_id` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='t800 SMS送信結果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t800_sms_send_results`
--

LOCK TABLES `t800_sms_send_results` WRITE;
/*!40000 ALTER TABLE `t800_sms_send_results` DISABLE KEYS */;
INSERT INTO `t800_sms_send_results` VALUES (1,'1','09000000005','dr691d4ff4a98e987b7b9df88c6f6404d8',NULL,'Y','2021-02-01 13:55:03','0000-00-00 00:00:00','success','','','2021-03-01 13:55:04',NULL,'Send_Sms_V2','2021-03-01 13:56:03',NULL,'GetSendStatus');
/*!40000 ALTER TABLE `t800_sms_send_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t80_outgoing_results`
--

DROP TABLE IF EXISTS `t80_outgoing_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t80_outgoing_results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `schedule_id` varchar(20) NOT NULL COMMENT 'スケジュール',
  `redial_flag` int(1) NOT NULL DEFAULT '0',
  `tel_no` varchar(20) NOT NULL COMMENT '電話番号',
  `memo` text COMMENT 'メモ',
  `tel_type` varchar(64) DEFAULT NULL COMMENT '電話種類',
  `del_flag` varchar(45) DEFAULT 'N',
  `call_datetime` datetime DEFAULT NULL COMMENT '発信日時',
  `connect_datetime` datetime DEFAULT NULL COMMENT '接続日時',
  `cut_datetime` datetime DEFAULT NULL COMMENT '切断日時',
  `trans_call_datetime` datetime DEFAULT NULL COMMENT '発信日時',
  `trans_connect_datetime` datetime DEFAULT NULL COMMENT '接続日時',
  `trans_cut_datetime` datetime DEFAULT NULL COMMENT '切断日時',
  `status` varchar(20) DEFAULT NULL COMMENT 'ステータス',
  `valid_count` varchar(20) DEFAULT NULL COMMENT '有効回答数',
  `ans_accuracy` varchar(20) DEFAULT NULL COMMENT '回答確度',
  `answer1` varchar(84) DEFAULT NULL,
  `answer2` varchar(84) DEFAULT NULL,
  `answer3` varchar(84) DEFAULT NULL,
  `answer4` varchar(84) DEFAULT NULL,
  `answer5` varchar(84) DEFAULT NULL,
  `answer6` varchar(84) DEFAULT NULL,
  `answer7` varchar(84) DEFAULT NULL,
  `answer8` varchar(84) DEFAULT NULL,
  `answer9` varchar(84) DEFAULT NULL,
  `answer10` varchar(84) DEFAULT NULL,
  `answer11` varchar(84) DEFAULT NULL,
  `answer12` varchar(84) DEFAULT NULL,
  `answer13` varchar(84) DEFAULT NULL,
  `answer14` varchar(84) DEFAULT NULL,
  `answer15` varchar(84) DEFAULT NULL,
  `answer16` varchar(84) DEFAULT NULL,
  `answer17` varchar(84) DEFAULT NULL,
  `answer18` varchar(84) DEFAULT NULL,
  `answer19` varchar(84) DEFAULT NULL,
  `answer20` varchar(84) DEFAULT NULL,
  `answer21` varchar(84) DEFAULT NULL,
  `answer22` varchar(84) DEFAULT NULL,
  `answer23` varchar(84) DEFAULT NULL,
  `answer24` varchar(84) DEFAULT NULL,
  `answer25` varchar(84) DEFAULT NULL,
  `answer26` varchar(84) DEFAULT NULL,
  `answer27` varchar(84) DEFAULT NULL,
  `answer28` varchar(84) DEFAULT NULL,
  `answer29` varchar(84) DEFAULT NULL,
  `answer30` varchar(84) DEFAULT NULL,
  `answer31` varchar(84) DEFAULT NULL,
  `answer32` varchar(84) DEFAULT NULL,
  `answer33` varchar(84) DEFAULT NULL,
  `answer34` varchar(84) DEFAULT NULL,
  `answer35` varchar(84) DEFAULT NULL,
  `answer36` varchar(84) DEFAULT NULL,
  `answer37` varchar(84) DEFAULT NULL,
  `answer38` varchar(84) DEFAULT NULL,
  `answer39` varchar(84) DEFAULT NULL,
  `answer40` varchar(84) DEFAULT NULL,
  `answer41` varchar(84) DEFAULT NULL,
  `answer42` varchar(84) DEFAULT NULL,
  `answer43` varchar(84) DEFAULT NULL,
  `answer44` varchar(84) DEFAULT NULL,
  `answer45` varchar(84) DEFAULT NULL,
  `answer46` varchar(84) DEFAULT NULL,
  `answer47` varchar(84) DEFAULT NULL,
  `answer48` varchar(84) DEFAULT NULL,
  `answer49` varchar(84) DEFAULT NULL,
  `answer50` varchar(84) DEFAULT NULL,
  `answer51` varchar(84) DEFAULT NULL,
  `answer52` varchar(84) DEFAULT NULL,
  `answer53` varchar(84) DEFAULT NULL,
  `answer54` varchar(84) DEFAULT NULL,
  `answer55` varchar(84) DEFAULT NULL,
  `answer56` varchar(84) DEFAULT NULL,
  `answer57` varchar(84) DEFAULT NULL,
  `answer58` varchar(84) DEFAULT NULL,
  `answer59` varchar(84) DEFAULT NULL,
  `answer60` varchar(84) DEFAULT NULL,
  `answer61` varchar(84) DEFAULT NULL,
  `answer62` varchar(84) DEFAULT NULL,
  `answer63` varchar(84) DEFAULT NULL,
  `answer64` varchar(84) DEFAULT NULL,
  `answer65` varchar(84) DEFAULT NULL,
  `answer66` varchar(84) DEFAULT NULL,
  `answer67` varchar(84) DEFAULT NULL,
  `answer68` varchar(84) DEFAULT NULL,
  `answer69` varchar(84) DEFAULT NULL,
  `answer70` varchar(84) DEFAULT NULL,
  `answer71` varchar(84) DEFAULT NULL,
  `answer72` varchar(84) DEFAULT NULL,
  `answer73` varchar(84) DEFAULT NULL,
  `answer74` varchar(84) DEFAULT NULL,
  `answer75` varchar(84) DEFAULT NULL,
  `answer76` varchar(84) DEFAULT NULL,
  `answer77` varchar(84) DEFAULT NULL,
  `answer78` varchar(84) DEFAULT NULL,
  `answer79` varchar(84) DEFAULT NULL,
  `answer80` varchar(84) DEFAULT NULL,
  `answer81` varchar(84) DEFAULT NULL,
  `answer82` varchar(84) DEFAULT NULL,
  `answer83` varchar(84) DEFAULT NULL,
  `answer84` varchar(84) DEFAULT NULL,
  `answer85` varchar(84) DEFAULT NULL,
  `answer86` varchar(84) DEFAULT NULL,
  `answer87` varchar(84) DEFAULT NULL,
  `answer88` varchar(84) DEFAULT NULL,
  `answer89` varchar(84) DEFAULT NULL,
  `answer90` varchar(84) DEFAULT NULL,
  `answer91` varchar(84) DEFAULT NULL,
  `answer92` varchar(84) DEFAULT NULL,
  `answer93` varchar(84) DEFAULT NULL,
  `answer94` varchar(84) DEFAULT NULL,
  `answer95` varchar(84) DEFAULT NULL,
  `answer96` varchar(84) DEFAULT NULL,
  `answer97` varchar(84) DEFAULT NULL,
  `answer98` varchar(84) DEFAULT NULL,
  `answer99` varchar(84) DEFAULT NULL,
  `answer100` varchar(84) DEFAULT NULL,
  `answer101` varchar(84) DEFAULT NULL,
  `answer102` varchar(84) DEFAULT NULL,
  `answer103` varchar(84) DEFAULT NULL,
  `answer104` varchar(84) DEFAULT NULL,
  `answer105` varchar(84) DEFAULT NULL,
  `answer106` varchar(84) DEFAULT NULL,
  `answer107` varchar(84) DEFAULT NULL,
  `answer108` varchar(84) DEFAULT NULL,
  `answer109` varchar(84) DEFAULT NULL,
  `answer110` varchar(84) DEFAULT NULL,
  `answer111` varchar(84) DEFAULT NULL,
  `answer112` varchar(84) DEFAULT NULL,
  `answer113` varchar(84) DEFAULT NULL,
  `answer114` varchar(84) DEFAULT NULL,
  `answer115` varchar(84) DEFAULT NULL,
  `answer116` varchar(84) DEFAULT NULL,
  `answer117` varchar(84) DEFAULT NULL,
  `answer118` varchar(84) DEFAULT NULL,
  `answer119` varchar(84) DEFAULT NULL,
  `answer120` varchar(84) DEFAULT NULL,
  `answer121` varchar(84) DEFAULT NULL,
  `answer122` varchar(84) DEFAULT NULL,
  `answer123` varchar(84) DEFAULT NULL,
  `answer124` varchar(84) DEFAULT NULL,
  `answer125` varchar(84) DEFAULT NULL,
  `answer126` varchar(84) DEFAULT NULL,
  `answer127` varchar(84) DEFAULT NULL,
  `answer128` varchar(84) DEFAULT NULL,
  `answer129` varchar(84) DEFAULT NULL,
  `answer130` varchar(84) DEFAULT NULL,
  `answer131` varchar(84) DEFAULT NULL,
  `answer132` varchar(84) DEFAULT NULL,
  `answer133` varchar(84) DEFAULT NULL,
  `answer134` varchar(84) DEFAULT NULL,
  `answer135` varchar(84) DEFAULT NULL,
  `answer136` varchar(84) DEFAULT NULL,
  `answer137` varchar(84) DEFAULT NULL,
  `answer138` varchar(84) DEFAULT NULL,
  `answer139` varchar(84) DEFAULT NULL,
  `answer140` varchar(84) DEFAULT NULL,
  `answer141` varchar(84) DEFAULT NULL,
  `answer142` varchar(84) DEFAULT NULL,
  `answer143` varchar(84) DEFAULT NULL,
  `answer144` varchar(84) DEFAULT NULL,
  `answer145` varchar(84) DEFAULT NULL,
  `answer146` varchar(84) DEFAULT NULL,
  `answer147` varchar(84) DEFAULT NULL,
  `answer148` varchar(84) DEFAULT NULL,
  `answer149` varchar(84) DEFAULT NULL,
  `answer150` varchar(84) DEFAULT NULL,
  `answer151` varchar(84) DEFAULT NULL,
  `answer152` varchar(84) DEFAULT NULL,
  `answer153` varchar(84) DEFAULT NULL,
  `answer154` varchar(84) DEFAULT NULL,
  `answer155` varchar(84) DEFAULT NULL,
  `answer156` varchar(84) DEFAULT NULL,
  `answer157` varchar(84) DEFAULT NULL,
  `answer158` varchar(84) DEFAULT NULL,
  `answer159` varchar(84) DEFAULT NULL,
  `answer160` varchar(84) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`schedule_id`,`tel_no`,`tel_type`,`call_datetime`,`connect_datetime`,`cut_datetime`,`status`),
  KEY `idx_tel_no` (`tel_no`),
  KEY `idx_call_datetime` (`call_datetime`),
  KEY `idx_connect_datetime` (`connect_datetime`),
  KEY `idx_cut_datetime` (`cut_datetime`),
  KEY `idx_status` (`status`),
  KEY `idx_ans_accuracy` (`ans_accuracy`),
  KEY `idx_schedule_id` (`schedule_id`),
  KEY `idx_answer1` (`answer1`),
  KEY `idx_answer2` (`answer2`),
  KEY `idx_answer3` (`answer3`),
  KEY `idx_answer4` (`answer4`),
  KEY `idx_answer5` (`answer5`),
  KEY `idx_answer6` (`answer6`),
  KEY `idx_answer7` (`answer7`),
  KEY `idx_answer8` (`answer8`),
  KEY `idx_answer9` (`answer9`),
  KEY `idx_answer10` (`answer10`),
  KEY `idx_answer11` (`answer11`),
  KEY `idx_answer12` (`answer12`),
  KEY `idx_answer13` (`answer13`),
  KEY `idx_answer14` (`answer14`),
  KEY `idx_answer15` (`answer15`),
  KEY `idx_answer16` (`answer16`),
  KEY `idx_answer18` (`answer18`),
  KEY `idx_answer19` (`answer19`),
  KEY `idx_answer20` (`answer20`),
  KEY `idx_answer17` (`answer17`),
  KEY `idx_answer21` (`answer21`),
  KEY `idx_answer22` (`answer22`),
  KEY `idx_answer23` (`answer23`),
  KEY `idx_answer24` (`answer24`),
  KEY `idx_answer25` (`answer25`),
  KEY `idx_answer26` (`answer26`),
  KEY `idx_answer27` (`answer27`),
  KEY `idx_answer28` (`answer28`),
  KEY `idx_answer29` (`answer29`),
  KEY `idx_answer30` (`answer30`),
  KEY `idx_answer31` (`answer31`),
  KEY `idx_answer32` (`answer32`),
  KEY `idx_answer33` (`answer33`),
  KEY `idx_answer34` (`answer34`),
  KEY `idx_answer35` (`answer35`),
  KEY `idx_answer36` (`answer36`),
  KEY `idx_answer37` (`answer37`),
  KEY `idx_answer38` (`answer38`),
  KEY `idx_answer39` (`answer39`),
  KEY `idx_answer40` (`answer40`),
  KEY `idx_answer41` (`answer41`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='t80 発信結果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t80_outgoing_results`
--

LOCK TABLES `t80_outgoing_results` WRITE;
/*!40000 ALTER TABLE `t80_outgoing_results` DISABLE KEYS */;
INSERT INTO `t80_outgoing_results` VALUES (1,'1',0,'09000000005','','tone','N','2021-02-01 11:55:16','2021-02-01 11:55:28','2021-02-01 11:55:48','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','connect','e','1/1','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-01 11:56:09',NULL,NULL,NULL,NULL,NULL),(2,'1',0,'09000000006','','tone','Y','2021-02-01 11:55:16','2021-02-01 11:55:28','2021-02-01 11:55:48','2021-02-01 11:55:48','2021-02-01 11:55:48','2021-02-01 11:55:48','connect','e','1/1','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-01 11:56:09',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t80_outgoing_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t81_incoming_results`
--

DROP TABLE IF EXISTS `t81_incoming_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t81_incoming_results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `inbound_id` bigint(20) NOT NULL COMMENT '外線番号',
  `tel_no` varchar(20) NOT NULL COMMENT '電話番号',
  `prefix` varchar(20) DEFAULT NULL,
  `memo` text COMMENT 'メモ',
  `tel_type` varchar(64) DEFAULT NULL COMMENT '電話種類',
  `del_flag` varchar(45) DEFAULT 'N',
  `call_datetime` datetime DEFAULT NULL COMMENT '発信日時',
  `connect_datetime` datetime DEFAULT NULL COMMENT '接続日時',
  `cut_datetime` datetime DEFAULT NULL COMMENT '切断日時',
  `trans_call_datetime` datetime DEFAULT NULL COMMENT '発信日時',
  `trans_connect_datetime` datetime DEFAULT NULL COMMENT '接続日時',
  `trans_cut_datetime` datetime DEFAULT NULL COMMENT '切断日時',
  `status` varchar(20) DEFAULT NULL COMMENT 'ステータス',
  `valid_count` varchar(20) DEFAULT NULL COMMENT '有効回答数',
  `ans_accuracy` varchar(20) DEFAULT NULL COMMENT '回答確度',
  `answer1` varchar(84) DEFAULT NULL,
  `answer2` varchar(84) DEFAULT NULL,
  `answer3` varchar(84) DEFAULT NULL,
  `answer4` varchar(84) DEFAULT NULL,
  `answer5` varchar(84) DEFAULT NULL,
  `answer6` varchar(84) DEFAULT NULL,
  `answer7` varchar(84) DEFAULT NULL,
  `answer8` varchar(84) DEFAULT NULL,
  `answer9` varchar(84) DEFAULT NULL,
  `answer10` varchar(84) DEFAULT NULL,
  `answer11` varchar(84) DEFAULT NULL,
  `answer12` varchar(84) DEFAULT NULL,
  `answer13` varchar(84) DEFAULT NULL,
  `answer14` varchar(84) DEFAULT NULL,
  `answer15` varchar(84) DEFAULT NULL,
  `answer16` varchar(84) DEFAULT NULL,
  `answer17` varchar(84) DEFAULT NULL,
  `answer18` varchar(84) DEFAULT NULL,
  `answer19` varchar(84) DEFAULT NULL,
  `answer20` varchar(84) DEFAULT NULL,
  `answer21` varchar(84) DEFAULT NULL,
  `answer22` varchar(84) DEFAULT NULL,
  `answer23` varchar(84) DEFAULT NULL,
  `answer24` varchar(84) DEFAULT NULL,
  `answer25` varchar(84) DEFAULT NULL,
  `answer26` varchar(84) DEFAULT NULL,
  `answer27` varchar(84) DEFAULT NULL,
  `answer28` varchar(84) DEFAULT NULL,
  `answer29` varchar(84) DEFAULT NULL,
  `answer30` varchar(84) DEFAULT NULL,
  `answer31` varchar(84) DEFAULT NULL,
  `answer32` varchar(84) DEFAULT NULL,
  `answer33` varchar(84) DEFAULT NULL,
  `answer34` varchar(84) DEFAULT NULL,
  `answer35` varchar(84) DEFAULT NULL,
  `answer36` varchar(84) DEFAULT NULL,
  `answer37` varchar(84) DEFAULT NULL,
  `answer38` varchar(84) DEFAULT NULL,
  `answer39` varchar(84) DEFAULT NULL,
  `answer40` varchar(84) DEFAULT NULL,
  `answer41` varchar(84) DEFAULT NULL,
  `answer42` varchar(84) DEFAULT NULL,
  `answer43` varchar(84) DEFAULT NULL,
  `answer44` varchar(84) DEFAULT NULL,
  `answer45` varchar(84) DEFAULT NULL,
  `answer46` varchar(84) DEFAULT NULL,
  `answer47` varchar(84) DEFAULT NULL,
  `answer48` varchar(84) DEFAULT NULL,
  `answer49` varchar(84) DEFAULT NULL,
  `answer50` varchar(84) DEFAULT NULL,
  `answer51` varchar(84) DEFAULT NULL,
  `answer52` varchar(84) DEFAULT NULL,
  `answer53` varchar(84) DEFAULT NULL,
  `answer54` varchar(84) DEFAULT NULL,
  `answer55` varchar(84) DEFAULT NULL,
  `answer56` varchar(84) DEFAULT NULL,
  `answer57` varchar(84) DEFAULT NULL,
  `answer58` varchar(84) DEFAULT NULL,
  `answer59` varchar(84) DEFAULT NULL,
  `answer60` varchar(84) DEFAULT NULL,
  `answer61` varchar(84) DEFAULT NULL,
  `answer62` varchar(84) DEFAULT NULL,
  `answer63` varchar(84) DEFAULT NULL,
  `answer64` varchar(84) DEFAULT NULL,
  `answer65` varchar(84) DEFAULT NULL,
  `answer66` varchar(84) DEFAULT NULL,
  `answer67` varchar(84) DEFAULT NULL,
  `answer68` varchar(84) DEFAULT NULL,
  `answer69` varchar(84) DEFAULT NULL,
  `answer70` varchar(84) DEFAULT NULL,
  `answer71` varchar(84) DEFAULT NULL,
  `answer72` varchar(84) DEFAULT NULL,
  `answer73` varchar(84) DEFAULT NULL,
  `answer74` varchar(84) DEFAULT NULL,
  `answer75` varchar(84) DEFAULT NULL,
  `answer76` varchar(84) DEFAULT NULL,
  `answer77` varchar(84) DEFAULT NULL,
  `answer78` varchar(84) DEFAULT NULL,
  `answer79` varchar(84) DEFAULT NULL,
  `answer80` varchar(84) DEFAULT NULL,
  `answer81` varchar(84) DEFAULT NULL,
  `answer82` varchar(84) DEFAULT NULL,
  `answer83` varchar(84) DEFAULT NULL,
  `answer84` varchar(84) DEFAULT NULL,
  `answer85` varchar(84) DEFAULT NULL,
  `answer86` varchar(84) DEFAULT NULL,
  `answer87` varchar(84) DEFAULT NULL,
  `answer88` varchar(84) DEFAULT NULL,
  `answer89` varchar(84) DEFAULT NULL,
  `answer90` varchar(84) DEFAULT NULL,
  `answer91` varchar(84) DEFAULT NULL,
  `answer92` varchar(84) DEFAULT NULL,
  `answer93` varchar(84) DEFAULT NULL,
  `answer94` varchar(84) DEFAULT NULL,
  `answer95` varchar(84) DEFAULT NULL,
  `answer96` varchar(84) DEFAULT NULL,
  `answer97` varchar(84) DEFAULT NULL,
  `answer98` varchar(84) DEFAULT NULL,
  `answer99` varchar(84) DEFAULT NULL,
  `answer100` varchar(84) DEFAULT NULL,
  `answer101` varchar(84) DEFAULT NULL,
  `answer102` varchar(84) DEFAULT NULL,
  `answer103` varchar(84) DEFAULT NULL,
  `answer104` varchar(84) DEFAULT NULL,
  `answer105` varchar(84) DEFAULT NULL,
  `answer106` varchar(84) DEFAULT NULL,
  `answer107` varchar(84) DEFAULT NULL,
  `answer108` varchar(84) DEFAULT NULL,
  `answer109` varchar(84) DEFAULT NULL,
  `answer110` varchar(84) DEFAULT NULL,
  `answer111` varchar(84) DEFAULT NULL,
  `answer112` varchar(84) DEFAULT NULL,
  `answer113` varchar(84) DEFAULT NULL,
  `answer114` varchar(84) DEFAULT NULL,
  `answer115` varchar(84) DEFAULT NULL,
  `answer116` varchar(84) DEFAULT NULL,
  `answer117` varchar(84) DEFAULT NULL,
  `answer118` varchar(84) DEFAULT NULL,
  `answer119` varchar(84) DEFAULT NULL,
  `answer120` varchar(84) DEFAULT NULL,
  `answer121` varchar(84) DEFAULT NULL,
  `answer122` varchar(84) DEFAULT NULL,
  `answer123` varchar(84) DEFAULT NULL,
  `answer124` varchar(84) DEFAULT NULL,
  `answer125` varchar(84) DEFAULT NULL,
  `answer126` varchar(84) DEFAULT NULL,
  `answer127` varchar(84) DEFAULT NULL,
  `answer128` varchar(84) DEFAULT NULL,
  `answer129` varchar(84) DEFAULT NULL,
  `answer130` varchar(84) DEFAULT NULL,
  `answer131` varchar(84) DEFAULT NULL,
  `answer132` varchar(84) DEFAULT NULL,
  `answer133` varchar(84) DEFAULT NULL,
  `answer134` varchar(84) DEFAULT NULL,
  `answer135` varchar(84) DEFAULT NULL,
  `answer136` varchar(84) DEFAULT NULL,
  `answer137` varchar(84) DEFAULT NULL,
  `answer138` varchar(84) DEFAULT NULL,
  `answer139` varchar(84) DEFAULT NULL,
  `answer140` varchar(84) DEFAULT NULL,
  `answer141` varchar(84) DEFAULT NULL,
  `answer142` varchar(84) DEFAULT NULL,
  `answer143` varchar(84) DEFAULT NULL,
  `answer144` varchar(84) DEFAULT NULL,
  `answer145` varchar(84) DEFAULT NULL,
  `answer146` varchar(84) DEFAULT NULL,
  `answer147` varchar(84) DEFAULT NULL,
  `answer148` varchar(84) DEFAULT NULL,
  `answer149` varchar(84) DEFAULT NULL,
  `answer150` varchar(84) DEFAULT NULL,
  `answer151` varchar(84) DEFAULT NULL,
  `answer152` varchar(84) DEFAULT NULL,
  `answer153` varchar(84) DEFAULT NULL,
  `answer154` varchar(84) DEFAULT NULL,
  `answer155` varchar(84) DEFAULT NULL,
  `answer156` varchar(84) DEFAULT NULL,
  `answer157` varchar(84) DEFAULT NULL,
  `answer158` varchar(84) DEFAULT NULL,
  `answer159` varchar(84) DEFAULT NULL,
  `answer160` varchar(84) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tel_no_call_datetime` (`inbound_id`,`tel_no`,`call_datetime`,`connect_datetime`,`cut_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='t81 着信結果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t81_incoming_results`
--

LOCK TABLES `t81_incoming_results` WRITE;
/*!40000 ALTER TABLE `t81_incoming_results` DISABLE KEYS */;
INSERT INTO `t81_incoming_results` VALUES (1,2,'09000000005',NULL,NULL,'tone','N','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','connect','e','1/1','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'09000000006',NULL,NULL,'tone','Y','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','2021-02-01 11:55:16','connect','e','1/1','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t81_incoming_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t82_bukken_fax_statuses`
--

DROP TABLE IF EXISTS `t82_bukken_fax_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t82_bukken_fax_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) DEFAULT NULL COMMENT 't81のidと紐づく',
  `inbound_id` bigint(20) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `fax_question_no` int(11) DEFAULT NULL,
  `fax_id` varchar(64) DEFAULT NULL COMMENT 'APIにFAX送信後、返ってくる値',
  `fax_status` varchar(45) DEFAULT '送信中',
  `message` varchar(256) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`log_id`,`inbound_id`,`template_id`,`fax_question_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物件FAX送信ステータス';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t82_bukken_fax_statuses`
--

LOCK TABLES `t82_bukken_fax_statuses` WRITE;
/*!40000 ALTER TABLE `t82_bukken_fax_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `t82_bukken_fax_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t83_outgoing_sms_statuses`
--

DROP TABLE IF EXISTS `t83_outgoing_sms_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t83_outgoing_sms_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) DEFAULT NULL COMMENT 't81のidと紐づく',
  `schedule_id` bigint(20) DEFAULT NULL,
  `company_id` varchar(20) DEFAULT NULL,
  `display_number` varchar(20) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `tel_no` varchar(20) DEFAULT NULL,
  `sms_question_no` int(11) DEFAULT NULL,
  `sms_entry_id` varchar(64) DEFAULT NULL COMMENT 'APIにSMS送信後、返ってくる値',
  `sms_status` varchar(45) DEFAULT NULL COMMENT 'success:着信済み、outside:圏外、unknown:不明、error:エラー',
  `message` varchar(256) DEFAULT NULL,
  `sms_short_url_key` varchar(256) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_index` (`log_id`,`sms_entry_id`),
  KEY `schedule_index` (`schedule_id`,`tel_no`,`sms_question_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SMS送信ステータス';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t83_outgoing_sms_statuses`
--

LOCK TABLES `t83_outgoing_sms_statuses` WRITE;
/*!40000 ALTER TABLE `t83_outgoing_sms_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `t83_outgoing_sms_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t84_outgoing_getsmsstatus_histories`
--

DROP TABLE IF EXISTS `t84_outgoing_getsmsstatus_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t84_outgoing_getsmsstatus_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` varchar(45) DEFAULT NULL,
  `ResStatus` varchar(10) DEFAULT NULL,
  `ResCount` varchar(10) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `req_stat` varchar(10) DEFAULT NULL,
  `group_id` varchar(10) DEFAULT NULL,
  `service_id` varchar(10) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `to_address` varchar(20) DEFAULT NULL,
  `use_cr_find` varchar(1) DEFAULT NULL,
  `carrier_id` varchar(1) DEFAULT NULL,
  `message_no` varchar(20) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `encode` varchar(1) DEFAULT NULL,
  `permit_time` varchar(20) DEFAULT NULL,
  `sent_date` varchar(20) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `send_result` varchar(20) DEFAULT NULL,
  `result_status` varchar(20) DEFAULT NULL,
  `command_status` varchar(20) DEFAULT NULL,
  `network_error_code` varchar(20) DEFAULT NULL,
  `tracking_code` varchar(20) DEFAULT NULL,
  `partition_size` varchar(2) DEFAULT NULL,
  `use_jdg_find` varchar(1) DEFAULT NULL,
  `ResErrorCode` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t84_outgoing_getsmsstatus_histories`
--

LOCK TABLES `t84_outgoing_getsmsstatus_histories` WRITE;
/*!40000 ALTER TABLE `t84_outgoing_getsmsstatus_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t84_outgoing_getsmsstatus_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t85_incomming_bukken_histories`
--

DROP TABLE IF EXISTS `t85_incomming_bukken_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t85_incomming_bukken_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bukken_company_id` varchar(20) DEFAULT NULL,
  `bukken_shop_id` varchar(20) DEFAULT NULL,
  `external_number` varchar(20) DEFAULT NULL,
  `tel_no` varchar(20) DEFAULT NULL,
  `call_datetime` datetime DEFAULT NULL,
  `connect_datetime` datetime DEFAULT NULL,
  `cut_datetime` datetime DEFAULT NULL,
  `connected_seconds` int(11) DEFAULT NULL,
  `property_cost` varchar(20) DEFAULT NULL,
  `property_cost_decimal` double DEFAULT NULL,
  `property_square` varchar(20) DEFAULT NULL,
  `property_square_decimal` double DEFAULT NULL,
  `bukken_code` varchar(20) DEFAULT NULL,
  `bukken_name` varchar(64) DEFAULT NULL,
  `bukken_empty_info` varchar(20) DEFAULT NULL,
  `bukken_empty_info_origin` varchar(20) DEFAULT NULL,
  `bukken_diagram_info` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `log_id` bigint(20) DEFAULT NULL,
  `inbound_id` bigint(20) DEFAULT NULL,
  `template_id` varchar(20) DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `company_id` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`log_id`,`inbound_id`,`template_id`,`question_no`),
  KEY `index3` (`call_datetime`),
  KEY `index4` (`property_cost_decimal`),
  KEY `index5` (`property_square_decimal`),
  KEY `index6` (`external_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t85_incomming_bukken_histories`
--

LOCK TABLES `t85_incomming_bukken_histories` WRITE;
/*!40000 ALTER TABLE `t85_incomming_bukken_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t85_incomming_bukken_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t86_inbound_sms_statuses`
--

DROP TABLE IF EXISTS `t86_inbound_sms_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t86_inbound_sms_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) DEFAULT NULL COMMENT 't81のidと紐づく',
  `inbound_id` bigint(20) DEFAULT NULL,
  `company_id` varchar(20) DEFAULT NULL,
  `display_number` varchar(20) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `tel_no` varchar(20) DEFAULT NULL,
  `sms_question_no` int(11) DEFAULT NULL,
  `sms_entry_id` varchar(64) DEFAULT NULL COMMENT 'APIにSMS送信後、返ってくる値',
  `sms_status` varchar(45) DEFAULT NULL COMMENT 'success:着信済み、outside:圏外、unknown:不明、error:エラー',
  `message` varchar(256) DEFAULT NULL,
  `sms_short_url_key` varchar(256) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_index` (`log_id`,`sms_entry_id`),
  KEY `schedule_index` (`inbound_id`,`tel_no`,`sms_question_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SMS送信ステータス';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t86_inbound_sms_statuses`
--

LOCK TABLES `t86_inbound_sms_statuses` WRITE;
/*!40000 ALTER TABLE `t86_inbound_sms_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `t86_inbound_sms_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t87_inbound_getsmsstatus_histories`
--

DROP TABLE IF EXISTS `t87_inbound_getsmsstatus_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t87_inbound_getsmsstatus_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` varchar(45) DEFAULT NULL,
  `ResStatus` varchar(10) DEFAULT NULL,
  `ResCount` varchar(10) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `req_stat` varchar(10) DEFAULT NULL,
  `group_id` varchar(10) DEFAULT NULL,
  `service_id` varchar(10) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `to_address` varchar(20) DEFAULT NULL,
  `use_cr_find` varchar(1) DEFAULT NULL,
  `carrier_id` varchar(1) DEFAULT NULL,
  `message_no` varchar(20) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `encode` varchar(1) DEFAULT NULL,
  `permit_time` varchar(20) DEFAULT NULL,
  `sent_date` varchar(20) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `send_result` varchar(20) DEFAULT NULL,
  `result_status` varchar(20) DEFAULT NULL,
  `command_status` varchar(20) DEFAULT NULL,
  `network_error_code` varchar(20) DEFAULT NULL,
  `tracking_code` varchar(20) DEFAULT NULL,
  `partition_size` varchar(2) DEFAULT NULL,
  `use_jdg_find` varchar(1) DEFAULT NULL,
  `ResErrorCode` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t87_inbound_getsmsstatus_histories`
--

LOCK TABLES `t87_inbound_getsmsstatus_histories` WRITE;
/*!40000 ALTER TABLE `t87_inbound_getsmsstatus_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `t87_inbound_getsmsstatus_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t89_manage_files`
--

DROP TABLE IF EXISTS `t89_manage_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t89_manage_files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `file_name` varchar(64) DEFAULT NULL,
  `file_size` varchar(20) DEFAULT NULL COMMENT 'ファイル量',
  `file_contents` mediumblob COMMENT 'ファイル内容',
  `file_mp3_size` varchar(20) DEFAULT NULL,
  `file_mp3_contents` mediumblob COMMENT 'ファイルpcm量',
  `file_pcm_contents` mediumblob COMMENT 'ファイルpcm内容',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t89ファイル管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t89_manage_files`
--

LOCK TABLES `t89_manage_files` WRITE;
/*!40000 ALTER TABLE `t89_manage_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `t89_manage_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t90_login_histories`
--

DROP TABLE IF EXISTS `t90_login_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t90_login_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` varchar(64) NOT NULL COMMENT 'ユーザーID',
  `client_ip` varchar(64) DEFAULT NULL COMMENT 'クライアントIP',
  `session_id` varchar(128) DEFAULT NULL COMMENT 'セッションID',
  `login_flag` varchar(1) DEFAULT 'N' COMMENT 'ログインフラグ',
  `logout_time` datetime DEFAULT NULL COMMENT 'ログアウト',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '削除フラグ',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録者',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55550 DEFAULT CHARSET=utf8 COMMENT='t90ログイン履歴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t90_login_histories`
--

LOCK TABLES `t90_login_histories` WRITE;
/*!40000 ALTER TABLE `t90_login_histories` DISABLE KEYS */;
INSERT INTO `t90_login_histories` VALUES (55537,'kamo_s','::1','5ljqcto8caofm4o0dte8a8fan2','N','2021-02-26 19:40:36','N','kamo_s','Login_login','2021-02-26 15:49:24','kamo_s','Login_logout','2021-02-26 19:40:36'),(55538,'kamo_s','::1','lf2kcsoori7vtbog6n1ldmuim3','N','2021-03-01 11:45:10','N','kamo_s','Login_login','2021-03-01 10:08:16','kamo_s','Login_logout','2021-03-01 11:45:10'),(55539,'kamo_s','::1','vicfpcsl84ajugg8ao24pu37e7','N','2021-03-01 12:19:18','N','kamo_s','Login_login','2021-03-01 11:45:13','kamo_s','Login_logout','2021-03-01 12:19:19'),(55540,'kamo_s','::1','7cmn7prguj48vprq7p16h65rl1','N','2021-03-01 12:58:32','N','kamo_s','Login_login','2021-03-01 12:19:34','kamo_s','Login_logout','2021-03-01 12:58:32'),(55541,'kamo_s','::1','itifaftr0viio82o68fl0r2bg6','N','2021-03-01 14:16:18','N','kamo_s','Login_login','2021-03-01 13:49:16','kamo_s','Login_logout','2021-03-01 14:16:18'),(55542,'s_kamo','::1','vfud0pee6iac2f4jqdnnqglc71','N','2021-03-01 14:18:21','N','s_kamo','Login_login','2021-03-01 14:16:22','s_kamo','Login_logout','2021-03-01 14:18:21'),(55543,'kamo_s','::1','qe7bma0jpiakn30lndq7hvlt55','N','2021-03-01 14:20:53','N','kamo_s','Login_login','2021-03-01 14:20:25','kamo_s','Login_logout','2021-03-01 14:20:53'),(55544,'kamo_s','::1','lsb5aj65jjnd5gru1kcr0d9ra5','N','2021-03-01 14:23:28','N','kamo_s','Login_login','2021-03-01 14:20:59','kamo_s','Login_logout','2021-03-01 14:23:28'),(55545,'fabbi','::1','bcjksenk0tmffampc9qsg3glh7','N','2021-03-01 14:40:46','N','fabbi','Login_login','2021-03-01 14:23:51','fabbi','Login_logout','2021-03-01 14:40:46'),(55546,'fabbi','::1','bmr5m340ot9fcqhcs3feu54io5','N',NULL,'N','fabbi','Login_login','2021-03-01 14:41:31','fabbi','Login_login','2021-03-01 14:41:31'),(55547,'fabbi','::1','lguvu8t53ddqjnajfl54ims713','N',NULL,'N','fabbi','Login_login','2021-03-30 15:50:55','fabbi','Login_login','2021-03-30 15:50:55'),(55548,'fabbi','::1','lguvu8t53ddqjnajfl54ims713','N',NULL,'N','fabbi','Login_login','2021-03-30 15:51:27','fabbi','Login_login','2021-03-30 15:51:27'),(55549,'fabbi','::1','2fa10b47d1j5lmj5lmnd3oehv3','N',NULL,'N','fabbi','Login_login','2021-03-31 15:49:06','fabbi','Login_login','2021-03-31 15:49:06');
/*!40000 ALTER TABLE `t90_login_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t91_action_histories`
--

DROP TABLE IF EXISTS `t91_action_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t91_action_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `client_ip` varchar(20) DEFAULT NULL COMMENT 'クライアントIPアドレス',
  `mac_addr` varchar(20) DEFAULT NULL COMMENT 'マックアドレス',
  `user_id` varchar(20) DEFAULT NULL COMMENT 'ユーザーID',
  `session_id` varchar(128) DEFAULT NULL,
  `operation` varchar(128) DEFAULT NULL COMMENT '操作内容',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89958 DEFAULT CHARSET=utf8 COMMENT='t91作業ログテーブル';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t91_action_histories`
--

LOCK TABLES `t91_action_histories` WRITE;
/*!40000 ALTER TABLE `t91_action_histories` DISABLE KEYS */;
INSERT INTO `t91_action_histories` VALUES (89583,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ログイン__login/login','2021-02-26 15:49:27','2021-02-26 15:49:27'),(89584,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__outschedule/index','2021-02-26 15:49:42','2021-02-26 15:49:42'),(89585,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 発信リスト__template/index','2021-02-26 15:49:47','2021-02-26 15:49:47'),(89586,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 発信NGリスト__calllist/index','2021-02-26 15:49:51','2021-02-26 15:49:51'),(89587,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__calllistng/index','2021-02-26 15:49:56','2021-02-26 15:49:56'),(89588,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信リスト__inboundtemplate/index','2021-02-26 15:50:01','2021-02-26 15:50:01'),(89589,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信設定__inboundcalllist/index','2021-02-26 15:50:07','2021-02-26 15:50:07'),(89590,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信拒否リスト__inboundincominghistory/index','2021-02-26 15:50:12','2021-02-26 15:50:12'),(89591,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__inboundrestrict/index','2021-02-26 15:50:16','2021-02-26 15:50:16'),(89592,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 送信リスト__smstemplate/index','2021-02-26 15:50:21','2021-02-26 15:50:21'),(89593,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' スケジュール__smssendlist/index','2021-02-26 15:50:27','2021-02-26 15:50:27'),(89594,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' ユーザー管理__smsschedule/index','2021-02-26 15:50:32','2021-02-26 15:50:32'),(89595,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 操作マニュアル__manageuser/index','2021-02-26 15:50:36','2021-02-26 15:50:36'),(89596,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' キャッシュ削除マニュアル__manageuser/index','2021-02-26 15:50:41','2021-02-26 15:50:41'),(89597,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__manageuser/index','2021-02-26 15:50:46','2021-02-26 15:50:46'),(89598,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__template/index','2021-02-26 15:53:48','2021-02-26 15:53:48'),(89599,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 15:54:04','2021-02-26 15:54:04'),(89600,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','挿入__template/template','2021-02-26 15:54:53','2021-02-26 15:54:53'),(89601,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','挿入__template/template','2021-02-26 15:55:05','2021-02-26 15:55:05'),(89602,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 15:55:13','2021-02-26 15:55:13'),(89603,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 15:55:15','2021-02-26 15:55:15'),(89604,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 15:58:09','2021-02-26 15:58:09'),(89605,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 15:58:15','2021-02-26 15:58:15'),(89606,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 15:59:17','2021-02-26 15:59:17'),(89607,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 15:59:20','2021-02-26 15:59:20'),(89608,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 15:59:32','2021-02-26 15:59:32'),(89609,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 15:59:42','2021-02-26 15:59:42'),(89610,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__template/template','2021-02-26 15:59:48','2021-02-26 15:59:48'),(89611,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:00:01','2021-02-26 16:00:01'),(89612,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:00:18','2021-02-26 16:00:18'),(89613,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:00:27','2021-02-26 16:00:27'),(89614,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:00:46','2021-02-26 16:00:46'),(89615,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:00:57','2021-02-26 16:00:57'),(89616,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:01:00','2021-02-26 16:01:00'),(89617,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:01:02','2021-02-26 16:01:02'),(89618,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:01:13','2021-02-26 16:01:13'),(89619,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:01:49','2021-02-26 16:01:49'),(89620,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__template/template','2021-02-26 16:01:51','2021-02-26 16:01:51'),(89621,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:01:52','2021-02-26 16:01:52'),(89622,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:02:03','2021-02-26 16:02:03'),(89623,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:02:15','2021-02-26 16:02:15'),(89624,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:02:58','2021-02-26 16:02:58'),(89625,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:03:02','2021-02-26 16:03:02'),(89626,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__template/index','2021-02-26 16:08:43','2021-02-26 16:08:43'),(89627,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__template/index','2021-02-26 16:09:53','2021-02-26 16:09:53'),(89628,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:10:29','2021-02-26 16:10:29'),(89629,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:10:42','2021-02-26 16:10:42'),(89630,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:10:45','2021-02-26 16:10:45'),(89631,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:11:33','2021-02-26 16:11:33'),(89632,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:11:34','2021-02-26 16:11:34'),(89633,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:11:50','2021-02-26 16:11:50'),(89634,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:11:54','2021-02-26 16:11:54'),(89635,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:12:13','2021-02-26 16:12:13'),(89636,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:12:15','2021-02-26 16:12:15'),(89637,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:12:28','2021-02-26 16:12:28'),(89638,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:12:31','2021-02-26 16:12:31'),(89639,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:12:34','2021-02-26 16:12:34'),(89640,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:12:35','2021-02-26 16:12:35'),(89641,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:12:42','2021-02-26 16:12:42'),(89642,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:13:16','2021-02-26 16:13:16'),(89643,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 発信リスト__template/index','2021-02-26 16:22:25','2021-02-26 16:22:25'),(89644,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__calllist/index','2021-02-26 16:22:50','2021-02-26 16:22:50'),(89645,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__calllist/index','2021-02-26 16:25:15','2021-02-26 16:25:15'),(89646,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__calllist/index','2021-02-26 16:25:30','2021-02-26 16:25:30'),(89647,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__calllist/index','2021-02-26 16:27:44','2021-02-26 16:27:44'),(89648,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__calllist/index','2021-02-26 16:29:33','2021-02-26 16:29:33'),(89649,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__calllist/index','2021-02-26 16:29:41','2021-02-26 16:29:41'),(89650,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__calllist/index','2021-02-26 16:29:49','2021-02-26 16:29:49'),(89651,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 発信NGリスト__calllist/index','2021-02-26 16:30:35','2021-02-26 16:30:35'),(89652,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__calllistng/index','2021-02-26 16:31:08','2021-02-26 16:31:08'),(89653,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__template/index','2021-02-26 16:31:11','2021-02-26 16:31:11'),(89654,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:31:19','2021-02-26 16:31:19'),(89655,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','挿入__template/template','2021-02-26 16:31:39','2021-02-26 16:31:39'),(89656,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:31:45','2021-02-26 16:31:45'),(89657,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:31:48','2021-02-26 16:31:48'),(89658,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:32:43','2021-02-26 16:32:43'),(89659,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:32:47','2021-02-26 16:32:47'),(89660,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:33:14','2021-02-26 16:33:14'),(89661,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:33:14','2021-02-26 16:33:14'),(89662,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:33:27','2021-02-26 16:33:27'),(89663,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:33:28','2021-02-26 16:33:28'),(89664,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:33:31','2021-02-26 16:33:31'),(89665,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__template/template','2021-02-26 16:33:32','2021-02-26 16:33:32'),(89666,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:33:42','2021-02-26 16:33:42'),(89667,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:34:13','2021-02-26 16:34:13'),(89668,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__template/template','2021-02-26 16:34:17','2021-02-26 16:34:17'),(89669,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:34:22','2021-02-26 16:34:22'),(89670,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:34:42','2021-02-26 16:34:42'),(89671,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','__template/template','2021-02-26 16:35:44','2021-02-26 16:35:44'),(89672,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__template/template','2021-02-26 16:35:48','2021-02-26 16:35:48'),(89673,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','更新__template/template','2021-02-26 16:36:02','2021-02-26 16:36:02'),(89674,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','更新__template/template','2021-02-26 16:36:31','2021-02-26 16:36:31'),(89675,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 発信NGリスト__template/index','2021-02-26 16:36:43','2021-02-26 16:36:43'),(89676,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__calllistng/index','2021-02-26 16:37:00','2021-02-26 16:37:00'),(89677,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__calllistng/index','2021-02-26 16:37:22','2021-02-26 16:37:22'),(89678,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__calllistng/index','2021-02-26 16:37:34','2021-02-26 16:37:34'),(89679,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__calllistng/index','2021-02-26 16:38:25','2021-02-26 16:38:25'),(89680,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__inboundtemplate/index','2021-02-26 16:38:30','2021-02-26 16:38:30'),(89681,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:38:56','2021-02-26 16:38:56'),(89682,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:39:14','2021-02-26 16:39:14'),(89683,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:39:15','2021-02-26 16:39:15'),(89684,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:42:58','2021-02-26 16:42:58'),(89685,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:43:02','2021-02-26 16:43:02'),(89686,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:43:11','2021-02-26 16:43:11'),(89687,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:43:12','2021-02-26 16:43:12'),(89688,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:43:23','2021-02-26 16:43:23'),(89689,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:43:26','2021-02-26 16:43:26'),(89690,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:43:30','2021-02-26 16:43:30'),(89691,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:43:31','2021-02-26 16:43:31'),(89692,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:43:40','2021-02-26 16:43:40'),(89693,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:44:09','2021-02-26 16:44:09'),(89694,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:44:42','2021-02-26 16:44:42'),(89695,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:45:01','2021-02-26 16:45:01'),(89696,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:45:13','2021-02-26 16:45:13'),(89697,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/template','2021-02-26 16:46:45','2021-02-26 16:46:45'),(89698,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信リスト__inboundtemplate/index','2021-02-26 16:46:56','2021-02-26 16:46:56'),(89699,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__inboundcalllist/index','2021-02-26 16:48:12','2021-02-26 16:48:12'),(89700,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__inboundcalllist/index','2021-02-26 16:48:34','2021-02-26 16:48:34'),(89701,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__inboundcalllist/index','2021-02-26 16:49:41','2021-02-26 16:49:41'),(89702,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundcalllist/index','2021-02-26 16:50:15','2021-02-26 16:50:15'),(89703,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__inboundcalllist/index','2021-02-26 16:50:35','2021-02-26 16:50:35'),(89704,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__inboundtemplate/index','2021-02-26 16:50:44','2021-02-26 16:50:44'),(89705,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:51:02','2021-02-26 16:51:02'),(89706,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','挿入__inboundtemplate/inboundtemplate','2021-02-26 16:51:34','2021-02-26 16:51:34'),(89707,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:51:38','2021-02-26 16:51:38'),(89708,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:51:42','2021-02-26 16:51:42'),(89709,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:53:04','2021-02-26 16:53:04'),(89710,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:53:12','2021-02-26 16:53:12'),(89711,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:53:31','2021-02-26 16:53:31'),(89712,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:53:33','2021-02-26 16:53:33'),(89713,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:53:51','2021-02-26 16:53:51'),(89714,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:53:57','2021-02-26 16:53:57'),(89715,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:53:59','2021-02-26 16:53:59'),(89716,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:54:04','2021-02-26 16:54:04'),(89717,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:54:05','2021-02-26 16:54:05'),(89718,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:54:13','2021-02-26 16:54:13'),(89719,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/template','2021-02-26 16:54:33','2021-02-26 16:54:33'),(89720,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:54:43','2021-02-26 16:54:43'),(89721,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:54:48','2021-02-26 16:54:48'),(89722,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:54:57','2021-02-26 16:54:57'),(89723,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:55:11','2021-02-26 16:55:11'),(89724,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:55:25','2021-02-26 16:55:25'),(89725,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','セクションの追加__inboundtemplate/template','2021-02-26 16:56:07','2021-02-26 16:56:07'),(89726,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:56:23','2021-02-26 16:56:23'),(89727,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:57:07','2021-02-26 16:57:07'),(89728,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 16:58:13','2021-02-26 16:58:13'),(89729,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/template','2021-02-26 16:58:38','2021-02-26 16:58:38'),(89730,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__inboundtemplate/inboundtemplate','2021-02-26 16:58:43','2021-02-26 16:58:43'),(89731,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__inboundtemplate/inboundtemplate','2021-02-26 16:58:47','2021-02-26 16:58:47'),(89732,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__inboundtemplate/inboundtemplate','2021-02-26 16:58:51','2021-02-26 16:58:51'),(89733,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__inboundtemplate/inboundtemplate','2021-02-26 16:58:55','2021-02-26 16:58:55'),(89734,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__inboundtemplate/inboundtemplate','2021-02-26 16:58:58','2021-02-26 16:58:58'),(89735,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','閉じる__inboundtemplate/inboundtemplate','2021-02-26 16:59:02','2021-02-26 16:59:02'),(89736,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/template','2021-02-26 16:59:05','2021-02-26 16:59:05'),(89737,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/inboundtemplate','2021-02-26 17:00:05','2021-02-26 17:00:05'),(89738,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundtemplate/template','2021-02-26 17:00:07','2021-02-26 17:00:07'),(89739,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__inboundtemplate/template','2021-02-26 17:06:45','2021-02-26 17:06:45'),(89740,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','更新__inboundtemplate/template','2021-02-26 17:07:22','2021-02-26 17:07:22'),(89741,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信リスト__inboundtemplate/index','2021-02-26 17:07:39','2021-02-26 17:07:39'),(89742,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__inboundcalllist/index','2021-02-26 17:07:57','2021-02-26 17:07:57'),(89743,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__inboundcalllist/index','2021-02-26 17:08:27','2021-02-26 17:08:27'),(89744,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundcalllist/index','2021-02-26 17:08:50','2021-02-26 17:08:50'),(89745,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信設定__inboundcalllist/index','2021-02-26 17:09:00','2021-02-26 17:09:00'),(89746,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 着信拒否リスト__inboundincominghistory/index','2021-02-26 17:09:28','2021-02-26 17:09:28'),(89747,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__inboundrestrict/index','2021-02-26 17:09:51','2021-02-26 17:09:51'),(89748,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__inboundrestrict/index','2021-02-26 17:12:12','2021-02-26 17:12:12'),(89749,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__inboundrestrict/index','2021-02-26 17:12:50','2021-02-26 17:12:50'),(89750,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__inboundrestrict/index','2021-02-26 17:13:38','2021-02-26 17:13:38'),(89751,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規作成__smstemplate/index','2021-02-26 17:14:38','2021-02-26 17:14:38'),(89752,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__smstemplate/index','2021-02-26 17:15:54','2021-02-26 17:15:54'),(89753,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 送信リスト__smstemplate/index','2021-02-26 17:16:16','2021-02-26 17:16:16'),(89754,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__smssendlist/index','2021-02-26 17:16:24','2021-02-26 17:16:24'),(89755,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__smssendlist/index','2021-02-26 17:16:26','2021-02-26 17:16:26'),(89756,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__smssendlist/index','2021-02-26 17:17:37','2021-02-26 17:17:37'),(89757,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規登録__smssendlist/index','2021-02-26 17:18:20','2021-02-26 17:18:20'),(89758,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ファイルを選択__smssendlist/index','2021-02-26 17:18:22','2021-02-26 17:18:22'),(89759,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__smssendlist/index','2021-02-26 17:18:45','2021-02-26 17:18:45'),(89760,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' テンプレート__smssendlist/index','2021-02-26 17:18:53','2021-02-26 17:18:53'),(89761,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','新規作成__smstemplate/index','2021-02-26 17:19:05','2021-02-26 17:19:05'),(89762,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','挿入__smstemplate/smstemplate','2021-02-26 17:19:33','2021-02-26 17:19:33'),(89763,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','保存__smstemplate/index','2021-02-26 17:20:01','2021-02-26 17:20:01'),(89764,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' 送信リスト__smstemplate/index','2021-02-26 17:20:07','2021-02-26 17:20:07'),(89765,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2',' スケジュール__smssendlist/index','2021-02-26 17:20:12','2021-02-26 17:20:12'),(89766,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','kamo__smsschedule/smsschedule','2021-02-26 19:40:20','2021-02-26 19:40:20'),(89767,'::1',NULL,'kamo_s','5ljqcto8caofm4o0dte8a8fan2','ログアウト__smsschedule/index','2021-02-26 19:40:21','2021-02-26 19:40:21'),(89768,'::1',NULL,'kamo_s','koteon76qpv5fo3bcpe5292g47','\n			kamo\n			\n		__outschedule/outschedule','2021-02-26 19:40:33','2021-02-26 19:40:33'),(89769,'::1',NULL,'kamo_s','koteon76qpv5fo3bcpe5292g47','ログアウト__outschedule/index','2021-02-26 19:40:35','2021-02-26 19:40:35'),(89770,'127.0.0.1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3','ログイン__login/login','2021-03-01 10:08:17','2021-03-01 10:08:17'),(89771,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3','新規登録__outschedule/index','2021-03-01 11:18:01','2021-03-01 11:18:01'),(89772,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' 発信リスト__outschedule/index','2021-03-01 11:19:05','2021-03-01 11:19:05'),(89773,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' テンプレート__calllist/index','2021-03-01 11:19:12','2021-03-01 11:19:12'),(89774,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' スケジュール__template/index','2021-03-01 11:19:21','2021-03-01 11:19:21'),(89775,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3','新規登録__outschedule/index','2021-03-01 11:19:28','2021-03-01 11:19:28'),(89776,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' スケジュール__outschedule/index','2021-03-01 11:21:47','2021-03-01 11:21:47'),(89777,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' スケジュール__outschedule/index','2021-03-01 11:26:18','2021-03-01 11:26:18'),(89778,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' テンプレート__outschedule/index','2021-03-01 11:27:57','2021-03-01 11:27:57'),(89779,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' 発信リスト__template/index','2021-03-01 11:28:42','2021-03-01 11:28:42'),(89780,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' テンプレート__calllist/index','2021-03-01 11:41:32','2021-03-01 11:41:32'),(89781,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' テンプレート__template/template','2021-03-01 11:44:01','2021-03-01 11:44:01'),(89782,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' スケジュール__template/index','2021-03-01 11:44:05','2021-03-01 11:44:05'),(89783,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' スケジュール__outschedule/index','2021-03-01 11:44:22','2021-03-01 11:44:22'),(89784,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' テンプレート__outschedule/index','2021-03-01 11:44:42','2021-03-01 11:44:42'),(89785,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3',' スケジュール__template/template','2021-03-01 11:44:50','2021-03-01 11:44:50'),(89786,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3','kamo__outschedule/outschedule','2021-03-01 11:45:07','2021-03-01 11:45:07'),(89787,'::1',NULL,'kamo_s','lf2kcsoori7vtbog6n1ldmuim3','ログアウト__outschedule/index','2021-03-01 11:45:09','2021-03-01 11:45:09'),(89788,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__outschedule/index','2021-03-01 11:46:23','2021-03-01 11:46:23'),(89789,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' テンプレート__outschedule/index','2021-03-01 11:46:26','2021-03-01 11:46:26'),(89790,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','__template/template','2021-03-01 11:46:45','2021-03-01 11:46:45'),(89791,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__template/template','2021-03-01 11:47:14','2021-03-01 11:47:14'),(89792,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','__template/template','2021-03-01 11:47:34','2021-03-01 11:47:34'),(89793,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','__template/template','2021-03-01 11:47:39','2021-03-01 11:47:39'),(89794,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__template/template','2021-03-01 11:47:44','2021-03-01 11:47:44'),(89795,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__template/template','2021-03-01 11:47:48','2021-03-01 11:47:48'),(89796,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','\n										\n									__template/template','2021-03-01 11:47:51','2021-03-01 11:47:51'),(89797,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__template/template','2021-03-01 11:47:58','2021-03-01 11:47:58'),(89798,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__template/template','2021-03-01 11:48:12','2021-03-01 11:48:12'),(89799,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__template/template','2021-03-01 11:48:29','2021-03-01 11:48:29'),(89800,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','更新__template/template','2021-03-01 11:49:02','2021-03-01 11:49:02'),(89801,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','インポート__template/index','2021-03-01 11:50:06','2021-03-01 11:50:06'),(89802,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','インポート__template/index','2021-03-01 11:50:09','2021-03-01 11:50:09'),(89803,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','×__template/template','2021-03-01 11:50:15','2021-03-01 11:50:15'),(89804,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__template/index','2021-03-01 12:01:07','2021-03-01 12:01:07'),(89805,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' 発信リスト__outschedule/index','2021-03-01 12:05:40','2021-03-01 12:05:40'),(89806,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__calllist/index','2021-03-01 12:08:22','2021-03-01 12:08:22'),(89807,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__outschedule/status','2021-03-01 12:08:33','2021-03-01 12:08:33'),(89808,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' 発信リスト__outschedule/index','2021-03-01 12:08:41','2021-03-01 12:08:41'),(89809,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' 発信リスト__calllist/detail','2021-03-01 12:10:56','2021-03-01 12:10:56'),(89810,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','新規登録__calllist/index','2021-03-01 12:10:59','2021-03-01 12:10:59'),(89811,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','ファイルを選択__calllist/index','2021-03-01 12:11:06','2021-03-01 12:11:06'),(89812,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','保存__calllist/index','2021-03-01 12:11:21','2021-03-01 12:11:21'),(89813,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__calllist/index','2021-03-01 12:12:29','2021-03-01 12:12:29'),(89814,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__outschedule/index','2021-03-01 12:13:18','2021-03-01 12:13:18'),(89815,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__outschedule/index','2021-03-01 12:14:06','2021-03-01 12:14:06'),(89816,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__outschedule/index','2021-03-01 12:15:47','2021-03-01 12:15:47'),(89817,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','詳細__outschedule/outschedule','2021-03-01 12:16:39','2021-03-01 12:16:39'),(89818,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','×__outschedule/outschedule','2021-03-01 12:16:40','2021-03-01 12:16:40'),(89819,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7',' スケジュール__outschedule/status','2021-03-01 12:16:42','2021-03-01 12:16:42'),(89820,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','__outschedule/outschedule','2021-03-01 12:19:16','2021-03-01 12:19:16'),(89821,'::1',NULL,'kamo_s','vicfpcsl84ajugg8ao24pu37e7','ログアウト__outschedule/index','2021-03-01 12:19:18','2021-03-01 12:19:18'),(89822,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/index','2021-03-01 12:26:30','2021-03-01 12:26:30'),(89823,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/index','2021-03-01 12:31:35','2021-03-01 12:31:35'),(89824,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/index','2021-03-01 12:32:19','2021-03-01 12:32:19'),(89825,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:32:31','2021-03-01 12:32:31'),(89826,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','×__outschedule/outschedule','2021-03-01 12:32:34','2021-03-01 12:32:34'),(89827,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:32:54','2021-03-01 12:32:54'),(89828,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','×__outschedule/outschedule','2021-03-01 12:33:06','2021-03-01 12:33:06'),(89829,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:34:14','2021-03-01 12:34:14'),(89830,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','×__outschedule/outschedule','2021-03-01 12:34:17','2021-03-01 12:34:17'),(89831,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/status','2021-03-01 12:37:09','2021-03-01 12:37:09'),(89832,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:37:22','2021-03-01 12:37:22'),(89833,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','×__outschedule/outschedule','2021-03-01 12:37:23','2021-03-01 12:37:23'),(89834,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/status','2021-03-01 12:40:14','2021-03-01 12:40:14'),(89835,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:40:43','2021-03-01 12:40:43'),(89836,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:40:48','2021-03-01 12:40:48'),(89837,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/status','2021-03-01 12:41:39','2021-03-01 12:41:39'),(89838,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:41:54','2021-03-01 12:41:54'),(89839,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/status','2021-03-01 12:42:50','2021-03-01 12:42:50'),(89840,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','詳細__outschedule/outschedule','2021-03-01 12:43:04','2021-03-01 12:43:04'),(89841,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','×__outschedule/outschedule','2021-03-01 12:43:05','2021-03-01 12:43:05'),(89842,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/status','2021-03-01 12:43:56','2021-03-01 12:43:56'),(89843,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/status','2021-03-01 12:44:18','2021-03-01 12:44:18'),(89844,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__outschedule/index','2021-03-01 12:49:05','2021-03-01 12:49:05'),(89845,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' 送信リスト__smsschedule/index','2021-03-01 12:49:14','2021-03-01 12:49:14'),(89846,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' 着信設定__smssendlist/index','2021-03-01 12:49:22','2021-03-01 12:49:22'),(89847,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','新規登録__inboundincominghistory/index','2021-03-01 12:49:25','2021-03-01 12:49:25'),(89848,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' 着信設定__inboundincominghistory/index','2021-03-01 12:53:10','2021-03-01 12:53:10'),(89849,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','新規登録__inboundincominghistory/index','2021-03-01 12:54:09','2021-03-01 12:54:09'),(89850,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__inboundincominghistory/index','2021-03-01 12:56:02','2021-03-01 12:56:02'),(89851,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__smsschedule/index','2021-03-01 12:57:30','2021-03-01 12:57:30'),(89852,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' テンプレート__smsschedule/index','2021-03-01 12:57:38','2021-03-01 12:57:38'),(89853,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' 送信リスト__smstemplate/index','2021-03-01 12:57:43','2021-03-01 12:57:43'),(89854,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1',' スケジュール__smssendlist/index','2021-03-01 12:57:48','2021-03-01 12:57:48'),(89855,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','__smsschedule/smsschedule','2021-03-01 12:58:31','2021-03-01 12:58:31'),(89856,'::1',NULL,'kamo_s','7cmn7prguj48vprq7p16h65rl1','ログアウト__smsschedule/index','2021-03-01 12:58:31','2021-03-01 12:58:31'),(89857,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' テンプレート__outschedule/index','2021-03-01 13:49:40','2021-03-01 13:49:40'),(89858,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','閉じる__smstemplate/index','2021-03-01 13:51:35','2021-03-01 13:51:35'),(89859,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' スケジュール__smstemplate/index','2021-03-01 13:51:37','2021-03-01 13:51:37'),(89860,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','新規登録__smsschedule/index','2021-03-01 13:51:42','2021-03-01 13:51:42'),(89861,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' 送信リスト__smsschedule/index','2021-03-01 14:05:38','2021-03-01 14:05:38'),(89862,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','新規登録__smssendlist/index','2021-03-01 14:06:47','2021-03-01 14:06:47'),(89863,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','ファイルを選択__smssendlist/index','2021-03-01 14:06:55','2021-03-01 14:06:55'),(89864,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','保存__smssendlist/index','2021-03-01 14:07:03','2021-03-01 14:07:03'),(89865,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' スケジュール__smssendlist/index','2021-03-01 14:09:51','2021-03-01 14:09:51'),(89866,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' スケジュール__smsschedule/index','2021-03-01 14:10:23','2021-03-01 14:10:23'),(89867,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' スケジュール__smsschedule/index','2021-03-01 14:11:06','2021-03-01 14:11:06'),(89868,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' スケジュール__smsschedule/status','2021-03-01 14:13:00','2021-03-01 14:13:00'),(89869,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','詳細__smsschedule/smsschedule','2021-03-01 14:13:14','2021-03-01 14:13:14'),(89870,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','×__smsschedule/smsschedule','2021-03-01 14:13:16','2021-03-01 14:13:16'),(89871,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' スケジュール__smsschedule/status','2021-03-01 14:13:27','2021-03-01 14:13:27'),(89872,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6',' テンプレート__outschedule/index','2021-03-01 14:13:32','2021-03-01 14:13:32'),(89873,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','kamo__template/template','2021-03-01 14:16:17','2021-03-01 14:16:17'),(89874,'::1',NULL,'kamo_s','itifaftr0viio82o68fl0r2bg6','ログアウト__template/index','2021-03-01 14:16:17','2021-03-01 14:16:17'),(89875,'::1',NULL,'s_kamo','vfud0pee6iac2f4jqdnnqglc71',' アカウント管理__outschedule/index','2021-03-01 14:16:45','2021-03-01 14:16:45'),(89876,'::1',NULL,'s_kamo','vfud0pee6iac2f4jqdnnqglc71',' スケジュール__manageaccount/index','2021-03-01 14:17:04','2021-03-01 14:17:04'),(89877,'::1',NULL,'s_kamo','vfud0pee6iac2f4jqdnnqglc71',' アカウント管理__outschedule/index','2021-03-01 14:17:14','2021-03-01 14:17:14'),(89878,'::1',NULL,'s_kamo','vfud0pee6iac2f4jqdnnqglc71','選択項目を削除__manageaccount/index','2021-03-01 14:17:46','2021-03-01 14:17:46'),(89879,'::1',NULL,'kamo_s','qe7bma0jpiakn30lndq7hvlt55','kamo__outschedule/outschedule','2021-03-01 14:20:50','2021-03-01 14:20:50'),(89880,'::1',NULL,'kamo_s','qe7bma0jpiakn30lndq7hvlt55','ログアウト__outschedule/index','2021-03-01 14:20:51','2021-03-01 14:20:51'),(89881,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5',' アカウント管理__outschedule/index','2021-03-01 14:21:22','2021-03-01 14:21:22'),(89882,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5',' ユーザー管理__manageaccount/index','2021-03-01 14:21:32','2021-03-01 14:21:32'),(89883,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5','選択項目を削除__manageuser/index','2021-03-01 14:22:00','2021-03-01 14:22:00'),(89884,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5',' アカウント管理__manageuser/index','2021-03-01 14:22:22','2021-03-01 14:22:22'),(89885,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5',' ユーザー管理__manageaccount/index','2021-03-01 14:22:33','2021-03-01 14:22:33'),(89886,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5',' アカウント管理__manageuser/index','2021-03-01 14:22:38','2021-03-01 14:22:38'),(89887,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5',' ユーザー管理__manageaccount/index','2021-03-01 14:22:45','2021-03-01 14:22:45'),(89888,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5','閉じる__manageuser/index','2021-03-01 14:22:57','2021-03-01 14:22:57'),(89889,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5','\n			kamo\n			\n		__manageuser/manageuser','2021-03-01 14:23:26','2021-03-01 14:23:26'),(89890,'::1',NULL,'kamo_s','lsb5aj65jjnd5gru1kcr0d9ra5','ログアウト__manageuser/index','2021-03-01 14:23:27','2021-03-01 14:23:27'),(89891,'::1',NULL,'fabbi','bcjksenk0tmffampc9qsg3glh7',' アカウント管理__outschedule/index','2021-03-01 14:24:10','2021-03-01 14:24:10'),(89892,'::1',NULL,'fabbi','bcjksenk0tmffampc9qsg3glh7',' ユーザー管理__manageaccount/index','2021-03-01 14:24:17','2021-03-01 14:24:17'),(89893,'::1',NULL,'fabbi','bcjksenk0tmffampc9qsg3glh7','fabbi__manageuser/manageuser','2021-03-01 14:40:45','2021-03-01 14:40:45'),(89894,'::1',NULL,'fabbi','bcjksenk0tmffampc9qsg3glh7','ログアウト__manageuser/index','2021-03-01 14:40:45','2021-03-01 14:40:45'),(89895,'::1',NULL,'fabbi','bmr5m340ot9fcqhcs3feu54io5',' スケジュール__outschedule/index','2021-03-01 14:41:42','2021-03-01 14:41:42'),(89896,'::1',NULL,'fabbi','bmr5m340ot9fcqhcs3feu54io5',' 着信設定__smsschedule/index','2021-03-01 15:16:26','2021-03-01 15:16:26'),(89897,'::1',NULL,'fabbi','bmr5m340ot9fcqhcs3feu54io5',' スケジュール__inboundincominghistory/index','2021-03-01 16:29:43','2021-03-01 16:29:43'),(89898,'::1',NULL,'fabbi','bmr5m340ot9fcqhcs3feu54io5','新規登録__outschedule/index','2021-03-01 16:29:48','2021-03-01 16:29:48'),(89899,'::1',NULL,'fabbi','bmr5m340ot9fcqhcs3feu54io5',' テンプレート__outschedule/index','2021-03-01 16:47:19','2021-03-01 16:47:19'),(89900,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:01:32','2021-03-30 16:01:32'),(89901,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:01:39','2021-03-30 16:01:39'),(89902,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:03:48','2021-03-30 16:03:48'),(89903,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__downloadresult/index','2021-03-30 16:04:07','2021-03-30 16:04:07'),(89904,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 結果ログ一括DL__outschedule/index','2021-03-30 16:04:17','2021-03-30 16:04:17'),(89905,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:04:40','2021-03-30 16:04:40'),(89906,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:05:04','2021-03-30 16:05:04'),(89907,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:06:37','2021-03-30 16:06:37'),(89908,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:15:54','2021-03-30 16:15:54'),(89909,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:20:43','2021-03-30 16:20:43'),(89910,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 16:22:15','2021-03-30 16:22:15'),(89911,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:02:39','2021-03-30 17:02:39'),(89912,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:07:44','2021-03-30 17:07:44'),(89913,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__downloadresult/index','2021-03-30 17:08:06','2021-03-30 17:08:06'),(89914,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 結果ログ一括DL__outschedule/index','2021-03-30 17:10:50','2021-03-30 17:10:50'),(89915,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 着信拒否リスト__downloadresult/index','2021-03-30 17:29:56','2021-03-30 17:29:56'),(89916,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__inboundrestrict/index','2021-03-30 17:30:28','2021-03-30 17:30:28'),(89917,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 着信拒否リスト__outschedule/index','2021-03-30 17:31:07','2021-03-30 17:31:07'),(89918,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 結果ログ一括DL__inboundrestrict/index','2021-03-30 17:31:22','2021-03-30 17:31:22'),(89919,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:31:44','2021-03-30 17:31:44'),(89920,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' テンプレート__downloadresult/index','2021-03-30 17:34:59','2021-03-30 17:34:59'),(89921,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 着信拒否リスト__inboundtemplate/index','2021-03-30 17:35:11','2021-03-30 17:35:11'),(89922,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 結果ログ一括DL__inboundrestrict/index','2021-03-30 17:39:36','2021-03-30 17:39:36'),(89923,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:39:57','2021-03-30 17:39:57'),(89924,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:42:43','2021-03-30 17:42:43'),(89925,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:45:24','2021-03-30 17:45:24'),(89926,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 17:53:46','2021-03-30 17:53:46'),(89927,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__downloadresult/index','2021-03-30 17:54:53','2021-03-30 17:54:53'),(89928,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__smsschedule/index','2021-03-30 18:02:27','2021-03-30 18:02:27'),(89929,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__outschedule/index','2021-03-30 18:05:43','2021-03-30 18:05:43'),(89930,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 着信拒否リスト__smsschedule/index','2021-03-30 18:25:35','2021-03-30 18:25:35'),(89931,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 結果ログ一括DL__inboundrestrict/index','2021-03-30 18:25:39','2021-03-30 18:25:39'),(89932,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 18:25:57','2021-03-30 18:25:57'),(89933,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 18:35:50','2021-03-30 18:35:50'),(89934,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' スケジュール__downloadresult/index','2021-03-30 18:36:45','2021-03-30 18:36:45'),(89935,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 着信拒否リスト__smsschedule/index','2021-03-30 18:36:47','2021-03-30 18:36:47'),(89936,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','選択項目のDL__inboundrestrict/index','2021-03-30 18:36:50','2021-03-30 18:36:50'),(89937,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','選択項目のDL__inboundrestrict/index','2021-03-30 18:38:59','2021-03-30 18:38:59'),(89938,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 結果ログ一括DL__inboundrestrict/index','2021-03-30 18:40:08','2021-03-30 18:40:08'),(89939,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713','ダウンロード__downloadresult/downloadresult','2021-03-30 18:40:22','2021-03-30 18:40:22'),(89940,'::1',NULL,'fabbi','lguvu8t53ddqjnajfl54ims713',' 着信拒否リスト__downloadresult/index','2021-03-30 18:44:42','2021-03-30 18:44:42'),(89941,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信拒否リスト__outschedule/index','2021-03-31 15:50:09','2021-03-31 15:50:09'),(89942,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__inboundrestrict/index','2021-03-31 15:50:28','2021-03-31 15:50:28'),(89943,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__smsschedule/index','2021-03-31 16:49:34','2021-03-31 16:49:34'),(89944,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' メニュー管理__outschedule/index','2021-03-31 16:57:00','2021-03-31 16:57:00'),(89945,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__managemenu/index','2021-03-31 16:57:03','2021-03-31 16:57:03'),(89946,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信拒否リスト__inboundcalllist/index','2021-03-31 16:59:18','2021-03-31 16:59:18'),(89947,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信リスト__inboundrestrict/index','2021-03-31 16:59:21','2021-03-31 16:59:21'),(89948,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__inboundcalllist/index','2021-03-31 17:01:18','2021-03-31 17:01:18'),(89949,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信リスト__outschedule/index','2021-03-31 17:13:08','2021-03-31 17:13:08'),(89950,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信拒否リスト__inboundcalllist/index','2021-03-31 17:13:23','2021-03-31 17:13:23'),(89951,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信リスト__inboundrestrict/index','2021-03-31 17:13:25','2021-03-31 17:13:25'),(89952,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__inboundcalllist/index','2021-03-31 17:24:53','2021-03-31 17:24:53'),(89953,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__inboundincominghistory/index','2021-03-31 17:47:40','2021-03-31 17:47:40'),(89954,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信設定__outschedule/index','2021-03-31 17:47:54','2021-03-31 17:47:54'),(89955,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' メニュー管理__inboundincominghistory/index','2021-03-31 17:48:34','2021-03-31 17:48:34'),(89956,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' スケジュール__managemenu/index','2021-03-31 17:48:37','2021-03-31 17:48:37'),(89957,'::1',NULL,'fabbi','2fa10b47d1j5lmj5lmnd3oehv3',' 着信設定__smsschedule/index','2021-03-31 18:08:57','2021-03-31 18:08:57');
/*!40000 ALTER TABLE `t91_action_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t92_locks`
--

DROP TABLE IF EXISTS `t92_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t92_locks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `lock_flag` varchar(20) DEFAULT NULL COMMENT 'ロック種類	 schedule-script-list',
  `lock_id` varchar(20) DEFAULT NULL COMMENT 'ロックID',
  `use_user_id` varchar(64) DEFAULT NULL COMMENT 'ユーザーID',
  `session_id` varchar(128) DEFAULT NULL COMMENT '会社ID',
  `del_flag` varchar(1) DEFAULT 'N' COMMENT '操作内容',
  `created` datetime DEFAULT NULL COMMENT '登録日時',
  `entry_user` varchar(64) DEFAULT NULL COMMENT '登録ユーザー',
  `entry_program` varchar(64) DEFAULT NULL COMMENT '登録プログラム',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  `update_user` varchar(64) DEFAULT NULL COMMENT '更新ユーザー',
  `update_program` varchar(64) DEFAULT NULL COMMENT '更新プログラム',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='t92ロック';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t92_locks`
--

LOCK TABLES `t92_locks` WRITE;
/*!40000 ALTER TABLE `t92_locks` DISABLE KEYS */;
INSERT INTO `t92_locks` VALUES (1,'call_list','1','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 16:27:46','kamo_s','CallList_upload_file_start','2021-02-26 16:27:46','kamo_s','CallList_upload_file_done'),(2,'call_list','2','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 16:29:50','kamo_s','CallList_upload_file_start','2021-02-26 16:29:50','kamo_s','CallList_upload_file_done'),(3,'inbound_call_list','1','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 16:50:17','kamo_s','InboundCallList_upload_file_start','2021-02-26 16:50:17','kamo_s','InboundCallList_upload_file_end'),(4,'inbound_call_list','2','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 17:08:53','kamo_s','InboundCallList_upload_file_start','2021-02-26 17:08:53','kamo_s','InboundCallList_upload_file_end'),(5,'sms_template_list','1','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 17:15:56','kamo_s','SmsTemplate_add_sms_template_start','2021-02-26 17:15:56','kamo_s','SmsTemplate_add_sms_template_end'),(6,'upload_sms_send_list','1','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 17:17:39','kamo_s','SmsSendList_upload_file_start','2021-02-26 17:17:39','kamo_s','SmsSendList_upload_file_done'),(7,'upload_sms_send_list','2','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 17:18:47','kamo_s','SmsSendList_upload_file_start','2021-02-26 17:18:47','kamo_s','SmsSendList_upload_file_done'),(8,'sms_template_list','2','kamo_s','5ljqcto8caofm4o0dte8a8fan2','Y','2021-02-26 17:20:02','kamo_s','SmsTemplate_add_sms_template_start','2021-02-26 17:20:02','kamo_s','SmsTemplate_add_sms_template_end'),(9,'schedule','1','kamo_s','lf2kcsoori7vtbog6n1ldmuim3','Y','2021-03-01 11:21:09','kamo_s','OutSchedule_Update_Schedule','2021-03-01 11:21:09','kamo_s','OutSchedule_Update_Schedule'),(10,'call_list','3','kamo_s','vicfpcsl84ajugg8ao24pu37e7','Y','2021-03-01 12:11:23','kamo_s','CallList_upload_file_start','2021-03-01 12:11:23','kamo_s','CallList_upload_file_done'),(11,'incoming_history','0363863696','kamo_s','7cmn7prguj48vprq7p16h65rl1','Y','2021-03-01 12:49:34','kamo_s','InboundIncomingHistory_check_info_setting_inbound_start','2021-03-01 12:49:34','kamo_s','InboundIncomingHistory_save_end'),(12,'incoming_history','0363863696','kamo_s','7cmn7prguj48vprq7p16h65rl1','Y','2021-03-01 12:54:14','kamo_s','InboundIncomingHistory_check_info_setting_inbound_start','2021-03-01 12:54:14','kamo_s','InboundIncomingHistory_save_end'),(13,'upload_sms_send_list','3','kamo_s','itifaftr0viio82o68fl0r2bg6','Y','2021-03-01 14:07:04','kamo_s','SmsSendList_upload_file_start','2021-03-01 14:07:04','kamo_s','SmsSendList_upload_file_done');
/*!40000 ALTER TABLE `t92_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t93_sms_getstatus_log`
--

DROP TABLE IF EXISTS `t93_sms_getstatus_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t93_sms_getstatus_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` varchar(45) DEFAULT NULL,
  `ResStatus` varchar(10) DEFAULT NULL,
  `ResCount` varchar(10) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  `req_stat` varchar(10) DEFAULT NULL,
  `group_id` varchar(10) DEFAULT NULL,
  `service_id` varchar(10) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `to_address` varchar(20) DEFAULT NULL,
  `use_cr_find` varchar(1) DEFAULT NULL,
  `carrier_id` varchar(1) DEFAULT NULL,
  `message_no` varchar(20) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `encode` varchar(1) DEFAULT NULL,
  `permit_time` varchar(20) DEFAULT NULL,
  `sent_date` varchar(20) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `send_result` varchar(20) DEFAULT NULL,
  `result_status` varchar(20) DEFAULT NULL,
  `command_status` varchar(20) DEFAULT NULL,
  `network_error_code` varchar(20) DEFAULT NULL,
  `tracking_code` varchar(20) DEFAULT NULL,
  `partition_size` varchar(2) DEFAULT NULL,
  `use_jdg_find` varchar(1) DEFAULT NULL,
  `ResErrorCode` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t93_sms_getstatus_log`
--

LOCK TABLES `t93_sms_getstatus_log` WRITE;
/*!40000 ALTER TABLE `t93_sms_getstatus_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t93_sms_getstatus_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t94_company_hide_menus`
--

DROP TABLE IF EXISTS `t94_company_hide_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t94_company_hide_menus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` varchar(64) DEFAULT NULL,
  `menu_item_code` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `entry_user` varchar(64) DEFAULT NULL,
  `entry_program` varchar(64) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `update_user` varchar(64) DEFAULT NULL,
  `update_program` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t94_company_hide_menus`
--

LOCK TABLES `t94_company_hide_menus` WRITE;
/*!40000 ALTER TABLE `t94_company_hide_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `t94_company_hide_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t95_api_results`
--

DROP TABLE IF EXISTS `t95_api_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t95_api_results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `request_id` varchar(20) DEFAULT NULL,
  `api_name` varchar(50) DEFAULT NULL,
  `schedule_id` varchar(20) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t95_api_results`
--

LOCK TABLES `t95_api_results` WRITE;
/*!40000 ALTER TABLE `t95_api_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `t95_api_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t96_api_logs`
--

DROP TABLE IF EXISTS `t96_api_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t96_api_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) DEFAULT NULL,
  `request_id` varchar(20) DEFAULT NULL,
  `client_ip` varchar(20) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `api_name` varchar(50) DEFAULT NULL,
  `in_json_data` text,
  `status` varchar(1) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `response_code` varchar(20) DEFAULT NULL,
  `response_body` text,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_request_id` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t96_api_logs`
--

LOCK TABLES `t96_api_logs` WRITE;
/*!40000 ALTER TABLE `t96_api_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t96_api_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t97_api_request_ids`
--

DROP TABLE IF EXISTS `t97_api_request_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t97_api_request_ids` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `request_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_request_id` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t97_api_request_ids`
--

LOCK TABLES `t97_api_request_ids` WRITE;
/*!40000 ALTER TABLE `t97_api_request_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `t97_api_request_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t98_login_page_infos`
--

DROP TABLE IF EXISTS `t98_login_page_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t98_login_page_infos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(30) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT 'N',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t98_login_page_infos`
--

LOCK TABLES `t98_login_page_infos` WRITE;
/*!40000 ALTER TABLE `t98_login_page_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `t98_login_page_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-01  8:32:37
