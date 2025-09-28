-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mymathx
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `app_mymathx_ejercicio`
--

DROP TABLE IF EXISTS `app_mymathx_ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_mymathx_ejercicio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enunciado_maquina` longtext NOT NULL,
  `respuesta_maquina` longtext NOT NULL,
  `tipo_ejercicio` varchar(50) NOT NULL,
  `dificultad` varchar(20) NOT NULL,
  `tema` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_mymathx_ejercicio`
--

LOCK TABLES `app_mymathx_ejercicio` WRITE;
/*!40000 ALTER TABLE `app_mymathx_ejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_mymathx_ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-21 08:57:58.011557'),(2,'auth','0001_initial','2025-04-21 08:57:58.531882'),(3,'admin','0001_initial','2025-04-21 08:57:58.643920'),(4,'admin','0002_logentry_remove_auto_add','2025-04-21 08:57:58.650034'),(5,'admin','0003_logentry_add_action_flag_choices','2025-04-21 08:57:58.661078'),(6,'app_mymathx','0001_initial','2025-04-21 08:57:58.678463'),(7,'app_mymathx','0002_delete_ejercicio_delete_users','2025-04-21 08:57:58.690341'),(8,'contenttypes','0002_remove_content_type_name','2025-04-21 08:57:58.797918'),(9,'auth','0002_alter_permission_name_max_length','2025-04-21 08:57:58.848734'),(10,'auth','0003_alter_user_email_max_length','2025-04-21 08:57:58.873006'),(11,'auth','0004_alter_user_username_opts','2025-04-21 08:57:58.882458'),(12,'auth','0005_alter_user_last_login_null','2025-04-21 08:57:58.943116'),(13,'auth','0006_require_contenttypes_0002','2025-04-21 08:57:58.944842'),(14,'auth','0007_alter_validators_add_error_messages','2025-04-21 08:57:58.951264'),(15,'auth','0008_alter_user_username_max_length','2025-04-21 08:57:59.009726'),(16,'auth','0009_alter_user_last_name_max_length','2025-04-21 08:57:59.067053'),(17,'auth','0010_alter_group_name_max_length','2025-04-21 08:57:59.086082'),(18,'auth','0011_update_proxy_permissions','2025-04-21 08:57:59.095010'),(19,'auth','0012_alter_user_first_name_max_length','2025-04-21 08:57:59.153956'),(20,'sessions','0001_initial','2025-04-21 08:57:59.184765');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7b971mkd4xtdwwzbte44wa55e6ppjqr4','.eJxVzDEKwzAMQNGrGM1ZktF7x0LJBYzsqmCwZSNZQ1p695hAh66fx_-AWtQkuY_cOIyjE3i2UhaoVCOJhtSMxy_2gv8qP4PaNUhzAB42WIBbjTIJ3HRQRHY7vpCKe5DQ293xwImSEQ8MpoaSG_j1mpmSgN--J-GuNnQ:1u8PU6:HIWXx5-5APV9Fs5eYykqptmu0y6rHiK7vn5tZmLvry0','2025-05-09 15:17:18.036092'),('fkzgmt9stwgby7e4s5211oae2koii760','.eJyrViouTSpOLsosKMnMz4svqSxIVbLKK83J0VHKTc1NSi0qjk_OL80rgQkW5CQiq6oFACPyGIE:1u7GMe:aMwMWxftzHB3MEyH9EGrCaAy9sGP2hMpUpw08hhCJU4','2025-05-06 11:20:52.184810');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicio_tablero`
--

DROP TABLE IF EXISTS `ejercicio_tablero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicio_tablero` (
  `id_ejercicio` int NOT NULL,
  `enunciado` varchar(45) NOT NULL,
  `ejercicio` varchar(45) NOT NULL,
  `respuesta` varchar(45) NOT NULL,
  `dificultad` varchar(45) NOT NULL,
  `puntos` int NOT NULL,
  `tipo_ejercicio` varchar(45) NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_ejercicio`),
  KEY `id_user_idx` (`id_user`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `usuario_cuenta_suscripcion` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicio_tablero`
--

LOCK TABLES `ejercicio_tablero` WRITE;
/*!40000 ALTER TABLE `ejercicio_tablero` DISABLE KEYS */;
/*!40000 ALTER TABLE `ejercicio_tablero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_transaccion`
--

DROP TABLE IF EXISTS `historial_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_transaccion` (
  `id_transaccion` int NOT NULL,
  `fecha` datetime NOT NULL,
  `valor` int NOT NULL,
  `referencia_de_pago` varchar(45) NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_transaccion`),
  KEY `id_user_idx` (`id_user`),
  CONSTRAINT `historial_fk_1` FOREIGN KEY (`id_user`) REFERENCES `usuario_cuenta_suscripcion` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_transaccion`
--

LOCK TABLES `historial_transaccion` WRITE;
/*!40000 ALTER TABLE `historial_transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro`
--

DROP TABLE IF EXISTS `logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logro` (
  `id_logro` int NOT NULL,
  `nombre_logro` varchar(45) NOT NULL,
  `img_logro` blob NOT NULL,
  PRIMARY KEY (`id_logro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro`
--

LOCK TABLES `logro` WRITE;
/*!40000 ALTER TABLE `logro` DISABLE KEYS */;
/*!40000 ALTER TABLE `logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objeto`
--

DROP TABLE IF EXISTS `objeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objeto` (
  `id_objeto` int NOT NULL,
  `tipo_objeto` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  `rareza_objeto` varchar(45) NOT NULL,
  PRIMARY KEY (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objeto`
--

LOCK TABLES `objeto` WRITE;
/*!40000 ALTER TABLE `objeto` DISABLE KEYS */;
/*!40000 ALTER TABLE `objeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progreso_cuenta_jugador`
--

DROP TABLE IF EXISTS `progreso_cuenta_jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progreso_cuenta_jugador` (
  `id_player` int NOT NULL AUTO_INCREMENT,
  `cuenta_player` varchar(45) NOT NULL,
  `password_player` varchar(45) NOT NULL,
  `nombre_player` varchar(45) NOT NULL,
  `monedas_oro` int NOT NULL DEFAULT '0',
  `esmeraldas` int NOT NULL DEFAULT '0',
  `nivel` int NOT NULL DEFAULT '1',
  `exp_nivel` varchar(45) NOT NULL,
  `ejercicios_ganados` int NOT NULL DEFAULT '0',
  `tableros_ganados` int NOT NULL DEFAULT '0',
  `puntos_acomulados` int NOT NULL DEFAULT '0',
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_player`),
  UNIQUE KEY `cuenta_player_UNIQUE` (`cuenta_player`),
  KEY `id_user_idx` (`id_user`),
  CONSTRAINT `progreso_fk` FOREIGN KEY (`id_user`) REFERENCES `usuario_cuenta_suscripcion` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progreso_cuenta_jugador`
--

LOCK TABLES `progreso_cuenta_jugador` WRITE;
/*!40000 ALTER TABLE `progreso_cuenta_jugador` DISABLE KEYS */;
/*!40000 ALTER TABLE `progreso_cuenta_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progreso_logro`
--

DROP TABLE IF EXISTS `progreso_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progreso_logro` (
  `id_player` int NOT NULL,
  `id_logro` int NOT NULL,
  KEY `id_player_idx` (`id_player`),
  KEY `id_logro_idx` (`id_logro`),
  CONSTRAINT `id_logro` FOREIGN KEY (`id_logro`) REFERENCES `logro` (`id_logro`),
  CONSTRAINT `id_player` FOREIGN KEY (`id_player`) REFERENCES `progreso_cuenta_jugador` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progreso_logro`
--

LOCK TABLES `progreso_logro` WRITE;
/*!40000 ALTER TABLE `progreso_logro` DISABLE KEYS */;
/*!40000 ALTER TABLE `progreso_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progreso_objeto`
--

DROP TABLE IF EXISTS `progreso_objeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progreso_objeto` (
  `id_player` int NOT NULL,
  `id_objeto` int NOT NULL,
  KEY `id_player_idx` (`id_player`),
  KEY `id_objeto_idx` (`id_objeto`),
  CONSTRAINT `id_objeto` FOREIGN KEY (`id_objeto`) REFERENCES `objeto` (`id_objeto`),
  CONSTRAINT `id_player1` FOREIGN KEY (`id_player`) REFERENCES `progreso_cuenta_jugador` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progreso_objeto`
--

LOCK TABLES `progreso_objeto` WRITE;
/*!40000 ALTER TABLE `progreso_objeto` DISABLE KEYS */;
/*!40000 ALTER TABLE `progreso_objeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_suscripcion`
--

DROP TABLE IF EXISTS `tipo_suscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_suscripcion` (
  `id_tipo_suscripcion` int NOT NULL,
  `tipo_suscripcion` varchar(45) NOT NULL,
  `numero_estudiantes` int NOT NULL,
  `duracion_dias` int NOT NULL,
  `es_gratis` varchar(45) NOT NULL,
  `nivel_suscripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_suscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_suscripcion`
--

LOCK TABLES `tipo_suscripcion` WRITE;
/*!40000 ALTER TABLE `tipo_suscripcion` DISABLE KEYS */;
INSERT INTO `tipo_suscripcion` VALUES (1,'personal',1,3,'1','gratis'),(2,'personal',1,30,'0','normal'),(3,'personal',1,30,'0','premium'),(4,'familiar',1,3,'1','gratis'),(5,'familiar',2,30,'0','normal'),(6,'familiar',3,30,'0','normal'),(7,'familiar',4,30,'0','normal'),(8,'familiar',4,30,'0','premium'),(9,'familiar',6,30,'0','premium'),(10,'institucional',20,3,'1','gratis'),(11,'institucional',40,30,'0','normal'),(12,'institucional',100,30,'0','normal'),(13,'institucional',250,30,'0','normal'),(14,'institucional',400,30,'0','premium'),(15,'institucional',1000,30,'0','premium');
/*!40000 ALTER TABLE `tipo_suscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_cuenta_suscripcion`
--

DROP TABLE IF EXISTS `usuario_cuenta_suscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_cuenta_suscripcion` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `cuenta_usuario` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_verificacion` tinyint NOT NULL,
  `token_verificacion` varchar(255) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_inicio_suscripcion` datetime NOT NULL,
  `fecha_fin_suscripcion` datetime NOT NULL,
  `fin_prueba_gratis` tinyint NOT NULL,
  `estado_suscripcion` varchar(45) NOT NULL,
  `id_tipo_suscripcion` int NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `cuenta_usuario_UNIQUE` (`cuenta_usuario`),
  KEY `id_tipo_suscripcion_idx` (`id_tipo_suscripcion`),
  CONSTRAINT `id_tipo_suscripcion` FOREIGN KEY (`id_tipo_suscripcion`) REFERENCES `tipo_suscripcion` (`id_tipo_suscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_cuenta_suscripcion`
--

LOCK TABLES `usuario_cuenta_suscripcion` WRITE;
/*!40000 ALTER TABLE `usuario_cuenta_suscripcion` DISABLE KEYS */;
INSERT INTO `usuario_cuenta_suscripcion` VALUES (1,'rhaffax33','estebannp1910@gmail.com','$2b$08$YIZOhkBIF/F3bfPE4w7qeuQvlJat7Q5DNOQV/aV5RLxLdxqsCHGxm',1,'Verificado','PEDRO LUIS ALVAREZ CORREA','2025-04-24 11:11:37','2025-04-27 11:11:37',0,'Activo',10),(2,'dieguito777','estebanppp1910@gmail.com','$2b$08$hTTDYIK2FEvgN60eUm9f2eReAQaDInNFiT0tVsbBgz/JnRhFSLeU.',1,'Verificado','Esteban Rafael Perez Maya','2025-04-24 12:04:25','2025-05-24 12:04:25',0,'Pendiente',2),(3,'jorge12345','estebanp1910@gmail.com','$2b$08$e11SAEsrjyaAyUtqlu4UBOgVQtibxsWHedUOOS2JjoKFQ3ws.pca.',0,'PugySeDvDsfS2HoeneADpo3TmN8wNb1UVY6V4ksxsoUjGAt74B7jayqb9KtHzKZy','Jorge Roman Piedrahita','2025-04-25 15:04:24','2025-05-25 15:04:24',0,'pendiente',7);
/*!40000 ALTER TABLE `usuario_cuenta_suscripcion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 16:18:49
