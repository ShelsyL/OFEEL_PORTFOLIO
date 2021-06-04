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
INSERT INTO `categories` VALUES (1,'Peinture',NULL,'2021-04-22 05:10:10','2021-04-22 06:10:10'),(2,'Photos',NULL,'2021-04-22 05:11:10','2021-04-22 05:11:11'),(3,'Graphisme',NULL,'2021-04-22 05:12:10','2021-04-22 05:12:12'),(4,'3D',NULL,'2021-05-04 13:12:10','2021-05-04 13:12:11'),(5,'Web',NULL,'2021-03-04 13:12:10','2021-03-04 13:12:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'acrylique pouring','2021-04-22 05:10:11','2021-04-22 05:10:11'),(2,'illustration','2021-04-22 05:10:11','2021-04-22 05:10:11'),(3,'affiches','2021-04-22 05:10:11','2021-04-22 05:10:11'),(4,'macrophotographie','2021-04-22 05:10:11','2021-04-22 05:10:11'),(5,'photos nature','2021-04-22 05:10:11','2021-04-22 05:10:11'),(6,'logo','2021-04-22 05:10:11','2021-04-22 05:10:11'),(7,'travail de groupe','2021-04-22 05:10:11','2021-04-22 05:10:11'),(8,'Albert Jacquard','2021-04-22 05:10:11','2021-04-22 05:10:11'),(9,'Packaging','2021-04-22 05:10:11','2021-04-22 05:10:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workcomments`
--

LOCK TABLES `workcomments` WRITE;
/*!40000 ALTER TABLE `workcomments` DISABLE KEYS */;
INSERT INTO `workcomments` VALUES (1,'lilou','Un tres beau commentaire qui vient faire un petit coucou sur notre work 1','2021-04-23 06:10:10','2021-04-23 06:10:10',1),(80,'louli','Un très belle réponse pour vérifier l\'envois','2021-06-04 08:40:59','2021-06-04 08:40:59',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (1,'Bister','resume1','Travail de groupe (Charlotte Jeanson et Perrine Jamar) réalisé sur le thème de la moutarde BISTER. Travail réalisé en papier représentant un barbecue qui sera accompagné pour rehausser les plats de la sauce BISTER. Photo réalisée dans le studio de l’école.','bister_portfolio.jpg','2021-04-22 05:10:10','2021-04-24 06:12:12'),(2,'Dr Facilier','resume2',' Modélisation 3D à partir d’un personnage Disney 2D. Le personnage que j’ai choisi pour faire cette réalisation est le « Dr Faciliter » de l’animation \"la princesse et la grenouille\".','facilier_portfolio.jpg','2021-04-23 05:10:10','2021-04-25 06:12:12'),(3,'Transformers Bic','resume3','Robot réalisé a partir d\'un Bic 4 couleurs - projet de 2eme année HEAJ','bic3d_portfolio.jpg','2021-04-23 06:10:10','2021-04-23 07:10:10'),(4,'Tout en délicatesse','resume4','Photo réalisée avec un objectif macro lors d\'une balade.','photo2_portfolio.jpg','2021-04-23 07:15:25','2021-04-24 07:28:25'),(5,'Affiches CIVA','resume5','Affiche réalisée lors de ma formation à Albert Jacquard pour le CIVA de Bruxelles','civa_affiche_portfolio.jpg','2021-05-23 07:15:25','2021-05-28 07:18:25'),(6,'Bruxelles','resume6','Réalisation du plan de Bruxelles avec ses bâtiments principaux (Musées Royaux des Beaux-Art de Belgique, Musée Magritte, Musée de la musique-MIM, Statue de Godefroid de Bouillon, Palais Royal).','planBruxelles1_portfolio.jpg','2021-05-23 07:15:28','2021-05-23 07:15:30'),(7,'TeeForTwo','resume7','Travail réalisé lors de ma formation à l’HEAJ (Haute école Albert Jacquard, à Namur). Packaging de rupture pour un T-Shirt 2eme HEAJ','teeForTwo1_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:30'),(8,'Sac PtiGourmet','testResume','Sac réalisé pour le projet PtiGourmet ','sac_ptiGourmet.jpg','2021-07-23 07:15:28','2021-07-23 07:15:30'),(9,'Logo','resume8','Logo PtiGourmet réalisé pour le TFE (Haute Ecole Albert Jacquard)','PtiGourmet1_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:28'),(10,'Bulle d\'eau','re','Photo réalisée avec un objectif macro sur un rosier ','photo1_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:28'),(11,'Pano','re','Photo reéalisée au cours de ma formation à Albert Jacquard. Dans un premier temps prise de photo et retouche pour faire un panoramique, ensuite tirage au sort de 3 mots à incruster dans la photo. Mes 3 mots ont été Dragon, Robot, Parchemin. ','PanoPhoto_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:28'),(12,'Dragon','re','Peinture avec la technique d\'acrylique pouring qui représente un dragon','peinture2_portfolio.jpg','2021-07-23 07:15:28','2021-07-23 07:15:28');
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
INSERT INTO `works_has_categories` VALUES (12,1),(4,2),(10,2),(11,2),(1,3),(5,3),(6,3),(7,3),(8,3),(9,3),(2,4),(3,4);
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
INSERT INTO `works_has_tags` VALUES (12,1),(1,2),(6,2),(8,2),(1,3),(5,3),(6,3),(4,4),(10,4),(4,5),(10,5),(8,6),(9,6),(1,7),(1,8),(2,8),(3,8),(5,8),(6,8),(7,8),(8,8),(9,8),(11,8),(7,9);
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

-- Dump completed on 2021-06-04 10:58:48
