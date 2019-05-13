-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 192.168.0.108    Database: prolike
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `sex_id` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cntry` (`country_id`),
  KEY `cities` (`city_id`),
  KEY `sesso` (`sex_id`),
  KEY `fid` (`photo_id`),
  CONSTRAINT `cities` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cntry` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fid` FOREIGN KEY (`photo_id`) REFERENCES `foto` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `sesso` FOREIGN KEY (`sex_id`) REFERENCES `sex` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alika',NULL,NULL,NULL,NULL,NULL,NULL,'Alika@bbc.com',NULL,NULL),(2,'Eugene',NULL,NULL,NULL,NULL,NULL,NULL,'123@best.it',NULL,NULL),(3,'Marfa',NULL,NULL,NULL,NULL,NULL,NULL,'mi11@ya.com',NULL,NULL),(4,'Harry',NULL,NULL,NULL,NULL,NULL,NULL,'hht@mail.fr',NULL,NULL),(5,'Daniel',NULL,NULL,NULL,NULL,NULL,NULL,'daniel22@google.br',NULL,NULL),(6,'Abigail',NULL,NULL,NULL,NULL,NULL,NULL,'abi@google.com',NULL,NULL),(7,'Ethan',NULL,NULL,NULL,NULL,1,NULL,'ethh@bbc.com',6,15),(8,'Eugene',NULL,NULL,NULL,NULL,1,NULL,'john@best.it',4,7),(9,'Maria',NULL,NULL,NULL,NULL,2,NULL,'mia@ya.com',2,3),(10,'Harry',NULL,NULL,NULL,NULL,1,NULL,'hot@mail.fr',5,11),(11,'Dany',NULL,NULL,NULL,NULL,1,NULL,'dan@google.br',6,15),(12,'Olivia',NULL,NULL,NULL,NULL,2,NULL,'ollii@google.com',4,9),(13,'Emma','Moon','Moon',NULL,NULL,2,NULL,'em@bbc.com',6,16),(14,'John','Brown','Jo',NULL,NULL,1,NULL,'joB@best.it',2,5),(15,'Chloe','McClone','clone',NULL,NULL,2,NULL,'mcc@ya.com',2,4),(16,'Jacob','Monarch','Jaco',NULL,NULL,3,NULL,'jaco@mail.fr',8,17),(17,'Mattew','Horn','Mot',NULL,NULL,1,NULL,'mt@google.br',6,14),(18,'Olivia','Look','Loli',NULL,NULL,4,NULL,'ol44@google.com',5,12);
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

-- Dump completed on 2019-05-13 13:45:18
