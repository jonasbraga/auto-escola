-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: autoescola
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `numeroMatricula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `turma` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomeResponsavel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rgResponsavel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpfResponsavel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneContato` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alunos_rg_unique` (`rg`),
  UNIQUE KEY `alunos_cpf_unique` (`cpf`),
  UNIQUE KEY `alunos_telefonecontato_unique` (`telefoneContato`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Jonas','2001-05-16','2020000057','1','Laura','2134567896','56148956515','masculino','Minha rua','123','Casa','Meu bairro','MInha city','MG','37500-000','54794558456','65465165156','35997515423','2021-11-27 18:43:31',NULL);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aulas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alunos_id` int(10) unsigned NOT NULL,
  `funcionarios_id` int(10) unsigned NOT NULL,
  `carros_id` int(10) unsigned NOT NULL,
  `data` date NOT NULL,
  `hora_inicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_fim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` VALUES (1,1,1,2,'2021-12-21','09:00','10:00','2021-11-27 20:01:08','2021-11-27 20:02:08'),(2,1,1,2,'2021-12-15','10:00','11:00','2021-11-27 20:01:32','2021-11-27 20:02:15'),(3,1,1,2,'2021-12-16','15:00','16:00','2021-11-27 20:01:52','2021-11-27 20:02:28');
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carros`
--

DROP TABLE IF EXISTS `carros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carros`
--

LOCK TABLES `carros` WRITE;
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
INSERT INTO `carros` VALUES (1,'Onix','Chevrolet','Prata','2018','2021-11-27 18:44:29',NULL),(2,'Gol','VW','preto','2019','2021-11-27 18:44:38',NULL),(3,'Sandero','Renault','Azul','2016','2021-11-27 18:44:53',NULL),(4,'Ka','Ford','vermelho','2020','2021-11-27 18:45:12',NULL);
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apicustom`
--

LOCK TABLES `cms_apicustom` WRITE;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apikey`
--

LOCK TABLES `cms_apikey` WRITE;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2021-11-27 16:56:32',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` VALUES (1,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 172.22.0.1','',1,'2021-11-27 16:56:51',NULL),(2,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/users/add-save','Add New Data Ronaldo at Users Management','',1,'2021-11-27 18:26:16',NULL),(3,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','admin@crudbooster.com logout','',1,'2021-11-27 18:26:28',NULL),(4,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','ronaldo.o.instrutor@gmail.com login with IP Address 172.22.0.1','',2,'2021-11-27 18:26:45',NULL),(5,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','ronaldo.o.instrutor@gmail.com logout','',2,'2021-11-27 18:28:52',NULL),(6,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 172.22.0.1','',1,'2021-11-27 18:28:55',NULL),(7,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/add-save','Add New Data Menu Instrutor at Menu Management','',1,'2021-11-27 18:34:37',NULL),(8,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/1','Update data Salas de aula at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>',1,'2021-11-27 18:35:36',NULL),(9,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/2','Update data Alunos at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2021-11-27 18:35:42',NULL),(10,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Carros at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2021-11-27 18:35:48',NULL),(11,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/delete/4','Delete data Menu Instrutor at Menu Management','',1,'2021-11-27 18:35:51',NULL),(12,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/1','Update data Salas de aula at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-home</td></tr></tbody></table>',1,'2021-11-27 18:36:09',NULL),(13,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','admin@crudbooster.com logout','',1,'2021-11-27 18:36:16',NULL),(14,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','ronaldo.o.instrutor@gmail.com login with IP Address 172.22.0.1','',2,'2021-11-27 18:36:18',NULL),(15,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/alunos/add-save','Add New Data  at Alunos','',2,'2021-11-27 18:43:31',NULL),(16,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/carros/add-save','Add New Data  at Carros','',2,'2021-11-27 18:44:29',NULL),(17,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/carros/add-save','Add New Data  at Carros','',2,'2021-11-27 18:44:38',NULL),(18,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/carros/add-save','Add New Data  at Carros','',2,'2021-11-27 18:44:53',NULL),(19,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/carros/add-save','Add New Data  at Carros','',2,'2021-11-27 18:45:12',NULL),(20,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/salas/add-save','Add New Data  at Salas de aula','',2,'2021-11-27 18:45:43',NULL),(21,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/salas/add-save','Add New Data  at Salas de aula','',2,'2021-11-27 18:45:50',NULL),(22,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','ronaldo.o.instrutor@gmail.com logout','',2,'2021-11-27 18:51:41',NULL),(23,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 172.22.0.1','',1,'2021-11-27 18:51:45',NULL),(24,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/module_generator/delete/15','Delete data Aulas at Module Generator','',1,'2021-11-27 18:56:35',NULL),(25,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/module_generator/delete/17','Delete data Aulas at Module Generator','',1,'2021-11-27 19:11:22',NULL),(26,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/funcionarios/add-save','Add New Data  at Instrutor','',1,'2021-11-27 19:53:12',NULL),(27,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/module_generator/delete/18','Delete data Aulas at Module Generator','',1,'2021-11-27 19:59:16',NULL),(28,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/module_generator/delete/18','Delete data Aulas at Module Generator','',1,'2021-11-27 19:59:18',NULL),(29,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/aulas/add-save','Add New Data  at Aulas','',1,'2021-11-27 20:01:08',NULL),(30,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/aulas/add-save','Add New Data  at Aulas','',1,'2021-11-27 20:01:32',NULL),(31,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/aulas/add-save','Add New Data  at Aulas','',1,'2021-11-27 20:01:52',NULL),(32,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/aulas/edit-save/1','Update data  at Aulas','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>data</td><td>2021-11-25</td><td>2021-12-21</td></tr></tbody></table>',1,'2021-11-27 20:02:08',NULL),(33,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/aulas/edit-save/2','Update data  at Aulas','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>data</td><td>2021-11-17</td><td>2021-12-15</td></tr></tbody></table>',1,'2021-11-27 20:02:15',NULL),(34,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/aulas/edit-save/3','Update data  at Aulas','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>data</td><td>2021-11-30</td><td>2021-12-16</td></tr></tbody></table>',1,'2021-11-27 20:02:28',NULL),(35,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/9','Update data Aulas at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2021-11-27 20:02:49',NULL),(36,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','admin@crudbooster.com logout','',1,'2021-11-27 20:03:20',NULL),(37,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','ronaldo.o.instrutor@gmail.com login with IP Address 172.22.0.1','',2,'2021-11-27 20:03:23',NULL),(38,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','ronaldo.o.instrutor@gmail.com logout','',2,'2021-11-27 20:04:06',NULL),(39,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 172.22.0.1','',1,'2021-11-27 20:04:09',NULL),(40,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/users/edit-save/1','Update data Super Admin at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2021-11/download.png</td></tr><tr><td>password</td><td>$2y$10$8sVxo4bhxUslzKBkXOcDS.WyB8wJnovy5gUb6Q0UP8cyzQTkazDrq</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2021-11-27 20:04:49',NULL),(41,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/users/edit-save/1','Update data Administração at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Administração</td></tr><tr><td>password</td><td>$2y$10$8sVxo4bhxUslzKBkXOcDS.WyB8wJnovy5gUb6Q0UP8cyzQTkazDrq</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2021-11-27 20:05:09',NULL),(42,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/users/edit-save/1','Update data O ADM at Users Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Administração</td><td>O ADM</td></tr><tr><td>password</td><td>$2y$10$8sVxo4bhxUslzKBkXOcDS.WyB8wJnovy5gUb6Q0UP8cyzQTkazDrq</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2021-11-27 20:05:18',NULL),(43,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/1','Update data Salas de aula at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2021-11-27 20:06:28',NULL),(44,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/2','Update data Alunos at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2021-11-27 20:06:35',NULL),(45,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/3','Update data Carros at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2021-11-27 20:06:42',NULL),(46,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/6','Update data Instrutor at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',1,'2021-11-27 20:06:46',NULL),(47,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/menu_management/edit-save/9','Update data Aulas at Menu Management','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>',1,'2021-11-27 20:06:51',NULL),(48,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/users/add-save','Add New Data Rafaela at Users Management','',1,'2021-11-27 20:07:37',NULL),(49,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','admin@crudbooster.com logout','',1,'2021-11-27 20:07:54',NULL),(50,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','rafaela@administracao.com login with IP Address 172.22.0.1','',3,'2021-11-27 20:07:56',NULL),(51,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/logout','rafaela@administracao.com logout','',3,'2021-11-27 20:08:10',NULL),(52,'172.22.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 172.22.0.1','',1,'2021-11-27 20:09:05',NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (1,'Salas de aula','Route','AdminSalasControllerGetIndex','normal','fa fa-home',0,1,0,1,1,'2021-11-27 17:01:05','2021-11-27 20:06:28'),(2,'Alunos','Route','AdminAlunosControllerGetIndex','normal','fa fa-heart',0,1,0,1,2,'2021-11-27 17:06:24','2021-11-27 20:06:35'),(3,'Carros','Route','AdminCarrosControllerGetIndex','normal','fa fa-car',0,1,0,1,3,'2021-11-27 18:12:23','2021-11-27 20:06:41'),(6,'Instrutor','Route','AdminFuncionariosControllerGetIndex','normal','fa fa-gear',0,1,0,1,5,'2021-11-27 18:55:21','2021-11-27 20:06:46'),(9,'Aulas','Route','AdminAulasControllerGetIndex','normal','fa fa-clock-o',0,1,0,1,6,'2021-11-27 19:59:59','2021-11-27 20:06:51');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus_privileges`
--

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` VALUES (4,NULL,2),(13,5,1),(15,7,1),(16,8,1),(20,1,3),(21,1,2),(22,1,1),(23,2,3),(24,2,2),(25,2,1),(26,3,3),(27,3,2),(28,3,1),(29,6,3),(30,6,1),(31,9,3),(32,9,2),(33,9,1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2021-11-27 16:56:32',NULL,NULL),(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2021-11-27 16:56:32',NULL,NULL),(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2021-11-27 16:56:32',NULL,NULL),(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2021-11-27 16:56:32',NULL,NULL),(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2021-11-27 16:56:32',NULL,NULL),(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2021-11-27 16:56:32',NULL,NULL),(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2021-11-27 16:56:32',NULL,NULL),(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2021-11-27 16:56:32',NULL,NULL),(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2021-11-27 16:56:32',NULL,NULL),(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2021-11-27 16:56:32',NULL,NULL),(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2021-11-27 16:56:32',NULL,NULL),(12,'Salas de aula','fa fa-glass','salas','salas','AdminSalasController',0,0,'2021-11-27 17:01:05',NULL,NULL),(13,'Alunos','fa fa-heart','alunos','alunos','AdminAlunosController',0,0,'2021-11-27 17:06:24',NULL,NULL),(14,'Carros','fa fa-car','carros','carros','AdminCarrosController',0,0,'2021-11-27 18:12:23',NULL,NULL),(15,'Aulas','fa fa-clock-o','aulas','aulas','AdminAulasController',0,0,'2021-11-27 18:52:39',NULL,'2021-11-27 18:56:35'),(16,'Instrutor','fa fa-gear','funcionarios','funcionarios','AdminFuncionariosController',0,0,'2021-11-27 18:55:21',NULL,NULL),(17,'Aulas','fa fa-clock-o','aulas','aulas','AdminAulasController',0,0,'2021-11-27 18:56:55',NULL,'2021-11-27 19:11:22'),(18,'Aulas','fa fa-clock-o','aulas','aulas','AdminAulasController',0,0,'2021-11-27 19:11:49',NULL,'2021-11-27 19:59:18'),(19,'Aulas','fa fa-clock-o','aulas','aulas','AdminAulasController',0,0,'2021-11-27 19:59:59',NULL,NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_notifications`
--

LOCK TABLES `cms_notifications` WRITE;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Manutenção',1,'skin-red','2021-11-27 16:56:32',NULL),(2,'Instrutor',0,'skin-green',NULL,NULL),(3,'Administração',0,'skin-purple',NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (29,1,1,1,1,1,2,13,NULL,NULL),(30,1,0,1,0,0,2,19,NULL,NULL),(31,1,1,1,1,1,2,14,NULL,NULL),(32,1,1,1,0,0,2,12,NULL,NULL),(33,1,0,1,0,0,2,4,NULL,NULL),(34,1,1,1,1,1,3,13,NULL,NULL),(35,1,1,1,1,1,3,19,NULL,NULL),(36,1,1,1,1,1,3,14,NULL,NULL),(37,1,1,1,1,1,3,16,NULL,NULL),(38,1,1,1,1,1,3,12,NULL,NULL),(39,1,1,1,1,1,3,4,NULL,NULL),(40,1,1,1,1,1,1,13,NULL,NULL),(41,1,1,1,1,1,1,19,NULL,NULL),(42,1,1,1,1,1,1,14,NULL,NULL),(43,1,1,1,1,1,1,16,NULL,NULL),(44,1,1,1,1,1,1,12,NULL,NULL),(45,1,1,1,1,1,1,4,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2021-11-27 16:56:32',NULL,'Login Register Style','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2021-11-27 16:56:32',NULL,'Login Register Style','Login Font Color'),(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2021-11-27 16:56:32',NULL,'Login Register Style','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Email Setting','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2021-11-27 16:56:32',NULL,'Email Setting','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Email Setting','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2021-11-27 16:56:32',NULL,'Email Setting','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Email Setting','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Email Setting','SMTP Password'),(10,'appname','Auto Escola A - Z','text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Application Setting','Application Name'),(11,'default_paper_size','A4','text',NULL,'Paper size, ex : A4, Legal, etc','2021-11-27 16:56:32',NULL,'Application Setting','Default Paper Print Size'),(12,'logo',NULL,'upload_image',NULL,NULL,'2021-11-27 16:56:32',NULL,'Application Setting','Logo'),(13,'favicon',NULL,'upload_image',NULL,NULL,'2021-11-27 16:56:32',NULL,'Application Setting','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2021-11-27 16:56:32',NULL,'Application Setting','API Debug Mode'),(15,'google_api_key',NULL,'text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Application Setting','Google API Key'),(16,'google_fcm_key',NULL,'text',NULL,NULL,'2021-11-27 16:56:32',NULL,'Application Setting','Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'O ADM','uploads/1/2021-11/download.png','admin@crudbooster.com','$2y$10$8sVxo4bhxUslzKBkXOcDS.WyB8wJnovy5gUb6Q0UP8cyzQTkazDrq',1,'2021-11-27 16:56:32','2021-11-27 20:05:18','Active'),(2,'Ronaldo','uploads/1/2021-11/download.png','ronaldo.o.instrutor@gmail.com','$2y$10$HH6ZNKg94Xm7Z0YamRvrKufFHFLAR45mevOnTJLCEx2pdUKhEREVW',2,'2021-11-27 18:26:16',NULL,NULL),(3,'Rafaela','uploads/1/2021-11/download.png','rafaela@administracao.com','$2y$10$CZ96y4ZdIdObENmBQztTeeqPZkXm4AfRkTpKwkwTaUg.4ByZU7CJ2',3,'2021-11-27 20:07:37',NULL,NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipamento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataCompra` date NOT NULL,
  `preco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneContato` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Ronaldo','1990-12-24','masculino','Rua dele','1231','APTO 231','Centro','Cidade','MG','37500-000','11231241245','12408273651','35998453423','Moderado','2021-11-27 19:53:12',NULL);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_151211_add_details_cms_logs',1),(5,'2016_08_07_152014_add_table_cms_privileges',1),(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),(7,'2016_08_07_152320_add_table_cms_settings',1),(8,'2016_08_07_152421_add_table_cms_users',1),(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),(10,'2016_08_07_154624_add_table_cms_moduls',1),(11,'2016_08_17_225409_add_status_cms_users',1),(12,'2016_08_20_125418_add_table_cms_notifications',1),(13,'2016_09_04_033706_add_table_cms_email_queues',1),(14,'2016_09_16_035347_add_group_setting',1),(15,'2016_09_16_045425_add_label_setting',1),(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),(17,'2016_10_01_141740_add_method_type_apicustom',1),(18,'2016_10_01_141846_add_parameters_apicustom',1),(19,'2016_10_01_141934_add_responses_apicustom',1),(20,'2016_10_01_144826_add_table_apikey',1),(21,'2016_11_14_141657_create_cms_menus',1),(22,'2016_11_15_132350_create_cms_email_templates',1),(23,'2016_11_15_190410_create_cms_statistics',1),(24,'2016_11_17_102740_create_cms_statistic_components',1),(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1),(26,'2018_06_12_225519_create_professores_table',1),(27,'2018_06_12_231323_create_alunos_table',1),(28,'2018_06_13_221514_create_salas_table',1),(29,'2018_06_13_223711_create_salas2_table',1),(30,'2018_06_13_224536_create_turmas_table',1),(31,'2018_06_22_164206_create_funcionarios_table',1),(32,'2018_06_22_165543_create_equipamento_table',1),(33,'2021_11_27_180130_create_carros_table',2),(37,'2021_11_27_184704_create_aulas_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rg` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneContato` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disciplina` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `professores_rg_unique` (`rg`),
  UNIQUE KEY `professores_cpf_unique` (`cpf`),
  UNIQUE KEY `professores_telefonecontato_unique` (`telefoneContato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoSala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibilidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'1','Vaga','20','2021-11-27 18:45:43',NULL),(2,'2','Vaga','15','2021-11-27 18:45:50',NULL);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas2`
--

DROP TABLE IF EXISTS `salas2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salas2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoSala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibilidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas2`
--

LOCK TABLES `salas2` WRITE;
/*!40000 ALTER TABLE `salas2` DISABLE KEYS */;
/*!40000 ALTER TABLE `salas2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turmas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ano` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alunos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `professor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 23:50:40
