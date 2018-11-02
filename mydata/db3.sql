-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: db3
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `bjtab`
--

DROP TABLE IF EXISTS `bjtab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bjtab` (
  `stu_id` int(11) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `money` smallint(6) DEFAULT NULL,
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `bjtab_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `jftab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bjtab_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `jftab` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bjtab`
--

LOCK TABLES `bjtab` WRITE;
/*!40000 ALTER TABLE `bjtab` DISABLE KEYS */;
/*!40000 ALTER TABLE `bjtab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `c_name` varchar(15) DEFAULT NULL,
  `cfather_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,131100,'石家庄市',130000),(2,131101,'沧州市',130000),(3,131102,'廊坊市',130000),(4,131103,'西安市',140000),(5,131104,'成都市',150000),(6,131105,'重庆市',150000),(7,131106,'广州市',160000),(8,131107,'济南市',170000),(9,131108,'武汉市',180000),(10,131109,'郑州市',190000),(11,131110,'北京市',320000),(12,131111,'天津市',320000),(13,131112,'上海市',320000),(14,131113,'哈尔滨',320001),(15,131114,'雄安新区',320002);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jftab`
--

DROP TABLE IF EXISTS `jftab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jftab` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `class` char(5) DEFAULT 'AID',
  `money` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jftab`
--

LOCK TABLES `jftab` WRITE;
/*!40000 ALTER TABLE `jftab` DISABLE KEYS */;
INSERT INTO `jftab` VALUES (2,'点秋香','AID08',200);
/*!40000 ALTER TABLE `jftab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheng`
--

DROP TABLE IF EXISTS `sheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `s_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheng`
--

LOCK TABLES `sheng` WRITE;
/*!40000 ALTER TABLE `sheng` DISABLE KEYS */;
INSERT INTO `sheng` VALUES (1,130000,'河北省'),(2,140000,'陕西省'),(3,150000,'四川省'),(4,160000,'广东省'),(5,170000,'山东省'),(6,180000,'湖北省'),(7,190000,'河南省'),(8,200000,'海南省'),(9,200001,'云南省'),(10,200002,'山西省');
/*!40000 ALTER TABLE `sheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t2` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `phnumber` char(11) DEFAULT NULL,
  `cardnum` char(18) DEFAULT NULL,
  UNIQUE KEY `phnumber` (`phnumber`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` VALUES (1,NULL,NULL,'13838383838',NULL);
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t3`
--

DROP TABLE IF EXISTS `t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t3` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  KEY `score` (`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t3`
--

LOCK TABLES `t3` WRITE;
/*!40000 ALTER TABLE `t3` DISABLE KEYS */;
/*!40000 ALTER TABLE `t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t4`
--

DROP TABLE IF EXISTS `t4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t4` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t4`
--

LOCK TABLES `t4` WRITE;
/*!40000 ALTER TABLE `t4` DISABLE KEYS */;
INSERT INTO `t4` VALUES (100,'张无忌'),(101,'小赵'),(103,'赵明'),(104,'赵小'),(105,'大壮');
/*!40000 ALTER TABLE `t4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xian`
--

DROP TABLE IF EXISTS `xian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x_id` int(11) DEFAULT NULL,
  `x_name` varchar(15) DEFAULT NULL,
  `xfather_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xian`
--

LOCK TABLES `xian` WRITE;
/*!40000 ALTER TABLE `xian` DISABLE KEYS */;
INSERT INTO `xian` VALUES (1,132100,'正定县',131100),(2,132102,'浦东新区',131112),(3,132103,'武昌区',131108),(4,132104,'哈哈',131115),(5,132105,'安新县',131114),(6,132106,'容城县',131114),(7,132107,'雄县',131114),(8,132108,'嘎嘎',131115);
/*!40000 ALTER TABLE `xian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10 11:25:42
