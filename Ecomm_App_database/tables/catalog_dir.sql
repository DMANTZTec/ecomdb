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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-05 16:05:57
