-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `tdetallesventas`
--

DROP TABLE IF EXISTS `tdetallesventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdetallesventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idVenta` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `PrecioUnico` decimal(20,2) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descarga` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idVenta` (`idVenta`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tdetallesventas_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `tventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tdetallesventas_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `tproductos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdetallesventas`
--

LOCK TABLES `tdetallesventas` WRITE;
/*!40000 ALTER TABLE `tdetallesventas` DISABLE KEYS */;
INSERT INTO `tdetallesventas` VALUES (17,21,1,1299.00,1,0),(18,21,1,269.00,1,0),(19,22,1,235.00,1,0),(20,22,1,555.00,1,0),(21,23,1,1299.00,1,0),(22,23,3,1999.00,1,0),(23,23,4,1753.00,1,0),(24,24,2,1329.00,1,0),(25,24,2,1329.00,1,0),(26,24,3,1999.00,1,0),(27,24,3,1999.00,1,0),(28,24,4,1753.00,1,0),(29,25,2,449.89,1,0),(30,25,4,625.00,1,0);
/*!40000 ALTER TABLE `tdetallesventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductos`
--

DROP TABLE IF EXISTS `tproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductos`
--

LOCK TABLES `tproductos` WRITE;
/*!40000 ALTER TABLE `tproductos` DISABLE KEYS */;
INSERT INTO `tproductos` VALUES (1,'Tarjeta Gráfica 2060',485.00,'Asus Dual GeForce RTX 2060 EVO OC Edition 12GB GDDR6','https://thumb.pccomponentes.com/w-530-530/articles/1002/10025541/1767-asus-dual-geforce-rtx-2060-evo-oc-edition-12gb-gddr6.jpg'),(2,'Tarjeta Gráfica 3060',449.89,'Gigabyte GeForce RTX 3060 EAGLE OC 12GB LHR GDDR6 Rev 2.0','https://thumb.pccomponentes.com/w-530-530/articles/45/453182/1568-gigabyte-geforce-rtx-3060-eagle-oc-12gb-lhr-gddr6-rev-20.jpg'),(3,'Tarjeta Gráfica 3080',1055.02,'Gigabyte GeForce RTX 3080 GAMING OC V2 LHR 10GB GDDR6X','https://thumb.pccomponentes.com/w-530-530/articles/51/514403/1873-gigabyte-geforce-rtx-3080-gaming-oc-v2-10gb-gddr6x.jpg'),(4,'Tarjeta Gráfica 1050TI',214.00,'Gigabyte GeForce GTX 1050Ti D5 4GB GDDR5','https://thumb.pccomponentes.com/w-530-530/articles/10/106067/1111.jpg'),(5,'Procesador AMD Ryzen 5',235.00,'AMD Ryzen 5 5600X 3.7GHz','https://thumb.pccomponentes.com/w-530-530/articles/32/328475/1101-amd-ryzen-5-5600x-37ghz.jpg'),(6,'Procesador AMD Ryzen 7',339.00,'AMD Ryzen 7 5800X 3.8GHz','https://thumb.pccomponentes.com/w-530-530/articles/32/328473/168-amd-ryzen-7-5800x-38ghz.jpg'),(7,'Procesador Intel Core i7',425.00,'Intel Core i7-12700K 5.0 GHz','https://thumb.pccomponentes.com/w-530-530/articles/57/574292/191-intel-core-i7-12700k-50-ghz.jpg'),(8,'Procesador Intel Core i9',625.00,'Intel Core i9-12900K 5.2 GHz\r\n','https://thumb.pccomponentes.com/w-530-530/articles/57/574288/1444-intel-core-i9-12900k-52-ghz.jpg'),(9,'Sobremesa Gaming HP',1299.00,'HP Pavilion Gaming TG01-1107ns Intel Core i7-10700F/16GB/1TB+512GB SSD/RTX 3060Ti','https://thumb.pccomponentes.com/w-530-530/articles/1019/10198344/167-hp-pavilion-gaming-tg01-1107ns-intel-core-i7-10700f-16gb-1tb-512gb-ssd-rtx-3060ti.jpg'),(10,'Sobremesa Gaming NFORTEC',1329.00,'PcCom Silver AMD Ryzen 5 5600X/16GB/480GB SSD+1TB/RTX 3060/NO S.O','https://thumb.pccomponentes.com/w-530-530/articles/67/679709/173-pccom-silver-amd-ryzen-5-5600x-16gb-480gb-ssd-1tb-rtx-3060-foto.jpg'),(11,'Sobremesa Gaming OMEN',1999.00,'HP OMEN 40L GT21-0050ns Intel Core i7-12700K/32GB/1TB SSD + 1TB/RTX 3070Ti','https://thumb.pccomponentes.com/w-530-530/articles/1020/10207788/127-hp-omen-40l-gt21-0050ns-intel-core-i7-12700k-32gb-1tb-ssd-rtx-3070ti.jpg'),(12,'Portátil HP LENOVO',555.00,'Lenovo IdeaPad 5 14ITL05 Intel Core i5-1135G7/8GB/512GB SSD/14`','https://thumb.pccomponentes.com/w-530-530/articles/58/580373/1693-lenovo-ideapad-5-14itl05-intel-core-i5-1135g7-8gb-512gb-ssd-14.jpg'),(13,'Portátil Gaming VICTUS',788.00,'HP Victus 16-e0067ns AMD Ryzen 7 5800H/16GB/512GB SSD/RTX 3050/16.1`','https://thumb.pccomponentes.com/w-530-530/articles/1006/10063290/1646-hp-victus-16-e0000ns-amd-ryzen-7-5800h-16gb-512gb-ssd-rtx-3050-161.jpg'),(14,'Portátil Gaming MSI Raider',2679.00,'MSI Raider GE76 12UGS-004ES Intel Core i7-12700H/32GB/1TB SSD/RTX 3070Ti/17.3`','https://thumb.pccomponentes.com/w-530-530/articles/1001/10010948/1750-msi-ge76-raider-12ugs-004es-intel-core-i7-12700h-32gb-1tb-ssd-rtx-3070ti-173.jpg'),(15,'Monitor NEWSKILL Icarus',269.00,'Newskill Icarus RGB IC27QRC 27` LED QuadHD 165Hz G-Sync Compatible','https://thumb.pccomponentes.com/w-530-530/articles/30/309428/1657-newskill-icarus-rgb-ic27qrc-27-led-quadhd-165hz-g-sync-compatible.jpg'),(16,'Monitor MSI Optix',189.00,'MSI Optix G24C4 23.6` LED FullHD 144Hz Freesync Curva','https://thumb.pccomponentes.com/w-530-530/articles/23/231904/1.jpg');
/*!40000 ALTER TABLE `tproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductosmonitores`
--

DROP TABLE IF EXISTS `tproductosmonitores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductosmonitores` (
  `idMonitores` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMonitores` varchar(255) NOT NULL,
  `PrecioMonitores` decimal(20,2) NOT NULL,
  `DescripcionMonitores` text NOT NULL,
  `ImagenMonitores` varchar(255) NOT NULL,
  PRIMARY KEY (`idMonitores`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductosmonitores`
--

LOCK TABLES `tproductosmonitores` WRITE;
/*!40000 ALTER TABLE `tproductosmonitores` DISABLE KEYS */;
INSERT INTO `tproductosmonitores` VALUES (1,'Monitor NEWSKILL Icarus',269.00,'Newskill Icarus RGB IC27QRC 27` LED QuadHD 165Hz G-Sync Compatible','https://thumb.pccomponentes.com/w-530-530/articles/30/309428/1657-newskill-icarus-rgb-ic27qrc-27-led-quadhd-165hz-g-sync-compatible.jpg'),(2,'Monitor MSI Optix',189.00,'MSI Optix G24C4 23.6` LED FullHD 144Hz Freesync Curva','https://thumb.pccomponentes.com/w-530-530/articles/23/231904/1.jpg'),(3,'Monitor HP X27',329.00,'HP X27qc 27` LED QHD 165Hz FreeSync Premium Curva','https://thumb.pccomponentes.com/w-530-530/articles/57/578273/1825-hp-x27qc-27-led-qhd-165hz-freesync-premium-curva.jpg'),(4,'Monitor PHILIPS V Line',134.00,'Philips V Line 242V8A/00 23.8` LED IPS FullHD 75Hz','https://thumb.pccomponentes.com/w-530-530/articles/23/233594/1.jpg'),(5,'Monitor VIEWSONIC VX Series',169.00,'Viewsonic VX Series VX2468-PC-MHD 24` LED FullHD 165Hz FreeSync Premium Pro Curva','https://thumb.pccomponentes.com/w-530-530/articles/1003/10031047/1515-viewsonic-vx-series-vx2468-pc-mhd-24-led-fullhd-165hz-freesync-premium-pro-curva.jpg'),(6,'Monitor LG',248.00,'LG 27UL500-W 27` LED IPS UltraHD 4K FreeSync\r\n','https://thumb.pccomponentes.com/w-530-530/articles/22/223587/1.jpg'),(7,'Monitor ACER Nitro',179.00,'Acer Nitro KG2 KG272 S 27` LED IPS FullHD 165Hz FreeSync Premium\r\n','https://thumb.pccomponentes.com/w-530-530/articles/1005/10057498/1222-acer-nitro-kg2-kg272-s-27-led-ips-fullhd-165hz-freesync-premium-review.jpg'),(8,'Monitor PCCOM',199.00,'PcCom Discovery 27` LED FullHD 165Hz FreeSync Curvo\r\n','https://thumb.pccomponentes.com/w-530-530/articles/74/745940/1100-pccom-discovery-27-led-fullhd-165hz-freesync-curvo-review.jpg');
/*!40000 ALTER TABLE `tproductosmonitores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductosportatiles`
--

DROP TABLE IF EXISTS `tproductosportatiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductosportatiles` (
  `idPortatiles` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePortatiles` varchar(255) NOT NULL,
  `PrecioPortatiles` decimal(20,2) NOT NULL,
  `DescripcionPortatiles` text NOT NULL,
  `ImagenPortatiles` varchar(255) NOT NULL,
  PRIMARY KEY (`idPortatiles`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductosportatiles`
--

LOCK TABLES `tproductosportatiles` WRITE;
/*!40000 ALTER TABLE `tproductosportatiles` DISABLE KEYS */;
INSERT INTO `tproductosportatiles` VALUES (1,'Portátil HP LENOVO',555.00,'Lenovo IdeaPad 5 14ITL05 Intel Core i5-1135G7/8GB/512GB SSD/14`','https://thumb.pccomponentes.com/w-530-530/articles/58/580373/1693-lenovo-ideapad-5-14itl05-intel-core-i5-1135g7-8gb-512gb-ssd-14.jpg'),(2,'Portátil Gaming VICTUS',788.00,'HP Victus 16-e0067ns AMD Ryzen 7 5800H/16GB/512GB SSD/RTX 3050/16.1`','https://thumb.pccomponentes.com/w-530-530/articles/1006/10063290/1646-hp-victus-16-e0000ns-amd-ryzen-7-5800h-16gb-512gb-ssd-rtx-3050-161.jpg'),(3,'Portátil Gaming MSI Raider',2679.00,'MSI Raider GE76 12UGS-004ES Intel Core i7-12700H/32GB/1TB SSD/RTX 3070Ti/17.3`','https://thumb.pccomponentes.com/w-530-530/articles/1001/10010948/1750-msi-ge76-raider-12ugs-004es-intel-core-i7-12700h-32gb-1tb-ssd-rtx-3070ti-173.jpg'),(4,'Portátil ASUS',228.00,'Asus E410MA-EK007TS Intel Celeron N4020/4GB/64GB eMMC/14`','https://thumb.pccomponentes.com/w-530-530/articles/31/312599/1997-asus-e410ma-ek007ts-intel-celeron-n4020-4gb-64gb-emmc-14.jpg'),(5,'Portátil LENOVO',569.00,'Lenovo IdeaPad 3 15ITL6 Intel Core i5-1135G7/8 GB/512GB SSD/15.6`/Windows11','https://thumb.pccomponentes.com/w-530-530/articles/1010/10101735/1797-lenovo-ideapad-3-15itl6-intel-core-i5-1135g7-8-gb-512gb-ssd-156.jpg'),(6,'Portátil Gaming ASUS TUF',1139.00,'Asus TUF Gaming F15 FX506HE-HN012 Intel Core i5-11400H/16GB/512GB SSD/RTX 3050Ti/15.6`\r\n','https://thumb.pccomponentes.com/w-530-530/articles/1018/10188902/1811-asus-tuf-gaming-f15-fx506he-hn012-intel-core-i5-11400h-16gb-512gb-ssd-rtx-3050ti-156.jpg'),(7,'Portátil Gaming MSI Bravo',909.00,'MSI Bravo 15 B5DD-005XES AMD Ryzen 7 5800H/16 GB/512GB SSD/RX5500M/15.6`\r\n','https://thumb.pccomponentes.com/w-530-530/articles/82/823640/1398-msi-bravo-15-b5dd-005xes-amd-ryzen-7-5800h-16-gb-512gb-ssd-rx5500m-156.jpg'),(8,'Portátil Gaming PCCOM Revolt One',1299.00,'PcCom Revolt One 3060 Intel Core i7-11800H/16GB/1TB SSD/RTX 3060/15.6`\r\n','https://thumb.pccomponentes.com/w-530-530/articles/1021/10219894/1172-pccom-revolt-one-3060-intel-core-i7-11800h-16gb-1tb-ssd-rtx-3060-156-opiniones.jpg');
/*!40000 ALTER TABLE `tproductosportatiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductosprocesadores`
--

DROP TABLE IF EXISTS `tproductosprocesadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductosprocesadores` (
  `idProcesadores` int(11) NOT NULL AUTO_INCREMENT,
  `NombreProcesadores` varchar(255) NOT NULL,
  `PrecioProcesadores` decimal(20,2) NOT NULL,
  `DescripcionProcesadores` text NOT NULL,
  `ImagenProcesadores` varchar(255) NOT NULL,
  PRIMARY KEY (`idProcesadores`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductosprocesadores`
--

LOCK TABLES `tproductosprocesadores` WRITE;
/*!40000 ALTER TABLE `tproductosprocesadores` DISABLE KEYS */;
INSERT INTO `tproductosprocesadores` VALUES (1,'Procesador AMD Ryzen 5',235.00,'AMD Ryzen 5 5600X 3.7GHz','https://thumb.pccomponentes.com/w-530-530/articles/32/328475/1101-amd-ryzen-5-5600x-37ghz.jpg'),(2,'Procesador AMD Ryzen 7',339.00,'AMD Ryzen 7 5800X 3.8GHz','https://thumb.pccomponentes.com/w-530-530/articles/32/328473/168-amd-ryzen-7-5800x-38ghz.jpg'),(3,'Procesador Intel Core i7',425.00,'Intel Core i7-12700K 5.0 GHz','https://thumb.pccomponentes.com/w-530-530/articles/57/574292/191-intel-core-i7-12700k-50-ghz.jpg'),(4,'Procesador Intel Core i9',625.00,'Intel Core i9-12900K 5.2 GHz','https://thumb.pccomponentes.com/w-530-530/articles/57/574288/1444-intel-core-i9-12900k-52-ghz.jpg'),(5,'Procesador Intel Celeron',39.00,'Intel Celeron G5905 3.50GHz','https://thumb.pccomponentes.com/w-530-530/articles/33/332627/1246-intel-celeron-g5905-350ghz.jpg'),(6,'Procesador Intel Pentium Gold',59.00,'Intel Pentium Gold G6405 4.1 GHz','https://thumb.pccomponentes.com/w-530-530/articles/36/362395/1340-intel-pentium-gold-g6405-41-ghz.jpg'),(7,'Procesador Intel Core i3',80.00,'Intel Core i3-10105F 3.7 GHz','https://thumb.pccomponentes.com/w-530-530/articles/36/362387/1305-intel-core-i3-10105f-37-ghz.jpg'),(8,'Procesador AMD Ryzen 9',448.00,'AMD Ryzen 9 5900X 3.7 GHz','https://thumb.pccomponentes.com/w-530-530/articles/32/328702/1997-amd-ryzen-9-5900x-37-ghz.jpg');
/*!40000 ALTER TABLE `tproductosprocesadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductossobremesa`
--

DROP TABLE IF EXISTS `tproductossobremesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductossobremesa` (
  `idSobremesa` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSobremesa` varchar(255) NOT NULL,
  `PrecioSobremesa` decimal(20,2) NOT NULL,
  `DescripcionSobremesa` text NOT NULL,
  `ImagenSobremesa` varchar(255) NOT NULL,
  PRIMARY KEY (`idSobremesa`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductossobremesa`
--

LOCK TABLES `tproductossobremesa` WRITE;
/*!40000 ALTER TABLE `tproductossobremesa` DISABLE KEYS */;
INSERT INTO `tproductossobremesa` VALUES (1,'Sobremesa Gaming HP',1299.00,'HP Pavilion Gaming TG01-1107ns Intel Core i7-10700F/16GB/1TB+512GB SSD/RTX 3060Ti','https://thumb.pccomponentes.com/w-530-530/articles/1019/10198344/167-hp-pavilion-gaming-tg01-1107ns-intel-core-i7-10700f-16gb-1tb-512gb-ssd-rtx-3060ti.jpg'),(2,'Sobremesa Gaming NFORTEC',1329.00,'PcCom Silver AMD Ryzen 5 5600X/16GB/480GB SSD+1TB/RTX 3060/NO S.O','https://thumb.pccomponentes.com/w-530-530/articles/67/679709/173-pccom-silver-amd-ryzen-5-5600x-16gb-480gb-ssd-1tb-rtx-3060-foto.jpg'),(3,'Sobremesa Gaming OMEN',1999.00,'HP OMEN 40L GT21-0050ns Intel Core i7-12700K/32GB/1TB SSD + 1TB/RTX 3070Ti','https://thumb.pccomponentes.com/w-530-530/articles/1020/10207788/127-hp-omen-40l-gt21-0050ns-intel-core-i7-12700k-32gb-1tb-ssd-rtx-3070ti.jpg'),(4,'Sobremesa Gaming GOLD',1753.00,'PcCom Gold Intel Core i5-12600K/16GB/1TB/RTX3060 + Windows 11 Home','https://thumb.pccomponentes.com/w-530-530/articles/83/838261/1291-pccom-gold-intel-core-i5-12600k-16gb-1tb-rtx3060-windows-11-home-comprar.jpg'),(5,'Sobremesa Basic NOX',357.00,'PcCom Basic Essential Intel Core i3-10100/8GB/480GBSSD','https://thumb.pccomponentes.com/w-530-530/articles/35/359540/1216-pccom-basic-essential-intel-core-i3-10100-8gb-480gbssd.jpg'),(6,'Sobremesa Basic Elite NOX',610.00,'PcCom Basic Elite Intel Core i5-10400/8GB/1TB + 480GB SSD/Windows 11 Home','https://thumb.pccomponentes.com/w-530-530/articles/58/588269/1981-pccom-basic-elite-intel-core-i5-10400-8gb-1tb-480ssd-windows-11-home.jpg'),(7,'Sobremesa Gaming MSI MAG',1229.00,'MSI MAG Infinite S3 11TC-224XES Intel Core i5-11400F/16GB/1TB+512GB SSD/RTX3060','https://thumb.pccomponentes.com/w-530-530/articles/79/793486/1345-msi-mag-infinite-s3-11tc-224xes-intel-core-i5-11400f-16gb-1tb-512gb-ssd-rtx3060.jpg'),(8,'Sobremesa ASUS',649.00,'Asus U500MA-R5600G0150 AMD Ryzen 5 5600G/16GB/512GB SSD','https://thumb.pccomponentes.com/w-530-530/articles/1031/10312818/1127-asus-u500ma-r5600g0150-amd-ryzen-5-5600g-16gb-512gb-ssd.jpg');
/*!40000 ALTER TABLE `tproductossobremesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductostarjetasgraficas`
--

DROP TABLE IF EXISTS `tproductostarjetasgraficas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tproductostarjetasgraficas` (
  `idTarjetasGraficas` int(11) NOT NULL AUTO_INCREMENT,
  `NombreTarjetasGraficas` varchar(255) NOT NULL,
  `PrecioTarjetasGraficas` decimal(20,2) NOT NULL,
  `DescripcionTarjetasGraficas` text NOT NULL,
  `ImagenTarjetasGraficas` varchar(255) NOT NULL,
  PRIMARY KEY (`idTarjetasGraficas`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductostarjetasgraficas`
--

LOCK TABLES `tproductostarjetasgraficas` WRITE;
/*!40000 ALTER TABLE `tproductostarjetasgraficas` DISABLE KEYS */;
INSERT INTO `tproductostarjetasgraficas` VALUES (1,'Tarjeta Gráfica 2060',485.00,'Asus Dual GeForce RTX 2060 EVO OC Edition 12GB GDDR6','https://thumb.pccomponentes.com/w-530-530/articles/1002/10025541/1767-asus-dual-geforce-rtx-2060-evo-oc-edition-12gb-gddr6.jpg'),(2,'Tarjeta Gráfica 3060',449.89,'Gigabyte GeForce RTX 3060 EAGLE OC 12GB LHR GDDR6 Rev 2.0','https://thumb.pccomponentes.com/w-530-530/articles/45/453182/1568-gigabyte-geforce-rtx-3060-eagle-oc-12gb-lhr-gddr6-rev-20.jpg'),(3,'Tarjeta Gráfica 3080',1055.02,'Gigabyte GeForce RTX 3080 GAMING OC V2 LHR 10GB GDDR6X','https://thumb.pccomponentes.com/w-530-530/articles/51/514403/1873-gigabyte-geforce-rtx-3080-gaming-oc-v2-10gb-gddr6x.jpg'),(4,'Tarjeta Gráfica 1050TI',214.00,'Gigabyte GeForce GTX 1050Ti D5 4GB GDDR5','https://thumb.pccomponentes.com/w-530-530/articles/10/106067/1111.jpg'),(5,'Tarjeta Gráfica 3080TI',1499.00,'Gigabyte GeForce RTX 3080 Ti GAMING OC 12GB GDDR6X','https://thumb.pccomponentes.com/w-530-530/articles/41/411989/1528-gigabyte-geforce-rtx-3080-ti-gaming-oc-12gb-gddr6x.jpg'),(6,'Tarjeta Gráfica XFX RX 6600',429.00,'XFX Speedster SWFT 210 AMD Radeon RX 6600 XT 8GB GDDR6','https://thumb.pccomponentes.com/w-530-530/articles/51/513369/1393-xfx-speedster-swft-210-amd-radeon-rx-6600-xt-8gb-gddr6.jpg'),(7,'Tarjeta Gráfica MSI RTX 3070',769.00,'MSI GeForce RTX 3070 VENTUS 2X OC LHR 8GB GDDR6\r\n','https://thumb.pccomponentes.com/w-530-530/articles/57/571988/1207-msi-geforce-rtx-3070-ventus-2x-oc-lhr-8gb-gddr6-opiniones.jpg'),(8,'Tarjeta Gráfica ASUS RTX 3070TI',784.00,'Asus TUF Gaming GeForce RTX 3070 Ti OC Edition 8GB GDDR6X\r\n','https://thumb.pccomponentes.com/w-530-530/articles/42/423335/1487-asus-tuf-gaming-geforce-rtx-3070-ti-oc-edition-8gb-gddr6x.jpg');
/*!40000 ALTER TABLE `tproductostarjetasgraficas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tventas`
--

DROP TABLE IF EXISTS `tventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(500) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `EstadoPago` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tventas`
--

LOCK TABLES `tventas` WRITE;
/*!40000 ALTER TABLE `tventas` DISABLE KEYS */;
INSERT INTO `tventas` VALUES (21,'160uvdl5k8qfub8f6rm9ra50q1','','2022-05-24 17:37:31','test@mail.com',1568.00,'pendiente'),(22,'160uvdl5k8qfub8f6rm9ra50q1','','2022-05-24 17:41:01','test@mail.com',790.00,'pendiente'),(23,'92j9u0ohpmkmo8etjf83tpog1e','','2022-05-26 19:41:57','jorge.gcia.gcia@gmail.com',5051.00,'pendiente'),(24,'92j9u0ohpmkmo8etjf83tpog1e','','2022-05-26 19:43:23','jorge.gcia.gcia@gmail.com',8409.00,'pendiente'),(25,'d02dkmd0iog6rskqgjlau6i1f4','','2022-05-31 14:36:04','prueba2@gmail.com',1074.89,'pendiente');
/*!40000 ALTER TABLE `tventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31 20:16:55
