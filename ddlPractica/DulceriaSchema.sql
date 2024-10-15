/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Dulceria
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clientes` (
  `Cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `RFC` varchar(15) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DETAIL_VENTAS`
--

DROP TABLE IF EXISTS `DETAIL_VENTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DETAIL_VENTAS` (
  `DetailSell_id` int(11) NOT NULL AUTO_INCREMENT,
  `Inventario_id` int(11) NOT NULL,
  `Venta_id` int(11) NOT NULL,
  `CantidadVendida` decimal(10,2) NOT NULL,
  `CostoTotalProductos` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailSell_id`),
  KEY `Inventario_id` (`Inventario_id`),
  KEY `Venta_id` (`Venta_id`),
  CONSTRAINT `DETAIL_VENTAS_ibfk_1` FOREIGN KEY (`Inventario_id`) REFERENCES `Inventarios` (`Inventario_id`),
  CONSTRAINT `DETAIL_VENTAS_ibfk_2` FOREIGN KEY (`Venta_id`) REFERENCES `Ventas` (`Venta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Inventarios`
--

DROP TABLE IF EXISTS `Inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventarios` (
  `Inventario_id` int(11) NOT NULL AUTO_INCREMENT,
  `Producto_id` int(11) NOT NULL,
  `Stock` int(11) DEFAULT NULL,
  `StoreLocation` varchar(10) DEFAULT NULL,
  `BatchExpiration` varchar(100) DEFAULT NULL,
  `last_purchase_product` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Inventario_id`),
  UNIQUE KEY `Producto_id` (`Producto_id`),
  CONSTRAINT `Inventarios_ibfk_1` FOREIGN KEY (`Producto_id`) REFERENCES `Productos` (`Producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Productos` (
  `Producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `Proveedor_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `UnitCost` decimal(10,2) DEFAULT NULL,
  `last_purchase` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Producto_id`),
  KEY `Proveedor_id` (`Proveedor_id`),
  CONSTRAINT `Productos_ibfk_1` FOREIGN KEY (`Proveedor_id`) REFERENCES `Proveedores` (`Proveedor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proveedores` (
  `Proveedor_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `ChiefName` varchar(50) DEFAULT NULL,
  `Discount` decimal(10,2) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Last_buy` timestamp NULL DEFAULT NULL,
  `Next_buy` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Proveedor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ventas`
--

DROP TABLE IF EXISTS `Ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ventas` (
  `Venta_id` int(11) NOT NULL AUTO_INCREMENT,
  `Sell_date` timestamp NULL DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `isPayment` tinyint(1) DEFAULT NULL,
  `requireBill` tinyint(1) DEFAULT NULL,
  `Taxes` decimal(10,2) DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `Cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`Venta_id`),
  KEY `fk_cliente` (`Cliente_id`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`Cliente_id`) REFERENCES `Clientes` (`Cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-10-15  0:53:33
