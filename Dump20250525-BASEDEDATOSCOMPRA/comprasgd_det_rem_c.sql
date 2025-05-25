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
-- Table structure for table `det_rem_c`
--

DROP TABLE IF EXISTS `det_rem_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `det_rem_c` (
  `idDet_Rem_C` int NOT NULL AUTO_INCREMENT,
  `idRemito_C` int NOT NULL,
  `idSuc_Art` int NOT NULL,
  `cant` int DEFAULT NULL,
  PRIMARY KEY (`idDet_Rem_C`),
  KEY `fk_Det_Rem_C_Remito_C1_idx` (`idRemito_C`),
  KEY `fk_Det_Rem_C_Suc_Art1_idx` (`idSuc_Art`),
  CONSTRAINT `fk_Det_Rem_C_Remito_C1` FOREIGN KEY (`idRemito_C`) REFERENCES `remito_c` (`idRemito_C`),
  CONSTRAINT `fk_Det_Rem_C_Suc_Art1` FOREIGN KEY (`idSuc_Art`) REFERENCES `suc_art` (`idSuc_Art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_rem_c`
--

LOCK TABLES `det_rem_c` WRITE;
/*!40000 ALTER TABLE `det_rem_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `det_rem_c` ENABLE KEYS */;
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
