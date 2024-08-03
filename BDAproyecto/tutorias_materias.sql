-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tutorias
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `idmaterias` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmaterias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matematicas Discretas',45,'Ing. en Sistemas',1),(2,'Programación',40,'Ing. en Sistemas',1),(3,'Calculo Diferencial',35,'Ing. en Sistemas',1),(4,'POO',35,'Ing. en sistemas',2),(5,'Calculo Integral',40,'Ing. en sistemas',2),(6,'Algebra Lineal',35,'Ing. en sistemas',2),(7,'Estructura de datos',35,'Ing. en sistemas',3),(8,'Fisica',35,'Ing. en sistemas',3),(9,'Calculo vectorial',45,'Ing. en sistemas',3),(10,'Ecuaciones diferenciales',35,'Ing. en sistemas',4),(11,'Topicos Programación',40,'Ing. en sistemas',4),(12,'Metodos numericos',45,'Ing. en sistemas',4),(13,'Ingenieria de software',35,'Ing. en sistemas',5),(14,'Base de datos',35,'Ing. en sistemas',5),(15,'Principios electricos',45,'Ing. en sistemas',5),(16,'Ingeneria electrica',40,'Ing. en sistemas',6),(17,'Sistemas Operativos',40,'Ing. en sistemas',6),(18,'Desarrollo movil',35,'Ing. en sistemas',6),(19,'Arquitectura de red',30,'Ing. en sistemas',7),(20,'Quimica',40,'Ing. en sistemas',7),(21,'Investigacion',35,'Ing. en sistemas',7),(22,'Redes',45,'Ing. en sistemas',8),(23,'Etica',40,'Ing. en sistemas',8),(24,'Inteligencia artificial',30,'Ing. en sistemas',8),(25,'Quimica',35,'Ing. Quimica',1),(26,'Mezclas',45,'Ing. Quimica',1),(27,'Calculo Diferencial',35,'Ing. Quimica',1),(28,'',30,'Ing. Quimica',2),(29,NULL,NULL,NULL,2),(30,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 15:29:40
