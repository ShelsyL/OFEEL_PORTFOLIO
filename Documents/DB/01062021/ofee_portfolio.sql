-- MySQL dump 10.13  Distrib 5.7.24, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: ofeel_portfolio
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `artcomments`
--

-- -----------------------------------------------------
-- Schema ofeel_portfolio
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS ofeel_portfolio;


DROP TABLE IF EXISTS `artcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artcomments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_commentsOfArticle_articles1_idx` (`article_id`),
  CONSTRAINT `fk_commentsOfArticle_articles1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artcomments`
--

LOCK TABLES `artcomments` WRITE;
/*!40000 ALTER TABLE `artcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `artcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `resume` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL,
  `categorie_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_articles_categories1_idx` (`categorie_id`),
  CONSTRAINT `fk_articles_categories1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_has_tags`
--

DROP TABLE IF EXISTS `articles_has_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_has_tags` (
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `fk_articles_has_tags_tags1_idx` (`tag_id`),
  KEY `fk_articles_has_tags_articles1_idx` (`article_id`),
  CONSTRAINT `fk_articles_has_tags_articles1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_articles_has_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_has_tags`
--

LOCK TABLES `articles_has_tags` WRITE;
/*!40000 ALTER TABLE `articles_has_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_has_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `icone` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Peinture',NULL,'2021-04-22 05:10:10','2021-04-22 06:10:10'),(2,'Photo',NULL,'2021-04-22 05:11:10','2021-04-22 05:11:11'),(3,'Graphisme',NULL,'2021-04-22 05:12:10','2021-04-22 05:12:12'),(4,'3D',NULL,'2021-05-04 13:12:10','2021-05-04 13:12:11'),(5,'Web',NULL,'2021-03-04 13:12:10','2021-03-04 13:12:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'tag1','2021-04-22 05:10:10','2021-04-22 05:10:10'),(2,'tag2','2021-04-22 05:10:10','2021-04-22 05:10:10'),(3,'tag3','2021-04-22 05:10:10','2021-04-22 05:10:10'),(4,'tag4','2021-04-22 05:10:10','2021-04-22 05:10:10'),(5,'tag5','2021-04-22 05:10:10','2021-04-22 05:10:10'),(6,'tag6','2021-04-22 05:10:10','2021-04-22 05:10:10'),(7,'tag7','2021-04-22 05:10:10','2021-04-22 05:10:10');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workcomments`
--

DROP TABLE IF EXISTS `workcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workcomments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `work_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_commentsOfWork_works1_idx` (`work_id`),
  CONSTRAINT `fk_commentsOfWork_works1` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workcomments`
--

LOCK TABLES `workcomments` WRITE;
/*!40000 ALTER TABLE `workcomments` DISABLE KEYS */;
INSERT INTO `workcomments` VALUES (76,'chelsea','test9','2021-05-31 18:41:37','2021-05-31 18:41:37',4),(77,'chelsea','test9','2021-05-31 18:45:23','2021-05-31 18:45:23',2);
/*!40000 ALTER TABLE `workcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (1,'title1','resume1','description1','photo2_portfolio.jpg','2021-04-22 05:10:10','2021-04-24 06:12:12'),(2,'title2','resume2','description2','facilier_portfolio.jpg','2021-04-23 05:10:10','2021-04-25 06:12:12'),(3,'title3','resume3','description3','bic3d_portfolio.jpg','2021-04-23 06:10:10','2021-04-23 07:10:10'),(4,'title4','resume4','description4','sac_ptiGourmet_portfolio.jpg','2021-04-23 07:15:25','2021-04-24 07:28:25'),(5,'title5','resume5','description5','photo1_portfolio.jpg','2021-05-23 07:15:25','2021-05-28 07:18:25'),(6,'title6','resume6','description6','teeForTwo1_portfolio.jpg','2021-05-23 07:15:28','2021-05-23 07:15:30'),(7,'title7','resume7','description7','peinture1_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:30'),(8,'testTitle','testResume','testDescription','civa_affiche_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:30');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_has_categories`
--

DROP TABLE IF EXISTS `works_has_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works_has_categories` (
  `work_id` int(10) unsigned NOT NULL,
  `categorie_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`work_id`,`categorie_id`),
  KEY `fk_works_has_categories_categories1_idx` (`categorie_id`),
  KEY `fk_works_has_categories_works1_idx` (`work_id`),
  CONSTRAINT `fk_works_has_categories_categories1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_works_has_categories_works1` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_has_categories`
--

LOCK TABLES `works_has_categories` WRITE;
/*!40000 ALTER TABLE `works_has_categories` DISABLE KEYS */;
INSERT INTO `works_has_categories` VALUES (1,2),(5,2),(1,3),(4,3),(6,3),(1,4),(2,4),(3,4),(7,5);
/*!40000 ALTER TABLE `works_has_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_has_tags`
--

DROP TABLE IF EXISTS `works_has_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works_has_tags` (
  `work_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`work_id`,`tag_id`),
  KEY `fk_works_has_tags_tags1_idx` (`tag_id`),
  KEY `fk_works_has_tags_works1_idx` (`work_id`),
  CONSTRAINT `fk_works_has_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_works_has_tags_works1` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_has_tags`
--

LOCK TABLES `works_has_tags` WRITE;
/*!40000 ALTER TABLE `works_has_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `works_has_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ofeel_portfolio'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-01 10:33:16
