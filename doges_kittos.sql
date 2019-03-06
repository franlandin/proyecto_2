-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doges_kittos
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
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rent` (
  `rent_pet_id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(255) NOT NULL,
  `refugee` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `price` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `available_date` date DEFAULT NULL,
  `pet_description` varchar(255) NOT NULL,
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rent_pet_id`),
  UNIQUE KEY `rent_pet_id` (`rent_pet_id`),
  UNIQUE KEY `rent_pet_id_2` (`rent_pet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,'doge','casa','malaga',0,'50','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg','2019-03-06','a','2019-02-19 16:33:08'),(2,'luffy','casa','malaga',0,'300','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg','2019-03-10','b','2019-02-19 16:33:08'),(4,'mika','trabajo','ronda',0,'10','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg','2019-03-06','d','2019-02-19 16:33:08'),(5,'niko','trabajo','huelva',1,'5000','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg',NULL,'e','2019-02-19 16:33:08'),(6,'pancho','casa','ronda',0,'400','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg',NULL,'f','2019-02-19 16:33:08'),(7,'perrito','casa','malaga',1,'3.5','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg',NULL,'g','2019-02-19 16:33:08'),(8,'naky','casa','malaga',1,'47','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Doge_homemade_meme.jpg/800px-Doge_homemade_meme.jpg',NULL,'h','2019-02-19 16:33:08');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `usertype` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','be49edd8868271999c98ff04f41fa15d728f9e1e995dde8e63ee426b395d186a','2019-03-04 17:03:25',1),(2,'bla','47c5058614ff84712ab530b9e69c659761c5738d416fce803d94daa349ac2ec7','2019-03-05 17:23:23',2),(3,'asd','9fc7c50c8f7272f44472e6c8ce3bb00d23ee16d4dbb34b8d79a4d51c1f4bd3eb','2019-03-05 17:55:27',2),(4,'123','f1bf4fabfc107ea12ad7d18d794a6c12b1759e4aa4b97cc090af217a558ae045','2019-03-05 17:55:58',2),(5,'patata','b72a5dfd7320182005bd55d5748bbd0fc614fb56952753e5bb8df5c7cf3bb0c0','2019-03-06 10:32:10',2),(6,'patata2','b72a5dfd7320182005bd55d5748bbd0fc614fb56952753e5bb8df5c7cf3bb0c0','2019-03-06 10:42:38',2),(7,'asdf','a4f02968eed4674e6dbcd4acd5c3af4b661d35b1a19eae3752b4516f25983e68','2019-03-06 17:10:19',2),(8,'chas','32633a9393a7306c1f89545f791bfbec74fa592ed60772fc4a4570219566cc75','2019-03-06 17:17:35',2),(9,'tras','71060ffadb4e05e4359cf188e8b8a3238c29e1fa4fcf507657a27d3e1eb2ccc9','2019-03-06 17:18:36',2);
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

-- Dump completed on 2019-03-06 18:58:35
