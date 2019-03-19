-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	8.0.13


--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `discount_applied` varchar(255) DEFAULT NULL,
  `gift_wrapped` varchar(255) DEFAULT NULL,
  `mrp_price` varchar(255) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_sku` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (162,'','','20000',161,'20000',1,'mobile','sam1','1'),(164,'','','20000',163,'20000',1,'mobile','sam1','1'),(166,'','','20000',165,'20000',1,'mobile','sam1','1'),(168,'','','20000',167,'20000',1,'mobile','sam1','1'),(170,'','','20000',169,'20000',1,'mobile','sam1','1'),(172,'','','20000',171,'20000',1,'mobile','sam1','1'),(174,'','','20000',173,'20000',1,'mobile','sam1','1'),(176,'','','20000',175,'20000',1,'mobile','sam1','1'),(177,'','','500',175,'20000',2,'headset','headset2','1'),(179,'','','20000',178,'20000',1,'mobile','sam1','1'),(180,'','','500',178,'20000',2,'headset','headset2','1'),(182,'','','20000',181,'20000',1,'mobile','sam1','1'),(183,'','','500',181,'20000',2,'headset','headset2','1'),(185,'','','3000',184,'3000',1,'jeans','j123','2'),(187,'','','3000',186,'3000',1,'jeans','j123','2'),(189,'','','3000',188,'3000',1,'jeans','j123','2'),(195,'','','20000',194,'20000',11,'Godrej Ac','Ac','2'),(197,'0','YES','10.0',196,'5.0',0,'Red Mi','141414','1'),(198,'0','YES','18.0',0,'5.0',1,'Red Mi 2','161420','2'),(199,'0','YES','15.0',196,'5.0',1,'Red Mi 3','161421','2'),(200,'0','NO','14.0',196,'5.0',1,'Red Mi 4','171421','2'),(202,'0','NO','10.0',201,'5.0',0,'Red Mi 5','141414','1'),(204,'0','NO','20.0',0,'5000.0',0,'Red Mi 6','1414146','1'),(207,'0','YES','10.0',206,'5.0',0,'Red Mi','141414','1'),(209,'0','no','10.0',0,'5.0',0,'Red Mi','141414','1'),(211,'0','YES','10.0',210,'5.0',0,'Red Mi','141414','1'),(213,'0','YES','10.0',212,'5.0',0,'honor','141414','1'),(215,'0','YES','10.0',214,'5.0',0,'honor','141414','1'),(218,'','','2000',217,'string',1,'charger','12345','1'),(220,'0','YES','10.0',219,'5.0',0,'Red Mi','141414','1'),(222,'0','YES','10.0',221,'5.0',0,'samsung','141414','1'),(224,'0','YES','10.0',223,'5.0',0,'Red Mi','141414','1'),(226,'0','YES','10.0',225,'5.0',0,'motoe','141414','1'),(228,'0','YES','10.0',227,'5.0',0,'motoe','141414','1'),(230,'1.0','YES','10.0',0,'4.0',0,'latopbag','1414514','2'),(232,'0','YES','10.0',0,'5.0',0,'Red Mi','141414','1'),(233,'0','YES','10.0',0,'5.0',0,'Red Mi','141414','1'),(234,'0','YES','10.0',231,'5.0',0,'Red Mi','141414','1'),(235,'0','YES','10.0',231,'5.0',0,'Red Mi','141414','1'),(237,'0','YES','10.0',236,'5.0',0,'Red Mi','141414','1'),(239,NULL,NULL,NULL,238,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(248,'0','YES','10.0',247,'5.0',0,'Red Mi','141414','1'),(250,NULL,NULL,NULL,249,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(252,NULL,NULL,NULL,251,'1024',102,'Redmi','RDME-BK-5',NULL),(254,NULL,NULL,NULL,253,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(256,NULL,NULL,NULL,255,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(258,NULL,NULL,NULL,257,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(260,NULL,NULL,NULL,259,'1024',102,'Redmi','RDME-BK-5',NULL),(262,NULL,NULL,NULL,261,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(264,NULL,NULL,NULL,263,'1024',102,'Redmi','RDME-BK-5',NULL),(266,NULL,NULL,NULL,265,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(268,NULL,NULL,NULL,267,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(270,NULL,NULL,NULL,269,'1024',102,'Redmi','RDME-BK-5',NULL),(272,NULL,NULL,NULL,271,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(274,NULL,NULL,NULL,273,'1024',102,'Redmi','RDME-BK-5',NULL),(276,NULL,NULL,NULL,275,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(278,NULL,NULL,NULL,277,'1100',102,'Redmi','SAMSUNG-BK-5',NULL),(280,NULL,NULL,NULL,279,'1024',102,'Redmi','RDME-BK-5',NULL);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 15:18:27
