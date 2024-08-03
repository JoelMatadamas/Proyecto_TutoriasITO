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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `NumControl` int(11) NOT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `ApPaterno` varchar(45) DEFAULT NULL,
  `ApMaterno` varchar(45) DEFAULT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Carrera` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `idmaterias` int(11) DEFAULT NULL,
  PRIMARY KEY (`NumControl`),
  KEY `idmaterias_idx` (`idmaterias`),
  CONSTRAINT `fk_idmaterias` FOREIGN KEY (`idmaterias`) REFERENCES `materias` (`idmaterias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (19112589,'Hola','Peres','yem',5,'Ing. en Sistemas','yam@gmail.com',13),(22119865,'David','Muñoz','Lopez',2,'Ing. en Sistemas','adelinantogmail.com',4),(22126891,'Martin','Martes','Jueves',2,'Ing. en Sistemas','iker@gmail.com',4),(22156598,'Gael','Aquino','Cruz',5,'Ing. en Sistemas','gael@gmail.com',13),(22159865,'Giovani','Olmedo','Carvajal',5,'Ing. en Sistemas','g.raymundo.carbajal@gmail.com',13),(22161158,'Joel Cristhian','Matadamas','Cervantes',5,'Ing. en Sistemas','guzmanjoel084@gmail.com',13),(22161268,'Sebastian','Vasquez','Sanchez',5,'Ing. en Sistemas','sebastianv.san@gmail.com',13),(22165986,'Goku','Lopez','Martinez',3,'Ing. en Sistemas','goku@gmail.com',8),(22168945,'Luis','Heredia','Robledo',5,'Ing. en Sistemas','luis@gmail.com',13),(22169849,'Raymundo','Matadamas','Olmedo',1,'Ing. en Sistemas','ol@gmail.com',4),(22169853,'Ejemplo','Hola','Mundo',4,'Ing. en Sistemas','ej@gmail.com',NULL),(25488271,'adelina','martinez','nieto',2,'Ing. en Sistemas','adn.nto.@gmail.com',4);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
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
