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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `clause_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `text` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_k` (`author_id`),
  KEY `reason` (`clause_id`),
  CONSTRAINT `reason` FOREIGN KEY (`clause_id`) REFERENCES `clause` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_k` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,5,1,7,'nice','2019-05-07 00:00:00',NULL),(2,2,4,4,'cool','2019-05-07 00:00:00',NULL),(3,11,2,6,'the best!','2019-05-07 00:00:00',NULL),(4,8,3,1,'absolutely!','2019-05-07 00:00:00',NULL),(5,5,1,11,'nice','2019-05-07 00:00:00',NULL),(6,2,4,1,'cool','2019-05-07 00:00:00',NULL),(7,11,2,6,'the best!','2019-05-07 00:00:00',NULL),(8,6,3,2,'absolutely!','2019-05-07 00:00:00',NULL),(9,15,1,3,'nice','2019-05-07 00:00:00',NULL),(10,2,4,5,'cool','2019-05-07 00:00:00',NULL),(11,11,2,6,'the best!','2019-05-07 00:00:00',NULL),(12,11,3,3,'absolutely!','2019-05-07 00:00:00',NULL),(13,7,2,2,'wow!','2019-05-07 00:00:00',NULL),(14,7,2,3,'wow!','2019-05-07 00:00:00',NULL),(15,7,2,4,'wow!','2019-05-07 00:00:00',NULL),(16,7,2,5,'wow!','2019-05-07 00:00:00',NULL),(17,7,2,6,'wow!','2019-05-07 00:00:00',NULL),(18,7,2,7,'wow!','2019-05-07 00:00:00',NULL),(19,7,2,8,'wow!','2019-05-07 00:00:00',NULL),(20,7,2,9,'wow!','2019-05-07 00:00:00',NULL),(21,7,2,12,'yep!','2019-05-07 00:00:00',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 13:45:20
