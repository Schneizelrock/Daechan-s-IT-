-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `cand`
--

DROP TABLE IF EXISTS `cand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cand` (
  `id` varchar(15) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `Sec` varchar(4) DEFAULT NULL,
  `vC` int(3) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `cand_ibfk_1` FOREIGN KEY (`id`) REFERENCES `login` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cand`
--

LOCK TABLES `cand` WRITE;
/*!40000 ALTER TABLE `cand` DISABLE KEYS */;
INSERT INTO `cand` VALUES ('2015CSE001','alice','2',NULL),('2015CSE002','barry','2',NULL),('2015CSE003','carl','2',NULL);
/*!40000 ALTER TABLE `cand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus`
--

DROP TABLE IF EXISTS `cus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus` (
  `id` int(5) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus`
--

LOCK TABLES `cus` WRITE;
/*!40000 ALTER TABLE `cus` DISABLE KEYS */;
INSERT INTO `cus` VALUES (1,'john'),(2,'jack'),(3,'daniel'),(4,'camilla');
/*!40000 ALTER TABLE `cus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `voted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('2015CSE001','alice','1234','\0'),('2015CSE002','barry','qwerty','\0'),('2015CSE003','carl','asdf','\0');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ol`
--

DROP TABLE IF EXISTS `ol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ol` (
  `pid` varchar(15) NOT NULL,
  `oid` int(5) NOT NULL,
  `quan` int(4) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pid`,`oid`),
  KEY `oid` (`oid`),
  CONSTRAINT `ol_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `prd` (`pid`),
  CONSTRAINT `ol_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `ordr` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ol`
--

LOCK TABLES `ol` WRITE;
/*!40000 ALTER TABLE `ol` DISABLE KEYS */;
/*!40000 ALTER TABLE `ol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordr`
--

DROP TABLE IF EXISTS `ordr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordr` (
  `oid` int(5) NOT NULL,
  `id` int(5) DEFAULT NULL,
  `odate` date DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `id` (`id`),
  CONSTRAINT `ordr_ibfk_1` FOREIGN KEY (`id`) REFERENCES `cus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordr`
--

LOCK TABLES `ordr` WRITE;
/*!40000 ALTER TABLE `ordr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd`
--

DROP TABLE IF EXISTS `prd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prd` (
  `pid` varchar(5) NOT NULL,
  `sprice` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd`
--

LOCK TABLES `prd` WRITE;
/*!40000 ALTER TABLE `prd` DISABLE KEYS */;
/*!40000 ALTER TABLE `prd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18 13:47:27
