-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: vtmc_egzaminas
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `komentarai`
--

DROP TABLE IF EXISTS `komentarai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komentarai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kursai_id` bigint(20) NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `komentarai_fk0` (`kursai_id`),
  CONSTRAINT `komentarai_fk0` FOREIGN KEY (`kursai_id`) REFERENCES `kursai` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komentarai`
--

LOCK TABLES `komentarai` WRITE;
/*!40000 ALTER TABLE `komentarai` DISABLE KEYS */;
INSERT INTO `komentarai` VALUES (1,1,'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),(2,2,'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),(3,3,'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),(4,4,'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),(5,5,'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia ');
/*!40000 ALTER TABLE `komentarai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kursai`
--

DROP TABLE IF EXISTS `kursai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kursai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `lastname` varchar(40) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `small_description` varchar(200) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_lithuanian_ci DEFAULT NULL,
  `popular` bigint(20) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kursai`
--

LOCK TABLES `kursai` WRITE;
/*!40000 ALTER TABLE `kursai` DISABLE KEYS */;
INSERT INTO `kursai` VALUES (1,'Tomas','Tomaitis','PHP Pagrindai','2021-06-22 09:49:21','Cia kazkas paprasto','Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!','images/php.jpg',7,1.3),(2,'Juste','Justina','HTML/CSS Įvadas','2021-06-22 09:49:21','Visai lengvai.','Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!','images/css.jpg',7,1.3),(3,'Vaclov','Vaclovas','Pažintis Su GIT','2021-06-22 09:49:21','Perprantama','Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!','images/git.jpg',5,1.2),(4,'Marius','Maraitis','Javascript Žemėlapis','2021-06-22 09:49:21','Paskui atrodis lengva','Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!','images/js.jpg',9,1.1),(5,'Goda','Godyte','Viskas Sudėta','2021-06-22 09:49:21','Viska išmoksi','Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!','images/logo.png',3,1);
/*!40000 ALTER TABLE `kursai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kursai_id` bigint(20) NOT NULL,
  `rating` int(1) NOT NULL DEFAULT 0 CHECK (`rating` between 0 and 5),
  PRIMARY KEY (`id`),
  KEY `ratings_fk0` (`kursai_id`),
  CONSTRAINT `ratings_fk0` FOREIGN KEY (`kursai_id`) REFERENCES `kursai` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,1),(2,2,5),(3,3,3),(4,4,2),(5,5,1),(6,2,1);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-22 14:40:23
