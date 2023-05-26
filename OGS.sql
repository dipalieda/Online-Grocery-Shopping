CREATE DATABASE  IF NOT EXISTS `onlinegroceryshopping` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `onlinegroceryshopping`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: onlinegroceryshopping
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `so_cart`
--

DROP TABLE IF EXISTS `so_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_cart` (
  `ID` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `pruductName` varchar(225) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `finalAmount` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_so_cart` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `FK_so_cart` FOREIGN KEY (`userId`) REFERENCES `so_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `so_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `so_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_cart`
--

LOCK TABLES `so_cart` WRITE;
/*!40000 ALTER TABLE `so_cart` DISABLE KEYS */;
INSERT INTO `so_cart` VALUES (1,5,'Bhupi patel',1,'pro',0,0,NULL,NULL,'2019-11-10 06:03:46','2019-11-10 06:03:46');
/*!40000 ALTER TABLE `so_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_category`
--

DROP TABLE IF EXISTS `so_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_category` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `image` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_category`
--

LOCK TABLES `so_category` WRITE;
/*!40000 ALTER TABLE `so_category` DISABLE KEYS */;
INSERT INTO `so_category` VALUES (1,'CatOne','This','16067687197_4717a8096b_b.jpg','Admin@gmail.com','Admin@gmail.com','2019-11-10 05:56:40','2019-11-10 05:56:54'),(2,'Vegs','gfghfd','download (1).jpg','Admin@gmail.com','Admin@gmail.com','2019-11-10 05:57:30','2019-11-10 05:57:30'),(3,'cosmatic','fgege','images (1).jpg','Admin@gmail.com','Admin@gmail.com','2019-11-10 05:57:55','2019-11-10 05:57:55');
/*!40000 ALTER TABLE `so_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_contect`
--

DROP TABLE IF EXISTS `so_contect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_contect` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `message` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_contect`
--

LOCK TABLES `so_contect` WRITE;
/*!40000 ALTER TABLE `so_contect` DISABLE KEYS */;
INSERT INTO `so_contect` VALUES (1,'Hariom Mukati','Hariom@gmail.com','dbvisbwdivbeibvb nvob','root','root','2019-07-28 20:40:02','2019-07-28 20:40:02');
/*!40000 ALTER TABLE `so_contect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_invoice`
--

DROP TABLE IF EXISTS `so_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_invoice` (
  `ID` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `productName` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `shippingAddress` varchar(755) DEFAULT NULL,
  `billingAddress` varchar(755) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `productDescription` varchar(755) DEFAULT NULL,
  `productImage` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_invoice`
--

LOCK TABLES `so_invoice` WRITE;
/*!40000 ALTER TABLE `so_invoice` DISABLE KEYS */;
INSERT INTO `so_invoice` VALUES (1,200101,3,'Demo Demo',4,'Games Poro','2019-07-29',155,'9565415598','wwef','wffef','Hariom@gmail.com','H wrfwerf jbwkeguf dochohr9e shvyer soadfher9t .','istockphoto-809275266-612x612.jpg',NULL,NULL,'2019-07-29 08:46:59','2019-07-29 08:46:59');
/*!40000 ALTER TABLE `so_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_product`
--

DROP TABLE IF EXISTS `so_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_product` (
  `ID` bigint(20) NOT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `categoryName` varchar(225) DEFAULT NULL,
  `productCode` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_so_product` (`categoryId`),
  CONSTRAINT `FK_so_product` FOREIGN KEY (`categoryId`) REFERENCES `so_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_product`
--

LOCK TABLES `so_product` WRITE;
/*!40000 ALTER TABLE `so_product` DISABLE KEYS */;
INSERT INTO `so_product` VALUES (1,1,'CatOne',100101,'pro','ghgfhf',222,'download.jpg','Admin@gmail.com','Admin@gmail.com','2019-11-10 05:58:28','2019-11-10 05:58:28'),(2,2,'Vegs',100102,'grttgr','dfds',233,'images.jpg','Admin@gmail.com','Admin@gmail.com','2019-11-10 05:59:36','2019-11-10 05:59:36');
/*!40000 ALTER TABLE `so_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_role`
--

DROP TABLE IF EXISTS `so_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_role`
--

LOCK TABLES `so_role` WRITE;
/*!40000 ALTER TABLE `so_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `so_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_user`
--

DROP TABLE IF EXISTS `so_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_user` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `shippingAddress` varchar(755) DEFAULT NULL,
  `billingAddress` varchar(755) DEFAULT NULL,
  `emailAddress` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_user`
--

LOCK TABLES `so_user` WRITE;
/*!40000 ALTER TABLE `so_user` DISABLE KEYS */;
INSERT INTO `so_user` VALUES (2,'Admin','Admin','Admin@gmail.com','Admin@321','9165415598',1,NULL,NULL,'Admin@gmail.com','Admin@gmail.com','Admin@gmail.com','2019-07-25 03:35:00','2019-07-24 08:43:15'),(3,'Demo','Demo','Demo@gmail.com','Demo@123','9565415598',2,'wwef','wffef','Hariom@gmail.com','root','root','2019-07-26 15:02:04','2019-07-26 15:02:04'),(4,'Bhupi','Patidar','Bhupi','Demo@123','9858963569',2,'dgdfgdgdgf','dfhfdhfdhg fgd','bhupi@gmail.com','root','root','2019-09-01 06:08:57','2019-09-01 06:09:23'),(5,'Bhupi','patel','bhupi@gmail.com','Demo@123','8858858585',2,'gbd','rgree','bhupi@gmail.com','root','root','2019-11-10 06:00:56','2019-11-10 06:00:56'),(6,'fgd','fgd','bhupfi@gmail.com','Demo@123','8585858585',2,'gbddsfd','dgdfg','cust@gmail.com','root','root','2019-11-10 06:55:20','2019-11-10 06:55:20'),(7,'Samson','Dean','Necessitatibus@gmail.com','Pa$$w0rd!','7858258965',2,'Duis est eligendi au','Tenetur at nemo proi','pyvirusanu@mailinator.net','root','root','2019-11-10 07:01:51','2019-11-10 07:01:51');
/*!40000 ALTER TABLE `so_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 12:45:52
