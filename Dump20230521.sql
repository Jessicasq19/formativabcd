-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: hogwarts
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `checkin`
--

DROP TABLE IF EXISTS `checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `evento_id` bigint NOT NULL,
  `inicio` datetime NOT NULL,
  `fim` datetime NOT NULL,
  `usuario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_id` (`evento_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `checkin_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`id`),
  CONSTRAINT `checkin_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkin`
--

LOCK TABLES `checkin` WRITE;
/*!40000 ALTER TABLE `checkin` DISABLE KEYS */;
INSERT INTO `checkin` VALUES (1,1,'2023-11-10 19:00:00','2023-12-09 19:00:00',1),(2,1,'2023-11-10 19:00:00','2023-12-09 19:00:00',5),(3,1,'2023-11-10 19:00:00','2023-12-09 19:00:00',5),(4,2,'2023-06-10 19:00:00','2023-06-20 17:00:00',2),(5,2,'2023-06-10 19:00:00','2023-06-20 17:00:00',1),(6,3,'2023-06-01 19:00:00','2023-11-20 17:00:00',3),(7,3,'2023-06-01 19:00:00','2023-11-20 17:00:00',4),(8,3,'2023-06-01 19:00:00','2023-11-20 17:00:00',2),(9,5,'2023-03-30 19:00:00','2023-06-18 20:00:00',3),(10,5,'2023-03-30 19:00:00','2023-06-18 20:00:00',6),(11,6,'2023-05-04 10:00:00','2023-05-14 10:00:00',6),(12,6,'2023-05-04 10:00:00','2023-05-14 10:00:00',1),(13,6,'2023-05-04 10:00:00','2023-05-14 10:00:00',5),(14,6,'2023-05-04 10:00:00','2023-05-14 10:00:00',4);
/*!40000 ALTER TABLE `checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eq_local`
--

DROP TABLE IF EXISTS `eq_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eq_local` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `local_id` bigint NOT NULL,
  `equip_id` bigint NOT NULL,
  `qtde_eq` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `local_id` (`local_id`),
  KEY `equip_id` (`equip_id`),
  CONSTRAINT `eq_local_ibfk_1` FOREIGN KEY (`local_id`) REFERENCES `local` (`id`),
  CONSTRAINT `eq_local_ibfk_2` FOREIGN KEY (`equip_id`) REFERENCES `equipamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eq_local`
--

LOCK TABLES `eq_local` WRITE;
/*!40000 ALTER TABLE `eq_local` DISABLE KEYS */;
INSERT INTO `eq_local` VALUES (1,1,5,2),(2,2,1,1),(3,2,5,1),(4,3,1,3),(5,3,2,2),(6,3,4,1),(7,4,5,1),(8,4,4,1),(9,5,1,1),(10,5,5,1),(11,6,1,10),(12,6,2,5),(13,6,4,1),(14,7,1,20),(15,7,2,2),(16,7,4,2),(17,8,1,10),(18,8,6,2),(19,8,4,1),(20,8,3,10);
/*!40000 ALTER TABLE `eq_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'Computador'),(2,'Notebook'),(3,'Tablet'),(4,'Ar condicionado'),(5,'Projetor'),(6,'Tv Smart');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `data_ev` date NOT NULL,
  `inicio` time NOT NULL,
  `fim` time NOT NULL,
  `responsavel` varchar(150) NOT NULL,
  `num_part` int NOT NULL,
  `disponiveis` int NOT NULL,
  `local_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `local_id` (`local_id`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`local_id`) REFERENCES `local` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Festa Anual','2023-12-10','19:00:00','22:00:00','Jessica',100,100,2),(2,'Aula de Revisão','2023-06-20','18:00:00','20:00:00','Monica',30,20,8),(3,'Baile de Formatura','2023-11-29','19:00:00','23:00:00','Carlos',100,10,1),(4,'Plantão de Dúvidas','2023-07-15','10:00:00','12:00:00','Amanda',30,30,6),(5,'Feira de Ciências','2023-06-19','10:00:00','19:00:00','Joaquim',150,100,5),(6,'Aula de Banco de Dados','2023-05-15','18:45:00','23:15:00','André',20,0,7);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `bloco` enum('A','B','C','D') NOT NULL,
  `qtde_pessoas` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,'Palco 1','C',25),(2,'Salão de Festas','A',50),(3,'Sala de Jogos','A',40),(4,'Palco 2','D',50),(5,'Pátio Central','B',75),(6,'Sala 1','B',45),(7,'Sala 2','B',40),(8,'Sala 3','D',50);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacao`
--

DROP TABLE IF EXISTS `ocupacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cargo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacao`
--

LOCK TABLES `ocupacao` WRITE;
/*!40000 ALTER TABLE `ocupacao` DISABLE KEYS */;
INSERT INTO `ocupacao` VALUES (1,'Aluno'),(2,'Professor'),(3,'Coordenador'),(4,'Diretor'),(5,'Assistente Social'),(6,'Secretaria');
/*!40000 ALTER TABLE `ocupacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `nasc` date NOT NULL,
  `senha` varchar(8) NOT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `condicao` enum('ativo','inativo') NOT NULL,
  `ocupacao_id` bigint NOT NULL,
  `acesso` enum('Admin','Gestor','Usuário','Visitante') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ocupacao_id` (`ocupacao_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ocupacao_id`) REFERENCES `ocupacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Jessica','jessicasantanamss@gmail.com','2000-11-19','12345678','2023-05-21 19:49:18','ativo',1,'Admin'),(2,'Amanda','amanda@gmail.com','2001-01-19','12346678','2023-05-21 19:49:18','ativo',2,'Gestor'),(3,'Carlos','carlos@gmail.com','1987-07-03','18346678','2023-05-21 19:49:18','ativo',6,'Visitante'),(4,'Dominique','dominique@gmail.com','1991-03-27','86346678','2023-05-21 19:49:18','ativo',3,'Usuário'),(5,'Rafaela','rafaela@gmail.com','1990-05-19','72346678','2023-05-21 19:49:18','inativo',5,'Visitante'),(6,'José','jose@gmail.com','1981-08-24','14546678','2023-05-21 19:49:18','ativo',2,'Visitante'),(7,'Joaquim','joaquim@gmail.com','1995-09-01','54646678','2023-05-21 19:49:18','inativo',4,'Admin');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 22:04:58
