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
-- Table structure for table `art_ped_c`
--

DROP TABLE IF EXISTS `art_ped_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `art_ped_c` (
  `idArt_Ped_C` int NOT NULL AUTO_INCREMENT,
  `idArticulo` int NOT NULL,
  `idPedido_C` int NOT NULL,
  `cant` int DEFAULT NULL,
  PRIMARY KEY (`idArt_Ped_C`),
  KEY `fk_Articulo_has_Pedido_C_Pedido_C1_idx` (`idPedido_C`),
  KEY `fk_Articulo_has_Pedido_C_Articulo1_idx` (`idArticulo`),
  CONSTRAINT `fk_Articulo_has_Pedido_C_Articulo1` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `fk_Articulo_has_Pedido_C_Pedido_C1` FOREIGN KEY (`idPedido_C`) REFERENCES `pedido_c` (`idPedido_C`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_ped_c`
--

LOCK TABLES `art_ped_c` WRITE;
/*!40000 ALTER TABLE `art_ped_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `art_ped_c` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-25 19:05:38
