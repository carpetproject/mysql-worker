CREATE DATABASE  IF NOT EXISTS `carpet_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carpet_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 192.168.183.237    Database: carpet_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cityName` varchar(45) NOT NULL,
  `stateId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `stateId_idx` (`stateId`),
  CONSTRAINT `stateId` FOREIGN KEY (`stateId`) REFERENCES `state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Athens',8),(2,'Thessaloniki',2),(3,'Patras',7),(4,'Piraeus',8),(5,'Larissa ',5),(6,'Heraklion ',13),(7,'Peristeri',8),(8,'Kallithea',8),(9,'Acharnes',8),(10,'Kalamaria',2),(11,'Nikaia',8),(12,'Glyfada',8),(13,'Volos ',5),(14,'Ilio',8),(15,'Ilioupoli',8),(16,'Keratsini',8),(17,'Evosmos',2),(18,'Chalandri',8),(19,'Nea Smyrni',8),(20,'Marousi',8),(21,'Agios Dimitrios',8),(22,'Zografou',8),(23,'Egaleo',8),(24,'Nea Ionia',8),(25,'Ioannina ',4),(26,'Palaio Faliro',8),(27,'Korydallos',8),(28,'Trikala ',5),(29,'Vyronas',8),(30,'Agia Paraskevi',8),(31,'Galatsi',8),(32,'Agrinio ',7),(33,'Chalcis ',6),(34,'Petroupoli',8),(35,'Serres ',2),(36,'Alexandroupoli ',1),(37,'Xanthi ',1),(38,'Katerini ',2),(39,'Kalamata ',9),(40,'Kavala ',1),(41,'Chania ',13),(42,'Lamia ',6),(43,'Komotini ',1),(44,'Irakleio',8),(45,'Rhodes ',12),(46,'Kifissia',8),(47,'Stavroupoli',2),(48,'Chaidari',8),(49,'Drama ',1),(50,'Veria ',2),(51,'Alimos',8),(52,'Kozani ',3),(53,'Polichni',2),(54,'Karditsa ',5),(55,'Sykies',2),(56,'Ampelokipoi',2),(57,'Pylaia',2),(58,'Agioi Anargyroi',8),(59,'Argyroupoli',8),(60,'Ano Liosia',8),(61,'Nea Ionia',5),(62,'Rethymno ',13),(63,'Ptolemaida ',3),(64,'Tripoli ',9),(65,'Cholargos',8),(66,'Vrilissia',8),(67,'Aspropyrgos',8),(68,'Corinth ',9),(69,'Gerakas',8),(70,'Metamorfosi',8),(71,'Giannitsa ',2),(72,'Voula',8),(73,'Kamatero',8),(74,'Mytilene ',11),(75,'Neapoli',2),(76,'Eleftherio-Kordelio',2),(77,'Chios ',11),(78,'Agia Varvara',8),(79,'Kaisariani',8),(80,'Nea Filadelfeia',8),(81,'Moschato',8),(82,'Perama',8),(83,'Salamina',8),(84,'Eleusis',8),(85,'Corfu ',10),(86,'Pyrgos ',7),(87,'Megara',8),(88,'Kilkis ',2),(89,'Dafni',8),(90,'Thebes ',6),(91,'Melissia',8),(92,'Argos ',9),(93,'Arta ',4),(94,'Artemida',8),(95,'Livadeia ',6),(96,'Pefki',8),(97,'Oraiokastro',2),(98,'Aigio ',7),(99,'Kos ',12),(100,'Koropi',8),(101,'Preveza ',4),(102,'Naousa ',2),(103,'Orestiada ',1),(104,'Peraia',2),(105,'Edessa ',2),(106,'Florina ',3),(107,'Panorama',2),(108,'Nea Erythraia',8),(109,'Elliniko',8),(110,'Amaliada ',7),(111,'Pallini',8),(112,'Sparta ',9),(113,'Agios Ioannis Rentis',8),(114,'Thermi',2),(115,'Vari',8),(116,'Nea Makri',8),(117,'Tavros',8),(118,'Alexandreia ',2),(119,'Menemeni',2),(120,'Paiania',8),(121,'Kalyvia Thorikou',8),(122,'Nafplio ',9),(123,'Drapetsona',8),(124,'Efkarpia',2),(125,'Papagou',8),(126,'Nafpaktos ',7),(127,'Kastoria ',3),(128,'Grevena ',3),(129,'Pefka',2),(130,'Nea Alikarnassos',13),(131,'Missolonghi ',7),(132,'Gazi',13),(133,'Ierapetra ',13),(134,'Kalymnos ',12),(135,'Rafina',8),(136,'Loutraki ',9),(137,'Agios Nikolaos ',13),(138,'Ermoupoli ',12),(139,'Ialysos ',12),(140,'Mandra',8),(141,'Tyrnavos ',5),(142,'Glyka Nera',8),(143,'Ymittos',8),(144,'Neo Psychiko',8);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `streetAddress` varchar(45) NOT NULL,
  `streetNumber` int NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `cityId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cityId_idx` (`cityId`),
  CONSTRAINT `cityId` FOREIGN KEY (`cityId`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'George','Siougles','siougles@mail.com','Anatolikis thrakis ',16,'6945627065',2),(2,'real','name','real@mail.com','Real address',22,'6925361498',100),(3,'fake','name','fake@mail.com','fake address',43,'6914635278',32);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stateName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Eastern Macedonia and Thrace'),(2,'Central Macedonia'),(3,'Western Macedonia'),(4,'Epirus'),(5,'Thessaly'),(6,'Central Greece'),(7,'Western Greece'),(8,'Attica'),(9,'Peloponnese'),(10,'Ionian Islands'),(11,'North Aegean'),(12,'South Aegean'),(13,'Crete');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `isAdmin` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08 14:03:05
