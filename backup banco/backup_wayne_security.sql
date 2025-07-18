-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: wayne_security
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add dispositivo',6,'add_dispositivo'),(22,'Can change dispositivo',6,'change_dispositivo'),(23,'Can delete dispositivo',6,'delete_dispositivo'),(24,'Can view dispositivo',6,'view_dispositivo'),(25,'Can add equipamento',7,'add_equipamento'),(26,'Can change equipamento',7,'change_equipamento'),(27,'Can delete equipamento',7,'delete_equipamento'),(28,'Can view equipamento',7,'view_equipamento'),(29,'Can add veiculo',8,'add_veiculo'),(30,'Can change veiculo',8,'change_veiculo'),(31,'Can delete veiculo',8,'delete_veiculo'),(32,'Can view veiculo',8,'view_veiculo'),(33,'Can add user',9,'add_customuser'),(34,'Can change user',9,'change_customuser'),(35,'Can delete user',9,'delete_customuser'),(36,'Can view user',9,'view_customuser'),(37,'Can add estoque dispositivo',10,'add_estoquedispositivo'),(38,'Can change estoque dispositivo',10,'change_estoquedispositivo'),(39,'Can delete estoque dispositivo',10,'delete_estoquedispositivo'),(40,'Can view estoque dispositivo',10,'view_estoquedispositivo'),(41,'Can add estoque equipamento',11,'add_estoqueequipamento'),(42,'Can change estoque equipamento',11,'change_estoqueequipamento'),(43,'Can delete estoque equipamento',11,'delete_estoqueequipamento'),(44,'Can view estoque equipamento',11,'view_estoqueequipamento'),(45,'Can add estoque veiculo',12,'add_estoqueveiculo'),(46,'Can change estoque veiculo',12,'change_estoqueveiculo'),(47,'Can delete estoque veiculo',12,'delete_estoqueveiculo'),(48,'Can view estoque veiculo',12,'view_estoqueveiculo'),(49,'Can add requisicao movimentacao',13,'add_requisicaomovimentacao'),(50,'Can change requisicao movimentacao',13,'change_requisicaomovimentacao'),(51,'Can delete requisicao movimentacao',13,'delete_requisicaomovimentacao'),(52,'Can view requisicao movimentacao',13,'view_requisicaomovimentacao'),(53,'Can add ordem compra',14,'add_ordemcompra'),(54,'Can change ordem compra',14,'change_ordemcompra'),(55,'Can delete ordem compra',14,'delete_ordemcompra'),(56,'Can view ordem compra',14,'view_ordemcompra'),(57,'Can add solicitacao compra',15,'add_solicitacaocompra'),(58,'Can change solicitacao compra',15,'change_solicitacaocompra'),(59,'Can delete solicitacao compra',15,'delete_solicitacaocompra'),(60,'Can view solicitacao compra',15,'view_solicitacaocompra'),(61,'Can add requisicao manutencao',16,'add_requisicaomanutencao'),(62,'Can change requisicao manutencao',16,'change_requisicaomanutencao'),(63,'Can delete requisicao manutencao',16,'delete_requisicaomanutencao'),(64,'Can view requisicao manutencao',16,'view_requisicaomanutencao'),(65,'Can add acao usuario',17,'add_acaousuario'),(66,'Can change acao usuario',17,'change_acaousuario'),(67,'Can delete acao usuario',17,'delete_acaousuario'),(68,'Can view acao usuario',17,'view_acaousuario');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acaousuario`
--

DROP TABLE IF EXISTS `core_acaousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_acaousuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_hora` datetime(6) NOT NULL,
  `usuario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_acaousuario_usuario_id_d413a577_fk_core_customuser_id` (`usuario_id`),
  CONSTRAINT `core_acaousuario_usuario_id_d413a577_fk_core_customuser_id` FOREIGN KEY (`usuario_id`) REFERENCES `core_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acaousuario`
--

LOCK TABLES `core_acaousuario` WRITE;
/*!40000 ALTER TABLE `core_acaousuario` DISABLE KEYS */;
INSERT INTO `core_acaousuario` VALUES (1,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 16:58:02.163214',8),(3,'Solicitou movimenta├º├úo de 5 veiculo de PORTO para DOWN_TOWN','2025-07-16 20:16:36.187615',4),(4,'Solicitou movimenta├º├úo de 30 dispositivo de AEROPORTO para CENTRO','2025-07-16 20:27:06.219225',4),(5,'Aprovou movimenta├º├úo de 30 dispositivo(s) de AEROPORTO para CENTRO (ID do item: 3)','2025-07-16 20:27:26.374204',7),(6,'Ordem de compra criada para Elevador de Carga Inteligente (Qtd: 5)','2025-07-16 20:28:03.635287',7),(7,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 20:41:37.426944',8),(8,'Enviou requisi├º├úo de manuten├º├úo para Badge de Acesso Inteligente (Qtd: 20)','2025-07-16 20:41:54.050459',8),(9,'Solicitou movimenta├º├úo de 10 dispositivo de WEST_TOWN para SEDE_DA_INDUSTRIA','2025-07-16 20:43:45.817331',8),(10,'Solicitou movimenta├º├úo de 10 dispositivo de AEROPORTO para CENTRO','2025-07-16 20:45:02.146426',8),(11,'Solicitou movimenta├º├úo de 10 dispositivo de CENTRO para SEDE_DA_INDUSTRIA','2025-07-16 20:50:33.123435',8),(12,'Aprovou movimenta├º├úo de 10 dispositivo(s) de CENTRO para SEDE_DA_INDUSTRIA (ID do item: 2)','2025-07-16 20:52:08.565295',7),(13,'Solicitou movimenta├º├úo de 20 dispositivo de DOWN_TOWN para SEDE_DA_INDUSTRIA','2025-07-16 20:54:33.414540',8),(14,'Solicitou compra de Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 20:55:57.960305',4),(15,'Enviou requisi├º├úo de manuten├º├úo para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 20:56:15.265249',4),(16,'Ordem de compra criada para Drone de Vigil├óncia Interno (Qtd: 20)','2025-07-16 21:12:04.144366',7),(17,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 21:17:19.289504',7),(18,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 21:18:04.960613',7),(19,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 21:23:22.929157',7),(20,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 21:25:41.023631',7),(21,'Ordem de compra criada para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 21:25:59.082881',4),(22,'Solicitou movimenta├º├úo de 10 dispositivo de CENTRO para DOWN_TOWN','2025-07-16 22:10:44.125690',4),(23,'Solicitou compra de Caminh├úo Blindado Wayne (Qtd: 5)','2025-07-16 22:24:28.252175',4),(24,'Enviou requisi├º├úo de manuten├º├úo para Badge de Acesso Inteligente (Qtd: 10)','2025-07-16 22:28:34.379594',4),(25,'Aprovou movimenta├º├úo de 10 dispositivo(s) de CENTRO para DOWN_TOWN (ID do item: 2)','2025-07-16 22:36:12.345468',7),(26,'Ordem de compra criada para Caminh├úo Blindado Wayne (Qtd: 5)','2025-07-16 22:36:27.628449',4),(27,'Solicitou movimenta├º├úo de 10 dispositivo de DOWN_TOWN para CENTRO','2025-07-16 22:38:16.289014',7),(28,'Enviou requisi├º├úo de manuten├º├úo para Drone de Vigil├óncia Interno (Qtd: 10)','2025-07-16 22:38:48.289676',7),(29,'Ordem de compra criada para Gerador Port├ítil de Energia (Qtd: 10)','2025-07-16 22:39:33.733017',7),(30,'Ordem de compra #33 paga.','2025-07-16 22:42:27.194101',8),(31,'Ordem de compra #34 paga.','2025-07-16 22:43:29.050905',8),(32,'Solicitou movimenta├º├úo de 5 veiculo de GALPAO_NORTE para AEROPORTO','2025-07-16 22:44:48.569882',8),(33,'Enviou requisi├º├úo de manuten├º├úo para Impressora 3D de Pe├ºas T├íticas (Qtd: 20)','2025-07-16 22:52:02.610348',8),(34,'Ordem de compra criada para Carro Executivo Wayne (Qtd: 10)','2025-07-16 22:55:39.715739',8),(35,'Solicitou movimenta├º├úo de 10 dispositivo de CENTRO para WEST_TOWN','2025-07-16 23:29:49.538324',4),(36,'Solicitou compra de Scanner de Identifica├º├úo de Visitantes (Qtd: 10)','2025-07-16 23:30:49.168889',4),(37,'Aprovou movimenta├º├úo de 10 dispositivo(s) de CENTRO para WEST_TOWN (ID do item: 2)','2025-07-16 23:31:31.500886',7),(38,'Ordem de compra criada para Scanner de Identifica├º├úo de Visitantes (Qtd: 10)','2025-07-16 23:31:47.338804',4),(39,'Ordem de compra #36 paga.','2025-07-16 23:32:24.686926',8);
/*!40000 ALTER TABLE `core_acaousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_customuser`
--

DROP TABLE IF EXISTS `core_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_customuser`
--

LOCK TABLES `core_customuser` WRITE;
/*!40000 ALTER TABLE `core_customuser` DISABLE KEYS */;
INSERT INTO `core_customuser` VALUES (3,'pbkdf2_sha256$1000000$Xm2YTJbHqIozRRE8gmEVvY$RYBuIM21N6snWLp6r0/W5c8nGGmaf+xSDlQOfavlePA=','2025-07-16 23:19:00.239451',1,'batman','','','batman@b.com',1,1,'2025-07-03 15:48:10.000000','batman'),(4,'pbkdf2_sha256$1000000$u9DfdOYnjDH8o1qkDbT3iH$ukA/bLX1dfijirVG0mz6UgkZmorieF9EB2mHwlW7D6o=','2025-07-16 23:29:40.137710',0,'andre','andre','andre','andre@a.com',0,1,'2025-07-03 15:50:29.000000','funcionario'),(7,'pbkdf2_sha256$1000000$Nn1e2iiAqhxt0UEE8ytFEp$NyZ8LLqT9eYfg+acDujxwQGGxli59fgsfhiIjnqByeY=','2025-07-16 23:31:15.470466',0,'gerente','','','',0,1,'2025-07-14 19:02:28.294526','gerente'),(8,'pbkdf2_sha256$1000000$F8Ew0y3z10PmJJccLrzUHd$CwS74956UD4gA6gkZkNoJ4LLushJ7pUHIyMNi7q3VB4=','2025-07-16 23:32:19.782747',0,'admin','admin','admin','admin@a.com',0,1,'2025-07-16 15:20:48.000000','administrador');
/*!40000 ALTER TABLE `core_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_customuser_groups`
--

DROP TABLE IF EXISTS `core_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_customuser_groups_customuser_id_group_id_7990e9c6_uniq` (`customuser_id`,`group_id`),
  KEY `core_customuser_groups_group_id_301aeff4_fk_auth_group_id` (`group_id`),
  CONSTRAINT `core_customuser_grou_customuser_id_976bc4d7_fk_core_cust` FOREIGN KEY (`customuser_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_customuser_groups_group_id_301aeff4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_customuser_groups`
--

LOCK TABLES `core_customuser_groups` WRITE;
/*!40000 ALTER TABLE `core_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_customuser_user_permissions`
--

DROP TABLE IF EXISTS `core_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_customuser_user_per_customuser_id_permission_49ea742a_uniq` (`customuser_id`,`permission_id`),
  KEY `core_customuser_user_permission_id_80ceaab9_fk_auth_perm` (`permission_id`),
  CONSTRAINT `core_customuser_user_customuser_id_ebd2ce6c_fk_core_cust` FOREIGN KEY (`customuser_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_customuser_user_permission_id_80ceaab9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_customuser_user_permissions`
--

LOCK TABLES `core_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `core_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dispositivo`
--

DROP TABLE IF EXISTS `core_dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_dispositivo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci,
  `ultima_manutencao` date NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `secret` tinyint(1) NOT NULL,
  `imagem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dispositivo`
--

LOCK TABLES `core_dispositivo` WRITE;
/*!40000 ALTER TABLE `core_dispositivo` DISABLE KEYS */;
INSERT INTO `core_dispositivo` VALUES (1,'Terminal Wayne OS','Computador de uso interno com sistema operacional propriet├írio para controle de acesso, seguran├ºa e dados internos.','2025-07-02',1,0,'dispositivos/TerminalWayneOS.jpg'),(2,'Badge de Acesso Inteligente','Cart├úo RFID com biometria para entrada nas ├íreas da empresa.','2025-07-02',1,0,'dispositivos/BadgedeAcessoInteligente.jpg'),(3,'Drone de Vigil├óncia Interno','Pequenos drones usados para patrulha de corredores e ├íreas restritas.','2025-07-02',1,0,'dispositivos/DronedeVigilanciaInterno.jpg'),(4,'Bat-Com','Dispositivo de comunica├º├úo criptografada entre o Batman, Alfred e o sistema da Batcaverna.','2025-07-02',1,1,'dispositivos/BatCom.jpg'),(5,'Detector Port├ítil de Radia├º├úo e Toxina','Esc├óner de bolso usado pelo Batman em investiga├º├Áes de campo.','2025-07-02',1,1,'dispositivos/DetectorPortatildeRadiacaoeToxina.jpg'),(6,'Painel de Controle de Seguran├ºa','Interface digital presente nas salas de vigil├óncia para monitoramento das c├ómeras e sensores internos.','2025-07-03',1,0,'dispositivos/PaineldeControledeSeguranca.jpg'),(7,'Tablet de Engenharia Wayne','Dispositivo port├ítil usado por t├®cnicos para acessar esquemas, sensores e diagn├│sticos de equipamentos no ch├úo de f├íbrica.','2025-07-03',1,0,'dispositivos/TabletdeEngenhariaWayne.jpg'),(8,'Scanner de Identifica├º├úo de Visitantes','Terminal instalado nas recep├º├Áes que realiza verifica├º├úo facial e de documentos para autoriza├º├úo de entrada.','2025-07-03',1,0,'dispositivos/ScannerdeIdentificacaodeVisitantes.jpg'),(9,'Lente de Realidade Aumentada Wayne','Dispositivo ocular que permite ao Batman acessar informa├º├Áes em tempo real, digitalizar ambientes e identificar amea├ºas ocultas.','2025-07-03',1,1,'dispositivos/LentedeRealidadeAumentadaWayne.jpg'),(10,'Disco de Holograma Port├ítil','Projeta imagens e mapas tridimensionais para planejamento t├ítico em campo.','2025-07-03',1,1,'dispositivos/DiscodeHologramaPortatil.jpg');
/*!40000 ALTER TABLE `core_dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_equipamento`
--

DROP TABLE IF EXISTS `core_equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_equipamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ultima_manutencao` date NOT NULL,
  `secret` tinyint(1) NOT NULL,
  `imagem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_equipamento`
--

LOCK TABLES `core_equipamento` WRITE;
/*!40000 ALTER TABLE `core_equipamento` DISABLE KEYS */;
INSERT INTO `core_equipamento` VALUES (4,'Bra├ºo Rob├│tico de Montagem','Equipamento automatizado usado na linha de produ├º├úo da WayneTech.','2025-07-02',0,'equipamentos/BracoRoboticodeMontagem.jpg'),(5,'Servidor Central Criptografado','Equipamento de alto desempenho que armazena e protege os dados da empresa.','2025-07-02',0,'equipamentos/ServidorCentralCriptografado.jpg'),(6,'Gerador Port├ítil de Energia','Usado por equipes de campo para alimentar dispositivos em locais remotos.','2025-07-02',0,'equipamentos/GeradorPortatildeEnergia.jpg'),(7,'Sistema Port├ítil de Intercepta├º├úo de Comunica├º├úo','Usado para rastrear sinais em tempo real durante miss├Áes.','2025-07-02',1,'equipamentos/SistemaPortatildeInterceptacaodeComunicacao.jpg'),(8,'Bast├úo Retr├ítil de Combate','Equipamento compacto e resistente usado em miss├Áes de infiltra├º├úo.','2025-07-02',1,'equipamentos/BastaoRetratildeCombate.jpg'),(9,'Impressora 3D de Pe├ºas T├íticas','Equipamento industrial usado para produzir componentes personalizados para prot├│tipos e reparos r├ípidos.','2025-07-03',0,'equipamentos/Impressora3DdePecasTaticas.jpg'),(10,'Elevador de Carga Inteligente','Plataforma automatizada para transporte vertical de equipamentos pesados nos laborat├│rios.','2025-07-04',0,'equipamentos/ElevadordeCargaInteligente.jpg'),(11,'T├║nel de Esteriliza├º├úo R├ípida','Equipamento usado na entrada de laborat├│rios e salas limpas, com jatos de luz UV e vapor antibacteriano.','2025-07-04',0,'equipamentos/TuneldeEsterilizacaoRapida.jpg'),(12,'Campo Port├ítil de Oculta├º├úo T├®rmica','Dispositivo que cria uma zona tempor├íria invis├¡vel a sensores de calor.','2025-07-04',1,'equipamentos/CampoPortatildeOcultacaoTermica.jpg'),(13,'Luvas de Ader├¬ncia Eletromagn├®tica','Permite ao Batman escalar superf├¡cies met├ílicas e segurar objetos durante persegui├º├Áes em alta velocidade.','2025-07-04',1,'equipamentos/LuvasdeAderenciaEletromagnetica.jpg');
/*!40000 ALTER TABLE `core_equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_estoquedispositivo`
--

DROP TABLE IF EXISTS `core_estoquedispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_estoquedispositivo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `localizacao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `dispositivo_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_estoquedispositivo_dispositivo_id_localizacao_5dcaaaf9_uniq` (`dispositivo_id`,`localizacao`),
  CONSTRAINT `core_estoquedisposit_dispositivo_id_9c2e9dbd_fk_core_disp` FOREIGN KEY (`dispositivo_id`) REFERENCES `core_dispositivo` (`id`),
  CONSTRAINT `core_estoquedispositivo_chk_1` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_estoquedispositivo`
--

LOCK TABLES `core_estoquedispositivo` WRITE;
/*!40000 ALTER TABLE `core_estoquedispositivo` DISABLE KEYS */;
INSERT INTO `core_estoquedispositivo` VALUES (1,'SEDE_DA_INDUSTRIA',490,1),(2,'AEROPORTO',50,1),(3,'PORTO',20,1),(4,'CENTRO',300,2),(5,'WEST_TOWN',270,2),(6,'DOWN_TOWN',110,2),(7,'SEDE_DA_INDUSTRIA',50,3),(8,'AEROPORTO',150,3),(9,'PORTO',100,3),(10,'BAT_CAVERNA',6,3),(11,'BAT_CAVERNA',40,4),(12,'ESTACAO_SUBMERSA_PORTO',1,4),(13,'SEDE_DA_INDUSTRIA',1,4),(14,'BAT_CAVERNA',9,5),(15,'AEROPORTO',2,5),(16,'PORTO',2,5),(17,'POSTO_AVANCADO_CENTRO',2,5),(18,'BAT_CAVERNA',4,1),(19,'CENTRO',0,6),(20,'WEST_TOWN',2,6),(21,'DOWN_TOWN',2,6),(22,'PORTO',4,6),(23,'AEROPORTO',4,6),(24,'GALPAO_NORTE',2,6),(25,'SEDE_DA_INDUSTRIA',6,6),(26,'BAT_CAVERNA',4,6),(27,'ESTACAO_SUBMERSA_PORTO',2,6),(28,'CENTRO',100,7),(29,'WEST_TOWN',70,7),(30,'DOWN_TOWN',90,7),(31,'GALPAO_NORTE',120,7),(32,'SEDE_DA_INDUSTRIA',200,7),(33,'CENTRO',20,8),(34,'WEST_TOWN',10,8),(35,'DOWN_TOWN',10,8),(36,'PORTO',20,8),(37,'AEROPORTO',30,8),(38,'SEDE_DA_INDUSTRIA',30,8),(39,'GALPAO_NORTE',40,8),(40,'BAT_CAVERNA',20,9),(41,'ESTACAO_SUBMERSA_PORTO',12,9),(42,'POSTO_AVANCADO_NORTE',10,9),(43,'BAT_CAVERNA',50,10),(44,'AEROPORTO',0,2),(45,'GALPAO_NORTE',0,2),(46,'PORTO',0,2),(47,'SEDE_DA_INDUSTRIA',140,2),(48,'POSTO_AVANCADO_NORTE',5,1),(49,'POSTO_AVANCADO_CENTRO',5,1),(50,'WEST_TOWN',40,1),(51,'CENTRO',30,3);
/*!40000 ALTER TABLE `core_estoquedispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_estoqueequipamento`
--

DROP TABLE IF EXISTS `core_estoqueequipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_estoqueequipamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `localizacao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `equipamento_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_estoqueequipamento_equipamento_id_localizacao_d66a2dd1_uniq` (`equipamento_id`,`localizacao`),
  CONSTRAINT `core_estoqueequipame_equipamento_id_c27c9c61_fk_core_equi` FOREIGN KEY (`equipamento_id`) REFERENCES `core_equipamento` (`id`),
  CONSTRAINT `core_estoqueequipamento_chk_1` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_estoqueequipamento`
--

LOCK TABLES `core_estoqueequipamento` WRITE;
/*!40000 ALTER TABLE `core_estoqueequipamento` DISABLE KEYS */;
INSERT INTO `core_estoqueequipamento` VALUES (12,'AEROPORTO',70,4),(13,'GALPAO_NORTE',105,4),(14,'SEDE_DA_INDUSTRIA',30,4),(15,'BAT_CAVERNA',10,4),(16,'PORTO',40,4),(17,'CENTRO',10,5),(18,'SEDE_DA_INDUSTRIA',200,5),(19,'BAT_CAVERNA',5,5),(20,'AEROPORTO',10,6),(21,'PORTO',10,6),(22,'ESTACAO_SUBMERSA_PORTO',1,6),(23,'BAT_CAVERNA',5,7),(24,'AEROPORTO',1,7),(25,'ESTACAO_SUBMERSA_PORTO',1,7),(26,'BAT_CAVERNA',20,8),(27,'POSTO_AVANCADO_NORTE',10,8),(28,'POSTO_AVANCADO_CENTRO',10,8),(29,'CENTRO',15,8),(30,'GALPAO_NORTE',20,9),(31,'SEDE_DA_INDUSTRIA',20,9),(32,'BAT_CAVERNA',5,9),(33,'PORTO',5,10),(34,'AEROPORTO',7,10),(35,'GALPAO_NORTE',3,10),(36,'SEDE_DA_INDUSTRIA',2,10),(37,'ESTACAO_SUBMERSA_PORTO',1,10),(38,'BAT_CAVERNA',1,10),(39,'CENTRO',2,11),(40,'GALPAO_NORTE',2,11),(41,'POSTO_AVANCADO_NORTE',0,11),(42,'BAT_CAVERNA',5,12),(43,'POSTO_AVANCADO_NORTE',2,12),(44,'ESTACAO_SUBMERSA_PORTO',2,12),(45,'BAT_CAVERNA',20,13),(46,'WEST_TOWN',10,5),(47,'WEST_TOWN',10,4),(48,'POSTO_AVANCADO_CENTRO',1,11),(49,'DOWN_TOWN',5,10),(50,'GALPAO_NORTE',10,6);
/*!40000 ALTER TABLE `core_estoqueequipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_estoqueveiculo`
--

DROP TABLE IF EXISTS `core_estoqueveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_estoqueveiculo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `localizacao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `veiculo_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_estoqueveiculo_veiculo_id_localizacao_ca37df1b_uniq` (`veiculo_id`,`localizacao`),
  CONSTRAINT `core_estoqueveiculo_veiculo_id_9bac6a4c_fk_core_veiculo_id` FOREIGN KEY (`veiculo_id`) REFERENCES `core_veiculo` (`id`),
  CONSTRAINT `core_estoqueveiculo_chk_1` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_estoqueveiculo`
--

LOCK TABLES `core_estoqueveiculo` WRITE;
/*!40000 ALTER TABLE `core_estoqueveiculo` DISABLE KEYS */;
INSERT INTO `core_estoqueveiculo` VALUES (1,'SEDE_DA_INDUSTRIA',200,1),(2,'PORTO',50,1),(3,'AEROPORTO',20,1),(4,'PORTO',20,2),(5,'AEROPORTO',20,2),(6,'GALPAO_NORTE',10,2),(7,'BAT_CAVERNA',5,2),(8,'CENTRO',30,3),(9,'SEDE_DA_INDUSTRIA',20,3),(10,'GALPAO_NORTE',0,3),(11,'BAT_CAVERNA',3,4),(12,'POSTO_AVANCADO_CENTRO',1,4),(13,'PORTO',1,5),(14,'BAT_CAVERNA',3,5),(15,'POSTO_AVANCADO_NORTE',1,5),(16,'SEDE_DA_INDUSTRIA',10,6),(17,'CENTRO',10,6),(18,'WEST_TOWN',5,6),(19,'DOWN_TOWN',5,6),(20,'GALPAO_NORTE',5,6),(21,'AEROPORTO',1,7),(22,'PORTO',1,7),(23,'POSTO_AVANCADO_NORTE',1,7),(24,'AEROPORTO',20,8),(25,'PORTO',15,8),(26,'BAT_CAVERNA',5,8),(27,'GALPAO_NORTE',15,8),(28,'BAT_CAVERNA',3,9),(29,'POSTO_AVANCADO_NORTE',1,9),(30,'AEROPORTO',1,9),(31,'ESTACAO_SUBMERSA_PORTO',1,10),(32,'PORTO',1,10),(33,'BAT_CAVERNA',0,6),(34,'DOWN_TOWN',5,7),(35,'WEST_TOWN',25,3),(36,'CENTRO',0,10),(37,'DOWN_TOWN',5,8),(38,'AEROPORTO',15,3);
/*!40000 ALTER TABLE `core_estoqueveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_ordemcompra`
--

DROP TABLE IF EXISTS `core_ordemcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_ordemcompra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int unsigned NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `destino` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `data_realizacao` datetime(6) DEFAULT NULL,
  `autorizado_por_id` bigint DEFAULT NULL,
  `criado_por_id` bigint NOT NULL,
  `realizado_por_id` bigint DEFAULT NULL,
  `origem_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_ordemcompra_autorizado_por_id_fc22343f_fk_core_cust` (`autorizado_por_id`),
  KEY `core_ordemcompra_criado_por_id_fdf68fdd_fk_core_customuser_id` (`criado_por_id`),
  KEY `core_ordemcompra_realizado_por_id_acdd4876_fk_core_customuser_id` (`realizado_por_id`),
  KEY `core_ordemcompra_origem_id_2302f63d_fk_core_solicitacaocompra_id` (`origem_id`),
  CONSTRAINT `core_ordemcompra_autorizado_por_id_fc22343f_fk_core_cust` FOREIGN KEY (`autorizado_por_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_ordemcompra_criado_por_id_fdf68fdd_fk_core_customuser_id` FOREIGN KEY (`criado_por_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_ordemcompra_origem_id_2302f63d_fk_core_solicitacaocompra_id` FOREIGN KEY (`origem_id`) REFERENCES `core_solicitacaocompra` (`id`),
  CONSTRAINT `core_ordemcompra_realizado_por_id_acdd4876_fk_core_customuser_id` FOREIGN KEY (`realizado_por_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_ordemcompra_chk_1` CHECK ((`item_id` >= 0)),
  CONSTRAINT `core_ordemcompra_chk_2` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_ordemcompra`
--

LOCK TABLES `core_ordemcompra` WRITE;
/*!40000 ALTER TABLE `core_ordemcompra` DISABLE KEYS */;
INSERT INTO `core_ordemcompra` VALUES (1,'dispositivo',2,20,'CENTRO','paga','2025-07-14 17:45:14.436523','2025-07-14 17:45:20.608286',NULL,3,3,NULL),(2,'dispositivo',2,20,'CENTRO','paga','2025-07-14 17:49:30.881514','2025-07-14 17:49:32.264534',NULL,3,3,NULL),(3,'dispositivo',2,20,'CENTRO','paga','2025-07-14 17:52:04.419017','2025-07-14 17:52:04.422006',NULL,3,3,NULL),(4,'dispositivo',4,5,'BAT_CAVERNA','paga','2025-07-14 17:58:42.612753','2025-07-14 17:58:42.614747',NULL,3,3,NULL),(5,'dispositivo',4,5,'BAT_CAVERNA','paga','2025-07-14 18:02:34.794006','2025-07-14 18:02:34.796983',NULL,3,3,NULL),(6,'dispositivo',5,4,'BAT_CAVERNA','paga','2025-07-14 18:03:45.057990','2025-07-14 18:03:45.060336',NULL,3,3,NULL),(7,'dispositivo',1,40,'WEST_TOWN','paga','2025-07-14 19:53:04.145779','2025-07-15 00:25:14.113300',7,4,3,1),(8,'dispositivo',2,20,'CENTRO','paga','2025-07-15 00:24:49.516080','2025-07-15 00:25:15.121396',7,4,3,2),(9,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 16:52:14.411031','2025-07-15 16:52:14.414024',NULL,3,3,NULL),(10,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:00:54.362026','2025-07-15 17:00:54.365018',NULL,3,3,NULL),(11,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:01:07.641907','2025-07-15 17:01:07.644899',NULL,3,3,NULL),(12,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:06:11.193188','2025-07-15 17:06:11.223340',NULL,3,3,NULL),(13,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:06:20.616616','2025-07-15 17:06:20.648985',NULL,3,3,NULL),(14,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:13:17.135994','2025-07-15 17:13:17.161032',NULL,3,3,NULL),(15,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:13:40.232997','2025-07-15 17:13:40.234991',NULL,3,3,NULL),(16,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:18:59.113010','2025-07-15 17:18:59.137231',NULL,3,3,NULL),(17,'dispositivo',4,3,'BAT_CAVERNA','paga','2025-07-15 17:19:08.850945','2025-07-15 17:19:08.867808',NULL,3,3,NULL),(18,'equipamento',4,3,'BAT_CAVERNA','paga','2025-07-15 17:24:22.726907','2025-07-15 17:24:22.762480',NULL,3,3,NULL),(19,'veiculo',7,5,'DOWN_TOWN','paga','2025-07-15 17:39:40.639279','2025-07-15 17:39:40.641280',NULL,3,3,NULL),(20,'veiculo',3,25,'WEST_TOWN','paga','2025-07-15 17:42:44.073030','2025-07-15 17:42:44.075023',NULL,3,3,NULL),(21,'veiculo',9,1,'BAT_CAVERNA','paga','2025-07-15 18:14:35.158368','2025-07-15 18:14:35.161339',NULL,3,3,NULL),(22,'dispositivo',3,1,'AEROPORTO','paga','2025-07-16 02:56:25.811230','2025-07-16 02:57:07.841471',7,4,3,3),(23,'veiculo',3,10,'CENTRO','paga','2025-07-16 16:22:02.411646','2025-07-16 16:22:02.413640',NULL,8,8,NULL),(24,'dispositivo',2,10,'DOWN_TOWN','paga','2025-07-16 16:58:02.160221','2025-07-16 16:58:02.165209',NULL,8,8,NULL),(25,'equipamento',10,5,'DOWN_TOWN','paga','2025-07-16 20:28:03.631297','2025-07-16 20:39:17.670018',NULL,7,8,NULL),(26,'dispositivo',2,10,'CENTRO','paga','2025-07-16 20:41:37.422954','2025-07-16 20:41:37.428938',NULL,8,8,NULL),(27,'dispositivo',3,20,'CENTRO','negada','2025-07-16 21:12:04.141374','2025-07-16 21:28:02.570585',NULL,7,8,NULL),(28,'dispositivo',2,10,'DOWN_TOWN','negada','2025-07-16 21:17:19.286976','2025-07-16 21:28:03.540627',NULL,7,8,NULL),(29,'dispositivo',2,10,'DOWN_TOWN','pendente','2025-07-16 21:18:04.956625',NULL,NULL,7,NULL,NULL),(30,'dispositivo',2,10,'DOWN_TOWN','negada','2025-07-16 21:23:22.926167','2025-07-16 21:28:04.258819',NULL,7,8,NULL),(31,'dispositivo',2,10,'DOWN_TOWN','negada','2025-07-16 21:25:41.006599','2025-07-16 21:28:04.878984',NULL,7,8,NULL),(32,'dispositivo',2,10,'CENTRO','negada','2025-07-16 21:25:59.078919','2025-07-16 21:28:05.722930',7,4,8,4),(33,'veiculo',6,5,'CENTRO','paga','2025-07-16 22:36:27.624458','2025-07-16 22:42:27.190110',7,4,8,5),(34,'equipamento',6,10,'GALPAO_NORTE','paga','2025-07-16 22:39:33.715325','2025-07-16 22:43:29.046916',NULL,7,8,NULL),(35,'veiculo',3,10,'AEROPORTO','paga','2025-07-16 22:55:39.711748','2025-07-16 22:55:39.716737',NULL,8,8,NULL),(36,'dispositivo',8,10,'CENTRO','paga','2025-07-16 23:31:47.334663','2025-07-16 23:32:24.681033',7,4,8,6);
/*!40000 ALTER TABLE `core_ordemcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_requisicaomanutencao`
--

DROP TABLE IF EXISTS `core_requisicaomanutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_requisicaomanutencao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int unsigned NOT NULL,
  `localizacao` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `data_conclusao` datetime(6) DEFAULT NULL,
  `criado_por_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_requisicaomanut_criado_por_id_30232dbc_fk_core_cust` (`criado_por_id`),
  CONSTRAINT `core_requisicaomanut_criado_por_id_30232dbc_fk_core_cust` FOREIGN KEY (`criado_por_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_requisicaomanutencao_chk_1` CHECK ((`item_id` >= 0)),
  CONSTRAINT `core_requisicaomanutencao_chk_2` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_requisicaomanutencao`
--

LOCK TABLES `core_requisicaomanutencao` WRITE;
/*!40000 ALTER TABLE `core_requisicaomanutencao` DISABLE KEYS */;
INSERT INTO `core_requisicaomanutencao` VALUES (1,'dispositivo',2,'CENTRO',20,'concluida','2025-07-15 20:45:34.821600','2025-07-15 21:00:47.214080',4),(2,'dispositivo',2,'WEST_TOWN',20,'concluida','2025-07-15 20:52:51.995236','2025-07-15 21:00:59.214257',4),(3,'dispositivo',2,'CENTRO',20,'concluida','2025-07-15 21:21:36.682071','2025-07-15 21:21:49.718428',3),(4,'dispositivo',2,'CENTRO',20,'concluida','2025-07-15 21:22:20.916742','2025-07-15 21:22:28.949660',3),(5,'veiculo',3,'CENTRO',5,'concluida','2025-07-16 03:01:03.032972','2025-07-16 03:07:13.941591',4),(6,'dispositivo',2,'CENTRO',20,'concluida','2025-07-16 16:28:40.537750','2025-07-16 16:28:50.862518',8),(7,'dispositivo',2,'CENTRO',20,'concluida','2025-07-16 20:41:54.032489','2025-07-16 20:42:04.611213',8),(8,'dispositivo',2,'CENTRO',10,'concluida','2025-07-16 20:56:15.262257','2025-07-16 21:28:01.104876',4),(9,'dispositivo',2,'CENTRO',10,'concluida','2025-07-16 22:28:34.376602','2025-07-16 22:42:06.892394',4),(10,'dispositivo',3,'CENTRO',10,'concluida','2025-07-16 22:38:48.286684','2025-07-16 22:42:48.004003',7),(11,'equipamento',9,'GALPAO_NORTE',20,'concluida','2025-07-16 22:52:02.607356','2025-07-16 22:54:45.875220',8);
/*!40000 ALTER TABLE `core_requisicaomanutencao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_requisicaomovimentacao`
--

DROP TABLE IF EXISTS `core_requisicaomovimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_requisicaomovimentacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int unsigned NOT NULL,
  `destino` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `autorizador_id` bigint DEFAULT NULL,
  `autorizado` tinyint(1) NOT NULL,
  `origem` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solicitante_id` bigint NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_requisicaomovim_autorizador_id_31ffbd89_fk_core_cust` (`autorizador_id`),
  KEY `core_requisicaomovim_solicitante_id_44e985e7_fk_core_cust` (`solicitante_id`),
  CONSTRAINT `core_requisicaomovim_autorizador_id_31ffbd89_fk_core_cust` FOREIGN KEY (`autorizador_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_requisicaomovim_solicitante_id_44e985e7_fk_core_cust` FOREIGN KEY (`solicitante_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_requisicaomovimentacao_chk_1` CHECK ((`item_id` >= 0)),
  CONSTRAINT `core_requisicaomovimentacao_chk_2` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_requisicaomovimentacao`
--

LOCK TABLES `core_requisicaomovimentacao` WRITE;
/*!40000 ALTER TABLE `core_requisicaomovimentacao` DISABLE KEYS */;
INSERT INTO `core_requisicaomovimentacao` VALUES (1,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 02:53:40.824320',3,1,'CENTRO',3,'autorizada'),(2,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 02:55:40.914681',3,1,'CENTRO',3,'autorizada'),(3,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 02:56:51.175981',3,1,'CENTRO',3,'autorizada'),(4,'dispositivo',2,'DOWN_TOWN',10,'2025-07-12 03:15:05.558379',3,1,'CENTRO',3,'autorizada'),(5,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 03:20:19.372005',3,1,'CENTRO',3,'autorizada'),(6,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 03:33:29.486884',3,1,'CENTRO',3,'autorizada'),(7,'dispositivo',2,'AEROPORTO',20,'2025-07-12 03:33:57.511585',3,1,'CENTRO',3,'autorizada'),(8,'dispositivo',2,'CENTRO',20,'2025-07-12 03:38:31.198410',3,0,'AEROPORTO',4,'autorizada'),(9,'dispositivo',2,'GALPAO_NORTE',40,'2025-07-12 03:47:05.206255',3,1,'CENTRO',3,'autorizada'),(10,'dispositivo',6,'BAT_CAVERNA',1,'2025-07-12 03:59:55.501641',3,1,'CENTRO',3,'autorizada'),(11,'dispositivo',6,'BAT_CAVERNA',1,'2025-07-12 04:00:30.414474',3,1,'CENTRO',3,'autorizada'),(12,'dispositivo',4,'BAT_CAVERNA',1,'2025-07-12 04:00:59.925738',3,1,'AEROPORTO',3,'autorizada'),(13,'dispositivo',2,'WEST_TOWN',20,'2025-07-12 04:16:39.641716',NULL,0,'CENTRO',3,'autorizada'),(14,'dispositivo',2,'CENTRO',10,'2025-07-12 04:16:59.047651',NULL,0,'WEST_TOWN',3,'autorizada'),(15,'dispositivo',2,'PORTO',10,'2025-07-12 04:17:13.565343',NULL,0,'WEST_TOWN',3,'autorizada'),(16,'dispositivo',3,'BAT_CAVERNA',1,'2025-07-12 04:24:54.085187',NULL,0,'AEROPORTO',3,'autorizada'),(17,'equipamento',4,'BAT_CAVERNA',1,'2025-07-12 05:16:43.822709',NULL,0,'AEROPORTO',3,'autorizada'),(18,'veiculo',6,'BAT_CAVERNA',1,'2025-07-12 05:16:56.259959',NULL,0,'CENTRO',3,'autorizada'),(19,'veiculo',6,'CENTRO',1,'2025-07-12 05:17:33.031656',NULL,0,'BAT_CAVERNA',3,'autorizada'),(20,'dispositivo',2,'CENTRO',10,'2025-07-12 05:17:41.112652',NULL,0,'PORTO',3,'autorizada'),(21,'dispositivo',2,'CENTRO',40,'2025-07-12 05:17:48.902747',NULL,0,'WEST_TOWN',3,'autorizada'),(22,'dispositivo',2,'DOWN_TOWN',40,'2025-07-12 05:18:01.455658',NULL,0,'GALPAO_NORTE',3,'autorizada'),(23,'dispositivo',2,'CENTRO',40,'2025-07-12 05:18:15.751379',NULL,0,'WEST_TOWN',3,'autorizada'),(24,'equipamento',4,'AEROPORTO',1,'2025-07-12 05:18:26.737246',NULL,0,'BAT_CAVERNA',3,'autorizada'),(25,'dispositivo',2,'SEDE_DA_INDUSTRIA',100,'2025-07-12 05:19:05.523335',NULL,0,'CENTRO',3,'autorizada'),(26,'equipamento',4,'GALPAO_NORTE',5,'2025-07-12 05:19:27.565508',3,0,'AEROPORTO',4,'rejeitada'),(27,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 05:20:57.102753',3,0,'CENTRO',4,'rejeitada'),(28,'dispositivo',2,'WEST_TOWN',10,'2025-07-12 05:27:03.351905',3,0,'CENTRO',4,'rejeitada'),(29,'equipamento',4,'PORTO',1,'2025-07-12 05:29:32.449064',3,0,'AEROPORTO',4,'rejeitada'),(30,'veiculo',6,'PORTO',1,'2025-07-12 05:44:57.946391',3,0,'CENTRO',4,'rejeitada'),(31,'dispositivo',2,'CENTRO',90,'2025-07-12 22:17:42.951722',3,0,'WEST_TOWN',4,'autorizada'),(32,'equipamento',5,'WEST_TOWN',10,'2025-07-13 01:30:50.485682',NULL,0,'CENTRO',3,'autorizada'),(33,'equipamento',4,'WEST_TOWN',10,'2025-07-13 01:32:33.846828',3,0,'PORTO',4,'autorizada'),(34,'dispositivo',2,'WEST_TOWN',20,'2025-07-14 04:54:38.284498',3,0,'CENTRO',4,'autorizada'),(35,'dispositivo',2,'CENTRO',20,'2025-07-14 04:56:38.719737',NULL,0,'WEST_TOWN',3,'autorizada'),(36,'dispositivo',2,'WEST_TOWN',20,'2025-07-14 05:03:52.441572',3,0,'CENTRO',4,'autorizada'),(37,'dispositivo',1,'POSTO_AVANCADO_NORTE',10,'2025-07-14 06:48:54.592737',NULL,0,'SEDE_DA_INDUSTRIA',3,'autorizada'),(38,'equipamento',11,'POSTO_AVANCADO_CENTRO',1,'2025-07-14 06:49:35.648741',NULL,0,'POSTO_AVANCADO_NORTE',3,'autorizada'),(39,'dispositivo',1,'POSTO_AVANCADO_CENTRO',5,'2025-07-14 06:50:05.919278',NULL,0,'POSTO_AVANCADO_NORTE',3,'autorizada'),(40,'veiculo',10,'CENTRO',1,'2025-07-15 17:43:12.145354',NULL,0,'PORTO',3,'autorizada'),(41,'veiculo',10,'PORTO',1,'2025-07-15 17:43:26.089795',NULL,0,'CENTRO',3,'autorizada'),(42,'veiculo',8,'DOWN_TOWN',5,'2025-07-16 20:16:36.185620',7,0,'PORTO',4,'autorizada'),(43,'dispositivo',3,'CENTRO',30,'2025-07-16 20:27:06.216230',7,0,'AEROPORTO',4,'autorizada'),(44,'dispositivo',2,'SEDE_DA_INDUSTRIA',10,'2025-07-16 20:43:45.815336',7,0,'WEST_TOWN',8,'rejeitada'),(45,'dispositivo',3,'CENTRO',10,'2025-07-16 20:45:02.143434',7,0,'AEROPORTO',8,'rejeitada'),(46,'dispositivo',2,'SEDE_DA_INDUSTRIA',10,'2025-07-16 20:50:33.091259',7,0,'CENTRO',8,'autorizada'),(47,'dispositivo',2,'SEDE_DA_INDUSTRIA',20,'2025-07-16 20:54:33.412546',NULL,0,'DOWN_TOWN',8,'autorizada'),(48,'dispositivo',2,'DOWN_TOWN',10,'2025-07-16 22:10:44.122697',7,0,'CENTRO',4,'autorizada'),(49,'dispositivo',2,'CENTRO',10,'2025-07-16 22:38:16.286022',NULL,0,'DOWN_TOWN',7,'autorizada'),(50,'veiculo',3,'AEROPORTO',5,'2025-07-16 22:44:48.567887',NULL,0,'GALPAO_NORTE',8,'autorizada'),(51,'dispositivo',2,'WEST_TOWN',10,'2025-07-16 23:29:49.535331',7,0,'CENTRO',4,'autorizada');
/*!40000 ALTER TABLE `core_requisicaomovimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_solicitacaocompra`
--

DROP TABLE IF EXISTS `core_solicitacaocompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_solicitacaocompra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int unsigned NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `destino` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `criado_por_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_solicitacaocomp_criado_por_id_cff971bd_fk_core_cust` (`criado_por_id`),
  CONSTRAINT `core_solicitacaocomp_criado_por_id_cff971bd_fk_core_cust` FOREIGN KEY (`criado_por_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `core_solicitacaocompra_chk_1` CHECK ((`item_id` >= 0)),
  CONSTRAINT `core_solicitacaocompra_chk_2` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_solicitacaocompra`
--

LOCK TABLES `core_solicitacaocompra` WRITE;
/*!40000 ALTER TABLE `core_solicitacaocompra` DISABLE KEYS */;
INSERT INTO `core_solicitacaocompra` VALUES (1,'dispositivo',1,40,'WEST_TOWN','2025-07-14 18:08:28.194045','convertida',4),(2,'dispositivo',2,20,'CENTRO','2025-07-15 00:24:28.210634','convertida',4),(3,'dispositivo',3,1,'AEROPORTO','2025-07-16 02:55:44.092589','convertida',4),(4,'dispositivo',2,10,'CENTRO','2025-07-16 20:55:57.958311','convertida',4),(5,'veiculo',6,5,'CENTRO','2025-07-16 22:24:28.249183','convertida',4),(6,'dispositivo',8,10,'CENTRO','2025-07-16 23:30:49.152378','convertida',4);
/*!40000 ALTER TABLE `core_solicitacaocompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_veiculo`
--

DROP TABLE IF EXISTS `core_veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_veiculo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ultima_manutencao` date NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `secret` tinyint(1) NOT NULL,
  `imagem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_veiculo`
--

LOCK TABLES `core_veiculo` WRITE;
/*!40000 ALTER TABLE `core_veiculo` DISABLE KEYS */;
INSERT INTO `core_veiculo` VALUES (1,'carro','Van el├®trica usada para transporte de funcion├írios e materiais entre filiais.','WayneVan de Transporte','2025-07-03',1,0,'veiculos/WayneVandeTransporte.jpg'),(2,'drone','Ve├¡culo n├úo-tripulado para movimenta├º├úo de cargas em ├íreas de dif├¡cil acesso.','Drone A├®reo de Carga Pesada','2025-07-03',1,0,'veiculos/DroneAereodeCargaPesada.jpg'),(3,'carro','Sedan blindado usado por executivos da Wayne Enterprises.','Carro Executivo Wayne','2025-07-03',1,0,'veiculos/CarroExecutivoWayne.jpg'),(4,'blindado','Ve├¡culo blindado com alta tecnologia, velocidade e armamento n├úo letal.','Batm├│vel','2025-07-03',1,1,'veiculos/Batmovel.jpg'),(5,'moto','Motocicleta de alta performance para persegui├º├Áes em ├íreas urbanas.','Batcycle','2025-07-03',1,1,'veiculos/Batcycle.jpg'),(6,'blindado','Usado para transporte de prot├│tipos e materiais confidenciais entre instala├º├Áes seguras.','Caminh├úo Blindado Wayne','2025-07-04',1,0,'veiculos/CaminhaoBlindadoWayne.jpg'),(7,'carro','Laborat├│rio sobre rodas usado por equipes de pesquisa em campo.','Mini-├önibus de Pesquisa M├│vel','2025-07-04',1,0,'veiculos/MiniOnibusdePesquisaMovel.jpg'),(8,'drone','Rob├┤ sobre rodas que realiza pequenos reparos e inspe├º├Áes em ├íreas industriais.','Ve├¡culo de Manuten├º├úo Aut├┤nomo','2025-07-04',1,0,'veiculos/VeiculodeManutencaoAutonomo.jpg'),(9,'blindado','Aeronave furtiva equipada com sistemas avan├ºados de voo e combate.','Batplane','2025-07-04',1,1,'veiculos/Batplane.jpg'),(10,'blindado','Ve├¡culo submers├¡vel de pequeno porte usado em opera├º├Áes subaqu├íticas secretas.','Submarino T├ítico','2025-07-04',1,1,'veiculos/SubmarinoTatico.jpg');
/*!40000 ALTER TABLE `core_veiculo` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `core_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (21,'2025-07-03 15:48:59.094142','3','batman (Batman)',2,'[{\"changed\": {\"fields\": [\"User type\"]}}]',9,3),(22,'2025-07-03 15:50:26.495286','2','andre (Funcion├írio)',3,'',9,3),(23,'2025-07-03 15:50:55.083097','4','andre (Funcion├írio)',1,'[{\"added\": {}}]',9,3),(24,'2025-07-03 18:13:12.562958','8','Bast├úo Retr├ítil de Combate (Wayne Tactical)',2,'[{\"changed\": {\"fields\": [\"Secret\"]}}]',7,3),(25,'2025-07-03 18:13:18.383848','7','Sistema Port├ítil de Intercepta├º├úo de Comunica├º├úo',2,'[{\"changed\": {\"fields\": [\"Secret\"]}}]',7,3),(26,'2025-07-03 18:36:11.618501','1','Terminal Wayne OS',2,'[{\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Terminal Wayne OS - BAT_CAVERNA: 4\"}}]',6,3),(27,'2025-07-03 20:13:47.693396','6','Painel de Controle de Seguran├ºa',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - CENTRO: 2\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - WEST_TOWN: 2\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - DOWN_TOWN: 2\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - PORTO: 4\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - AEROPORTO: 4\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - GALPAO_NORTE: 2\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - SEDE_DA_INDUSTRIA: 6\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - BAT_CAVERNA: 2\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Painel de Controle de Seguran\\u00e7a - ESTACAO_SUBMERSA_PORTO: 2\"}}]',6,3),(28,'2025-07-03 20:14:44.064130','7','Tablet de Engenharia Wayne',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Tablet de Engenharia Wayne - CENTRO: 100\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Tablet de Engenharia Wayne - WEST_TOWN: 70\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Tablet de Engenharia Wayne - DOWN_TOWN: 90\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Tablet de Engenharia Wayne - GALPAO_NORTE: 120\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Tablet de Engenharia Wayne - SEDE_DA_INDUSTRIA: 200\"}}]',6,3),(29,'2025-07-03 20:24:38.244220','7','Tablet de Engenharia Wayne',2,'[]',6,3),(30,'2025-07-03 20:26:36.275025','8','Scanner de Identifica├º├úo de Visitantes',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - CENTRO: 10\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - WEST_TOWN: 10\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - DOWN_TOWN: 10\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - PORTO: 20\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - AEROPORTO: 30\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - SEDE_DA_INDUSTRIA: 30\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Scanner de Identifica\\u00e7\\u00e3o de Visitantes - GALPAO_NORTE: 40\"}}]',6,3),(31,'2025-07-03 20:27:29.341424','9','Lente de Realidade Aumentada Wayne',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Lente de Realidade Aumentada Wayne - BAT_CAVERNA: 20\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Lente de Realidade Aumentada Wayne - ESTACAO_SUBMERSA_PORTO: 12\"}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Lente de Realidade Aumentada Wayne - POSTO_AVANCADO_NORTE: 10\"}}]',6,3),(32,'2025-07-03 20:28:01.199978','10','Disco de Holograma Port├ítil',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque dispositivo\", \"object\": \"Disco de Holograma Port\\u00e1til - BAT_CAVERNA: 50\"}}]',6,3),(33,'2025-07-03 20:36:07.180571','9','Impressora 3D de Pe├ºas T├íticas',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Impressora 3D de Pe\\u00e7as T\\u00e1ticas - GALPAO_NORTE: 20\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Impressora 3D de Pe\\u00e7as T\\u00e1ticas - SEDE_DA_INDUSTRIA: 20\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Impressora 3D de Pe\\u00e7as T\\u00e1ticas - BAT_CAVERNA: 5\"}}]',7,3),(34,'2025-07-04 00:42:17.755525','10','Elevador de Carga Inteligente',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Elevador de Carga Inteligente - PORTO: 5\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Elevador de Carga Inteligente - AEROPORTO: 7\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Elevador de Carga Inteligente - GALPAO_NORTE: 3\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Elevador de Carga Inteligente - SEDE_DA_INDUSTRIA: 2\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Elevador de Carga Inteligente - ESTACAO_SUBMERSA_PORTO: 1\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Elevador de Carga Inteligente - BAT_CAVERNA: 1\"}}]',7,3),(35,'2025-07-04 00:43:56.917393','11','T├║nel de Esteriliza├º├úo R├ípida',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"T\\u00fanel de Esteriliza\\u00e7\\u00e3o R\\u00e1pida - CENTRO: 2\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"T\\u00fanel de Esteriliza\\u00e7\\u00e3o R\\u00e1pida - GALPAO_NORTE: 2\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"T\\u00fanel de Esteriliza\\u00e7\\u00e3o R\\u00e1pida - POSTO_AVANCADO_NORTE: 1\"}}]',7,3),(36,'2025-07-04 00:44:42.685623','12','Campo Port├ítil de Oculta├º├úo T├®rmica',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Campo Port\\u00e1til de Oculta\\u00e7\\u00e3o T\\u00e9rmica - BAT_CAVERNA: 5\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Campo Port\\u00e1til de Oculta\\u00e7\\u00e3o T\\u00e9rmica - POSTO_AVANCADO_NORTE: 2\"}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Campo Port\\u00e1til de Oculta\\u00e7\\u00e3o T\\u00e9rmica - ESTACAO_SUBMERSA_PORTO: 2\"}}]',7,3),(37,'2025-07-04 00:45:10.660606','13','Luvas de Ader├¬ncia Eletromagn├®tica',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque equipamento\", \"object\": \"Luvas de Ader\\u00eancia Eletromagn\\u00e9tica - BAT_CAVERNA: 20\"}}]',7,3),(38,'2025-07-04 00:57:32.725109','6','blindado Caminh├úo Blindado Wayne',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Caminh\\u00e3o Blindado Wayne - SEDE_DA_INDUSTRIA: 10\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Caminh\\u00e3o Blindado Wayne - CENTRO: 5\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Caminh\\u00e3o Blindado Wayne - WEST_TOWN: 5\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Caminh\\u00e3o Blindado Wayne - DOWN_TOWN: 5\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Caminh\\u00e3o Blindado Wayne - GALPAO_NORTE: 5\"}}]',8,3),(39,'2025-07-04 00:59:15.086039','7','carro Mini-├önibus de Pesquisa M├│vel',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"carro - Mini-\\u00d4nibus de Pesquisa M\\u00f3vel - AEROPORTO: 1\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"carro - Mini-\\u00d4nibus de Pesquisa M\\u00f3vel - PORTO: 1\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"carro - Mini-\\u00d4nibus de Pesquisa M\\u00f3vel - POSTO_AVANCADO_NORTE: 1\"}}]',8,3),(40,'2025-07-04 01:01:06.857418','8','drone Ve├¡culo de Manuten├º├úo Aut├┤nomo',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"drone - Ve\\u00edculo de Manuten\\u00e7\\u00e3o Aut\\u00f4nomo - AEROPORTO: 20\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"drone - Ve\\u00edculo de Manuten\\u00e7\\u00e3o Aut\\u00f4nomo - PORTO: 20\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"drone - Ve\\u00edculo de Manuten\\u00e7\\u00e3o Aut\\u00f4nomo - BAT_CAVERNA: 5\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"drone - Ve\\u00edculo de Manuten\\u00e7\\u00e3o Aut\\u00f4nomo - GALPAO_NORTE: 15\"}}]',8,3),(41,'2025-07-04 01:03:30.612891','9','blindado Batwing',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Batwing - BAT_CAVERNA: 2\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Batwing - POSTO_AVANCADO_NORTE: 1\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Batwing - AEROPORTO: 1\"}}]',8,3),(42,'2025-07-04 01:04:17.811416','10','blindado Submarino T├ítico',1,'[{\"added\": {}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Submarino T\\u00e1tico - ESTACAO_SUBMERSA_PORTO: 1\"}}, {\"added\": {\"name\": \"estoque veiculo\", \"object\": \"blindado - Submarino T\\u00e1tico - PORTO: 1\"}}]',8,3),(43,'2025-07-04 01:04:23.544550','9','blindado Batwing',2,'[{\"changed\": {\"fields\": [\"Secret\"]}}]',8,3),(44,'2025-07-11 18:18:47.660283','9','blindado Batplane',2,'[{\"changed\": {\"fields\": [\"Modelo\"]}}]',8,3),(45,'2025-07-11 19:06:01.334771','5','Detector Port├ítil de Radia├º├úo e Toxina',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',6,3),(46,'2025-07-11 19:08:04.394557','8','Bast├úo Retr├ítil de Combate',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',7,3),(47,'2025-07-14 18:09:52.629421','5','gerente (Gerente)',1,'[{\"added\": {}}]',9,3),(48,'2025-07-14 18:13:08.930947','5','gerente (Gerente)',2,'[]',9,3),(49,'2025-07-14 18:56:16.927853','5','gerente (Gerente)',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',9,3),(50,'2025-07-14 18:58:28.898890','5','gerente (Gerente)',3,'',9,3),(51,'2025-07-14 18:59:55.553382','6','usuario_teste (Funcion├írio)',3,'',9,3),(52,'2025-07-16 15:21:58.670910','8','admin (Administrador)',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"First name\", \"Last name\", \"Staff status\", \"User type\"]}}]',9,3),(53,'2025-07-16 20:14:10.381656','9','teste (Funcion├írio)',3,'',9,3),(54,'2025-07-16 20:14:18.671456','4','andre (Funcion├írio)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',9,3),(55,'2025-07-16 23:21:41.882045','14','teste',3,'',7,3),(56,'2025-07-16 23:21:48.529237','12','teste',3,'',6,3),(57,'2025-07-16 23:21:48.529237','11','teste',3,'',6,3);
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(17,'core','acaousuario'),(9,'core','customuser'),(6,'core','dispositivo'),(7,'core','equipamento'),(10,'core','estoquedispositivo'),(11,'core','estoqueequipamento'),(12,'core','estoqueveiculo'),(14,'core','ordemcompra'),(16,'core','requisicaomanutencao'),(13,'core','requisicaomovimentacao'),(15,'core','solicitacaocompra'),(8,'core','veiculo'),(5,'sessions','session');
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
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-07-02 20:04:01.183727'),(2,'contenttypes','0002_remove_content_type_name','2025-07-02 20:04:01.264196'),(3,'auth','0001_initial','2025-07-02 20:04:01.497032'),(4,'auth','0002_alter_permission_name_max_length','2025-07-02 20:04:01.550190'),(5,'auth','0003_alter_user_email_max_length','2025-07-02 20:04:01.550190'),(6,'auth','0004_alter_user_username_opts','2025-07-02 20:04:01.564573'),(7,'auth','0005_alter_user_last_login_null','2025-07-02 20:04:01.568936'),(8,'auth','0006_require_contenttypes_0002','2025-07-02 20:04:01.570487'),(9,'auth','0007_alter_validators_add_error_messages','2025-07-02 20:04:01.573992'),(10,'auth','0008_alter_user_username_max_length','2025-07-02 20:04:01.577953'),(11,'auth','0009_alter_user_last_name_max_length','2025-07-02 20:04:01.582268'),(12,'auth','0010_alter_group_name_max_length','2025-07-02 20:04:01.589832'),(13,'auth','0011_update_proxy_permissions','2025-07-02 20:04:01.597378'),(14,'auth','0012_alter_user_first_name_max_length','2025-07-02 20:04:01.600595'),(15,'core','0001_initial','2025-07-02 20:04:02.182882'),(16,'admin','0001_initial','2025-07-02 20:04:02.289701'),(17,'admin','0002_logentry_remove_auto_add','2025-07-02 20:04:02.295630'),(18,'admin','0003_logentry_add_action_flag_choices','2025-07-02 20:04:02.302885'),(19,'sessions','0001_initial','2025-07-02 20:04:02.317740'),(20,'core','0002_alter_dispositivo_ultima_manutencao','2025-07-02 20:04:33.945202'),(21,'core','0003_dispositivo_imagem_equipamento_imagem_and_more','2025-07-11 17:51:34.868713'),(22,'core','0004_remove_estoqueveiculo_imagem_veiculo_imagem_and_more','2025-07-11 17:57:13.978358'),(23,'core','0005_requisicaomovimentacao','2025-07-11 21:04:44.581020'),(24,'core','0006_rename_autorizado_por_requisicaomovimentacao_autorizador_and_more','2025-07-11 23:04:36.432383'),(25,'core','0007_requisicaomovimentacao_status','2025-07-12 02:22:57.293184'),(26,'core','0008_solicitacaocompra_ordemcompra','2025-07-14 06:45:25.141622'),(27,'core','0009_requisicaomanutencao','2025-07-15 19:26:03.976750'),(28,'core','0010_acaousuario','2025-07-16 16:13:52.859751');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ks3hvs384wk5u9v8hf1nup6oh0d7hvvf','.eJxVjEEOwiAQRe_C2pCBgoBL9z0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4k7gIL06_W8L84LoDumO9NZlbXZc5yV2RB-1ybMTP6-H-HRTs5VsHALDZ5TBYG1A5QCACozWRP7vJWE3sgEC5rBEHb5IOODGrbJFTsuL9AcgNN-4:1ucBbn:Ps2_X2XTqyrSpFkf8CFlo2dlKwbo_QEYQbNMkT4-u7k','2025-07-30 23:32:19.784706');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-16 21:08:05
