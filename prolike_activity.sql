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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initiator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `clause_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator` (`initiator_id`),
  KEY `user` (`user_id`),
  KEY `what` (`clause_id`),
  KEY `like` (`type_id`),
  CONSTRAINT `initiator` FOREIGN KEY (`initiator_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `like` FOREIGN KEY (`type_id`) REFERENCES `liketype` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `what` FOREIGN KEY (`clause_id`) REFERENCES `clause` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,1,2,1,1,2),(2,2,3,1,1,3),(3,3,4,2,2,3),(4,4,5,3,3,5),(5,5,4,1,4,11),(6,5,2,2,1,2),(7,9,11,1,2,11),(8,11,7,1,3,16),(9,11,7,1,3,14),(10,11,2,1,2,2),(11,11,3,2,2,8),(12,13,1,3,2,15),(13,1,12,1,1,12),(14,16,5,1,1,5),(15,12,1,1,1,1),(16,12,2,1,1,2),(17,12,3,1,1,3),(18,12,4,1,1,4),(19,12,5,1,1,5),(20,12,6,1,1,6),(21,12,7,1,1,7),(22,12,8,1,1,8),(23,12,11,1,1,11),(24,12,13,1,1,13),(25,12,14,1,1,14),(26,1,15,1,1,15),(27,1,16,1,1,16),(28,1,17,1,1,17),(29,1,18,1,1,18);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 13:45:21
