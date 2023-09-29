CREATE DATABASE  IF NOT EXISTS `LittleLemonDB` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `LittleLemonDB`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bookings` (
  `BookingID` int NOT NULL,
  `TableNumber` int NOT NULL,
  `GuestFirstName` varchar(45) DEFAULT NULL,
  `GuestLastName` varchar(45) DEFAULT NULL,
  `NumberOfGuests` int DEFAULT NULL,
  `BookingDate` datetime NOT NULL,
  `EmployeeID` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `EmployeeID_fk_idx` (`EmployeeID`),
  KEY `CustomerID_fk_idx` (`CustomerID`),
  CONSTRAINT `CustomerID_fk` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,2,'Anna','Iversen',5,'2023-09-25 19:00:00',8,4),(2,5,'Kishan','Hughes',2,'2023-09-25 19:00:00',8,6),(3,7,'Vanessa','McCarthy',2,'2023-09-25 15:00:00',11,1),(4,1,'Marcos','Romero',1,'2023-09-25 17:30:00',10,2),(5,5,'Hiroki','Yamane',7,'2023-10-24 18:30:00',9,3),(6,1,'Diana','Pinto',3,'2023-10-14 20:00:00',11,5),(7,2,'Indira','Moncada',7,'2023-10-12 18:30:00',9,7),(8,4,'Mosha','Setsile',2,'2023-10-04 20:00:00',10,8),(9,5,'Laura','Mills',3,'2023-10-14 18:30:00',8,9),(10,6,'Henrik','Kreida',4,'2023-10-24 20:00:00',9,10),(11,7,'Millicent','Blou',2,'2023-10-25 18:30:00',10,11),(12,3,'Altay','Ayhan',3,'2023-10-24 18:30:00',11,12),(13,2,'Jane','Murphy',1,'2023-10-20 18:00:00',10,13),(14,6,'Laurina','Delgado',4,'2023-09-28 18:30:00',9,14),(15,7,'Mike','Edwards',3,'2023-09-30 19:30:00',8,15),(16,3,'Karl','Pederson',2,'2023-10-14 18:00:00',9,16);
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `PhoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Vanessa McCarthy',757536378),(2,'Marcos Romero',757536379),(3,'Hiroki Yamane',757536376),(4,'Anna Iversen',757536375),(5,'Diana Pinto',757536374),(6,'Kishan Hughes',387986345),(7,'Indira Moncada',334567243),(8,'Mosha Setsile',315642597),(9,'Laura Mills',300842509),(10,'Henrik Kreida',358208983),(11,'Millicent Blou',347898755),(12,'Altay Ayhan',757636378),(13,'Jane Murphy',753536379),(14,'Laurina Delgado',754536376),(15,'Mike Edwards',757236375),(16,'Karl Pederson',757936374);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `EmployeeID` int NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `ContactNumber` int DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `AnnualSalary` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Mario Gollini','Manager',351258074,'Mario.g@littlelemon.com','$70,000'),(2,'Adrian Gollini','Assistant Manager',351474048,'Adrian.g@littlelemon.com','$65,000'),(3,'Giorgos Dioudis','Head Chef',351970582,'Giorgos.d@littlelemon.com','$50,000'),(4,'Fatma Kaya','Assistant Chef',351963569,'Fatma.k@littlelemon.com','$45,000'),(5,'Seamus Hogan','Assistant Chef',351478025,'Seamus.h@littlelemon.com','$45,000'),(6,'Thomas Eriksson','Assistant Chef',351475058,'Thomas.e@littlelemon.com','$45,000'),(7,'Simon Tolo','Assistant Chef',351930582,'Simon.t@littlelemon.com','$45,000'),(8,'Elena Salvai','Head Waiter',351074198,'Elena.s@littlelemon.com','$43,000'),(9,'Francesca Soffia','Waiter',351258569,'Francesca.s@littlelemon.com','$40,000'),(10,'Emily Sierra','Waiter',351083098,'Emily.s@littlelemon.com','$40,000'),(11,'Maria Carter','Waiter',351022508,'Maria.c@littlelemon.com','$40,000'),(12,'John Millar','Receptionist',351584508,'John.m@littlelemon.com','$35,000'),(13,'Rick Griffin','Receptionist',351478458,'Rick.G@littlelemon.com','$35,000');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuItems`
--

DROP TABLE IF EXISTS `MenuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItems` (
  `ItemID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItems`
--

LOCK TABLES `MenuItems` WRITE;
/*!40000 ALTER TABLE `MenuItems` DISABLE KEYS */;
INSERT INTO `MenuItems` VALUES (1,'Olives','Starters',5),(2,'Flatbread','Starters',5),(3,'Minestrone','Starters',8),(4,'Tomato bread','Starters',8),(5,'Falafel','Starters',7),(6,'Hummus','Starters',5),(7,'Greek salad','Main Courses',15),(8,'Bean soup','Main Courses',12),(9,'Pizza','Main Courses',15),(10,'Greek yoghurt','Desserts',7),(11,'Ice cream','Desserts',6),(12,'Cheesecake','Desserts',4),(13,'Athens White wine','Drinks',25),(14,'Corfu Red Wine','Drinks',30),(15,'Turkish Coffee','Drinks',10),(16,'Turkish Coffee','Drinks',10),(17,'Kabasa','Main Courses',17);
/*!40000 ALTER TABLE `MenuItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menus`
--

DROP TABLE IF EXISTS `Menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Menus` (
  `MenuID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Cuisine` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuID`,`ItemID`),
  KEY `ItemID_fk_idx` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menus`
--

LOCK TABLES `Menus` WRITE;
/*!40000 ALTER TABLE `Menus` DISABLE KEYS */;
INSERT INTO `Menus` VALUES (1,1,'Greek'),(1,7,'Greek'),(1,10,'Greek'),(1,13,'Greek'),(2,3,'Italian'),(2,9,'Italian'),(2,12,'Italian'),(2,15,'Italian'),(3,5,'Turkish'),(3,11,'Turkish'),(3,16,'Turkish'),(3,17,'Turkish');
/*!40000 ALTER TABLE `Menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDeliveryStatus`
--

DROP TABLE IF EXISTS `OrderDeliveryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDeliveryStatus` (
  `DeliveryID` int NOT NULL,
  `DeliveryStatus` varchar(45) NOT NULL,
  `TableNumber` int NOT NULL,
  `OrderID` int DEFAULT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `OrderID_fk_idx` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDeliveryStatus`
--

LOCK TABLES `OrderDeliveryStatus` WRITE;
/*!40000 ALTER TABLE `OrderDeliveryStatus` DISABLE KEYS */;
INSERT INTO `OrderDeliveryStatus` VALUES (1,'Delivered',7,4),(2,'In progress',2,1),(3,'In progress',5,3),(4,'Delivered',1,2);
/*!40000 ALTER TABLE `OrderDeliveryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `TableNumber` int NOT NULL,
  `MenuID` int NOT NULL,
  `BookingID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `BillAmount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `MenuID_fk_idx` (`MenuID`),
  KEY `BookingID_fk_idx` (`BookingID`),
  CONSTRAINT `BookingID_fk` FOREIGN KEY (`BookingID`) REFERENCES `Bookings` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,2,1,1,5,286),(2,1,2,4,1,37),(3,5,2,2,2,137),(4,7,3,3,2,75);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-29 12:19:56
