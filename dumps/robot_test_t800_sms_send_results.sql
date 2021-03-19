-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: robot_test
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

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
  `del_flag` varchar(1) DEFAULT 'N',
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
INSERT INTO `t800_sms_send_results` VALUES (1,'1','09000000005','dr691d4ff4a98e987b7b9df88c6f6404d8',NULL,'N','2021-03-01 13:55:03','0000-00-00 00:00:00','success','','','2021-03-01 13:55:04',NULL,'Send_Sms_V2','2021-03-01 13:56:03',NULL,'GetSendStatus');
/*!40000 ALTER TABLE `t800_sms_send_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 16:17:47
