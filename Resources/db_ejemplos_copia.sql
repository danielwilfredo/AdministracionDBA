-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_ejemplos_carnet
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asignaciones`
--

DROP TABLE IF EXISTS `asignaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaciones` (
  `id_empleado` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL,
  `asignacion_hora` int(11) NOT NULL,
  KEY `fk_empleado_asignacion` (`id_empleado`),
  KEY `fk_proyecto_asignacion` (`id_proyecto`),
  CONSTRAINT `fk_empleado_asignacion` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `fk_proyecto_asignacion` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`),
  CONSTRAINT `check_asignacion_horas` CHECK (`asignacion_hora` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,1,10),(2,2,15),(3,3,20),(4,4,25),(5,5,30),(6,1,35),(7,2,40),(8,3,45),(9,4,50),(10,5,55),(11,6,60),(12,7,65),(13,8,70),(14,9,75),(15,10,80),(16,11,85),(17,12,90),(18,13,95),(19,14,100),(20,15,105);
/*!40000 ALTER TABLE `asignaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cantidad_horas_por_proyecto`
--

DROP TABLE IF EXISTS `cantidad_horas_por_proyecto`;
/*!50001 DROP VIEW IF EXISTS `cantidad_horas_por_proyecto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cantidad_horas_por_proyecto` AS SELECT
 1 AS `nombre_proyecto`,
  1 AS `Horas` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Ventas'),(2,'Marketing'),(3,'Desarrollo'),(4,'Recursos Humanos'),(5,'Finanzas'),(6,'Producción'),(7,'Investigación y Desarrollo'),(8,'Servicio al Cliente'),(9,'Soporte Tecnico');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(100) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan',1),(2,'Ana',1),(3,'Carlos',2),(4,'Maria',2),(5,'Pedro',3),(6,'Sofia',3),(7,'Luis',1),(8,'Carmen',2),(9,'Ricardo',3),(10,'Isabel',1),(11,'Emilio',4),(12,'Rosa',4),(13,'Javier',5),(14,'Lorena',5),(15,'Ernesto',6),(16,'Patricia',6),(17,'Oscar',7),(18,'Teresa',7),(19,'Rafael',8),(20,'Cecilia',8),(21,'Roberto',4),(22,'Marta',4),(23,'Fernando',5),(24,'Luisa',5),(25,'Antonio',6),(26,'Sara',6),(27,'Diego',7),(28,'Paula',7),(29,'Andrés',8),(30,'Laura',8);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `nombre_proyecto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,'Proyecto A'),(2,'Proyecto B'),(3,'Proyecto C'),(4,'Proyecto D'),(5,'Proyecto E'),(6,'Proyecto F'),(7,'Proyecto G'),(8,'Proyecto H'),(9,'Proyecto I'),(10,'Proyecto J'),(11,'Proyecto K'),(12,'Proyecto L'),(13,'Proyecto M'),(14,'Proyecto N'),(15,'Proyecto O');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cantidad_horas_por_proyecto`
--

/*!50001 DROP VIEW IF EXISTS `cantidad_horas_por_proyecto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidad_horas_por_proyecto` AS select `proyectos`.`nombre_proyecto` AS `nombre_proyecto`,sum(`asignaciones`.`asignacion_hora`) AS `Horas` from (`proyectos` left join `asignaciones` on(`proyectos`.`id_proyecto` = `asignaciones`.`id_proyecto`)) group by `proyectos`.`nombre_proyecto` order by sum(`asignaciones`.`asignacion_hora`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-12 21:22:17
