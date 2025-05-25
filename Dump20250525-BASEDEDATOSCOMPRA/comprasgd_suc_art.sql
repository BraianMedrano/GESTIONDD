-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: comprasgd
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
-- Table structure for table `suc_art`
--

DROP TABLE IF EXISTS `suc_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suc_art` (
  `idSuc_Art` int NOT NULL AUTO_INCREMENT,
  `Sucursal_idSucursal` int NOT NULL,
  `Articulo_idArticulo` int NOT NULL,
  `cantSuc` int DEFAULT NULL,
  `cantArt` int DEFAULT NULL,
  `estante` int DEFAULT NULL,
  `pasillo` int DEFAULT NULL,
  PRIMARY KEY (`idSuc_Art`),
  KEY `fk_Sucursal_has_Articulo_Articulo1_idx` (`Articulo_idArticulo`),
  KEY `fk_Sucursal_has_Articulo_Sucursal1_idx` (`Sucursal_idSucursal`),
  CONSTRAINT `fk_Sucursal_has_Articulo_Articulo1` FOREIGN KEY (`Articulo_idArticulo`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `fk_Sucursal_has_Articulo_Sucursal1` FOREIGN KEY (`Sucursal_idSucursal`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suc_art`
--

LOCK TABLES `suc_art` WRITE;
/*!40000 ALTER TABLE `suc_art` DISABLE KEYS */;
/*!40000 ALTER TABLE `suc_art` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-25 19:05:37
