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
  `del_flag` varchar(1) DEFAULT 'N',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t81 着信結果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t81_incoming_results`
--

LOCK TABLES `t81_incoming_results` WRITE;
/*!40000 ALTER TABLE `t81_incoming_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `t81_incoming_results` ENABLE KEYS */;
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
