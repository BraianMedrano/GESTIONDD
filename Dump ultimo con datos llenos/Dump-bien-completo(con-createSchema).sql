CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `CodigoAutor` int NOT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Nacionalidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CodigoAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Borges','José Luis','Argentino'),(2,'Potash','Robert A.','Norteamericano'),(3,'Sábato','Ernesto','Argentino'),(4,'Casella','José V.','Argentino'),(5,'Faro','Miguel H.','Argentino'),(6,'Férnandez Delpech','Horacio','Argentino'),(7,'De la Vega','Herminia N.','Argentino'),(8,'Rovarini','Pablo César','Argentino'),(9,'Mouchet','Carlos','Argentino'),(10,'Zorraquin Becu','Ricardo','Argentino'),(11,'Asimov','Isaac','Norteamericano'),(12,'Guibourg','Ricardo A.','Argentino'),(13,'Allende','Jorge O.','Argentino'),(14,'Campanella','Elena M.','Argentino'),(15,'Gibson','Sheila','Norteamericano'),(16,'Gibson','Robin','Norteamericano'),(17,'Correa','Carlos A.','Argentino'),(18,'Batto','Hilda N.','Argentino'),(19,'Czar de Zalduendo','Susana','Argentino'),(20,'Nazar Espeche','Félix A.','Argentino'),(21,'Allende','Isabel','Chileno');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `CodigoEditorial` int NOT NULL,
  `NombreEditorial` varchar(255) DEFAULT NULL,
  `Localidad` varchar(255) DEFAULT NULL,
  `Pais` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `CodigoPostal` varchar(20) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CodigoEditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (5,'Editorial I','Ciudad I','País I','Dirección I','0010','672815141'),(7,'Editorial D','Ciudad D','País D','Dirección D','0004','321654987'),(11,'Editorial C','Ciudad C','País C','Dirección C','0003','456789123'),(12,'Editorial H','Ciudad H','País H','Dirección H','0009','517811241'),(13,'Editorial E','Ciudad E','País E','Dirección E','0005','654123789'),(23,'Editorial A','Ciudad A','País A','Dirección A','0001','123456789'),(24,'Editorial F','Ciudad F','País F','Dirección F','0006','789321456'),(78,'Editorial B','Ciudad B','País B','Dirección B','0002','987654321');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplares`
--

DROP TABLE IF EXISTS `ejemplares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplares` (
  `CodigoEjemplar` int NOT NULL,
  `CodigoLibro` int DEFAULT NULL,
  `DisponibleParaPrestamo` tinyint(1) DEFAULT NULL,
  `CantidadDias` int DEFAULT NULL,
  PRIMARY KEY (`CodigoEjemplar`),
  KEY `CodigoLibro` (`CodigoLibro`),
  CONSTRAINT `ejemplares_ibfk_1` FOREIGN KEY (`CodigoLibro`) REFERENCES `libros` (`CodigoLibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplares`
--

LOCK TABLES `ejemplares` WRITE;
/*!40000 ALTER TABLE `ejemplares` DISABLE KEYS */;
INSERT INTO `ejemplares` VALUES (10,13,0,NULL),(11,24,0,NULL),(22,13,1,5),(23,34,0,NULL),(33,123,0,NULL),(34,77,0,NULL),(36,34,1,3),(37,77,1,4),(44,345,1,10),(46,25,1,10),(55,344,1,2),(56,346,0,NULL),(59,456,0,NULL),(75,234,1,7),(99,345,1,7),(111,25,1,7),(222,110,1,6),(234,99,0,NULL),(347,110,0,NULL),(348,110,1,3),(349,110,1,5);
/*!40000 ALTER TABLE `ejemplares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libroautor`
--

DROP TABLE IF EXISTS `libroautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libroautor` (
  `CodigoLibro` int NOT NULL,
  `CodigoAutor` int NOT NULL,
  PRIMARY KEY (`CodigoLibro`,`CodigoAutor`),
  KEY `CodigoAutor` (`CodigoAutor`),
  CONSTRAINT `libroautor_ibfk_1` FOREIGN KEY (`CodigoLibro`) REFERENCES `libros` (`CodigoLibro`),
  CONSTRAINT `libroautor_ibfk_2` FOREIGN KEY (`CodigoAutor`) REFERENCES `autores` (`CodigoAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libroautor`
--

LOCK TABLES `libroautor` WRITE;
/*!40000 ALTER TABLE `libroautor` DISABLE KEYS */;
INSERT INTO `libroautor` VALUES (99,2),(24,3),(77,4),(77,5),(25,6),(110,7),(110,8),(456,9),(456,10),(344,11),(345,11),(346,11),(234,12),(234,13),(234,14),(123,15),(123,16),(34,17),(5,18),(34,18),(34,19),(34,20),(13,21);
/*!40000 ALTER TABLE `libroautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `CodigoLibro` int NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `CantidadPaginas` int DEFAULT NULL,
  `FechaEdicion` date DEFAULT NULL,
  `CodigoEditorial` int DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CodigoLibro`),
  KEY `CodigoEditorial` (`CodigoEditorial`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`CodigoEditorial`) REFERENCES `editorial` (`CodigoEditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (5,'La competencia consultiva en el Mercosur',1068,'2014-08-04',11,'Derecho'),(13,'La casa de los espíritus',363,'1994-06-17',23,'Novela'),(24,'Sobre Héroes y Tumbas',552,'1992-12-01',78,'Novela'),(25,'Protección Jurídica del Software',244,'2000-09-04',11,'Derecho'),(34,'Derecho Informático',341,'1994-07-01',7,'Derecho'),(77,'Ingeniería y Derecho - Tomo II',295,'1998-12-01',7,'Derecho'),(99,'El Ejercito y la Política en la Argentina 1928-1945',441,'1991-08-04',23,'Historia'),(110,'Fundamentos de Bases de Datos',371,'2001-03-01',13,'Informática'),(123,'Homeopatía para Todos',249,'1995-06-01',12,'Salud'),(234,'Manual de Informática Jurídica',310,'1996-02-10',24,'Derecho'),(344,'Hacia la Fundación',446,'1997-12-10',5,'Ciencia Ficción'),(345,'Fundación e Imperio',327,'2001-05-01',5,'Ciencia Ficción'),(346,'Segunda Fundación',315,'2001-02-28',5,'Ciencia Ficción'),(456,'Manual de Introducción al Derecho',597,'1994-06-29',11,'Derecho');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `CodigoEjemplar` int NOT NULL,
  `CodigoSocio` int NOT NULL,
  `FechaPrestamo` date NOT NULL,
  `FechaDevolucion` date DEFAULT NULL,
  PRIMARY KEY (`CodigoEjemplar`,`CodigoSocio`,`FechaPrestamo`),
  KEY `CodigoSocio` (`CodigoSocio`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`CodigoEjemplar`) REFERENCES `ejemplares` (`CodigoEjemplar`),
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`CodigoSocio`) REFERENCES `socios` (`CodigoSocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (11,1,'2001-12-12','2001-12-21'),(22,2,'2002-01-10','2002-02-15'),(36,4,'2002-02-02','2002-02-10'),(36,5,'2002-03-18','2002-03-21'),(37,7,'2002-03-19','2002-03-31'),(44,8,'2002-03-22','2002-03-25'),(46,2,'2002-01-10','2002-01-11'),(75,9,'2002-04-05','2002-04-09'),(111,3,'2002-01-12','2002-01-28'),(348,5,'2002-04-11','2002-04-12'),(348,6,'2002-04-14','2002-04-22'),(348,8,'2002-04-28','2002-05-02');
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socios` (
  `CodigoSocio` int NOT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `NumeroDNI` varchar(20) DEFAULT NULL,
  `Domicilio` varchar(255) DEFAULT NULL,
  `Localidad` varchar(255) DEFAULT NULL,
  `CodigoPostal` varchar(20) DEFAULT NULL,
  `Provincia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CodigoSocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (1,'De la Vega','Herminia N.','16435678','Rivadavia 435','S.M. de Tucumán','4000','Tucumán'),(2,'Romano','Hugo','15467843','Laprida 789','S.M. de Tucumán','4000','Tucumán'),(3,'Lemir','Carlos A.','15789666','Venezuela 771','S.M. de Tucumán','4000','Tucumán'),(4,'Tejerizo','Raúl','22332221','Universo 122','Yerba Buena','4107','Tucumán'),(5,'Perez','José Luis','27883333','Güemes 332','Metán','4355','Salta'),(6,'Domínguez','Patricia','12443221','Uttinger 889','Santa María','4876','Catamarca'),(7,'Seisdedos','Juan','23444544','25 de Mayo 998','Monteros','4165','Tucumán'),(8,'Rovarini','Pablo César','23874991','Córdoba 211','S.M. de Tucumán','4000','Tucumán'),(9,'López Avila','María Cristina','22223445','Tucumán 33','Salta','4400','Salta');
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14 19:12:34
