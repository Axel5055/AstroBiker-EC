-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: martfury
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'2w6SeCZpw7Jx5kKG9wcrZAKTHI1nwbGa',1,'2025-03-30 23:46:31','2025-03-30 23:46:31','2025-03-30 23:46:31');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2030-03-31 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(2,'Top Slider Image 2','2030-03-31 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 1','2030-03-31 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 2','2030-03-31 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(5,'Homepage middle 3','2030-03-31 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(6,'Homepage big 1','2030-03-31 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(7,'Homepage bottom small','2030-03-31 00:00:00','not_set','I50SG44LV6YD','promotion/7.jpg','/products',0,7,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(8,'Product sidebar','2030-03-31 00:00:00','product-sidebar','F9QW5SSMDYJG','promotion/8.jpg','/products',0,8,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL),(9,'Homepage big 2','2030-03-31 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ut debitis eum maxime quis. Sed dolore sit aspernatur vero dolores nemo. Nesciunt perspiciatis deserunt qui eaque. A eaque odio voluptatem est ut sint.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(2,'Fashion',0,'Quod ipsam doloribus magni dignissimos. Voluptatum iusto pariatur consequatur sint. Vitae excepturi unde dignissimos incidunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(3,'Electronic',0,'Ab id ea quos itaque ratione iure. Ducimus ut commodi ut qui voluptates quo aspernatur adipisci. Nisi inventore sunt veniam aspernatur dignissimos animi sint.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(4,'Commercial',0,'Est debitis voluptatem rem in in magnam. Eligendi doloremque nesciunt excepturi magnam. Commodi nostrum ullam ducimus enim nemo. Officia quia provident ipsam eveniet.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-03-30 23:46:31','2025-03-30 23:46:31');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Prof. Susie Funk','jon64@example.com','+1.463.241.0989','69826 Eli Harbor Apt. 144\nSouth Erynland, DE 50182-6683','Deserunt et excepturi enim quis nihil.','Fugit architecto expedita dolor sunt. Soluta similique itaque consequatur maiores qui reprehenderit debitis. Illo tempore quos quo vel aut. Et eius culpa ut eos sed nemo. Asperiores iusto error ipsum tempora qui. Et eveniet distinctio quisquam eius quis adipisci fugiat. Vero tenetur tenetur dolores in dolor unde. Porro atque rem incidunt id sed voluptas. Dicta et rem impedit perferendis.',NULL,'read','2025-03-30 23:46:30','2025-03-30 23:46:30'),(2,'Prof. Ewald Smith III','jacques81@example.com','347-647-9711','1596 Gaylord Ford Apt. 153\nWest Bernhardhaven, CA 85693','Corrupti tenetur molestiae et.','Facere minima qui ea ut. Est est nam quae nostrum pariatur. Facere sint quo sit soluta qui illo qui sed. Eos id nobis ut omnis ratione ut. Velit reiciendis eaque ullam possimus. Et repudiandae id debitis. Alias harum odio unde eum. Recusandae ut illum laborum quod praesentium quae. Distinctio ut consequatur sed ut tempore soluta aut odit. Aut et a distinctio. Ipsum impedit expedita repellat molestias. Facere reprehenderit sed atque ipsum voluptas doloremque. Harum excepturi quas libero quis.',NULL,'read','2025-03-30 23:46:30','2025-03-30 23:46:30'),(3,'Josiah Crist II','jude.reynolds@example.com','830-357-5921','675 Pacocha Dam Suite 087\nNathanialborough, IN 46667-0343','Reiciendis facilis consequatur odit.','Saepe omnis sed impedit quas aut. Ut temporibus nihil quibusdam autem sed voluptas enim. Illo qui minima omnis blanditiis. Qui consequatur voluptas aliquid temporibus. Rerum aut et labore nihil et et neque quo. Soluta doloribus error dolorem consequatur enim beatae voluptas. Qui omnis blanditiis ut nihil est. Provident velit non sint assumenda quo assumenda quas.',NULL,'unread','2025-03-30 23:46:30','2025-03-30 23:46:30'),(4,'Ms. Alexandrea Stanton','melba.mayer@example.org','732-733-5484','90772 Brad Crest Suite 023\nWest Franciscohaven, KS 70910','Ut quia quia enim cum voluptate earum.','Impedit officiis eaque nulla fugit odio vero ducimus voluptas. Autem quia nesciunt velit. Distinctio eius itaque nesciunt est illum. Delectus fugit necessitatibus omnis delectus porro doloremque. Quas est rerum similique labore saepe enim labore tenetur. Dolor eum et recusandae dicta nam. Nemo quo saepe et magnam. Veritatis molestiae iste minus hic voluptatem. Consequatur odio cupiditate in error.',NULL,'unread','2025-03-30 23:46:30','2025-03-30 23:46:30'),(5,'Reina Funk DDS','juliana52@example.com','+1-701-743-9122','5753 Lehner Inlet Apt. 969\nNorth Magdalena, FL 81135-5895','Id qui unde quis est reiciendis.','Ullam totam deleniti vel ut voluptatum nisi nesciunt. Tempore libero quas est. Ea dolorum tempora quasi architecto cupiditate velit. Non esse deleniti animi omnis provident necessitatibus. Provident facere qui totam rerum qui. Incidunt qui modi ut nisi. Aspernatur soluta iste quibusdam quasi. Labore et magni architecto minima enim eius et. Et totam amet cupiditate repudiandae doloribus nemo. Quidem a ex sint rem iusto. Quia dignissimos eum omnis odit. Nostrum laborum qui cumque.',NULL,'read','2025-03-30 23:46:30','2025-03-30 23:46:30'),(6,'Nellie Rowe','lonzo.watsica@example.org','+1 (321) 539-5001','2842 Marcella Village\nPurdyside, ND 34092','Occaecati quod molestiae tempore et aut quo.','Dolores aliquam voluptatem nihil ab. Molestiae sit ea omnis voluptatem quos veritatis. A esse quia ullam omnis aspernatur. Magnam expedita odio quo. Voluptatem laudantium cum voluptatum. Cum omnis tempore ut voluptatibus. Et ut nam non totam eos aut optio. Adipisci placeat blanditiis deleniti et. Aut totam similique officiis. Omnis debitis cumque ab accusantium necessitatibus. Sunt velit velit ut libero error dolor. Omnis nulla adipisci nostrum quia earum.',NULL,'unread','2025-03-30 23:46:30','2025-03-30 23:46:30'),(7,'Nolan Quigley','davin43@example.org','(731) 536-2808','37846 Rahul Isle\nLake Frederic, MD 45224','Voluptas nesciunt eos nostrum placeat.','Quia doloremque eius tenetur nostrum magni assumenda dolor ad. Rerum eos consequatur et dolores et aut. A neque odio et ad aut ut. Voluptatem fugit pariatur aut eveniet. Harum occaecati accusamus aut suscipit accusantium voluptatum sit. Laboriosam ad soluta quis nobis. Exercitationem et et corporis omnis nihil. Quos officiis quis autem vero ducimus corrupti neque. Tenetur aliquid et sint quos debitis. Esse qui deserunt rerum voluptate reiciendis fugiat. Facilis aperiam officiis voluptates.',NULL,'read','2025-03-30 23:46:30','2025-03-30 23:46:30'),(8,'Mrs. Rita Hand','vanessa50@example.org','1-323-470-6861','9833 Precious Terrace\nWest Haleyville, MA 74393-2821','Nemo id voluptates et nemo.','Placeat deleniti quia non. Temporibus eos est assumenda voluptatum. Suscipit error id ullam voluptas ea. Aut reprehenderit voluptatem illum cupiditate ipsum. Ipsum illo dolores impedit non dolores dolore aperiam et. Nemo vel sed quo vitae. Doloremque et et recusandae odit in vero. Cupiditate ipsa sed laboriosam quaerat sint possimus suscipit. Necessitatibus sed dignissimos deserunt impedit. Aut enim eum cumque pariatur. Quia quaerat voluptatem soluta consequatur quam fugit ex.',NULL,'read','2025-03-30 23:46:30','2025-03-30 23:46:30'),(9,'Terrance Stark','zelma69@example.com','442.302.9192','299 Durward Ridge\nWest Marcella, TN 80739-5028','Ut quis aut consequuntur inventore ab odit sunt.','Et qui dolore rem. Nemo minus est error. Et rem repellendus repudiandae et alias tempore. Aut sint doloribus quasi eaque eligendi saepe laboriosam esse. Ut eveniet mollitia adipisci modi rerum assumenda. Cumque laboriosam labore esse quibusdam dignissimos ullam ut. Consequatur sit velit quia quia. Fuga neque est laudantium tempore.',NULL,'unread','2025-03-30 23:46:30','2025-03-30 23:46:30'),(10,'Dr. Shayne Hickle','thaag@example.net','+1 (623) 853-1205','4133 Timmothy Point Apt. 974\nJenkinston, CT 06565','In quibusdam voluptates enim vero voluptas sint.','Sunt placeat iusto distinctio sint ullam sunt ut aut. Corporis perspiciatis at dolor et architecto. Quia doloribus consequatur sed quo. Incidunt ipsa aut voluptatem vero consequuntur consequuntur voluptas vel. Nobis voluptatem consequuntur velit libero. Magni dolores aut sit est quae tempore. Dolorem similique eveniet dolor dolorum amet maxime a.',NULL,'unread','2025-03-30 23:46:30','2025-03-30 23:46:30');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2025-03-30 23:46:21','2025-03-30 23:46:21');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(2,'EUR','€',0,2,1,0,0.84,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(3,'VND','₫',0,0,2,0,23203,'2025-03-30 23:46:21','2025-03-30 23:46:21'),(4,'NGN','₦',1,2,2,0,895.52,'2025-03-30 23:46:21','2025-03-30 23:46:21');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Brycen Hessel','customer@botble.com','+14144490205','NI','Alaska','Lake Emmet','6551 Hoeger Lodge',1,1,'2025-03-30 23:46:28','2025-03-30 23:46:28','38070'),(2,'Brycen Hessel','customer@botble.com','+15748101498','PK','South Carolina','Port Robinbury','36631 Helmer Cape',1,0,'2025-03-30 23:46:28','2025-03-30 23:46:28','02995-2136'),(3,'Prof. Reyes Mitchell PhD','vendor@botble.com','+14235338991','DM','Missouri','Gislasontown','77593 Frami Common',2,1,'2025-03-30 23:46:28','2025-03-30 23:46:28','29992'),(4,'Prof. Reyes Mitchell PhD','vendor@botble.com','+14588746351','SX','Louisiana','Port Deon','565 Bernier Via Suite 593',2,0,'2025-03-30 23:46:28','2025-03-30 23:46:28','66419-8027'),(5,'Lois Kerluke','zstamm@example.com','+13202090996','KR','Colorado','Edwinaview','51748 Tremblay Junction',3,1,'2025-03-30 23:46:29','2025-03-30 23:46:29','90018-1486'),(6,'Ms. Billie Howell','erica.block@example.com','+12123883499','SI','Rhode Island','West Jacintheborough','1285 Neoma Coves Apt. 106',4,1,'2025-03-30 23:46:29','2025-03-30 23:46:29','34291'),(7,'Dr. Myrtle Langworth Sr.','jamar.ebert@example.net','+12257515929','KE','Mississippi','Christiansenshire','98563 Reilly Mill',5,1,'2025-03-30 23:46:29','2025-03-30 23:46:29','46360'),(8,'Lorenzo Runolfsson','pconsidine@example.net','+14804690785','RU','Colorado','Tinafort','5654 Jacobi Bridge Apt. 046',6,1,'2025-03-30 23:46:29','2025-03-30 23:46:29','20115'),(9,'Prof. Dejuan Mayert','pfay@example.com','+13254427798','PK','South Carolina','Jedidiahstad','273 Rubye Shoals Suite 857',7,1,'2025-03-30 23:46:29','2025-03-30 23:46:29','24218'),(10,'Prof. Emely Sporer IV','dane.gibson@example.com','+14432797324','CN','Texas','Mohamedmouth','724 Dicki Place Suite 804',8,1,'2025-03-30 23:46:30','2025-03-30 23:46:30','62464'),(11,'Antonette Kshlerin','bashirian.guadalupe@example.net','+18505874072','MM','Texas','Lorabury','88739 Larson Parks',9,1,'2025-03-30 23:46:30','2025-03-30 23:46:30','49912'),(12,'Corine Tremblay','jacynthe31@example.net','+17123702512','LR','Utah','West Janessa','60397 Bergnaum Greens Suite 057',10,1,'2025-03-30 23:46:30','2025-03-30 23:46:30','11382-4597');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Brycen Hessel','customer@botble.com','$2y$12$0ARj9fL/5WgB7TKrY2H3H.14oP7.3c9qksMy1J4OL4sTsC55f0WQ2','customers/4.jpg','1990-03-29','+13867666294',NULL,'2025-03-30 23:46:28','2025-03-30 23:46:28','2025-03-31 06:46:28',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Prof. Reyes Mitchell PhD','vendor@botble.com','$2y$12$L4Bhv4AARdYuHnDh5vOhbuRv7jqH0EX1MpyjTe63RYZrl.qjE64mG','customers/5.jpg','1983-03-27','+19346603033',NULL,'2025-03-30 23:46:28','2025-03-30 23:46:35','2025-03-31 06:46:28',NULL,'activated',NULL,NULL,1,'2025-03-31 06:46:35',NULL,0),(3,'Lois Kerluke','zstamm@example.com','$2y$12$iWM82hxtdhxwa3uKGMFHjeY46wx44nO5ohBQ0JD/o/4mHZoo2MICi','customers/1.jpg','1989-03-08','+19296992918',NULL,'2025-03-30 23:46:29','2025-03-30 23:46:29','2025-03-31 06:46:29',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(4,'Ms. Billie Howell','erica.block@example.com','$2y$12$Cl9xpiK4riHUJrsYrkxXnO.WprD23T1S/IRbqDp2oY4PVk.i73Mea','customers/2.jpg','2002-03-13','+12028945043',NULL,'2025-03-30 23:46:29','2025-03-30 23:46:35','2025-03-31 06:46:29',NULL,'activated',NULL,NULL,1,'2025-03-31 06:46:35',NULL,0),(5,'Dr. Myrtle Langworth Sr.','jamar.ebert@example.net','$2y$12$Xp5s.OpG2Z8ERTqZlkXGWO/90ZecEYnohiwTjaQ1TRmlnPbwZipra','customers/3.jpg','1991-03-29','+19209493723',NULL,'2025-03-30 23:46:29','2025-03-30 23:46:29','2025-03-31 06:46:29',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(6,'Lorenzo Runolfsson','pconsidine@example.net','$2y$12$XGeloyBYjaMPyqQjamluIeJNJWpCJdXQ.XsZEZYlSDluCPVBvyBlW','customers/4.jpg','1987-03-27','+17016311319',NULL,'2025-03-30 23:46:29','2025-03-30 23:46:35','2025-03-31 06:46:29',NULL,'activated',NULL,NULL,1,'2025-03-31 06:46:35',NULL,0),(7,'Prof. Dejuan Mayert','pfay@example.com','$2y$12$UciPWGsq7wcHhrFB4Y7PE.XgX0gHoPINqsWA9gHNiMJWYIg8Og5Yu','customers/5.jpg','2000-03-12','+14782902788',NULL,'2025-03-30 23:46:29','2025-03-30 23:46:36','2025-03-31 06:46:29',NULL,'activated',NULL,NULL,1,'2025-03-31 06:46:36',NULL,0),(8,'Prof. Emely Sporer IV','dane.gibson@example.com','$2y$12$Nz6xpWv2rnzXS6nLX8/aie6UUAU05kP1BPcP6IjFwsSnYjHGTQt8y','customers/6.jpg','2003-03-09','+17405614129',NULL,'2025-03-30 23:46:30','2025-03-30 23:46:36','2025-03-31 06:46:30',NULL,'activated',NULL,NULL,1,'2025-03-31 06:46:36',NULL,0),(9,'Antonette Kshlerin','bashirian.guadalupe@example.net','$2y$12$Mst6CEWHHyhugS6tdDSJf.Da03LJPQCHtXadMPn84hfPaF5TdhzF.','customers/7.jpg','1998-03-05','+12059994055',NULL,'2025-03-30 23:46:30','2025-03-30 23:46:36','2025-03-31 06:46:30',NULL,'activated',NULL,NULL,1,'2025-03-31 06:46:36',NULL,0),(10,'Corine Tremblay','jacynthe31@example.net','$2y$12$tbsHmEEHE0r3igc4HyGmIOkHJUcFEalWw2B5WOjs/GxG67XYHDx7e','customers/8.jpg','2000-03-24','+18314610245',NULL,'2025-03-30 23:46:30','2025-03-30 23:46:30','2025-03-31 06:46:30',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','5JLNIMIBSFN5','2025-03-30 06:46:30','2025-04-23 06:46:30',NULL,0,363,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(2,'Discount 2','JW9T2OFOUG0D','2025-03-30 06:46:30','2025-04-13 06:46:30',NULL,0,882,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(3,'Discount 3','VG6BU0P3W5BM','2025-03-30 06:46:30',NULL,NULL,0,701,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(4,'Discount 4','ZWWJUA7F9KCW','2025-03-30 06:46:30',NULL,NULL,0,46,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(5,'Discount 5','32OE5NU17NGM','2025-03-30 06:46:30','2025-04-12 06:46:30',NULL,0,34,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(6,'Discount 6','S4B4HES65ZKG','2025-03-30 06:46:30','2025-04-29 06:46:30',NULL,0,367,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(7,'Discount 7','Q2LAB1DTA3VG','2025-03-30 06:46:30','2025-04-10 06:46:30',NULL,0,817,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(8,'Discount 8','ZLBAOLBVOKW0','2025-03-30 06:46:30','2025-04-22 06:46:30',NULL,0,96,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(9,'Discount 9','HIKWB2TJ5XON','2025-03-30 06:46:30',NULL,NULL,0,56,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL),(10,'Discount 10','QUSRY3PCEYNN','2025-03-30 06:46:30','2025-04-11 06:46:30',NULL,0,73,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-03-30 23:46:30','2025-03-30 23:46:30',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,50.5575,19,3),(1,2,27.135,14,4),(1,3,15.4,16,2),(1,4,369.981,16,1),(1,5,496.11,13,1),(1,6,373.67,10,1),(1,7,408.72,11,3),(1,8,357.21,20,1),(1,9,270.92,12,2),(1,10,731.43,19,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-04-30 00:00:00','published','2025-03-30 23:46:30','2025-03-30 23:46:30');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(2,1,'2 Year',10,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(3,1,'3 Year',20,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(4,2,'4GB',0,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(5,2,'8GB',10,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(6,2,'16GB',20,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(7,3,'Core i5',0,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(8,3,'Core i7',10,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(9,3,'Core i9',20,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(10,4,'128GB',0,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(11,4,'256GB',10,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(12,4,'512GB',20,9999,0,'2025-03-30 23:46:34','2025-03-30 23:46:34');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-03-30 23:46:34','2025-03-30 23:46:34');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-03-30 23:46:27','2025-03-30 23:46:27',0),(2,'Size','size','text',1,1,1,'published',1,'2025-03-30 23:46:27','2025-03-30 23:46:27',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(6,2,'S','s',NULL,NULL,1,1,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(7,2,'M','m',NULL,NULL,0,2,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(8,2,'L','l',NULL,NULL,0,3,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-03-30 23:46:27','2025-03-30 23:46:27'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-03-30 23:46:27','2025-03-30 23:46:27');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,8),(1,9),(1,13),(1,19),(3,5),(3,16),(4,14),(4,15),(5,21),(5,22),(6,19),(6,20),(7,4),(7,8),(8,4),(8,15),(10,18),(11,6),(11,23),(12,7),(12,17),(13,3),(13,10),(15,9),(15,16),(15,20),(16,4),(16,11),(16,14),(16,16),(17,10),(18,1),(18,5),(18,12),(19,20),(20,1),(20,3),(20,11),(20,14),(21,2),(21,13),(22,7),(22,12),(22,13),(22,18),(23,9),(23,23),(24,2),(24,11),(24,23),(25,2),(25,6),(25,16),(26,19),(26,20),(26,22),(27,6),(27,7),(27,11),(27,15),(27,19),(27,21),(28,2),(28,3),(28,5),(28,8),(28,21),(29,1),(29,10),(32,7),(32,17),(33,8),(33,12),(34,1),(34,3),(34,5),(34,9),(34,14),(34,17),(34,18),(35,15),(35,21),(35,22),(36,10),(36,18),(37,12),(37,13),(37,17),(37,22);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,8),(1,14),(1,15),(1,18),(1,22),(1,23),(2,1),(2,2),(2,5),(2,6),(2,7),(2,10),(2,20),(3,4),(3,9),(3,11),(3,12),(3,13),(3,16),(3,17),(3,19),(3,21);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-03-30 23:46:22','2025-03-30 23:46:22',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-03-30 23:46:22','2025-03-30 23:46:22',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-03-30 23:46:22','2025-03-30 23:46:22',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,3,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,18,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,14,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,6,0,0.00,'fixed',1),(8,15,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,15,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,19,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,8,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,12,0,0.00,'fixed',1),(11,16,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,11,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,5,0,0.00,'fixed',1),(13,7,0,0.00,'fixed',1),(13,9,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,7,0,0.00,'fixed',1),(14,16,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(14,19,0,0.00,'fixed',1),(14,20,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,12,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,19,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,13,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,16,0,0.00,'fixed',1),(17,19,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,13,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(20,2,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(20,19,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(22,6,0,0.00,'fixed',1),(22,9,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,15,0,0.00,'fixed',1),(23,16,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(2,25,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(3,26,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(4,38,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(5,38,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(6,38,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(7,38,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(8,39,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(9,39,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(10,39,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(11,39,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(12,48,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"9\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(13,48,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(14,48,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(15,49,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"9\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(16,49,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(17,49,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(18,58,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"13\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(19,58,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(20,59,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"13\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(21,59,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(22,66,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"17\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(23,66,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(24,66,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(25,66,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(26,75,'ecommerce/digital-product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"21\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(27,75,'ecommerce/digital-product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27'),(28,75,'ecommerce/digital-product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-03-31 06:46:27\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2025-03-30 23:46:27','2025-03-30 23:46:27');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,6),(2,9),(2,12),(2,15),(3,3),(3,18),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL),(2,'New','#02856e','published','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL),(3,'Sale','#fe9931','published','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'4.03 cm',0,0),(1,7,'13.63 cm',0,0),(1,8,'1920x1080',0,0),(2,1,'85.23 cm',0,0),(2,2,'37.16 cm',0,0),(2,3,'6.15 cm',0,0),(2,4,'45.59 cm',0,0),(2,5,'13.73 cm',0,0),(3,6,'49.38 cm',0,0),(3,7,'80.12 cm',0,0),(3,8,'3840x2160',0,0),(4,6,'81.48 cm',0,0),(4,7,'50.78 cm',0,0),(4,8,'3840x2160',0,0),(5,1,'32.57 cm',0,0),(5,2,'71.57 cm',0,0),(5,3,'1.48 cm',0,0),(5,4,'2.93 cm',0,0),(5,5,'1.88 cm',0,0),(6,6,'4 cm',0,0),(6,7,'75.58 cm',0,0),(6,8,'3840x2160',0,0),(7,1,'78.54 cm',0,0),(7,2,'48.34 cm',0,0),(7,3,'7.51 cm',0,0),(7,4,'75.99 cm',0,0),(7,5,'18.55 cm',0,0),(8,6,'30.39 cm',0,0),(8,7,'6.87 cm',0,0),(8,8,'2560x1440',0,0),(9,1,'45.3 cm',0,0),(9,2,'33.95 cm',0,0),(9,3,'6.37 cm',0,0),(9,4,'94.15 cm',0,0),(9,5,'91.05 cm',0,0),(10,6,'12.12 cm',0,0),(10,7,'61.08 cm',0,0),(10,8,'3840x2160',0,0),(11,6,'20.46 cm',0,0),(11,7,'46.49 cm',0,0),(11,8,'3840x2160',0,0),(12,1,'49.93 cm',0,0),(12,2,'54.44 cm',0,0),(12,3,'5.12 cm',0,0),(12,4,'87.19 cm',0,0),(12,5,'41.38 cm',0,0),(13,6,'89.55 cm',0,0),(13,7,'94.59 cm',0,0),(13,8,'2560x1440',0,0),(14,6,'5.58 cm',0,0),(14,7,'41.14 cm',0,0),(14,8,'2560x1440',0,0),(15,6,'50.69 cm',0,0),(15,7,'70.39 cm',0,0),(15,8,'2560x1440',0,0),(16,6,'48.82 cm',0,0),(16,7,'48.03 cm',0,0),(16,8,'3840x2160',0,0),(17,1,'17.96 cm',0,0),(17,2,'45.39 cm',0,0),(17,3,'37.2 cm',0,0),(17,4,'99.86 cm',0,0),(17,5,'34.01 cm',0,0),(18,6,'96.67 cm',0,0),(18,7,'92.54 cm',0,0),(18,8,'1920x1080',0,0),(19,1,'29.88 cm',0,0),(19,2,'66.21 cm',0,0),(19,3,'8.59 cm',0,0),(19,4,'44.43 cm',0,0),(19,5,'35.33 cm',0,0),(20,1,'44.03 cm',0,0),(20,2,'85.79 cm',0,0),(20,3,'29.03 cm',0,0),(20,4,'2.23 cm',0,0),(20,5,'45.04 cm',0,0),(21,1,'51.33 cm',0,0),(21,2,'62.73 cm',0,0),(21,3,'6.98 cm',0,0),(21,4,'46.23 cm',0,0),(21,5,'23.57 cm',0,0),(22,1,'12.56 cm',0,0),(22,2,'43.65 cm',0,0),(22,3,'10.91 cm',0,0),(22,4,'70.85 cm',0,0),(22,5,'1.93 cm',0,0),(23,6,'97.26 cm',0,0),(23,7,'70.51 cm',0,0),(23,8,'2560x1440',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,4),(1,5),(2,2),(2,3),(2,4),(3,2),(3,4),(3,6),(4,4),(4,5),(5,1),(5,2),(5,3),(6,3),(6,5),(7,2),(7,3),(7,4),(8,4),(8,5),(8,6),(9,2),(9,3),(10,2),(10,3),(10,5),(11,1),(11,4),(11,5),(12,4),(12,5),(13,2),(13,4),(13,5),(14,5),(14,6),(15,1),(15,6),(16,2),(16,3),(16,6),(17,2),(17,3),(17,6),(18,2),(18,3),(19,3),(19,6),(20,1),(20,5),(21,2),(21,6),(22,2),(22,4),(22,5),(23,4),(23,5),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(2,'Mobile',NULL,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(3,'Iphone',NULL,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(4,'Printer',NULL,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(5,'Office',NULL,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(6,'IT',NULL,'published','2025-03-30 23:46:30','2025-03-30 23:46:30');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (9,1,5),(11,1,6),(19,1,10),(21,1,11),(61,1,31),(65,1,33),(75,1,38),(83,1,42),(95,1,48),(5,2,3),(13,2,7),(15,2,8),(31,2,16),(41,2,21),(45,2,23),(49,2,25),(55,2,28),(69,2,35),(71,2,36),(89,2,45),(103,2,52),(23,3,12),(25,3,13),(33,3,17),(35,3,18),(43,3,22),(47,3,24),(57,3,29),(59,3,30),(63,3,32),(77,3,39),(79,3,40),(85,3,43),(3,4,2),(7,4,4),(17,4,9),(27,4,14),(37,4,19),(51,4,26),(81,4,41),(87,4,44),(91,4,46),(93,4,47),(97,4,49),(99,4,50),(105,4,53),(107,4,54),(1,5,1),(29,5,15),(39,5,20),(53,5,27),(67,5,34),(73,5,37),(101,5,51),(6,6,3),(10,6,5),(20,6,10),(26,6,13),(32,6,16),(46,6,23),(50,6,25),(54,6,27),(62,6,31),(68,6,34),(70,6,35),(86,6,43),(92,6,46),(100,6,50),(8,7,4),(16,7,8),(18,7,9),(40,7,20),(56,7,28),(58,7,29),(60,7,30),(66,7,33),(76,7,38),(80,7,40),(94,7,47),(4,8,2),(48,8,24),(52,8,26),(90,8,45),(96,8,48),(98,8,49),(104,8,52),(12,9,6),(14,9,7),(30,9,15),(34,9,17),(38,9,19),(42,9,21),(44,9,22),(72,9,36),(74,9,37),(78,9,39),(88,9,44),(102,9,51),(108,9,54),(2,10,1),(22,10,11),(24,10,12),(28,10,14),(36,10,18),(64,10,32),(82,10,41),(84,10,42),(106,10,53);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,2,0),(6,29,2,0),(7,30,2,0),(8,31,3,1),(9,32,3,0),(10,33,3,0),(11,34,3,0),(12,35,4,1),(13,36,4,0),(14,37,4,0),(15,38,5,1),(16,39,5,0),(17,40,6,1),(18,41,6,0),(19,42,6,0),(20,43,7,1),(21,44,7,0),(22,45,7,0),(23,46,8,1),(24,47,8,0),(25,48,9,1),(26,49,9,0),(27,50,10,1),(28,51,10,0),(29,52,11,1),(30,53,11,0),(31,54,11,0),(32,55,11,0),(33,56,12,1),(34,57,12,0),(35,58,13,1),(36,59,13,0),(37,60,14,1),(38,61,14,0),(39,62,15,1),(40,63,15,0),(41,64,16,1),(42,65,16,0),(43,66,17,1),(44,67,18,1),(45,68,18,0),(46,69,18,0),(47,70,18,0),(48,71,19,1),(49,72,19,0),(50,73,20,1),(51,74,20,0),(52,75,21,1),(53,76,22,1),(54,77,23,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-03-31',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]',NULL,'SW-185-A0',0,16,0,1,'in_stock',1,1,0,0,80.25,NULL,NULL,NULL,11,10,10,762,NULL,69457,'2025-03-30 23:46:26','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,2,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'SW-183-A0',0,18,0,1,'in_stock',1,5,0,0,40.5,NULL,NULL,NULL,19,20,16,831,NULL,33634,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]',NULL,'SW-133-A0',0,17,0,1,'in_stock',1,2,0,0,20,NULL,NULL,NULL,14,11,11,589,NULL,93938,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,4,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'SW-174-A0',0,15,0,1,'in_stock',1,7,0,0,579,521.1,NULL,NULL,14,12,10,535,NULL,72355,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,1,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'SW-116-A0',0,14,0,1,'in_stock',1,6,0,0,719,NULL,NULL,NULL,17,16,16,575,NULL,95372,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,4,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]',NULL,'SW-141-A0',0,17,0,1,'in_stock',1,7,0,0,473,NULL,NULL,NULL,18,19,19,646,NULL,60702,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]',NULL,'SW-117-A0',0,19,0,1,'in_stock',1,2,0,0,524,NULL,NULL,NULL,20,16,16,522,NULL,149225,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,6,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]',NULL,'SW-112-A0',0,12,0,1,'in_stock',1,1,0,0,1134,1020.6,NULL,NULL,10,16,17,576,NULL,24385,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]',NULL,'SW-106-A0',0,12,0,1,'in_stock',1,6,0,0,521,NULL,NULL,NULL,18,18,16,620,NULL,52713,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,4,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]',NULL,'SW-112-A0',0,18,0,1,'in_stock',0,1,0,0,1161,NULL,NULL,NULL,16,18,14,533,NULL,101451,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,6,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]',NULL,'SW-190-A0',0,18,0,1,'in_stock',0,7,0,0,1103,NULL,NULL,NULL,16,19,14,520,NULL,72008,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,2,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]',NULL,'SW-158-A0',0,19,0,1,'in_stock',0,4,0,0,586,451.22,NULL,NULL,20,13,13,747,NULL,16819,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,5,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'SW-137-A0',0,10,0,1,'in_stock',0,4,0,0,566,NULL,NULL,NULL,13,18,13,620,NULL,98213,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,6,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]',NULL,'SW-100-A0',0,12,0,1,'in_stock',0,6,0,0,516,NULL,NULL,NULL,18,12,13,549,NULL,134039,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,6,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'SW-109-A0',0,10,0,1,'in_stock',0,6,0,0,553,NULL,NULL,NULL,17,15,19,858,NULL,176142,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,5,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]',NULL,'SW-139-A0',0,17,0,1,'in_stock',0,1,0,0,572,480.48,NULL,NULL,17,10,19,728,NULL,131904,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,5,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]',NULL,'SW-136-A0',0,10,0,1,'in_stock',0,5,0,0,597,NULL,NULL,NULL,19,15,16,786,NULL,35397,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,3,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]',NULL,'SW-113-A0',0,20,0,1,'in_stock',0,2,0,0,1296,NULL,NULL,NULL,17,20,10,626,NULL,40595,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]',NULL,'SW-196-A0',0,11,0,1,'in_stock',0,7,0,0,1070,NULL,NULL,NULL,20,20,18,739,NULL,175445,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,3,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]',NULL,'SW-114-A0',0,15,0,1,'in_stock',0,7,0,0,922,774.48,NULL,NULL,19,17,12,662,NULL,36942,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]',NULL,'SW-112-A0',0,10,0,1,'in_stock',0,3,0,0,746,NULL,NULL,NULL,10,18,18,750,NULL,78015,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,2,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]',NULL,'SW-192-A0',0,17,0,1,'in_stock',0,5,0,0,699,NULL,NULL,NULL,11,19,17,736,NULL,119888,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,1,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]',NULL,'SW-122-A0',0,14,0,1,'in_stock',0,2,0,0,1146,NULL,NULL,NULL,16,19,14,601,NULL,61609,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,3,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'SW-185-A0',0,16,0,1,'in_stock',0,1,1,0,80.25,NULL,NULL,NULL,11,10,10,762,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'SW-185-A0-A1',0,16,0,1,'in_stock',0,1,1,0,80.25,NULL,NULL,NULL,11,10,10,762,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'SW-185-A0-A2',0,16,0,1,'in_stock',0,1,1,0,80.25,NULL,NULL,NULL,11,10,10,762,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]',NULL,'SW-183-A0',0,18,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,19,20,16,831,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'SW-183-A0-A1',0,18,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,19,20,16,831,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(29,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]',NULL,'SW-183-A0-A2',0,18,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,19,20,16,831,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(30,'Smart Watches',NULL,NULL,'published','[\"products\\/2-3.jpg\"]',NULL,'SW-183-A0-A3',0,18,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,19,20,16,831,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(31,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]',NULL,'SW-133-A0',0,17,0,1,'in_stock',0,2,1,0,20,NULL,NULL,NULL,14,11,11,589,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(32,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]',NULL,'SW-133-A0-A1',0,17,0,1,'in_stock',0,2,1,0,20,NULL,NULL,NULL,14,11,11,589,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(33,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]',NULL,'SW-133-A0-A2',0,17,0,1,'in_stock',0,2,1,0,20,NULL,NULL,NULL,14,11,11,589,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(34,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]',NULL,'SW-133-A0-A3',0,17,0,1,'in_stock',0,2,1,0,20,NULL,NULL,NULL,14,11,11,589,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(35,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]',NULL,'SW-174-A0',0,15,0,1,'in_stock',0,7,1,0,579,521.1,NULL,NULL,14,12,10,535,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(36,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]',NULL,'SW-174-A0-A1',0,15,0,1,'in_stock',0,7,1,0,579,445.83,NULL,NULL,14,12,10,535,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(37,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]',NULL,'SW-174-A0-A2',0,15,0,1,'in_stock',0,7,1,0,579,440.04,NULL,NULL,14,12,10,535,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(38,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]',NULL,'SW-116-A0',0,14,0,1,'in_stock',0,6,1,0,719,NULL,NULL,NULL,17,16,16,575,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(39,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'SW-116-A0-A1',0,14,0,1,'in_stock',0,6,1,0,719,NULL,NULL,NULL,17,16,16,575,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(40,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SW-141-A0',0,17,0,1,'in_stock',0,7,1,0,473,NULL,NULL,NULL,18,19,19,646,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(41,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SW-141-A0-A1',0,17,0,1,'in_stock',0,7,1,0,473,NULL,NULL,NULL,18,19,19,646,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(42,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SW-141-A0-A2',0,17,0,1,'in_stock',0,7,1,0,473,NULL,NULL,NULL,18,19,19,646,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(43,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'SW-117-A0',0,19,0,1,'in_stock',0,2,1,0,524,NULL,NULL,NULL,20,16,16,522,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(44,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'SW-117-A0-A1',0,19,0,1,'in_stock',0,2,1,0,524,NULL,NULL,NULL,20,16,16,522,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(45,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'SW-117-A0-A2',0,19,0,1,'in_stock',0,2,1,0,524,NULL,NULL,NULL,20,16,16,522,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(46,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]',NULL,'SW-112-A0',0,12,0,1,'in_stock',0,1,1,0,1134,1020.6,NULL,NULL,10,16,17,576,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(47,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'SW-112-A0-A1',0,12,0,1,'in_stock',0,1,1,0,1134,884.52,NULL,NULL,10,16,17,576,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(48,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'SW-106-A0',0,12,0,1,'in_stock',0,6,1,0,521,NULL,NULL,NULL,18,18,16,620,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(49,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'SW-106-A0-A1',0,12,0,1,'in_stock',0,6,1,0,521,NULL,NULL,NULL,18,18,16,620,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'SW-112-A0',0,18,0,1,'in_stock',0,1,1,0,1161,NULL,NULL,NULL,16,18,14,533,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'SW-112-A0-A1',0,18,0,1,'in_stock',0,1,1,0,1161,NULL,NULL,NULL,16,18,14,533,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(52,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]',NULL,'SW-190-A0',0,18,0,1,'in_stock',0,7,1,0,1103,NULL,NULL,NULL,16,19,14,520,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(53,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'SW-190-A0-A1',0,18,0,1,'in_stock',0,7,1,0,1103,NULL,NULL,NULL,16,19,14,520,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(54,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]',NULL,'SW-190-A0-A2',0,18,0,1,'in_stock',0,7,1,0,1103,NULL,NULL,NULL,16,19,14,520,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(55,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-3.jpg\"]',NULL,'SW-190-A0-A3',0,18,0,1,'in_stock',0,7,1,0,1103,NULL,NULL,NULL,16,19,14,520,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(56,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]',NULL,'SW-158-A0',0,19,0,1,'in_stock',0,4,1,0,586,451.22,NULL,NULL,20,13,13,747,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(57,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'SW-158-A0-A1',0,19,0,1,'in_stock',0,4,1,0,586,421.92,NULL,NULL,20,13,13,747,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(58,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'SW-137-A0',0,10,0,1,'in_stock',0,4,1,0,566,NULL,NULL,NULL,13,18,13,620,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(59,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'SW-137-A0-A1',0,10,0,1,'in_stock',0,4,1,0,566,NULL,NULL,NULL,13,18,13,620,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(60,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'SW-100-A0',0,12,0,1,'in_stock',0,6,1,0,516,NULL,NULL,NULL,18,12,13,549,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(61,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'SW-100-A0-A1',0,12,0,1,'in_stock',0,6,1,0,516,NULL,NULL,NULL,18,12,13,549,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(62,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'SW-109-A0',0,10,0,1,'in_stock',0,6,1,0,553,NULL,NULL,NULL,17,15,19,858,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'SW-109-A0-A1',0,10,0,1,'in_stock',0,6,1,0,553,NULL,NULL,NULL,17,15,19,858,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]',NULL,'SW-139-A0',0,17,0,1,'in_stock',0,1,1,0,572,480.48,NULL,NULL,17,10,19,728,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(65,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]',NULL,'SW-139-A0-A1',0,17,0,1,'in_stock',0,1,1,0,572,491.92,NULL,NULL,17,10,19,728,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(66,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]',NULL,'SW-136-A0',0,10,0,1,'in_stock',0,5,1,0,597,NULL,NULL,NULL,19,15,16,786,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]',NULL,'SW-113-A0',0,20,0,1,'in_stock',0,2,1,0,1296,NULL,NULL,NULL,17,20,10,626,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(68,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'SW-113-A0-A1',0,20,0,1,'in_stock',0,2,1,0,1296,NULL,NULL,NULL,17,20,10,626,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(69,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'SW-113-A0-A2',0,20,0,1,'in_stock',0,2,1,0,1296,NULL,NULL,NULL,17,20,10,626,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(70,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]',NULL,'SW-113-A0-A3',0,20,0,1,'in_stock',0,2,1,0,1296,NULL,NULL,NULL,17,20,10,626,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]',NULL,'SW-196-A0',0,11,0,1,'in_stock',0,7,1,0,1070,NULL,NULL,NULL,20,20,18,739,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'SW-196-A0-A1',0,11,0,1,'in_stock',0,7,1,0,1070,NULL,NULL,NULL,20,20,18,739,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]',NULL,'SW-114-A0',0,15,0,1,'in_stock',0,7,1,0,922,774.48,NULL,NULL,19,17,12,662,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'SW-114-A0-A1',0,15,0,1,'in_stock',0,7,1,0,922,802.14,NULL,NULL,19,17,12,662,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(75,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]',NULL,'SW-112-A0',0,10,0,1,'in_stock',0,3,1,0,746,NULL,NULL,NULL,10,18,18,750,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,NULL,0),(76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]',NULL,'SW-192-A0',0,17,0,1,'in_stock',0,5,1,0,699,NULL,NULL,NULL,11,19,17,736,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]',NULL,'SW-122-A0',0,14,0,1,'in_stock',0,2,1,0,1146,NULL,NULL,NULL,16,19,14,601,NULL,0,'2025-03-30 23:46:27','2025-03-30 23:46:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,NULL,NULL,6,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18.jpg\",\"products\\/19-2.jpg\"]'),(2,2,NULL,NULL,2,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/23-2.jpg\"]'),(3,8,NULL,NULL,12,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13-1.jpg\",\"products\\/18-3.jpg\"]'),(4,7,NULL,NULL,7,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/11-2.jpg\",\"products\\/20-1.jpg\"]'),(5,10,NULL,NULL,16,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/18-2.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]'),(6,1,NULL,NULL,21,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-2.jpg\",\"products\\/22.jpg\"]'),(7,10,NULL,NULL,6,2,'Good app, good backup service and support. Good documentation.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/8-3.jpg\",\"products\\/22.jpg\"]'),(8,9,NULL,NULL,20,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/18-3.jpg\"]'),(10,8,NULL,NULL,19,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\"]'),(11,7,NULL,NULL,3,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-2.jpg\",\"products\\/13-1.jpg\",\"products\\/17.jpg\"]'),(12,2,NULL,NULL,18,3,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/11-1.jpg\",\"products\\/17.jpg\"]'),(13,5,NULL,NULL,10,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18-3.jpg\"]'),(14,8,NULL,NULL,9,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/17-3.jpg\",\"products\\/18.jpg\",\"products\\/20.jpg\"]'),(15,6,NULL,NULL,1,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/4-1.jpg\",\"products\\/5-3.jpg\",\"products\\/19.jpg\"]'),(16,3,NULL,NULL,13,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/23-2.jpg\"]'),(17,9,NULL,NULL,7,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-2.jpg\",\"products\\/17-3.jpg\",\"products\\/18-1.jpg\"]'),(19,2,NULL,NULL,10,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\"]'),(20,8,NULL,NULL,22,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/22.jpg\"]'),(22,5,NULL,NULL,3,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/12.jpg\"]'),(23,5,NULL,NULL,16,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/8.jpg\"]'),(24,5,NULL,NULL,5,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/15-1.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\"]'),(25,3,NULL,NULL,7,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11.jpg\"]'),(26,3,NULL,NULL,15,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-3.jpg\"]'),(27,3,NULL,NULL,9,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/4.jpg\"]'),(28,9,NULL,NULL,16,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\"]'),(29,9,NULL,NULL,3,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/7.jpg\",\"products\\/19-2.jpg\",\"products\\/22-1.jpg\"]'),(30,6,NULL,NULL,13,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/11-3.jpg\",\"products\\/12-1.jpg\",\"products\\/23-2.jpg\"]'),(32,9,NULL,NULL,22,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\",\"products\\/15.jpg\"]'),(33,8,NULL,NULL,8,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-1.jpg\"]'),(34,6,NULL,NULL,14,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\",\"products\\/10-1.jpg\"]'),(35,7,NULL,NULL,22,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\"]'),(36,1,NULL,NULL,13,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-3.jpg\",\"products\\/8-2.jpg\",\"products\\/11-2.jpg\",\"products\\/20-1.jpg\"]'),(37,7,NULL,NULL,12,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-1.jpg\",\"products\\/18-2.jpg\"]'),(38,2,NULL,NULL,5,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\",\"products\\/5-3.jpg\",\"products\\/20-1.jpg\"]'),(39,7,NULL,NULL,16,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\"]'),(40,8,NULL,NULL,7,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/2-3.jpg\",\"products\\/21.jpg\"]'),(42,5,NULL,NULL,21,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/7.jpg\",\"products\\/12-2.jpg\"]'),(43,6,NULL,NULL,2,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/9-1.jpg\",\"products\\/19.jpg\"]'),(44,6,NULL,NULL,17,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15-1.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\"]'),(45,10,NULL,NULL,20,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/23-3.jpg\"]'),(46,4,NULL,NULL,17,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-2.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]'),(47,9,NULL,NULL,12,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\",\"products\\/22.jpg\"]'),(48,6,NULL,NULL,21,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/10.jpg\",\"products\\/17.jpg\"]'),(49,9,NULL,NULL,11,4,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4.jpg\",\"products\\/9.jpg\",\"products\\/17.jpg\"]'),(50,3,NULL,NULL,14,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/21-1.jpg\"]'),(51,3,NULL,NULL,6,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8.jpg\",\"products\\/15.jpg\"]'),(52,1,NULL,NULL,9,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-3.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\"]'),(53,9,NULL,NULL,2,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12.jpg\",\"products\\/21.jpg\",\"products\\/22-2.jpg\",\"products\\/23-2.jpg\"]'),(55,6,NULL,NULL,10,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9.jpg\"]'),(56,8,NULL,NULL,4,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-2.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/23-3.jpg\"]'),(57,6,NULL,NULL,5,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-1.jpg\",\"products\\/6.jpg\",\"products\\/13-1.jpg\",\"products\\/17-2.jpg\"]'),(58,6,NULL,NULL,8,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/21-2.jpg\"]'),(60,10,NULL,NULL,1,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11-3.jpg\"]'),(61,3,NULL,NULL,20,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-3.jpg\",\"products\\/19-1.jpg\",\"products\\/22-3.jpg\"]'),(62,4,NULL,NULL,19,4,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15-1.jpg\"]'),(64,4,NULL,NULL,3,1,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\",\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(65,3,NULL,NULL,8,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\",\"products\\/22-2.jpg\"]'),(66,4,NULL,NULL,8,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/9-2.jpg\",\"products\\/20-3.jpg\",\"products\\/22-2.jpg\"]'),(69,7,NULL,NULL,5,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\",\"products\\/23-3.jpg\"]'),(71,5,NULL,NULL,6,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\",\"products\\/15-1.jpg\",\"products\\/19-2.jpg\"]'),(72,10,NULL,NULL,12,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9.jpg\",\"products\\/11-2.jpg\",\"products\\/19-3.jpg\"]'),(73,9,NULL,NULL,21,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\"]'),(74,4,NULL,NULL,5,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\",\"products\\/4.jpg\",\"products\\/12-1.jpg\",\"products\\/17-3.jpg\"]'),(75,1,NULL,NULL,23,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-1.jpg\",\"products\\/19-3.jpg\",\"products\\/20.jpg\",\"products\\/23-2.jpg\"]'),(76,7,NULL,NULL,14,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\",\"products\\/10-1.jpg\",\"products\\/12-2.jpg\",\"products\\/17.jpg\"]'),(77,7,NULL,NULL,21,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11.jpg\",\"products\\/18-3.jpg\",\"products\\/21-2.jpg\"]'),(79,1,NULL,NULL,14,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15.jpg\"]'),(80,3,NULL,NULL,10,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12.jpg\",\"products\\/20-3.jpg\"]'),(81,1,NULL,NULL,3,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/13-1.jpg\"]'),(82,5,NULL,NULL,1,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\",\"products\\/17.jpg\"]'),(83,1,NULL,NULL,22,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13-1.jpg\"]'),(84,6,NULL,NULL,6,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/16.jpg\"]'),(85,10,NULL,NULL,22,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\",\"products\\/4-3.jpg\",\"products\\/18.jpg\"]'),(86,4,NULL,NULL,18,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\",\"products\\/18-1.jpg\"]'),(87,7,NULL,NULL,2,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13-1.jpg\",\"products\\/19-3.jpg\",\"products\\/21.jpg\"]'),(88,3,NULL,NULL,19,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-1.jpg\"]'),(89,6,NULL,NULL,16,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\",\"products\\/5-2.jpg\",\"products\\/11-1.jpg\"]'),(90,4,NULL,NULL,16,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/12-3.jpg\",\"products\\/19-1.jpg\",\"products\\/21.jpg\"]'),(91,8,NULL,NULL,18,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-2.jpg\"]'),(92,4,NULL,NULL,2,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/10-2.jpg\",\"products\\/23-1.jpg\"]'),(95,10,NULL,NULL,21,2,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/15-1.jpg\"]'),(96,8,NULL,NULL,13,1,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-1.jpg\"]'),(98,8,NULL,NULL,5,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18-2.jpg\"]'),(100,9,NULL,NULL,19,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11-1.jpg\",\"products\\/20-3.jpg\",\"products\\/22.jpg\"]'),(102,3,NULL,NULL,11,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/8-3.jpg\",\"products\\/17-3.jpg\",\"products\\/21-1.jpg\"]'),(103,10,NULL,NULL,23,3,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\"]'),(104,9,NULL,NULL,18,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\"]'),(105,9,NULL,NULL,15,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-3.jpg\",\"products\\/4-2.jpg\"]'),(107,5,NULL,NULL,14,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-1.jpg\",\"products\\/17.jpg\",\"products\\/21-2.jpg\"]'),(108,9,NULL,NULL,8,1,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-1.jpg\",\"products\\/17-1.jpg\"]'),(109,10,NULL,NULL,5,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12-3.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\",\"products\\/22.jpg\"]'),(110,3,NULL,NULL,18,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10.jpg\",\"products\\/17-2.jpg\"]'),(111,1,NULL,NULL,6,4,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-1.jpg\",\"products\\/10-2.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\"]'),(116,10,NULL,NULL,3,2,'Good app, good backup service and support. Good documentation.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/22-2.jpg\"]'),(118,1,NULL,NULL,5,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15.jpg\",\"products\\/19.jpg\"]'),(119,10,NULL,NULL,18,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/8.jpg\",\"products\\/23-1.jpg\"]'),(120,4,NULL,NULL,11,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\",\"products\\/9-1.jpg\",\"products\\/20-2.jpg\",\"products\\/21-1.jpg\"]'),(121,7,NULL,NULL,20,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-1.jpg\",\"products\\/17-1.jpg\",\"products\\/18-1.jpg\",\"products\\/21-2.jpg\"]'),(122,2,NULL,NULL,4,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/10.jpg\",\"products\\/23-3.jpg\"]'),(123,10,NULL,NULL,19,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13.jpg\",\"products\\/15.jpg\"]'),(125,10,NULL,NULL,14,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-2.jpg\",\"products\\/9.jpg\",\"products\\/13.jpg\"]'),(126,8,NULL,NULL,21,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/8-3.jpg\"]'),(127,2,NULL,NULL,6,4,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13.jpg\",\"products\\/22-2.jpg\"]'),(128,5,NULL,NULL,18,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/9.jpg\",\"products\\/17-3.jpg\",\"products\\/20-3.jpg\"]'),(129,10,NULL,NULL,7,1,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\",\"products\\/18-1.jpg\",\"products\\/21-1.jpg\",\"products\\/22.jpg\"]'),(130,4,NULL,NULL,12,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\"]'),(131,2,NULL,NULL,21,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/15.jpg\"]'),(133,7,NULL,NULL,8,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\"]'),(134,10,NULL,NULL,17,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/5-2.jpg\",\"products\\/9-1.jpg\",\"products\\/23-1.jpg\"]'),(135,3,NULL,NULL,4,2,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/22.jpg\"]'),(137,4,NULL,NULL,21,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/14.jpg\",\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(139,8,NULL,NULL,15,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\"]'),(142,3,NULL,NULL,12,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\"]'),(144,3,NULL,NULL,16,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15-1.jpg\"]'),(146,4,NULL,NULL,13,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12.jpg\",\"products\\/15.jpg\"]'),(147,6,NULL,NULL,7,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/7.jpg\",\"products\\/8-2.jpg\",\"products\\/12-3.jpg\",\"products\\/19-3.jpg\"]'),(149,7,NULL,NULL,19,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-3.jpg\",\"products\\/23-1.jpg\"]'),(154,10,NULL,NULL,11,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-2.jpg\",\"products\\/22.jpg\"]'),(155,2,NULL,NULL,19,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12.jpg\"]'),(159,10,NULL,NULL,8,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\",\"products\\/5-2.jpg\"]'),(162,5,NULL,NULL,11,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-3.jpg\",\"products\\/23-3.jpg\"]'),(165,10,NULL,NULL,10,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11.jpg\",\"products\\/20-1.jpg\",\"products\\/22-2.jpg\"]'),(166,2,NULL,NULL,7,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\"]'),(167,1,NULL,NULL,2,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\"]'),(169,10,NULL,NULL,13,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/10-2.jpg\",\"products\\/10.jpg\"]'),(171,5,NULL,NULL,15,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\"]'),(172,6,NULL,NULL,19,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\",\"products\\/8-1.jpg\",\"products\\/23-3.jpg\"]'),(173,9,NULL,NULL,1,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13-1.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\",\"products\\/22-2.jpg\"]'),(174,2,NULL,NULL,22,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13.jpg\",\"products\\/19-2.jpg\",\"products\\/22-3.jpg\"]'),(176,4,NULL,NULL,14,2,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-3.jpg\"]'),(179,10,NULL,NULL,15,5,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17.jpg\"]'),(180,1,NULL,NULL,10,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\",\"products\\/8-2.jpg\",\"products\\/12-3.jpg\",\"products\\/22.jpg\"]'),(182,2,NULL,NULL,13,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\"]'),(188,7,NULL,NULL,1,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12-2.jpg\"]'),(189,6,NULL,NULL,23,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11.jpg\"]'),(192,5,NULL,NULL,12,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/14.jpg\",\"products\\/17-2.jpg\"]'),(193,5,NULL,NULL,4,3,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/16.jpg\",\"products\\/23-3.jpg\"]'),(194,7,NULL,NULL,4,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8.jpg\"]'),(195,8,NULL,NULL,16,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-3.jpg\",\"products\\/4-3.jpg\",\"products\\/11-1.jpg\",\"products\\/15.jpg\"]'),(199,2,NULL,NULL,15,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/11.jpg\",\"products\\/14.jpg\",\"products\\/20-2.jpg\"]'),(201,10,NULL,NULL,9,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18-2.jpg\",\"products\\/20-1.jpg\"]'),(202,6,NULL,NULL,22,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-2.jpg\",\"products\\/12-2.jpg\",\"products\\/20-3.jpg\",\"products\\/20.jpg\"]'),(203,4,NULL,NULL,4,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-1.jpg\",\"products\\/10.jpg\"]'),(208,3,NULL,NULL,2,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/2-3.jpg\",\"products\\/12-3.jpg\",\"products\\/16.jpg\"]'),(211,7,NULL,NULL,11,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/15.jpg\",\"products\\/19.jpg\"]'),(213,8,NULL,NULL,6,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8.jpg\"]'),(215,1,NULL,NULL,4,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/21-2.jpg\",\"products\\/22-1.jpg\"]'),(218,6,NULL,NULL,4,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-1.jpg\",\"products\\/8-1.jpg\",\"products\\/16.jpg\",\"products\\/23-2.jpg\"]'),(219,3,NULL,NULL,22,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-1.jpg\",\"products\\/5-2.jpg\",\"products\\/11-2.jpg\"]'),(221,9,NULL,NULL,10,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/11-3.jpg\",\"products\\/18-1.jpg\",\"products\\/23-3.jpg\"]'),(224,5,NULL,NULL,22,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/8.jpg\",\"products\\/11-2.jpg\",\"products\\/22.jpg\"]'),(225,1,NULL,NULL,17,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-2.jpg\"]'),(229,4,NULL,NULL,20,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-2.jpg\",\"products\\/9.jpg\",\"products\\/10-2.jpg\"]'),(232,4,NULL,NULL,15,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/22.jpg\"]'),(234,9,NULL,NULL,9,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-3.jpg\"]'),(242,1,NULL,NULL,19,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-1.jpg\",\"products\\/19.jpg\"]'),(244,9,NULL,NULL,13,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-2.jpg\"]'),(248,7,NULL,NULL,10,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12.jpg\",\"products\\/17-2.jpg\"]'),(250,4,NULL,NULL,7,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]'),(251,10,NULL,NULL,4,2,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/18-2.jpg\"]'),(256,1,NULL,NULL,7,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-2.jpg\",\"products\\/8.jpg\"]'),(263,5,NULL,NULL,9,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/14.jpg\",\"products\\/19-3.jpg\",\"products\\/19.jpg\"]'),(264,1,NULL,NULL,11,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4.jpg\",\"products\\/20-1.jpg\"]'),(266,1,NULL,NULL,20,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\"]'),(268,9,NULL,NULL,23,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11-2.jpg\",\"products\\/13-1.jpg\"]'),(276,5,NULL,NULL,23,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/14.jpg\"]'),(279,4,NULL,NULL,23,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5.jpg\",\"products\\/10.jpg\",\"products\\/13.jpg\",\"products\\/23-3.jpg\"]'),(280,1,NULL,NULL,16,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19-2.jpg\"]'),(282,2,NULL,NULL,12,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-2.jpg\",\"products\\/16.jpg\",\"products\\/22-1.jpg\"]'),(287,6,NULL,NULL,18,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-3.jpg\",\"products\\/12-3.jpg\",\"products\\/19.jpg\",\"products\\/23.jpg\"]'),(289,2,NULL,NULL,17,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/20-2.jpg\"]'),(291,7,NULL,NULL,17,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-2.jpg\",\"products\\/12.jpg\",\"products\\/20-3.jpg\",\"products\\/23-1.jpg\"]'),(294,7,NULL,NULL,15,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/11-3.jpg\"]'),(295,6,NULL,NULL,12,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-2.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\",\"products\\/20-3.jpg\"]'),(297,7,NULL,NULL,6,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18.jpg\",\"products\\/21.jpg\",\"products\\/23-3.jpg\"]'),(298,1,NULL,NULL,12,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/14.jpg\"]'),(309,6,NULL,NULL,11,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-1.jpg\"]'),(312,8,NULL,NULL,20,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/18-2.jpg\",\"products\\/19-2.jpg\"]'),(314,8,NULL,NULL,23,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11-3.jpg\",\"products\\/15-1.jpg\",\"products\\/20-1.jpg\",\"products\\/23-3.jpg\"]'),(316,6,NULL,NULL,3,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/6.jpg\",\"products\\/19-1.jpg\",\"products\\/21-1.jpg\"]'),(326,8,NULL,NULL,2,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-1.jpg\",\"products\\/20-3.jpg\"]'),(336,9,NULL,NULL,14,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-3.jpg\",\"products\\/11-3.jpg\",\"products\\/17-2.jpg\",\"products\\/20-1.jpg\"]'),(340,1,NULL,NULL,15,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-2.jpg\"]'),(342,4,NULL,NULL,22,3,'Good app, good backup service and support. Good documentation.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13.jpg\",\"products\\/18.jpg\",\"products\\/22-2.jpg\"]'),(343,9,NULL,NULL,4,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18.jpg\",\"products\\/19-3.jpg\",\"products\\/22.jpg\"]'),(350,6,NULL,NULL,20,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2.jpg\",\"products\\/13.jpg\",\"products\\/18-1.jpg\"]'),(352,7,NULL,NULL,18,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-2.jpg\"]'),(365,9,NULL,NULL,5,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-1.jpg\",\"products\\/18.jpg\"]'),(373,7,NULL,NULL,9,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\",\"products\\/20-3.jpg\"]'),(381,5,NULL,NULL,19,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/23-1.jpg\"]'),(385,5,NULL,NULL,7,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/5-1.jpg\",\"products\\/13-1.jpg\",\"products\\/19.jpg\"]'),(387,2,NULL,NULL,16,4,'Best ecommerce CMS online store!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/15-1.jpg\",\"products\\/18.jpg\",\"products\\/22-2.jpg\"]'),(397,5,NULL,NULL,20,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\"]'),(427,8,NULL,NULL,14,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/12-2.jpg\",\"products\\/19-1.jpg\"]'),(431,2,NULL,NULL,9,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8.jpg\",\"products\\/13.jpg\",\"products\\/15.jpg\",\"products\\/20.jpg\"]'),(449,5,NULL,NULL,17,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-2.jpg\",\"products\\/16.jpg\"]'),(457,3,NULL,NULL,3,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4-1.jpg\",\"products\\/6.jpg\"]'),(458,10,NULL,NULL,2,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11-2.jpg\",\"products\\/23-3.jpg\"]'),(470,4,NULL,NULL,1,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12-3.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(478,1,NULL,NULL,1,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4.jpg\"]'),(482,8,NULL,NULL,10,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/18-3.jpg\"]'),(485,8,NULL,NULL,3,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/2-3.jpg\",\"products\\/4-3.jpg\",\"products\\/11-1.jpg\",\"products\\/15-1.jpg\"]'),(492,1,NULL,NULL,8,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-1.jpg\"]'),(502,2,NULL,NULL,3,3,'Good app, good backup service and support. Good documentation.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-3.jpg\",\"products\\/20-3.jpg\"]'),(511,3,NULL,NULL,17,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/17-2.jpg\"]'),(521,8,NULL,NULL,17,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/20-1.jpg\",\"products\\/20-3.jpg\"]'),(522,2,NULL,NULL,8,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-1.jpg\",\"products\\/14.jpg\",\"products\\/22-1.jpg\"]'),(531,7,NULL,NULL,23,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19.jpg\"]'),(537,6,NULL,NULL,15,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/23-3.jpg\"]'),(543,2,NULL,NULL,23,4,'Clean & perfect source code','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/13.jpg\",\"products\\/17-2.jpg\"]'),(551,5,NULL,NULL,2,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/11-1.jpg\",\"products\\/19-2.jpg\",\"products\\/23-3.jpg\"]'),(574,3,NULL,NULL,1,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15-1.jpg\"]'),(606,3,NULL,NULL,5,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/17-1.jpg\",\"products\\/23.jpg\"]'),(644,9,NULL,NULL,17,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/12.jpg\"]'),(659,5,NULL,NULL,13,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/8-3.jpg\",\"products\\/22-3.jpg\"]'),(665,3,NULL,NULL,21,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/11-2.jpg\"]'),(710,6,NULL,NULL,9,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/18.jpg\",\"products\\/19-2.jpg\"]'),(717,1,NULL,NULL,18,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/19.jpg\",\"products\\/23-3.jpg\"]'),(718,3,NULL,NULL,23,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/3.jpg\",\"products\\/4-3.jpg\"]'),(720,2,NULL,NULL,11,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/10-1.jpg\"]'),(736,4,NULL,NULL,10,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/22.jpg\",\"products\\/23-1.jpg\"]'),(861,8,NULL,NULL,1,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/15.jpg\",\"products\\/19-3.jpg\"]'),(986,2,NULL,NULL,1,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-03-30 23:46:30','2025-03-30 23:46:30','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/7.jpg\",\"products\\/10-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-03-30 23:46:30','2025-03-30 23:46:30');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-03-30 23:46:30','2025-03-30 23:46:30'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-03-30 23:46:30','2025-03-30 23:46:30'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-03-30 23:46:30','2025-03-30 23:46:30');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(2,'Performance',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(3,'Battery',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(4,'Display',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL),(2,'Technical Specification',NULL,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(2,'None',0,2,'published','2025-03-30 23:46:30','2025-03-30 23:46:30'),(3,'Import Tax',15,3,'published','2025-03-30 23:46:30','2025-03-30 23:46:30');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL),(2,'PAYMENT',1,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL),(3,'ORDER &amp; RETURNS',2,'published','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-03-30 23:46:33','2025-03-30 23:46:33');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','ee5dca82baaf5fc4da933061d26bb061',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','b288139dcff55f3633534bedc2940cf1',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','3866adfa1b9a62c76643605a456ef1cb',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','71c11efda2519ebf23e41c2ef1673b8d',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','e90125611e84c386cb029a7b8151a789',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','cecd7dfceb1facbaefa12b703f9611af',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2025-03-30 23:46:21','2025-03-30 23:46:21',NULL,'public'),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(16,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(17,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(18,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(19,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(20,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(21,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2025-03-30 23:46:22','2025-03-30 23:46:22',NULL,'public'),(22,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(25,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(26,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(27,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(28,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(29,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(30,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(31,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(32,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(33,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(34,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2025-03-30 23:46:23','2025-03-30 23:46:23',NULL,'public'),(35,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(36,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(37,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(38,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(39,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(40,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(41,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(42,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(43,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(44,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(45,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(46,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(47,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(48,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(49,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(50,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2025-03-30 23:46:24','2025-03-30 23:46:24',NULL,'public'),(51,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(52,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(53,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(54,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(55,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(56,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(57,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(58,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(59,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(60,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(61,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(62,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(63,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(64,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(65,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(66,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(67,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2025-03-30 23:46:25','2025-03-30 23:46:25',NULL,'public'),(68,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(69,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(70,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(71,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(72,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(73,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(74,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(75,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(76,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(77,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(78,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(79,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(80,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(81,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(82,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2025-03-30 23:46:26','2025-03-30 23:46:26',NULL,'public'),(83,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2025-03-30 23:46:27','2025-03-30 23:46:27',NULL,'public'),(84,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2025-03-30 23:46:27','2025-03-30 23:46:27',NULL,'public'),(85,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2025-03-30 23:46:27','2025-03-30 23:46:27',NULL,'public'),(86,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2025-03-30 23:46:27','2025-03-30 23:46:27',NULL,'public'),(87,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2025-03-30 23:46:28','2025-03-30 23:46:28',NULL,'public'),(88,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2025-03-30 23:46:28','2025-03-30 23:46:28',NULL,'public'),(89,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2025-03-30 23:46:28','2025-03-30 23:46:28',NULL,'public'),(90,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2025-03-30 23:46:28','2025-03-30 23:46:28',NULL,'public'),(91,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2025-03-30 23:46:28','2025-03-30 23:46:28',NULL,'public'),(92,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2025-03-30 23:46:28','2025-03-30 23:46:28',NULL,'public'),(93,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(94,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(95,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(96,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(97,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(98,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(99,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(100,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(101,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(102,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(103,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2025-03-30 23:46:31','2025-03-30 23:46:31',NULL,'public'),(104,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(105,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(106,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(107,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(108,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(109,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(110,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(111,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(112,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(113,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(114,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(115,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(116,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2025-03-30 23:46:32','2025-03-30 23:46:32',NULL,'public'),(117,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(118,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(119,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(120,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(121,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(122,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(123,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(124,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(125,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(126,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(127,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(128,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(129,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2025-03-30 23:46:33','2025-03-30 23:46:33',NULL,'public'),(130,0,'app','app',9,'image/png',8667,'general/app.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(131,0,'coming-soon','coming-soon',9,'image/jpeg',22253,'general/coming-soon.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(132,0,'favicon','favicon',9,'image/png',5047,'general/favicon.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(133,0,'logo-dark','logo-dark',9,'image/png',1562,'general/logo-dark.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(134,0,'logo-light','logo-light',9,'image/png',1529,'general/logo-light.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(135,0,'logo','logo',9,'image/png',1441,'general/logo.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(136,0,'newsletter','newsletter',9,'image/jpeg',9778,'general/newsletter.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(137,0,'payment-method-1','payment-method-1',9,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(138,0,'payment-method-2','payment-method-2',9,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(139,0,'payment-method-3','payment-method-3',9,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(140,0,'payment-method-4','payment-method-4',9,'image/jpeg',944,'general/payment-method-4.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(141,0,'payment-method-5','payment-method-5',9,'image/jpeg',964,'general/payment-method-5.jpg','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(142,0,'placeholder','placeholder',9,'image/png',12344,'general/placeholder.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(143,0,'1','1',10,'image/png',9022,'stores/1.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(144,0,'10','10',10,'image/png',4384,'stores/10.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(145,0,'11','11',10,'image/png',4706,'stores/11.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(146,0,'12','12',10,'image/png',5075,'stores/12.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(147,0,'13','13',10,'image/png',3700,'stores/13.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(148,0,'14','14',10,'image/png',4239,'stores/14.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(149,0,'15','15',10,'image/png',5304,'stores/15.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(150,0,'16','16',10,'image/png',4796,'stores/16.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(151,0,'17','17',10,'image/png',4919,'stores/17.png','[]','2025-03-30 23:46:34','2025-03-30 23:46:34',NULL,'public'),(152,0,'2','2',10,'image/png',8598,'stores/2.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(153,0,'3','3',10,'image/png',7888,'stores/3.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(154,0,'4','4',10,'image/png',8393,'stores/4.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(155,0,'5','5',10,'image/png',10159,'stores/5.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(156,0,'6','6',10,'image/png',10312,'stores/6.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(157,0,'7','7',10,'image/png',3764,'stores/7.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(158,0,'8','8',10,'image/png',4237,'stores/8.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public'),(159,0,'9','9',10,'image/png',4096,'stores/9.png','[]','2025-03-30 23:46:35','2025-03-30 23:46:35',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2025-03-30 23:46:21','2025-03-30 23:46:21',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2025-03-30 23:46:21','2025-03-30 23:46:21',NULL),(3,0,'products',NULL,'products',0,'2025-03-30 23:46:22','2025-03-30 23:46:22',NULL),(4,0,'customers',NULL,'customers',0,'2025-03-30 23:46:27','2025-03-30 23:46:27',NULL),(5,0,'news',NULL,'news',0,'2025-03-30 23:46:31','2025-03-30 23:46:31',NULL),(6,0,'sliders',NULL,'sliders',0,'2025-03-30 23:46:32','2025-03-30 23:46:32',NULL),(7,0,'promotion',NULL,'promotion',0,'2025-03-30 23:46:32','2025-03-30 23:46:32',NULL),(8,0,'payments',NULL,'payments',0,'2025-03-30 23:46:33','2025-03-30 23:46:33',NULL),(9,0,'general',NULL,'general',0,'2025-03-30 23:46:34','2025-03-30 23:46:34',NULL),(10,0,'stores',NULL,'stores',0,'2025-03-30 23:46:34','2025-03-30 23:46:34',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-03-30 23:46:33','2025-03-30 23:46:33');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(2,1,0,NULL,NULL,'#',NULL,1,'Pages',NULL,'_self',1,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:34'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,1,'Terms Of Use',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:34'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,2,'Terms & Conditions',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:34'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,3,'Refund Policy',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:34'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,4,'Coming soon',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:34'),(8,1,0,NULL,NULL,'/products',NULL,2,'Products',NULL,'_self',1,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Products Of Category',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,2,'Product Single',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(12,1,0,NULL,NULL,'/stores',NULL,3,'Stores',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQs',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(16,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(17,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Terms & Conditions',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(18,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(19,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQs',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(20,2,0,NULL,NULL,'/nothing',NULL,4,'404 Page',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(21,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(22,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Affiliate',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(23,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Career',NULL,'_self',0,'2025-03-30 23:46:33','2025-03-30 23:46:33'),(24,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(25,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(26,4,0,NULL,NULL,'/cart',NULL,1,'Cart',NULL,'_self',0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(27,4,0,NULL,NULL,'/customer/overview',NULL,2,'My account',NULL,'_self',0,'2025-03-30 23:46:34','2025-03-30 23:46:34'),(28,4,0,NULL,NULL,'/products',NULL,3,'Shop',NULL,'_self',0,'2025-03-30 23:46:34','2025-03-30 23:46:34');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(2,'Quick links','quick-links','published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(3,'Company','company','published','2025-03-30 23:46:33','2025-03-30 23:46:33'),(4,'Business','business','published','2025-03-30 23:46:34','2025-03-30 23:46:34');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2025-03-30 23:46:22','2025-03-30 23:46:22'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2025-03-30 23:46:27','2025-03-30 23:46:27'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-03-30 23:46:32','2025-03-30 23:46:32'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-03-30 23:46:32','2025-03-30 23:46:32'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-03-30 23:46:32','2025-03-30 23:46:32'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-03-30 23:46:32','2025-03-30 23:46:32'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-03-30 23:46:32','2025-03-30 23:46:32'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-03-30 23:46:32','2025-03-30 23:46:32');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2021_08_02_084121_fix_old_shortcode',1),(18,'2022_04_20_100851_add_index_to_media_table',1),(19,'2022_04_20_101046_add_index_to_menu_table',1),(20,'2022_07_10_034813_move_lang_folder_to_root',1),(21,'2022_08_04_051940_add_missing_column_expires_at',1),(22,'2022_09_01_000001_create_admin_notifications_tables',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2023_01_30_024431_add_alt_to_media_table',1),(27,'2023_02_16_042611_drop_table_password_resets',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_04_030654_improve_social_links',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2020_11_18_150916_ads_create_ads_table',2),(41,'2021_12_02_035301_add_ads_translations_table',2),(42,'2023_04_17_062645_add_open_in_new_tab',2),(43,'2023_11_07_023805_add_tablet_mobile_image',2),(44,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(45,'2024_04_27_100730_improve_analytics_setting',3),(46,'2015_06_29_025744_create_audit_history',4),(47,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(48,'2015_06_18_033822_create_blog_table',5),(49,'2021_02_16_092633_remove_default_value_for_author_type',5),(50,'2021_12_03_030600_create_blog_translations',5),(51,'2022_04_19_113923_add_index_to_table_posts',5),(52,'2023_08_29_074620_make_column_author_id_nullable',5),(53,'2024_07_30_091615_fix_order_column_in_categories_table',5),(54,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(55,'2016_06_17_091537_create_contacts_table',6),(56,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(57,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(58,'2024_03_25_000001_update_captcha_settings_for_contact',6),(59,'2024_04_19_063914_create_custom_fields_table',6),(60,'2020_03_05_041139_create_ecommerce_tables',7),(61,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(62,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(63,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(64,'2021_02_18_073505_update_table_ec_reviews',7),(65,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(66,'2021_03_10_025153_change_column_tax_amount',7),(67,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(68,'2021_04_28_074008_ecommerce_create_product_label_table',7),(69,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(70,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(71,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(72,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(73,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(74,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(75,'2021_11_23_071403_correct_languages_for_product_variations',7),(76,'2021_11_28_031808_add_product_tags_translations',7),(77,'2021_12_01_031123_add_featured_image_to_ec_products',7),(78,'2022_01_01_033107_update_table_ec_shipments',7),(79,'2022_02_16_042457_improve_product_attribute_sets',7),(80,'2022_03_22_075758_correct_product_name',7),(81,'2022_04_19_113334_add_index_to_ec_products',7),(82,'2022_04_28_144405_remove_unused_table',7),(83,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(84,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(85,'2022_06_16_095633_add_index_to_some_tables',7),(86,'2022_06_30_035148_create_order_referrals_table',7),(87,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(88,'2022_08_14_032836_create_ec_order_returns_table',7),(89,'2022_08_14_033554_create_ec_order_return_items_table',7),(90,'2022_08_15_040324_add_billing_address',7),(91,'2022_08_30_091114_support_digital_products_table',7),(92,'2022_09_13_095744_create_options_table',7),(93,'2022_09_13_104347_create_option_value_table',7),(94,'2022_10_05_163518_alter_table_ec_order_product',7),(95,'2022_10_12_041517_create_invoices_table',7),(96,'2022_10_12_142226_update_orders_table',7),(97,'2022_10_13_024916_update_table_order_returns',7),(98,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(99,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(100,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(101,'2022_11_19_041643_add_ec_tax_product_table',7),(102,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(103,'2022_12_17_041532_fix_address_in_order_invoice',7),(104,'2022_12_26_070329_create_ec_product_views_table',7),(105,'2023_01_04_033051_fix_product_categories',7),(106,'2023_01_09_050400_add_ec_global_options_translations_table',7),(107,'2023_01_10_093754_add_missing_option_value_id',7),(108,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(109,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(110,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(111,'2023_02_27_095752_remove_duplicate_reviews',7),(112,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(113,'2023_04_21_082427_create_ec_product_categorizables_table',7),(114,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(115,'2023_05_17_025812_fix_invoice_issue',7),(116,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(117,'2023_05_27_144611_fix_exchange_rate_setting',7),(118,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(119,'2023_06_30_042512_create_ec_order_tax_information_table',7),(120,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(121,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(122,'2023_08_15_064505_create_ec_tax_rules_table',7),(123,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(124,'2023_08_22_094114_drop_unique_for_barcode',7),(125,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(126,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(127,'2023_09_19_024955_create_discount_product_categories_table',7),(128,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(129,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(130,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(131,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(132,'2023_12_25_040604_ec_create_review_replies_table',7),(133,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(134,'2024_01_16_070706_fix_translation_tables',7),(135,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(136,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(137,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(138,'2024_03_29_042242_migrate_old_captcha_settings',7),(139,'2024_03_29_093946_create_ec_order_return_histories_table',7),(140,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(141,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(142,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(143,'2024_05_07_073153_improve_table_wishlist',7),(144,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(145,'2024_05_15_021503_fix_invoice_path',7),(146,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(147,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(148,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(149,'2024_07_14_071826_make_customer_email_nullable',7),(150,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(151,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(152,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(153,'2024_08_19_132849_create_specification_tables',7),(154,'2024_09_07_060744_add_author_column_to_specification_tables',7),(155,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(156,'2024_09_25_073928_remove_wrong_product_slugs',7),(157,'2025_01_15_050230_migrate_old_theme_options',7),(158,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(159,'2025_01_24_044641_migrate_old_country_data',7),(160,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(161,'2025_02_13_021247_add_tax_translations',7),(162,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(163,'2018_07_09_221238_create_faq_table',8),(164,'2021_12_03_082134_create_faq_translations',8),(165,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(166,'2016_10_03_032336_create_languages_table',9),(167,'2023_09_14_022423_add_index_for_language_table',9),(168,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(169,'2021_12_03_075608_create_page_translations',10),(170,'2023_07_06_011444_create_slug_translations_table',10),(171,'2019_11_18_061011_create_country_table',11),(172,'2021_12_03_084118_create_location_translations',11),(173,'2021_12_03_094518_migrate_old_location_data',11),(174,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(175,'2022_01_16_085908_improve_plugin_location',11),(176,'2022_08_04_052122_delete_location_backup_tables',11),(177,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(178,'2023_07_26_041451_add_more_columns_to_location_table',11),(179,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(180,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(181,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(182,'2024_08_17_094600_add_image_into_countries',11),(183,'2025_01_08_093652_add_zip_code_to_cities',11),(184,'2021_07_06_030002_create_marketplace_table',12),(185,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(186,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(187,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(188,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(189,'2021_12_06_031304_update_table_mp_customer_revenues',12),(190,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(191,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(192,'2022_11_02_071413_add_more_info_for_store',12),(193,'2022_11_02_080444_add_tax_info',12),(194,'2023_02_01_062030_add_store_translations',12),(195,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(196,'2023_02_17_023648_fix_store_prefix',12),(197,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(198,'2024_05_07_082630_create_mp_messages_table',12),(199,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(200,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(201,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(202,'2024_09_17_125408_add_square_logo_to_stores_table',12),(203,'2017_10_24_154832_create_newsletter_table',13),(204,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(205,'2017_05_18_080441_create_payment_tables',14),(206,'2021_03_27_144913_add_customer_type_into_table_payments',14),(207,'2021_05_24_034720_make_column_currency_nullable',14),(208,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(209,'2021_10_19_020859_update_metadata_field',14),(210,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(211,'2022_07_07_153354_update_charge_id_in_table_payments',14),(212,'2024_07_04_083133_create_payment_logs_table',14),(213,'2017_07_11_140018_create_simple_slider_table',15),(214,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',16),(215,'2016_10_07_193005_create_translations_table',17),(216,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) unsigned DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','oconner.kendrick@example.com','+12835702588','378 Kimberly Islands','FI','Colorado','Berniershire',2,'stores/1.png',NULL,NULL,'Voluptas maxime temporibus odio a.','Earum aut consectetur dolorum esse corrupti. Ipsa quo et numquam deserunt reiciendis et. Maxime dolorum repellendus ea voluptatibus.','published',NULL,'2025-03-30 23:46:36','2025-03-30 23:46:36',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','jude.hudson@example.com','+14157337828','8832 Jeramy Lake','AZ','Nebraska','West Brandymouth',4,'stores/2.png',NULL,NULL,'Nesciunt expedita doloribus recusandae.','Eius expedita eveniet sunt doloremque asperiores eos ullam. Omnis dolorem aut exercitationem eveniet itaque itaque perspiciatis.','published',NULL,'2025-03-30 23:46:36','2025-03-30 23:46:36',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','ankunding.caterina@example.org','+19068262930','44621 Hand Fork Suite 224','IQ','Colorado','New Malliehaven',6,'stores/3.png',NULL,NULL,'Tenetur sunt est a.','Optio iste est beatae quisquam aliquid. Voluptatem ab iure vel. Repellat et officia voluptatem et dolores blanditiis.','published',NULL,'2025-03-30 23:46:36','2025-03-30 23:46:36',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','mkoelpin@example.org','+18054701145','7520 Buckridge Manors','LB','South Carolina','Port Halle',7,'stores/4.png',NULL,NULL,'Ipsam sequi quidem quia nesciunt sunt et.','Iste debitis debitis neque commodi et. Quasi tempora aut dolor sunt culpa similique cum. Consectetur ea voluptatum et est aut.','published',NULL,'2025-03-30 23:46:36','2025-03-30 23:46:36',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','humberto73@example.org','+13374845020','78072 Parker Pines','MZ','Idaho','Lake Jarod',8,'stores/5.png',NULL,NULL,'Iste perspiciatis nihil officiis et et.','Vitae iusto soluta laboriosam. Delectus quis ad quos nisi. Enim veritatis est consequuntur tempore quam qui id.','published',NULL,'2025-03-30 23:46:36','2025-03-30 23:46:36',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','katarina74@example.net','+12184167188','7292 Murray Walk Apt. 352','CF','Arizona','West Robert',9,'stores/6.png',NULL,NULL,'Sit velit ipsa ut fugiat sequi.','Qui et et voluptas sed. Sequi pariatur quo iste aut. Aut velit id cupiditate. Laboriosam praesentium ad id optio magnam.','published',NULL,'2025-03-30 23:46:36','2025-03-30 23:46:36',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$aqZCpjAmz2dh48k4YJUEHedNTW429DqZYrINnN5wN849XrPw5bT9S','{\"name\":\"Loyal Jacobson\",\"number\":\"+15595401761\",\"full_name\":\"Prof. Justus Corwin\",\"description\":\"Logan Lynch\"}','2025-03-30 23:46:35','2025-03-30 23:46:35','bank_transfer',NULL),(2,4,0.00,0.00,0.00,'$2y$12$2hoBbXfJNFGhK.58RldrPeIhUub5EVE2A2owMmmJWmcgnU2G2fULq','{\"name\":\"Olaf Klein III\",\"number\":\"+12124507673\",\"full_name\":\"Mrs. Gwen Pagac DDS\",\"description\":\"Prof. Gerardo Jakubowski V\"}','2025-03-30 23:46:35','2025-03-30 23:46:35','bank_transfer',NULL),(3,6,0.00,0.00,0.00,'$2y$12$sHeqslQ17DYytgK1X4Oh8egcumAs2p19FFgq3nHvEEE3nmds5BMX2','{\"name\":\"Bernice Gorczany\",\"number\":\"+15743662451\",\"full_name\":\"Keira Rogahn\",\"description\":\"Mrs. Michelle Turcotte\"}','2025-03-30 23:46:36','2025-03-30 23:46:36','bank_transfer',NULL),(4,7,0.00,0.00,0.00,'$2y$12$lZRmGrS26/W/.Q8sygWVpu6US/Aem3eJrrOZPGcdmYp3WFLdL8ct6','{\"name\":\"Mrs. Alysha Koelpin\",\"number\":\"+19075639312\",\"full_name\":\"Lisa Bashirian\",\"description\":\"Jessica Bartell\"}','2025-03-30 23:46:36','2025-03-30 23:46:36','bank_transfer',NULL),(5,8,0.00,0.00,0.00,'$2y$12$X766Y7lETggWr.97MIncr.ukJ/IJXmRdgHdFvOd.VvxuIE0NO2iEK','{\"name\":\"Mr. Rocio Harvey\",\"number\":\"+18639691760\",\"full_name\":\"Maggie Hill\",\"description\":\"Moises Beer\"}','2025-03-30 23:46:36','2025-03-30 23:46:36','bank_transfer',NULL),(6,9,0.00,0.00,0.00,'$2y$12$7cAtcvqIEMLldKgNGvlHq.z6J.XzbTC.GAyYcoV2Buy/CHdS9o//i','{\"name\":\"Griffin O\'Reilly\",\"number\":\"+14437378137\",\"full_name\":\"Dawn Klocko\",\"description\":\"Dr. Makenna Jerde IV\"}','2025-03-30 23:46:36','2025-03-30 23:46:36','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(2,'About us','<p>Alice, \'to pretend to be done, I wonder?\' As she said this, she noticed a curious plan!\' exclaimed Alice. \'And be quick about it,\' added the Queen. \'Never!\' said the Queen, and in THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the King, going up to her in an offended tone, and added with a little bird as soon as she spoke, but no result seemed to rise like a mouse, That he met in the wind, and was a large pool all round the thistle again; then the puppy began a series of short.</p><p>The Dormouse had closed its eyes again, to see if she did so, very carefully, with one finger for the hedgehogs; and in a tone of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the right thing to get us dry would be grand, certainly,\' said Alice, swallowing.</p><p>CHAPTER VI. Pig and Pepper For a minute or two, they began moving about again, and did not sneeze, were the two sides of it; so, after hunting all about as she was to get in at the jury-box, or they would die. \'The trial cannot proceed,\' said the Footman. \'That\'s the most interesting, and perhaps after all it might be hungry, in which the words \'DRINK ME\' beautifully printed on it in with the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to cats if you only kept on good terms with.</p><p>I would talk on such a pleasant temper, and thought it had entirely disappeared; so the King sharply. \'Do you know what a dear little puppy it was!\' said Alice, \'I\'ve often seen a good deal to ME,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to its feet, ran round the court with a whiting. Now you know.\' \'I DON\'T know,\' said Alice to herself, \'because of his pocket, and pulled out a box of comfits, (luckily the salt water had not gone.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(3,'Terms Of Use','<p>Alice cautiously replied, not feeling at all know whether it was good manners for her to wink with one finger pressed upon its nose. The Dormouse again took a minute or two she walked off, leaving Alice alone with the Queen, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the jury. \'Not yet, not yet!\' the Rabbit angrily. \'Here! Come and help me out of its right ear and left foot, so as to prevent its undoing itself,) she carried it off. \'If everybody minded their.</p><p>YOUR shoes done with?\' said the White Rabbit blew three blasts on the bank, and of having nothing to what I say--that\'s the same thing, you know.\' \'I don\'t think they play at all this time. \'I want a clean cup,\' interrupted the Hatter: \'but you could draw treacle out of sight, they were IN the well,\' Alice said very humbly; \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said the Duchess, it had some kind of serpent, that\'s all you know about it, so she sat on, with.</p><p>Alice, \'Have you seen the Mock Turtle in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Mock Turtle, suddenly dropping his voice; and the little golden key, and when she was quite pale (with passion, Alice thought), and it set to work at once to eat the comfits: this caused some noise and confusion, as the rest of my life.\' \'You are old,\' said the Caterpillar. \'Well, perhaps not,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she kept tossing.</p><p>I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in asking riddles that have no answers.\' \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves, and she walked down the bottle, she found she could do, lying down on the song, perhaps?\' \'I\'ve heard something splashing about in all my life!\' She had quite forgotten the little golden key in the house till she was exactly the right size again; and the happy summer days. THE.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(4,'Terms &amp; Conditions','<p>Alice loudly. \'The idea of the tail, and ending with the Lory, as soon as she ran; but the Mouse to Alice as he spoke, \'we were trying--\' \'I see!\' said the Footman. \'That\'s the judge,\' she said to herself, \'I wish I hadn\'t begun my tea--not above a week or so--and what with the Duchess, \'as pigs have to go down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go through next walking about at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to kill it in less.</p><p>Then followed the Knave of Hearts, carrying the King\'s crown on a three-legged stool in the air. This time there were TWO little shrieks, and more faintly came, carried on the same size: to be said. At last the Mock Turtle, who looked at Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been a RED rose-tree, and we won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what they\'re like.\' \'I believe so,\' Alice replied in an offended tone, \'was, that the Queen ordering off her.</p><p>Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Mock Turtle had just begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the back. However, it was only the pepper that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the King sharply. \'Do you mean by that?\' said the.</p><p>BEST butter, you know.\' \'Who is it I can\'t show it you myself,\' the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the wind, and the other end of the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the other: the.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(5,'Refund Policy','<p>Advice from a Caterpillar The Caterpillar was the White Rabbit blew three blasts on the second thing is to give the prizes?\' quite a large one, but it all seemed quite natural to Alice for some time without interrupting it. \'They must go and live in that poky little house, and found in it a little before she came upon a little scream, half of fright and half believed herself in a hurried nervous manner, smiling at everything that Alice had begun to think to herself, rather sharply; \'I advise.</p><p>I wish I hadn\'t drunk quite so much!\' Alas! it was getting so far off). \'Oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the shore, and then the puppy began a series of short charges at the Hatter, \'or you\'ll be telling me next that you weren\'t to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to Alice, she went hunting about, and crept a little door about fifteen inches high: she tried to say \'creatures,\'.</p><p>She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, half to herself, and fanned herself with one eye; but to open it; but, as the doubled-up soldiers were silent, and looked at it, and finding it very nice, (it had, in fact, a sort of thing never happened, and now here I am in the sun. (IF you don\'t even know what \"it\" means well enough, when I get it home?\' when it saw mine coming!\' \'How do you know what you would have done just as if his heart would break. She pitied him.</p><p>There was nothing so VERY remarkable in that; nor did Alice think it was,\' the March Hare. Alice was rather doubtful whether she ought not to her, one on each side to guard him; and near the door with his whiskers!\' For some minutes the whole thing, and she did not at all anxious to have him with them,\' the Mock Turtle a little before she gave a little door was shut again, and made another snatch in the sea. But they HAVE their tails fast in their paws. \'And how do you know about this.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(10,'Affiliate','<p>I\'m not Ada,\' she said, by way of expecting nothing but out-of-the-way things to happen, that it was all finished, the Owl, as a drawing of a good deal to come down the hall. After a while, finding that nothing more happened, she decided to remain where she was now about a foot high: then she noticed that they must be the right way of expressing yourself.\' The baby grunted again, and said, \'So you did, old fellow!\' said the one who got any advantage from the change: and Alice was beginning to.</p><p>Alice ventured to remark. \'Tut, tut, child!\' said the King said to herself, \'the way all the time they had to be nothing but out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the English, who wanted leaders, and had no reason to be an old Turtle--we used to it in less than no time to go, for the garden!\' and she went on eagerly. \'That\'s enough about lessons,\' the Gryphon went on, half to itself, half to Alice. \'What IS the same size for going through the.</p><p>Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a cat! It\'s the most confusing thing I know. Silence all round, if you drink much from a bottle marked \'poison,\' so Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with fury, and, after waiting till she had never been in a solemn tone, only changing the order of the others all joined in chorus, \'Yes, please.</p><p>Queen, who was a dead silence instantly, and Alice was just in time to wash the things get used to say a word, but slowly followed her back to yesterday, because I was sent for.\' \'You ought to speak, but for a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the last concert!\' on which the words \'DRINK ME\' beautifully printed on it (as she had never been in a fight with another hedgehog, which seemed to have been ill.\' \'So they were,\' said the March Hare went on. Her.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(11,'Career','<p>King said to herself; \'the March Hare said to the Cheshire Cat sitting on the ground as she spoke; \'either you or your head must be kind to them,\' thought Alice, \'shall I NEVER get any older than you, and must know better\'; and this was of very little way off, and she told her sister, as well say,\' added the Dormouse. \'Write that down,\' the King was the King; \'and don\'t look at all know whether it was only sobbing,\' she thought, and it put the Lizard as she went on, \'you see, a dog growls when.</p><p>I ought to be listening, so she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen jumped up and throw us, with the bones and the little creature down, and nobody spoke for some time in silence: at last she stretched her arms round it as she spoke; \'either you or your head must be Mabel after all, and I could not possibly reach it: she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head sadly. \'Do I look like it?\' he said, turning to Alice: he.</p><p>Alice, \'we learned French and music.\' \'And washing?\' said the Gryphon, \'that they WOULD go with the words all coming different, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can kick a little!\' She drew her foot as far down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go from here?\' \'That depends a good thing!\' she said this, she came upon a heap of sticks and dry leaves, and the poor animal\'s feelings. \'I quite agree with you,\' said.</p><p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'You are,\' said the March Hare, who had been found and handed them round as prizes. There was a paper label, with the Lory, who at last she spread out her hand, watching the setting sun, and thinking of little birds and beasts, as well as I was sent for.\' \'You ought to be listening, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of such a simple question,\' added the Hatter, it woke up again as she said to itself in.</p>',1,NULL,'default',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2026-03-31 06:46:32\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2025-03-30 23:46:32','2025-03-30 23:46:32');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(4,1),(2,2),(4,2),(1,3),(4,3),(2,4),(4,4),(2,5),(4,5),(1,6),(4,6),(2,7),(4,7),(1,8),(3,8),(1,9),(3,9),(1,10),(3,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1485,NULL,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1663,NULL,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2284,NULL,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1243,NULL,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2211,NULL,'2025-03-30 23:46:31','2025-03-30 23:46:31'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2202,NULL,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1767,NULL,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',480,NULL,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1587,NULL,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1072,NULL,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',404,NULL,'2025-03-30 23:46:32','2025-03-30 23:46:32');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-03-30 23:46:31','2025-03-30 23:46:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','72ae0f8b83e3c562f6d2c510227301ec',NULL,'2025-03-30 23:46:34'),(2,'api_enabled','0',NULL,'2025-03-30 23:46:34'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2025-03-30 23:46:34'),(4,'analytics_dashboard_widgets','0','2025-03-30 23:46:19','2025-03-30 23:46:19'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-03-30 23:46:19','2025-03-30 23:46:19'),(6,'api_layer_api_key','',NULL,'2025-03-30 23:46:34'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-03-30 23:46:21','2025-03-30 23:46:21'),(10,'theme','martfury',NULL,'2025-03-30 23:46:34'),(11,'show_admin_bar','1',NULL,'2025-03-30 23:46:34'),(12,'language_hide_default','1',NULL,'2025-03-30 23:46:34'),(13,'language_switcher_display','dropdown',NULL,'2025-03-30 23:46:34'),(14,'language_display','all',NULL,'2025-03-30 23:46:34'),(15,'language_hide_languages','[]',NULL,'2025-03-30 23:46:34'),(16,'simple_slider_using_assets','0',NULL,NULL),(17,'admin_favicon','general/favicon.png',NULL,'2025-03-30 23:46:34'),(18,'admin_logo','general/logo-light.png',NULL,'2025-03-30 23:46:34'),(19,'payment_cod_status','1',NULL,'2025-03-30 23:46:34'),(20,'payment_bank_transfer_status','1',NULL,'2025-03-30 23:46:34'),(21,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-03-30 23:46:34'),(22,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-03-30 23:46:34'),(23,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-03-30 23:46:34'),(24,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-03-30 23:46:34'),(25,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-03-30 23:46:34'),(26,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-03-30 23:46:34'),(27,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-03-30 23:46:34'),(28,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-03-30 23:46:34'),(29,'ecommerce_store_order_prefix','SF',NULL,'2025-03-30 23:46:34'),(30,'ecommerce_enable_product_specification','1',NULL,'2025-03-30 23:46:34'),(31,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-03-30 23:46:34'),(32,'payment_cod_logo','payments/cod.png',NULL,'2025-03-30 23:46:34'),(33,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-03-30 23:46:34'),(34,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-03-30 23:46:34'),(35,'payment_paypal_logo','payments/paypal.png',NULL,'2025-03-30 23:46:34'),(36,'payment_mollie_logo','payments/mollie.png',NULL,'2025-03-30 23:46:34'),(37,'payment_paystack_logo','payments/paystack.png',NULL,'2025-03-30 23:46:34'),(38,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-03-30 23:46:34'),(39,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-03-30 23:46:34'),(40,'permalink-botble-blog-models-post','blog',NULL,'2025-03-30 23:46:34'),(41,'permalink-botble-blog-models-category','blog',NULL,'2025-03-30 23:46:34'),(42,'ecommerce_store_name','Martfury',NULL,NULL),(43,'ecommerce_store_phone','1800979769',NULL,NULL),(44,'ecommerce_store_address','502 New Street',NULL,NULL),(45,'ecommerce_store_state','Brighton VIC',NULL,NULL),(46,'ecommerce_store_city','Brighton VIC',NULL,NULL),(47,'ecommerce_store_country','AU',NULL,NULL),(48,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(49,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(50,'theme-martfury-copyright','© %Y MartFury. All Rights Reserved.',NULL,NULL),(51,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(52,'theme-martfury-logo','general/logo.png',NULL,NULL),(53,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(54,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(55,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(56,'theme-martfury-email','contact@martfury.co',NULL,NULL),(57,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(58,'theme-martfury-homepage_id','1',NULL,NULL),(59,'theme-martfury-blog_page_id','6',NULL,NULL),(60,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(61,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(62,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(63,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(64,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(65,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(66,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(67,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(68,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(69,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(70,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(71,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(72,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(73,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(74,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(75,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(76,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(77,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(78,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(79,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(80,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(81,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(82,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(83,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(84,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(85,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(86,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(87,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(88,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(89,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(90,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(91,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(92,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(93,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(94,'theme-martfury-primary_font','Work Sans',NULL,NULL),(95,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(96,'theme-martfury-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(97,'theme-martfury-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(98,'theme-martfury-lazy_load_images','1',NULL,NULL),(99,'theme-martfury-lazy_load_placeholder_image','general/placeholder.png',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2025-03-30 23:46:32','2025-03-30 23:46:32'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2025-03-30 23:46:32','2025-03-30 23:46:32');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-03-30 23:46:32','2025-03-30 23:46:32');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-03-30 23:46:21','2025-03-30 23:46:21'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-03-30 23:46:22','2025-03-30 23:46:22'),(45,'dual-camera-20mp-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:36'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(49,'smart-watch-external-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:36'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(53,'samsung-smart-phone-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:36'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(57,'sound-intone-i65-earphone-white-version-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:36'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(61,'samsung-gear-vr-virtual-reality-headset-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:36'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(65,'mvmth-classical-leather-watch-in-black-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:36'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:27','2025-03-30 23:46:27'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-03-30 23:46:30','2025-03-30 23:46:30'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-03-30 23:46:30','2025-03-30 23:46:30'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-03-30 23:46:30','2025-03-30 23:46:30'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-03-30 23:46:30','2025-03-30 23:46:30'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-03-30 23:46:30','2025-03-30 23:46:30'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-03-30 23:46:30','2025-03-30 23:46:30'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-03-30 23:46:31','2025-03-30 23:46:31'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-03-30 23:46:31','2025-03-30 23:46:31'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-03-30 23:46:31','2025-03-30 23:46:31'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-03-30 23:46:31','2025-03-30 23:46:31'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-03-30 23:46:31','2025-03-30 23:46:31'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:31','2025-03-30 23:46:33'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-03-30 23:46:32','2025-03-30 23:46:33'),(94,'home',1,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(104,'career',11,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-03-30 23:46:32','2025-03-30 23:46:32'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-03-30 23:46:36','2025-03-30 23:46:36'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-03-30 23:46:36','2025-03-30 23:46:36'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-03-30 23:46:36','2025-03-30 23:46:36'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-03-30 23:46:36','2025-03-30 23:46:36'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-03-30 23:46:36','2025-03-30 23:46:36'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-03-30 23:46:36','2025-03-30 23:46:36'),(112,'dual-camera-20mp-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(113,'dual-camera-20mp-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(114,'dual-camera-20mp-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(115,'smart-watches',27,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(116,'smart-watches',28,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(117,'smart-watches',29,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(118,'smart-watches',30,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(119,'beat-headphone',31,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(120,'beat-headphone',32,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(121,'beat-headphone',33,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(122,'beat-headphone',34,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(123,'red-black-headphone',35,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(124,'red-black-headphone',36,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(125,'red-black-headphone',37,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(126,'smart-watch-external-digital',38,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(127,'smart-watch-external-digital',39,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(128,'nikon-hd-camera',40,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(129,'nikon-hd-camera',41,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(130,'nikon-hd-camera',42,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(131,'audio-equipment',43,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(132,'audio-equipment',44,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(133,'audio-equipment',45,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(134,'smart-televisions',46,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(135,'smart-televisions',47,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(136,'samsung-smart-phone-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(137,'samsung-smart-phone-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(138,'herschel-leather-duffle-bag-in-brown-color',50,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:36','2025-03-30 23:46:36'),(139,'herschel-leather-duffle-bag-in-brown-color',51,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(140,'xbox-one-wireless-controller-black-color',52,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(141,'xbox-one-wireless-controller-black-color',53,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(142,'xbox-one-wireless-controller-black-color',54,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(143,'xbox-one-wireless-controller-black-color',55,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(144,'epsion-plaster-printer',56,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(145,'epsion-plaster-printer',57,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(146,'sound-intone-i65-earphone-white-version-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(147,'sound-intone-i65-earphone-white-version-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(148,'bo-play-mini-bluetooth-speaker',60,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(149,'bo-play-mini-bluetooth-speaker',61,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(150,'apple-macbook-air-retina-133-inch-laptop',62,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(151,'apple-macbook-air-retina-133-inch-laptop',63,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(152,'apple-macbook-air-retina-12-inch-laptop',64,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(153,'apple-macbook-air-retina-12-inch-laptop',65,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(154,'samsung-gear-vr-virtual-reality-headset-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(155,'aveeno-moisturizing-body-shower-450ml',67,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(156,'aveeno-moisturizing-body-shower-450ml',68,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(157,'aveeno-moisturizing-body-shower-450ml',69,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(158,'aveeno-moisturizing-body-shower-450ml',70,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(159,'nyx-beauty-couton-pallete-makeup-12',71,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(160,'nyx-beauty-couton-pallete-makeup-12',72,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(161,'nyx-beauty-couton-pallete-makeup-12',73,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(162,'nyx-beauty-couton-pallete-makeup-12',74,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(163,'mvmth-classical-leather-watch-in-black-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(164,'baxter-care-hair-kit-for-bearded-mens',76,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37'),(165,'ciate-palemore-lipstick-bold-red-color',77,'Botble\\Ecommerce\\Models\\Product','products','2025-03-30 23:46:37','2025-03-30 23:46:37');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-03-30 23:46:31','2025-03-30 23:46:31'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-03-30 23:46:31','2025-03-30 23:46:31'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-03-30 23:46:31','2025-03-30 23:46:31'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-03-30 23:46:31','2025-03-30 23:46:31'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-03-30 23:46:31','2025-03-30 23:46:31');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'armstrong.cristina@dietrich.org',NULL,'$2y$12$kwWTm8KOvDjzeomMotys7.xazObjU0fec6mPvi44qFu2lrbIawEk2',NULL,'2025-03-30 23:46:31','2025-03-30 23:46:31','Lonnie','Huels','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2025-03-30 23:46:34','2025-03-30 23:46:34'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2025-03-30 23:46:34','2025-03-30 23:46:34');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31 13:46:38
