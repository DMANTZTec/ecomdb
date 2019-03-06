-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: userapp
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `size` varchar(10) NOT NULL,
  `categorie` varchar(20) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `description` varchar(250) NOT NULL,
  `url` varchar(60) NOT NULL,
  `brand` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (108,'Shirt','m','MEN',850.55,'Slim Fit , Fabric: 100% Cotton , Full Sleeve ,Casual Shirts','https://bit.ly/2Szb3od','PUMA'),(167,'Jeans','m','WOMEN',1500.00,'Material Type: Denim','https://bit.ly/2X0T1cX','PUMA'),(183,'SweatShirt','m','MEN',962.00,'Fit Type: Regular Fit','https://bit.ly/2DEX5GK','PUMA'),(249,'T-Shirt','s','MEN',2500.00,'Comfort: Fashionably cotton hoodies that you have wore till now','https://bit.ly/2TLDI5J','PUMA'),(250,'Kurtha','m,l,xl','MEN',510.00,'Made from Fine Quality Fabric','https://bit.ly/2E6Wcbs','NIKI'),(269,'Jacket','m','MEN',899.00,'Fit Type: Regular Fit','https://bit.ly/2StirRQ','NIKI'),(270,'Tops','m','WOMEN',700.00,'Fit Type: Regular Fit','https://bit.ly/2TLql5v','NIKI'),(343,'T-Shirt','m','KIDS',528.00,'Care Instructions: Normal wash or machine wash only','https://bit.ly/2tnzx4o','PUMA'),(349,'Jeans','m','MEN',900.00,'Fit Type: Regular Fit','https://bit.ly/2BzmoKp','REEBOK'),(360,'Jeans','m','KIDS',500.00,'Silky Stretchable Denim','https://bit.ly/2STEzEw','NIKI'),(379,'Kurtha Set','s','KIDS',474.00,'Care Instructions: Hand Wash','https://bit.ly/2BxIwor','REEBOK'),(389,'Sarees','m','WOMEN',3000.00,'Saree Length :-5.5 Meters Length Of Blouse :- 0.80 Meters Width Of Saree :- 112 C.M','https://bit.ly/2WXyg1D','PUMA'),(390,'Chudidar','s,m,xl','WOMEN',1345.00,'Fabric: Cotton','https://bit.ly/2ti6G1H','NIKI');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_dir`
--

DROP TABLE IF EXISTS `catalog_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `catalog_dir` (
  `catalog_id` int(11) NOT NULL,
  `parent_catalog_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `store_id` int(4) NOT NULL,
  PRIMARY KEY (`catalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_dir`
--

LOCK TABLES `catalog_dir` WRITE;
/*!40000 ALTER TABLE `catalog_dir` DISABLE KEYS */;
INSERT INTO `catalog_dir` VALUES (1,0,1,'MEN','Mens',1),(2,0,1,'WOMEN','Womens',1),(3,1,2,'CLOTHS','Mens Cloths',1),(4,2,2,'CLOTHS','Womens Cloths',1),(5,3,3,'PANTS','Pants',1),(6,4,3,'SAREES','Sarees',1),(7,3,3,'SHIRTS','Shirts',1),(8,5,1,'KIDS','kids',1),(9,0,2,'CLOTHS','kids cloths',1),(10,9,3,'JEANS','kid jeans',1),(11,4,3,'JEANS','women\'s jeans',1),(12,3,3,'SWEATSHIRT','men\'s sweatshirt',1),(13,3,3,'T-Shirt','men\'s T-shirt',1),(14,3,3,'KURTHA','men\'s kurtha',1),(15,3,3,'JACKET','men\'s jacket',1),(16,4,3,'TOPS','women\'s',1),(17,9,3,'T-SHIRT','kid\'s',1),(18,3,3,'JEANS','men\'s',1),(19,9,3,'JEANS','kid\'s',1),(20,9,3,'KURTHA SET','kid\'s',1),(21,4,3,'SAREES','women\'s',1),(22,4,3,'CHUDIDHAR','women\'s',1),(23,0,1,'GOLD','Gold Ornaments',2),(24,0,1,'SILVER','All Silver Items',2),(25,0,1,'DIAMONDS','All Diamond Items',2),(26,23,2,'NECKLACES','GOLD NECKLACES',2),(27,23,2,'BRACELATES','GOLD braclets',2),(28,23,2,'ANKLETS','Gold Anklets',2),(29,23,2,'RINGS','Gold Rings',2),(30,29,3,'EAR RINGS','Gold Earrings',2),(31,23,2,'BANGLES','Gold Bangles',2),(32,31,3,'STONE BANGLES','Gold Stone Bangles',2),(33,24,2,'POOJA ITEMS','All Pooja Items',2),(34,33,3,'DIYAS','Silver Diyas',2),(35,24,2,'DINNER SETS','All Dinner Sets',2),(36,35,3,'PLATES','All Silver Plates',2),(37,24,2,'MOMENTOES','All Silver Momentoe',2),(38,37,3,'SPORTS','All Silver Sports',2),(39,25,2,'WATCH','All Diamond Watches',2),(40,39,3,'CHAIN WATCH','All Chain Watches',2),(41,25,2,'DIAMOND RINGS','All Diamond Rings',2),(42,41,3,'PEARLS','PEARL STONE',2),(43,25,2,'DIAMOND NECKLACE','All Diamond Necklace',2),(44,43,3,'UNCUT NECKLACE','All Uncut Necklace',2);
/*!40000 ALTER TABLE `catalog_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `options` (
  `option_id` int(4) NOT NULL,
  `option_name` varchar(10) NOT NULL,
  `option_value` varchar(10) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'color','blue'),(2,'color','red'),(3,'size','s'),(4,'size','m'),(5,'size','l'),(6,'length','8 meters');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `product_id` int(8) NOT NULL,
  `product_name` varchar(80) NOT NULL,
  `product_desc` varchar(150) NOT NULL,
  `search_tag` varchar(25) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Men\'s Checkered Casual Spread Shirt','men\'s shirts','men\'s shirt'),(2,'Regular Women\'s Black Jeans','women jeans','women jeans'),(3,'Full Sleeve Solid Men\'s Sweatshirt','mens sweatshirt','mens sweatshirt'),(4,'Solid Men Round Neck White T-Shirt','Fabric: cotten','mens t.shirt'),(5,'Men\'s Solid Straight Kurta','Fabric: cotten','mens kurthas'),(6,'Full Sleeve Solid Men Jacket','color:  khaki','men\'s jackets'),(7,'Casual Full Sleeve Solid Women\'s Light Blue Top','high neck,full sleeves','top\'s'),(8,'Boy\'s Solid Cotton T Shirt','Brand color: yellow',' kids t shirts'),(9,'Tapered Fit Men Blue Jeans','Fabric: 80% Cotton 20% Polyester','men\'s jeans'),(10,'Regular Boys Blue Jeans','Fabric: 77% Cotton, 21.5% Polyester and 1.5% Elastane','kid\'s jeans'),(11,'Boy\'s Festive & Party Kurta','Brand Color: PINK','kid\'s kurtha set'),(12,'Embroidered Bollywood Light Green, Light Blue Georgette Saree','Pattern: Embroidered','sarees'),(13,'Saara Poly Chanderi Embroidered Kurta & Churidar Material ','Occasion: Party & Festive','chudidhar');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_catalog_dir`
--

DROP TABLE IF EXISTS `product_catalog_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_catalog_dir` (
  `product_catalog_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `primary_flg` varchar(10) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  PRIMARY KEY (`product_catalog_id`),
  UNIQUE KEY `pcd_product_catalog_idx` (`catalog_id`,`product_id`),
  KEY `catalog_id_idx` (`catalog_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `pcd_catalog_id_fk` FOREIGN KEY (`catalog_id`) REFERENCES `catalog_dir` (`catalog_id`),
  CONSTRAINT `pcd_product_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_catalog_dir`
--

LOCK TABLES `product_catalog_dir` WRITE;
/*!40000 ALTER TABLE `product_catalog_dir` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_catalog_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sku`
--

DROP TABLE IF EXISTS `product_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_sku` (
  `product_sku_id` int(4) NOT NULL,
  `product_id` int(4) NOT NULL,
  `price_amt` int(8) NOT NULL,
  `url` varchar(150) NOT NULL,
  PRIMARY KEY (`product_sku_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sku`
--

LOCK TABLES `product_sku` WRITE;
/*!40000 ALTER TABLE `product_sku` DISABLE KEYS */;
INSERT INTO `product_sku` VALUES (1,1,850,'https://bit.ly/2Szb3od'),(2,1,900,'https://bit.ly/2Szb3od'),(3,2,1500,'https://bit.ly/2X0T1cX'),(4,2,1550,'https://bit.ly/2X0T1cX'),(5,3,962,'https://bit.ly/2DEX5GK'),(6,3,1000,'https://bit.ly/2DEX5GK'),(7,4,2500,'https://bit.ly/2TLDI5J'),(8,4,2400,'https://bit.ly/2TLDI5J'),(9,5,570,'https://bit.ly/2E6Wcbs'),(10,5,525,'https://bit.ly/2E6Wcbs'),(11,6,899,'https://bit.ly/2StirRQ'),(12,6,850,'https://bit.ly/2StirRQ'),(13,7,700,'https://bit.ly/2TLql5v'),(14,7,750,'https://bit.ly/2TLql5v'),(15,8,528,'https://bit.ly/2tnzx4o'),(16,8,500,'https://bit.ly/2tnzx4o'),(17,9,900,'https://bit.ly/2BzmoKp'),(18,9,950,'https://bit.ly/2BzmoKp'),(19,10,500,'https://bit.ly/2STEzEw'),(20,10,600,'https://bit.ly/2STEzEw'),(21,11,474,'https://bit.ly/2BxIwor'),(22,11,550,'https://bit.ly/2BxIwor'),(23,12,3000,'https://bit.ly/2WXyg1D'),(24,13,600,'https://bit.ly/2ti6G1H'),(25,13,650,'https://bit.ly/2ti6G1H');
/*!40000 ALTER TABLE `product_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sku_option`
--

DROP TABLE IF EXISTS `product_sku_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_sku_option` (
  `product_option_id` int(4) NOT NULL,
  `product_sku_id` int(4) NOT NULL,
  `option_id` int(4) NOT NULL,
  PRIMARY KEY (`product_option_id`),
  UNIQUE KEY `pso_product_sku_option_idx` (`product_sku_id`,`option_id`),
  KEY `product_sku_id_idx` (`product_sku_id`),
  KEY `option_id_idx` (`option_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `option_id` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`),
  CONSTRAINT `product_sku_id` FOREIGN KEY (`product_sku_id`) REFERENCES `product_sku` (`product_sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sku_option`
--

LOCK TABLES `product_sku_option` WRITE;
/*!40000 ALTER TABLE `product_sku_option` DISABLE KEYS */;
INSERT INTO `product_sku_option` VALUES (1,1,1),(2,1,4),(3,2,2),(4,2,5),(5,3,1),(6,3,4),(7,4,2),(8,4,4),(9,5,1),(10,5,3),(11,6,2),(12,6,4),(13,7,2),(14,7,4),(15,8,1),(16,8,4),(17,9,2),(18,9,4),(19,10,1),(20,10,4),(21,11,2),(22,11,4),(23,12,1),(24,12,3),(25,13,1),(26,13,4),(27,14,2),(28,14,5),(29,15,2),(30,15,4),(31,16,1),(32,16,3),(33,17,2),(34,17,4),(35,18,1),(36,18,5),(37,19,2),(38,19,3),(39,20,1),(40,20,4),(41,21,1),(42,21,3),(43,22,2),(44,22,4),(45,23,6),(46,24,1),(47,24,4),(48,25,2),(49,25,5);
/*!40000 ALTER TABLE `product_sku_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_up`
--

DROP TABLE IF EXISTS `sign_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sign_up` (
  `user_id` int(11) NOT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_up`
--

LOCK TABLES `sign_up` WRITE;
/*!40000 ALTER TABLE `sign_up` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign_up` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-05 15:31:08
