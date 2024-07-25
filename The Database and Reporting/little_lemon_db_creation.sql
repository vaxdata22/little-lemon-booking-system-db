CREATE DATABASE  IF NOT EXISTS `littlelemondb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `littlelemondb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL,
  `BookingDate` date NOT NULL,
  `TableNo` int NOT NULL,
  `GuestFullName` varchar(100) NOT NULL,
  `StaffID` int DEFAULT NULL,
  `BookingSlot` time NOT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  UNIQUE KEY `BookingID_UNIQUE` (`BookingID`),
  KEY `FK_idx` (`StaffID`),
  KEY `FK_idx1` (`CustomerID`),
  KEY `name_idx` (`GuestFullName`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2024-06-02',17,'Fausto Garza',8,'00:27:35',NULL),(2,'2024-06-19',20,'Autumn Mooney',7,'15:33:17',66),(3,'2024-09-03',17,'Jodi Chapman',4,'16:15:57',99),(4,'2024-06-04',14,'Margie Hogan',2,'06:40:42',113),(5,'2024-11-07',17,'Mallory Gregory',6,'01:20:25',NULL),(6,'2024-08-17',12,'Norris Freeman',3,'10:03:04',NULL),(7,'2024-09-27',24,'Clara Cook',8,'14:47:05',NULL),(8,'2024-08-08',23,'Francis Harvey',8,'16:54:13',NULL),(9,'2024-02-09',15,'Jana Conner',8,'06:17:14',73),(10,'2024-08-21',31,'Huey Mays',4,'09:45:21',NULL),(11,'2024-12-29',16,'Jack Preston',11,'03:43:13',NULL),(12,'2024-05-27',1,'Juana Allen',3,'18:09:28',24),(13,'2024-09-17',3,'Chas Waller',10,'04:50:54',20),(14,'2024-06-01',1,'Kennith Bridges',7,'06:18:49',NULL),(15,'2024-01-09',15,'Jeanie Rivers',5,'17:07:03',NULL),(16,'2024-08-23',15,'Isaiah Vaughan',3,'00:21:29',41),(17,'2024-03-22',9,'Adolph Bowman',9,'09:23:41',NULL),(18,'2024-06-04',10,'Bernice Jenkins',7,'16:13:06',NULL),(19,'2024-11-11',14,'Wiley Werner',2,'22:20:53',43),(20,'2024-10-07',13,'Cameron Blair',2,'06:32:32',NULL),(21,'2024-02-09',17,'Adolph Bowman',1,'08:23:27',NULL),(22,'2024-11-22',20,'Samuel Osborne',10,'10:00:57',NULL),(23,'2024-07-10',19,'Boris Flowers',7,'03:22:06',NULL),(24,'2024-10-16',11,'Vincent Montgomery',11,'21:52:10',26),(26,'2024-02-11',4,'Bryon Schneider',8,'15:23:03',NULL),(27,'2024-10-23',19,'Marian Rodgers',1,'01:19:57',28),(28,'2024-10-23',22,'Bennett Bush',4,'20:26:29',91),(29,'2024-12-18',8,'Paris Weeks',10,'02:00:41',NULL),(30,'2024-11-21',6,'Nichole Deleon',9,'17:39:35',NULL),(31,'2024-10-12',5,'Jules Phelps',8,'00:58:28',NULL),(32,'2024-12-08',14,'Wilda Flowers',11,'13:50:47',85),(33,'2024-12-09',3,'Dwain Pena',2,'02:13:50',NULL),(34,'2024-09-26',4,'Normand Hopkins',11,'21:31:16',71),(35,'2024-11-13',31,'Janell Willis',3,'14:05:56',40),(36,'2024-12-20',25,'Marcy Hoover',9,'13:28:50',NULL),(37,'2024-12-06',1,'Ollie Frank',5,'06:57:27',78),(38,'2024-06-05',12,'Shawn Jennings',10,'15:24:24',NULL),(39,'2024-02-12',5,'Marie Dixon',3,'03:03:19',NULL),(40,'2024-04-18',29,'Coleman Rubio',10,'05:14:27',NULL),(41,'2024-10-31',9,'Jermaine Gould',10,'14:43:10',39),(42,'2024-08-24',1,'Dewey Rowe',6,'07:43:53',NULL),(43,'2024-01-18',3,'Everett Jefferson',7,'09:39:35',NULL),(44,'2024-03-16',10,'Rey Yang',9,'22:35:46',NULL),(45,'2024-09-08',23,'Rickey Mcclain',4,'08:09:25',NULL),(46,'2024-01-18',19,'Jermaine Gould',6,'11:10:47',39),(47,'2024-12-10',25,'Norris Freeman',10,'20:13:40',NULL),(48,'2024-12-29',16,'Kasey Parks',1,'10:40:23',32),(49,'2024-01-12',16,'Darwin Duarte',11,'18:22:48',NULL),(50,'2024-04-22',27,'Jana Conner',1,'16:54:40',73),(51,'2024-01-31',19,'Leanne Archer',8,'05:05:32',NULL),(52,'2024-08-06',16,'Nickolas Sexton',8,'16:36:25',117),(53,'2024-02-11',19,'Mara Jennings',10,'00:48:00',NULL),(54,'2024-01-28',8,'Pete Benton',5,'03:35:39',NULL),(55,'2024-02-25',29,'Merle Carey',9,'20:19:23',NULL),(56,'2024-01-23',20,'Cody Wade',3,'21:39:28',NULL),(57,'2024-06-30',31,'Alden Flynn',5,'16:41:52',NULL),(58,'2024-12-08',28,'Olivia Cooper',3,'11:53:55',NULL),(59,'2024-12-13',21,'Salvatore Ray',9,'05:47:05',34),(60,'2024-02-28',11,'Randell Rasmussen',11,'19:21:50',NULL),(61,'2024-10-21',6,'Jay Singh',4,'14:19:49',9),(62,'2024-12-07',27,'Ingrid Gallagher',5,'16:17:41',NULL),(63,'2024-11-14',3,'Toni Warren',9,'05:36:58',10),(64,'2024-06-20',15,'Deanna Carlson',9,'07:56:56',NULL),(65,'2024-03-02',30,'Isaiah Vaughan',2,'04:24:13',41),(66,'2024-09-28',30,'Jonathon Butler',9,'06:25:40',42),(67,'2024-03-06',2,'Myra Hammond',2,'05:06:13',58),(68,'2024-10-17',17,'Basil Keith',3,'18:05:37',98),(69,'2024-05-21',31,'Young Fox',11,'20:50:28',NULL),(70,'2024-01-30',5,'Priscilla Mann',1,'08:37:13',NULL),(71,'2024-12-31',24,'Foster Wu',2,'14:53:39',106),(72,'2024-05-17',22,'Isabel Burton',1,'07:23:24',NULL),(73,'2024-08-12',18,'Martin Oconnor',5,'10:32:20',NULL),(74,'2024-10-11',16,'Matt Sosa',11,'20:24:11',NULL),(75,'2024-03-05',15,'Randell Rasmussen',1,'23:47:04',NULL),(76,'2024-02-12',5,'Alexis Thomas',1,'21:48:21',NULL),(77,'2024-05-31',25,'Amos Mason',10,'19:53:42',NULL),(78,'2024-05-02',23,'Jeffery Burnett',7,'13:13:35',NULL),(79,'2024-07-31',20,'Earline Mcintyre',5,'03:15:27',25),(80,'2024-02-01',24,'Lincoln Luna',8,'14:25:55',NULL),(81,'2024-02-23',20,'Matthew Harding',6,'08:35:06',NULL),(82,'2024-05-26',16,'Bert Kelly',4,'22:22:45',NULL),(83,'2024-06-22',17,'Miles Tanner',3,'09:55:41',NULL),(84,'2024-09-20',11,'Hilary Waters',5,'07:17:50',NULL),(85,'2024-09-08',11,'Darwin Duarte',4,'13:50:01',NULL),(86,'2024-04-05',29,'Malik Wiggins',5,'08:58:19',1),(87,'2024-09-17',18,'Von Thomas',8,'07:40:39',38),(88,'2024-10-25',18,'Odessa Chandler',8,'07:46:11',NULL),(89,'2024-03-10',31,'Rosetta Whitehead',5,'21:43:00',NULL),(90,'2024-03-13',30,'Lorie Conley',10,'05:05:21',NULL),(91,'2024-08-08',15,'Lorna Fields',5,'17:52:29',NULL),(92,'2024-03-09',5,'Matt Sosa',9,'12:48:35',NULL),(93,'2024-03-18',7,'Lincoln Luna',1,'03:58:08',NULL),(94,'2024-09-18',6,'Vicky Rush',11,'06:36:21',95),(95,'2024-09-13',23,'Debra Pennington',3,'17:49:41',127),(96,'2024-10-29',14,'Felecia Galvan',8,'20:57:07',NULL),(97,'2024-01-24',18,'Silvia Stephenson',4,'17:49:50',90),(98,'2024-03-15',19,'Martin Oconnor',9,'01:48:32',NULL),(99,'2024-01-07',13,'Jeanie Rivers',3,'19:53:38',NULL),(100,'2024-02-01',1,'Cheryl Hubbard',10,'07:56:01',NULL),(101,'2024-08-10',7,'Stan Olsen',11,'20:01:12',NULL),(102,'2024-02-07',1,'Javier Davidson',8,'00:34:06',114),(103,'2024-02-24',10,'Wilda Flowers',10,'19:18:28',85),(104,'2024-01-28',9,'Randell Rasmussen',1,'01:33:42',NULL),(105,'2024-10-08',7,'Stan Olsen',10,'16:09:52',NULL),(106,'2024-05-30',2,'Kristine Potts',4,'05:35:08',74),(107,'2024-04-04',3,'Janell Willis',1,'08:36:38',40),(108,'2024-11-28',24,'Pete Benton',7,'21:01:50',NULL),(109,'2024-02-08',25,'Harold Molina',7,'15:09:41',NULL),(110,'2024-02-05',18,'Anita Short',11,'23:58:27',6),(111,'2024-12-11',9,'Lee Copeland',1,'04:30:41',103),(112,'2024-11-26',23,'Eric Haas',7,'14:50:55',69),(113,'2024-08-31',23,'Matthew Harding',9,'19:29:09',NULL),(114,'2024-03-02',30,'Christopher Park',5,'16:03:09',NULL),(115,'2024-06-24',30,'Vincent Montgomery',2,'23:57:57',26),(116,'2024-01-29',8,'Bessie Fuentes',1,'23:21:24',NULL),(117,'2024-07-19',1,'Jacqueline Drake',7,'15:39:25',52),(118,'2024-02-13',26,'Kermit Newton',7,'08:18:23',12),(119,'2024-09-10',12,'Grace Orr',9,'06:07:51',NULL),(120,'2024-02-14',14,'Molly Hayden',10,'17:56:56',NULL),(121,'2024-10-18',8,'Meredith Mccoy',4,'04:26:54',NULL),(122,'2024-07-26',30,'Kermit Newton',3,'02:07:27',12),(123,'2024-06-04',8,'Ophelia Rubio',10,'23:06:43',94),(124,'2024-02-24',27,'Debbie Mahoney',7,'08:57:10',64),(125,'2024-08-27',2,'Anita Short',5,'06:54:47',6),(126,'2024-01-03',23,'Scot Brady',7,'02:32:26',27),(127,'2024-06-21',10,'Earline Mcintyre',6,'09:49:57',25),(128,'2024-02-02',18,'Richard Stevens',10,'05:09:48',NULL),(129,'2024-11-24',12,'Monty Chan',10,'02:54:28',93),(130,'2024-05-09',6,'Shelby Wilcox',3,'06:29:01',NULL),(131,'2024-11-12',9,'Gilberto Fischer',1,'08:59:41',2),(132,'2024-07-17',15,'Nadine Bishop',8,'00:08:28',NULL),(133,'2024-03-05',11,'Malik Wiggins',4,'22:48:16',1),(134,'2024-06-23',13,'Charles Moses',7,'02:08:07',NULL),(135,'2024-11-14',12,'Bryan Huang',5,'10:38:38',111),(136,'2024-10-25',2,'Rashad Lucas',3,'23:45:40',45),(137,'2024-02-28',5,'Cecil Reynolds',10,'00:59:33',NULL),(138,'2024-11-26',5,'Samuel Osborne',10,'12:36:41',NULL),(139,'2024-04-09',23,'Murray Jackson',8,'20:16:02',NULL),(140,'2024-08-17',8,'Benton Navarro',3,'17:25:08',7),(141,'2024-08-29',2,'Doris Frye',7,'23:03:54',56),(142,'2024-03-02',9,'Raymond Blake',1,'15:10:15',NULL),(143,'2024-04-15',4,'Fran Mercado',7,'15:07:19',70),(144,'2024-05-23',24,'Salvatore Ray',4,'11:12:41',34),(145,'2024-05-20',28,'Norris Freeman',11,'06:39:11',NULL),(146,'2024-07-01',14,'Woodrow Caldwell',5,'16:52:27',NULL),(147,'2024-10-26',1,'Yvette Bautista',10,'00:30:56',NULL),(148,'2024-06-18',8,'Dianne Bolton',2,'23:37:37',16),(149,'2024-12-06',21,'Zelma Dunn',4,'17:18:09',NULL),(150,'2024-05-18',19,'Alfonzo Powell',7,'21:57:59',125),(151,'2024-11-01',4,'Nola Durham',7,'05:46:36',NULL),(152,'2024-05-03',17,'Von Thomas',3,'11:25:58',38),(153,'2024-09-14',29,'Hester Schmitt',10,'13:13:27',33),(154,'2024-07-23',26,'Jamar Valencia',10,'12:11:52',124),(155,'2024-01-26',19,'Rosalinda Cooke',5,'19:28:36',NULL),(156,'2024-05-25',28,'Beverley Sosa',2,'21:56:54',NULL),(157,'2024-07-01',27,'Harris Randall',2,'13:02:24',NULL),(158,'2024-06-11',8,'Martin Oconnor',2,'19:04:06',NULL),(159,'2024-12-28',18,'Bryan Huang',6,'11:53:07',111),(160,'2024-08-11',3,'Dianne Bolton',2,'10:30:54',16),(161,'2024-02-10',3,'Grace Phillips',3,'08:27:32',NULL),(162,'2024-04-04',11,'Malik Wiggins',2,'14:46:09',1),(163,'2024-11-02',3,'Autumn Mooney',5,'16:36:31',66),(164,'2024-12-22',5,'Erika Bridges',7,'02:16:03',96),(165,'2024-09-11',17,'Cleo Gibson',9,'14:07:55',NULL),(166,'2024-09-09',11,'Camille Buck',5,'13:45:29',NULL),(167,'2024-04-20',22,'Ignacio Page',9,'20:32:29',NULL),(168,'2024-07-23',21,'Amos Andrade',5,'19:22:00',80),(169,'2024-02-02',25,'Irwin Maxwell',7,'08:19:28',NULL),(170,'2024-09-04',29,'Matthew Harding',10,'00:34:33',NULL),(171,'2024-04-16',16,'Debra Pennington',6,'15:59:15',127),(172,'2024-03-01',18,'Carey Wilkins',5,'08:56:16',55),(173,'2024-12-23',27,'Porfirio Cruz',2,'11:32:32',NULL),(174,'2024-05-18',27,'Jermaine Gould',8,'11:15:50',39),(175,'2024-12-13',5,'Herman Wiggins',11,'01:07:59',NULL),(176,'2024-09-19',7,'Yvette Bautista',9,'22:59:32',NULL),(177,'2024-12-18',16,'Terrence Flynn',1,'08:23:14',NULL),(178,'2024-10-10',27,'Doris Frye',6,'05:44:57',56),(179,'2024-05-13',26,'Silas Reed',5,'13:11:49',NULL),(180,'2024-01-13',28,'Fausto Garza',3,'13:14:13',NULL),(181,'2024-10-14',20,'Geneva Townsend',9,'05:00:33',NULL),(182,'2024-09-25',9,'Miles Tanner',4,'09:28:24',NULL),(183,'2024-05-02',3,'Jacqueline Drake',1,'13:50:22',52),(184,'2024-09-24',4,'Terrence Flynn',4,'20:11:02',NULL),(185,'2024-12-20',20,'Alexis Thomas',11,'18:11:06',NULL),(186,'2024-04-07',6,'Maura Burch',6,'20:09:49',119),(187,'2024-05-27',19,'Jonathon Butler',3,'01:35:49',42),(188,'2024-06-28',4,'Elsie Glenn',1,'22:11:41',102),(189,'2024-11-06',2,'Bernadine Hardin',8,'09:16:00',NULL),(190,'2024-01-19',30,'Odessa Chandler',10,'04:36:55',NULL),(191,'2024-01-04',28,'Glen Leblanc',5,'05:20:06',120),(192,'2024-09-22',10,'Hosea Preston',5,'01:33:57',NULL),(193,'2024-09-24',12,'Donte Noble',6,'14:52:08',17),(194,'2024-01-07',30,'Casey Mercer',8,'15:43:47',89),(195,'2024-08-26',18,'Lidia Mays',9,'19:25:37',50),(196,'2024-10-21',19,'Christine Orr',8,'09:19:55',NULL),(197,'2024-08-29',10,'Anita Short',7,'09:38:53',6),(198,'2024-11-08',30,'Milford Castillo',9,'17:40:44',NULL),(199,'2024-01-20',12,'Sallie Cohen',4,'15:52:25',49),(200,'2024-09-21',23,'Jonathan Richard',1,'11:55:30',NULL),(201,'2024-12-08',9,'Alexis Thomas',7,'20:41:27',NULL),(202,'2024-02-28',23,'Wilda Flowers',11,'21:13:01',85),(203,'2024-03-19',3,'Sal Farley',5,'13:01:52',NULL),(204,'2024-12-22',6,'Selena Middleton',9,'01:15:48',100),(205,'2024-06-12',25,'Coleman Rubio',11,'05:01:44',NULL),(206,'2024-02-07',11,'Marilyn Atkinson',4,'05:55:42',NULL),(207,'2024-02-22',3,'Weldon Russo',8,'12:27:27',NULL),(208,'2024-01-09',10,'Porfirio Cruz',5,'23:42:29',NULL),(209,'2024-02-15',27,'Vilma Salas',6,'09:03:36',4),(210,'2024-11-24',20,'Miles Tanner',2,'11:19:44',NULL),(211,'2024-07-05',19,'Jane Olson',2,'09:22:14',NULL),(212,'2024-02-24',18,'Donte Noble',4,'19:35:23',17),(213,'2024-08-30',8,'Jack Doyle',2,'00:25:23',NULL),(214,'2024-03-29',25,'Cleveland Sloan',6,'17:52:11',NULL),(215,'2024-03-05',25,'Herman Wiggins',3,'15:45:14',NULL),(216,'2024-06-10',11,'Marva Bailey',8,'05:41:25',NULL),(217,'2024-01-15',9,'Olivia Cooper',11,'00:09:52',NULL),(218,'2024-12-08',26,'Lidia Mays',2,'13:04:08',50),(219,'2024-05-13',27,'Hyman Branch',9,'14:25:56',NULL),(220,'2024-12-28',16,'Harold Molina',7,'09:46:52',NULL),(221,'2024-08-10',26,'Aurelio Sparks',11,'23:47:27',14),(222,'2024-08-03',11,'Granville Bowman',8,'11:37:58',29),(223,'2024-05-12',4,'Wiley Werner',11,'22:51:03',43),(224,'2024-09-04',8,'Cecile Bradshaw',3,'09:59:22',67),(225,'2024-01-08',30,'Christine Orr',2,'13:44:58',NULL),(226,'2024-06-09',21,'Grace Orr',3,'08:16:44',NULL),(227,'2024-07-24',13,'Chas Waller',10,'21:33:35',20),(228,'2024-02-24',15,'Hans Newman',3,'14:39:51',121),(229,'2024-03-30',28,'Anita Short',10,'19:04:19',6),(230,'2024-05-13',9,'Geneva Townsend',1,'05:47:20',NULL),(231,'2024-01-09',13,'Leigh Waters',4,'23:46:08',104),(232,'2024-05-04',13,'Shawn Jennings',9,'03:11:05',NULL),(233,'2024-11-08',3,'Cameron Blair',6,'20:08:34',NULL),(234,'2024-05-20',23,'Hans Newman',3,'12:58:14',121),(235,'2024-06-06',30,'Lucas Suarez',9,'23:28:09',NULL),(236,'2024-01-20',18,'Wilda Flowers',5,'21:48:45',85),(237,'2024-04-23',29,'Doris Frye',4,'12:41:42',56),(238,'2024-11-25',31,'Beverley Sosa',3,'21:57:58',NULL),(239,'2024-11-23',16,'Freda Blackwell',7,'11:25:07',NULL),(240,'2024-12-13',5,'Courtney Donovan',5,'01:17:40',NULL),(241,'2024-02-14',26,'Francis Harvey',5,'12:06:40',NULL),(242,'2024-01-07',7,'Selena Middleton',11,'00:15:31',100),(243,'2024-07-29',3,'Marie Dixon',4,'21:30:10',NULL),(244,'2024-04-09',31,'Dirk Rowe',2,'15:41:00',19),(245,'2024-07-06',16,'Rosalinda Cooke',8,'10:32:11',NULL),(246,'2024-07-02',8,'Desiree Cooley',10,'03:14:34',87),(247,'2024-06-29',7,'Shawn Jennings',7,'01:24:44',NULL),(248,'2024-06-21',18,'Gavin Jacobs',1,'09:06:05',82),(249,'2024-06-01',26,'Dora Small',4,'06:56:12',NULL),(250,'2024-05-09',20,'Gilberto Fischer',9,'14:36:44',2),(251,'2024-01-01',25,'Elsie Glenn',9,'16:44:21',102),(252,'2024-10-20',6,'Maura Burch',6,'05:46:46',119),(253,'2024-08-03',8,'Rosetta Whitehead',11,'03:43:52',NULL),(254,'2024-02-04',11,'Molly Hayden',8,'17:27:16',NULL),(255,'2024-08-19',24,'Willa Cox',1,'05:15:02',NULL),(256,'2024-04-25',22,'Ray Lester',6,'16:51:01',21),(257,'2024-02-20',15,'Eric Haas',9,'19:36:03',69),(258,'2024-05-02',30,'Jere Ruiz',9,'23:50:47',30),(259,'2024-05-11',30,'Chas Waller',8,'09:32:20',20),(260,'2024-02-07',9,'Hilary Waters',5,'14:09:51',NULL),(261,'2024-06-09',12,'Carmine Cross',4,'07:12:51',77),(262,'2024-06-19',13,'Arline Ayers',2,'11:25:48',NULL),(263,'2024-11-08',17,'Eric Haas',11,'22:07:31',69),(264,'2024-04-25',31,'Harris Randall',8,'19:41:43',NULL),(265,'2024-11-25',12,'Meredith Mccoy',9,'05:31:14',NULL),(266,'2024-01-28',18,'Delbert David',9,'19:28:00',NULL),(267,'2024-04-14',1,'Marva Bailey',9,'11:37:52',NULL),(268,'2024-09-25',24,'Rosario Villa',8,'22:47:03',NULL),(269,'2024-11-27',14,'Leonel Combs',5,'09:43:42',22),(270,'2024-06-14',24,'Reggie Bautista',4,'02:42:08',NULL),(271,'2024-12-01',16,'Ingrid Gallagher',10,'00:45:53',NULL),(272,'2024-04-03',3,'Jules Phelps',5,'01:06:28',NULL),(273,'2024-04-23',30,'Trudy Henderson',6,'18:34:39',NULL),(274,'2024-11-15',22,'Isaiah Vaughan',6,'02:16:06',41),(275,'2024-01-13',17,'Basil Keith',7,'00:57:56',98),(276,'2024-06-01',4,'Jeanie Rivers',10,'13:37:36',NULL),(277,'2024-06-02',21,'Nadine Bishop',4,'06:56:01',NULL),(278,'2024-04-10',5,'Nadine Bishop',9,'06:55:47',NULL),(279,'2024-03-30',24,'Katie Flores',2,'16:36:44',NULL),(280,'2024-12-09',2,'Mallory Gregory',6,'22:30:25',NULL),(281,'2024-05-25',15,'Hilary Dickson',9,'07:07:42',NULL),(282,'2024-09-13',27,'Olivia Cooper',8,'09:51:21',NULL),(283,'2024-02-08',25,'Evangelina Mccarthy',2,'02:43:05',NULL),(284,'2024-01-23',25,'Alfonzo Powell',6,'12:01:48',125),(285,'2024-11-26',7,'Porfirio Cruz',11,'22:13:23',NULL),(286,'2024-11-25',12,'Carmine Cross',2,'16:26:37',77),(287,'2024-11-24',29,'Nettie Crosby',11,'06:49:44',101),(288,'2024-07-21',25,'Marva Bailey',4,'17:36:47',NULL),(289,'2024-08-06',4,'Jerrod Glover',10,'17:50:37',118),(290,'2024-11-03',18,'Jana Conner',4,'20:49:27',73),(291,'2024-01-31',3,'Samuel Osborne',11,'14:52:10',NULL),(292,'2024-04-06',27,'Katie Flores',8,'17:45:44',NULL),(293,'2024-10-18',22,'Ingrid Gallagher',8,'19:26:24',NULL),(294,'2024-03-01',3,'Jermaine Gould',2,'21:05:24',39),(295,'2024-05-17',10,'Mamie Watkins',5,'02:27:23',NULL),(296,'2024-10-02',1,'Marian Rodgers',1,'09:25:59',28),(297,'2024-06-23',6,'Priscilla Mann',3,'03:24:59',NULL),(298,'2024-07-16',23,'Michelle Colon',1,'17:37:34',NULL),(299,'2024-10-09',29,'Margie Hogan',1,'12:40:25',113),(300,'2024-07-28',30,'Dennis Burns',1,'02:42:52',NULL),(301,'2024-08-20',15,'Greta Kirk',11,'12:28:34',NULL),(302,'2024-02-02',24,'Dewey Rowe',2,'07:09:35',NULL),(303,'2024-09-17',30,'Lawanda Morton',3,'11:24:45',NULL),(304,'2024-10-13',20,'Kristine Potts',5,'22:41:58',74),(305,'2024-05-13',21,'Randell Rasmussen',5,'21:18:19',NULL),(306,'2024-02-25',25,'Geneva Townsend',11,'13:01:04',NULL),(307,'2024-06-09',1,'Olivia Cooper',3,'19:16:53',NULL),(308,'2024-11-12',26,'Lara Herman',7,'18:13:54',NULL),(309,'2024-06-12',19,'Roseann Velez',4,'19:02:31',NULL),(310,'2024-12-10',22,'Miles Tanner',6,'12:05:53',NULL),(311,'2024-12-14',4,'Trudy Henderson',2,'17:30:35',NULL),(312,'2024-10-10',15,'Lincoln Luna',1,'22:19:43',NULL),(313,'2024-07-15',16,'Chi Byrd',4,'02:26:35',13),(314,'2024-10-16',22,'Jodi Chapman',11,'14:30:28',99),(315,'2024-12-04',28,'Roscoe Lane',11,'06:44:11',60),(316,'2024-02-05',17,'Hilary Dickson',1,'19:30:07',NULL),(317,'2024-07-03',2,'Olivia Cooper',10,'11:01:28',NULL),(318,'2024-12-15',23,'Silvia Stephenson',7,'04:24:16',90),(319,'2024-07-23',22,'Lorenzo Charles',9,'11:48:25',NULL),(320,'2024-03-02',1,'Debbie Mahoney',9,'16:52:51',64),(321,'2024-11-01',11,'Tabitha Holland',9,'16:03:45',88),(322,'2024-03-20',1,'Jay Singh',10,'22:48:19',9),(323,'2024-09-16',26,'Cleveland Sloan',2,'20:51:41',NULL),(324,'2024-09-13',14,'Charley Wilkinson',6,'10:34:17',NULL),(325,'2024-06-21',25,'Felix Miles',4,'00:45:31',115),(326,'2024-08-21',11,'Katrina Haney',1,'22:14:07',NULL),(327,'2024-01-08',5,'Monty Chan',10,'20:17:18',93),(328,'2024-12-12',7,'Lincoln Luna',1,'09:06:13',NULL),(329,'2024-10-04',5,'Cameron Blair',8,'23:06:14',NULL),(330,'2024-04-06',5,'Isaias Walker',10,'15:14:09',NULL),(331,'2024-07-24',4,'Lara Duke',3,'02:26:09',NULL),(332,'2024-08-07',11,'Dianne Bolton',11,'09:44:29',16),(333,'2024-07-14',4,'Geneva Townsend',8,'19:44:26',NULL),(334,'2024-08-12',26,'Lidia Mays',7,'05:23:19',50),(335,'2024-11-03',2,'Long Mayo',3,'18:29:44',NULL),(336,'2024-11-07',10,'Terrence Flynn',5,'11:52:11',NULL),(337,'2024-08-17',9,'Nettie Crosby',2,'01:53:27',101),(338,'2024-09-22',12,'Elsie Glenn',1,'02:41:45',102),(339,'2024-06-28',9,'Dixie Oconnell',5,'20:06:32',NULL),(340,'2024-01-24',19,'Jeffery Gould',11,'20:26:34',NULL),(341,'2024-11-05',18,'Marie Dixon',10,'02:57:57',NULL),(342,'2024-12-16',4,'Audra Hatfield',4,'07:12:15',NULL),(343,'2024-12-31',22,'Nola Durham',8,'18:59:49',NULL),(344,'2024-01-15',23,'Glen Leblanc',10,'21:07:20',120),(345,'2024-05-15',17,'Sal Farley',11,'13:35:25',NULL),(346,'2024-09-10',2,'Ollie Frank',8,'23:16:57',78),(347,'2024-10-04',17,'Rosalinda Cooke',4,'00:56:23',NULL),(348,'2024-06-05',13,'Monty Chan',6,'18:28:46',93),(349,'2024-08-15',2,'Meredith Mccoy',4,'22:05:51',NULL),(350,'2024-01-27',23,'Matthew Harding',8,'09:06:59',NULL),(351,'2024-01-14',15,'Norris Freeman',3,'14:16:22',NULL),(352,'2024-05-07',8,'Vicky Rush',1,'03:28:55',95),(353,'2024-04-14',18,'Juliana Adams',7,'05:35:19',76),(354,'2024-06-12',23,'Susan Cabrera',8,'23:09:24',NULL),(355,'2024-01-18',6,'Zelma Dunn',5,'19:08:40',NULL),(356,'2024-06-09',31,'Peggy Robertson',6,'00:28:58',NULL),(357,'2024-11-19',6,'Grace Orr',3,'07:56:03',NULL),(358,'2024-04-19',31,'Debra Pennington',6,'16:16:25',127),(359,'2024-10-09',8,'Jermaine Gould',1,'22:50:50',39),(360,'2024-09-20',23,'Gale Cannon',1,'13:53:13',NULL),(361,'2024-09-16',6,'Ezra Aguilar',2,'17:02:55',NULL),(362,'2024-05-24',13,'Rey Yang',8,'19:41:25',NULL),(363,'2024-03-23',23,'Lenora Allen',8,'09:59:02',NULL),(364,'2024-09-09',24,'Tabitha Holland',11,'15:12:18',88),(365,'2024-11-01',6,'Myra Hammond',6,'10:05:30',58),(366,'2024-01-05',4,'Wilda Flowers',10,'00:17:49',85),(367,'2024-03-17',8,'Jarred Bradshaw',10,'14:53:05',NULL),(368,'2024-10-13',30,'Yesenia Bass',5,'03:54:55',NULL),(369,'2024-06-10',30,'Harold Molina',8,'07:13:16',NULL),(370,'2024-09-20',7,'Tanner Dominguez',7,'10:10:34',NULL),(371,'2024-11-11',7,'Jack Doyle',6,'02:57:55',NULL),(372,'2024-11-27',5,'Christopher Park',9,'09:18:38',NULL),(373,'2024-03-19',7,'Tom Mayo',7,'04:05:37',110),(374,'2024-12-11',18,'Grace Orr',4,'04:33:46',NULL),(375,'2024-04-10',12,'Jermaine Gould',9,'20:11:07',39),(376,'2024-12-04',3,'Yvette Bautista',7,'08:03:00',NULL),(377,'2024-07-10',27,'Jana Patel',1,'17:43:30',NULL),(378,'2024-03-30',23,'Kendall Rowe',10,'19:32:18',8),(379,'2024-07-22',18,'Ingrid White',5,'12:04:28',57),(380,'2024-08-26',9,'Scot Brady',6,'07:45:08',27),(381,'2024-11-23',29,'Susan Cabrera',3,'01:51:28',NULL),(382,'2024-12-06',13,'Tania Shannon',9,'17:56:47',NULL),(383,'2024-05-18',6,'Martin Oconnor',3,'18:17:26',NULL),(384,'2024-02-18',29,'Jeffery Maynard',5,'02:03:42',NULL),(385,'2024-08-24',19,'Jeffery Gould',7,'22:10:52',NULL),(386,'2024-07-20',14,'Kristy Liu',10,'00:39:08',116),(387,'2024-08-13',17,'Katrina Haney',9,'23:06:26',NULL),(388,'2024-09-06',30,'Darcy Hendricks',5,'03:33:59',NULL),(389,'2024-08-03',30,'Lara Herman',9,'19:42:35',NULL),(390,'2024-11-20',5,'Jeffery Maynard',3,'12:39:29',NULL),(391,'2024-12-20',12,'Gilberto Fischer',7,'01:22:32',2),(392,'2024-04-07',2,'Keisha Daniels',7,'02:17:44',NULL),(393,'2024-08-13',7,'Erika Bridges',7,'01:16:46',96),(394,'2024-08-29',16,'Lavern Malone',2,'14:05:19',NULL),(395,'2024-12-01',10,'Robin Oneill',9,'00:44:28',NULL),(396,'2024-09-15',2,'Toni Warren',9,'08:56:24',10),(397,'2024-12-11',6,'Long Mayo',5,'03:49:41',NULL),(398,'2024-10-23',7,'Norris Freeman',4,'07:00:55',NULL),(399,'2024-09-17',8,'Nina Adams',8,'23:39:56',NULL),(400,'2024-01-25',24,'Olin Ayers',5,'01:43:19',NULL),(401,'2024-06-20',14,'Bette Fitzpatrick',2,'21:44:00',79),(402,'2024-11-27',31,'Murray Jackson',7,'06:26:25',NULL),(403,'2024-10-02',17,'Valentine Long',11,'18:35:33',47),(404,'2024-07-16',21,'Selena Middleton',11,'05:13:12',100),(405,'2024-01-17',7,'Rickey Mcclain',9,'18:53:53',NULL),(406,'2024-12-22',11,'Marilyn Atkinson',7,'19:42:30',NULL),(407,'2024-02-06',16,'Juana Allen',8,'14:38:00',24),(408,'2024-05-03',4,'Cody Wade',11,'11:00:57',NULL),(409,'2024-07-23',11,'Roslyn Porter',6,'06:57:19',15),(410,'2024-11-21',3,'Roscoe Lane',11,'08:00:24',60),(411,'2024-12-01',25,'Solomon Watkins',10,'16:26:22',NULL),(412,'2024-09-18',6,'Eve Mendoza',8,'19:05:28',NULL),(413,'2024-10-22',17,'Harold Molina',7,'16:43:58',NULL),(414,'2024-10-05',7,'Leanne Archer',7,'09:20:39',NULL),(415,'2024-02-15',11,'Norris Freeman',4,'21:42:28',NULL),(416,'2024-05-15',13,'Lenore Randolph',4,'01:37:59',NULL),(417,'2024-05-26',5,'Gilberto Fischer',11,'10:26:55',2),(418,'2024-08-30',23,'Hilary Dickson',3,'13:10:10',NULL),(419,'2024-01-15',23,'Vilma Salas',7,'23:19:21',4),(420,'2024-07-10',25,'Jack Doyle',11,'21:46:00',NULL),(421,'2024-11-03',15,'Felix Miles',8,'14:31:24',115),(422,'2024-05-24',5,'Geneva Townsend',7,'14:59:35',NULL),(423,'2024-06-07',16,'Jonathon Butler',4,'02:50:04',42),(424,'2024-08-05',10,'Lorie Conley',4,'17:17:51',NULL),(425,'2024-05-24',21,'Harris Randall',2,'07:48:31',NULL),(426,'2024-05-31',9,'Carey Wilkins',5,'06:36:22',55),(427,'2024-04-15',10,'Ollie Frank',2,'17:55:10',78),(428,'2024-09-18',7,'Cody Wade',5,'07:00:18',NULL),(429,'2024-12-15',30,'Fausto Garza',7,'01:30:30',NULL),(430,'2024-12-21',5,'Fran Barber',5,'11:31:27',35),(431,'2024-12-12',29,'Selena Middleton',9,'16:56:11',100),(432,'2024-12-06',23,'Rashad Lucas',7,'20:29:49',45),(433,'2024-10-24',24,'Vincent Whitehead',9,'07:35:59',NULL),(434,'2024-09-15',26,'Marva Bailey',11,'01:30:10',NULL),(435,'2024-09-20',12,'Dewey Rowe',10,'11:01:23',NULL),(436,'2024-01-29',28,'Janell Willis',6,'20:30:33',40),(437,'2024-07-04',22,'Cleveland Sloan',9,'14:13:52',NULL),(438,'2024-12-12',23,'Lorna Fields',9,'20:45:44',NULL),(439,'2024-10-05',4,'Kris West',8,'16:06:58',NULL),(440,'2024-11-06',30,'Bridgett Neal',5,'17:13:21',NULL),(441,'2024-05-21',3,'Santos Buck',11,'21:49:13',NULL),(442,'2024-12-07',13,'Ezra Aguilar',3,'23:05:25',NULL),(443,'2024-04-19',19,'Selena Middleton',8,'00:58:00',100),(444,'2024-12-02',31,'Debra Pennington',10,'10:28:23',127),(445,'2024-07-30',14,'Erin Norman',7,'01:49:37',11),(446,'2024-01-03',20,'Bertha Bryan',7,'10:09:26',84),(447,'2024-02-18',15,'Saundra Raymond',9,'05:07:46',NULL),(448,'2024-02-10',17,'Fran Barber',9,'12:44:00',35),(449,'2024-09-30',7,'Johnnie Spence',1,'22:48:47',37),(450,'2024-12-08',27,'Young Fox',6,'16:10:19',NULL),(451,'2024-11-04',3,'Malik Wiggins',11,'02:49:21',1),(452,'2024-03-05',27,'Isabel Burton',9,'01:48:08',NULL),(453,'2024-11-15',22,'Willa Cox',7,'06:46:22',NULL),(454,'2024-12-13',20,'Beverley Knight',5,'20:07:20',NULL),(455,'2024-09-13',18,'Jere Ruiz',9,'09:10:36',30),(456,'2024-02-16',9,'Buster Brooks',3,'13:24:43',NULL),(457,'2024-11-21',23,'Lawanda Morton',5,'04:27:11',NULL),(458,'2024-10-12',25,'Ezra Aguilar',7,'04:19:27',NULL),(459,'2024-09-07',24,'Samuel Osborne',1,'15:46:33',NULL),(460,'2024-04-21',17,'Raymond Blake',10,'14:03:27',NULL),(461,'2024-08-02',26,'Sharron Graves',7,'20:43:45',NULL),(462,'2024-11-21',7,'Greta Kirk',6,'03:20:43',NULL),(463,'2024-11-13',26,'Beverley Knight',7,'12:22:09',NULL),(464,'2024-06-12',24,'Cecil Reynolds',11,'02:01:37',NULL),(465,'2024-09-22',26,'Michal Alexander',4,'04:08:40',NULL),(466,'2024-06-23',8,'Eve Mendoza',6,'18:51:13',NULL),(467,'2024-05-29',6,'Adolph Bowman',6,'19:39:28',NULL),(468,'2024-01-15',8,'Jeffery Maynard',8,'23:11:01',NULL),(469,'2024-02-21',14,'Casey Mercer',9,'06:54:11',89),(470,'2024-07-02',2,'Saundra Raymond',1,'02:54:26',NULL),(471,'2024-06-13',17,'Jeanie Rivers',7,'09:21:21',NULL),(472,'2024-01-25',14,'Georgette Bean',5,'07:10:20',NULL),(473,'2024-02-23',29,'Lara Herman',4,'16:19:38',NULL),(474,'2024-01-04',1,'Matt Sosa',4,'10:32:06',NULL),(475,'2024-04-10',30,'Leanne Archer',6,'11:56:47',NULL),(476,'2024-10-28',30,'Esperanza Snyder',10,'10:03:54',NULL),(477,'2024-02-22',1,'Leanne Archer',2,'21:22:43',NULL),(478,'2024-12-09',14,'Jack Doyle',7,'16:53:05',NULL),(479,'2024-09-28',28,'Silvia Stephenson',5,'08:51:40',90),(480,'2024-08-02',7,'Adriana Glover',8,'08:04:38',72),(481,'2024-11-11',7,'Gavin Jacobs',8,'09:49:49',82),(482,'2024-12-10',2,'Dave Holloway',10,'21:30:51',62),(483,'2024-06-17',10,'Jane Olson',2,'04:01:03',NULL),(484,'2024-10-03',29,'Huey Mays',7,'18:20:51',NULL),(485,'2024-11-22',17,'Marie Dixon',10,'03:32:07',NULL),(486,'2024-01-27',31,'Keisha Daniels',2,'04:46:39',NULL),(487,'2024-10-31',4,'Christine Orr',8,'03:21:10',NULL),(488,'2024-08-21',5,'Matthew Harding',10,'06:37:46',NULL),(489,'2024-12-09',19,'Anita Short',10,'23:14:53',6),(490,'2024-07-05',4,'Aurelio Sparks',3,'11:54:44',14),(491,'2024-05-12',16,'Elsie Glenn',7,'20:14:44',102),(492,'2024-04-04',2,'Young Fox',2,'06:01:25',NULL),(493,'2024-01-03',29,'Chi Byrd',11,'10:36:09',13),(494,'2024-03-03',9,'Shelby Wilcox',4,'06:01:38',NULL),(495,'2024-10-09',25,'Elsie Glenn',6,'06:58:13',102),(496,'2024-06-10',11,'Tom Mayo',11,'21:57:55',110),(497,'2024-09-04',15,'Elsie Glenn',8,'04:45:39',102),(498,'2024-08-13',13,'Adriana Glover',3,'20:50:43',72),(499,'2024-08-08',13,'Richard Stevens',5,'22:40:49',NULL),(500,'2024-01-13',27,'Rey Yang',2,'05:24:56',NULL),(501,'2024-10-10',3,'Malik Wiggins',1,'03:05:10',1),(502,'2024-11-12',4,'Leland Turner',2,'04:05:02',3),(503,'2024-10-11',5,'Gilberto Fischer',3,'23:02:05',2),(504,'2024-10-13',6,'Malik Wiggins',4,'16:30:43',1),(505,'2022-12-30',4,'Elon Musk',4,'18:00:00',3);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`little_lemon_user`@`localhost`*/ /*!50003 TRIGGER `after_update_booking` AFTER UPDATE ON `bookings` FOR EACH ROW BEGIN
    IF OLD.BookingDate != NEW.BookingDate THEN
        INSERT INTO update_log (message)
        VALUES (CONCAT('The date of Booking ', OLD.BookingID, ' is updated. Old Date: ', OLD.BookingDate, ', New date=', NEW.BookingDate));
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`little_lemon_user`@`localhost`*/ /*!50003 TRIGGER `after_delete_booking` AFTER DELETE ON `bookings` FOR EACH ROW BEGIN
    INSERT INTO update_log (message)
    VALUES (CONCAT('Booking deleted: Booking ID=', OLD.BookingID, ', Date=', OLD.BookingDate));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(150) NOT NULL,
  `CustomerContact` bigint NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerID_UNIQUE` (`CustomerID`),
  UNIQUE KEY `CustomerName_UNIQUE` (`CustomerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Malik Wiggins',7378892914),(2,'Gilberto Fischer',4766744961),(3,'Leland Turner',4795597540),(4,'Vilma Salas',3092029985),(5,'Cedrick Morse',8935959374),(6,'Anita Short',5056069735),(7,'Benton Navarro',4014706610),(8,'Kendall Rowe',4843094096),(9,'Jay Singh',7061939773),(10,'Toni Warren',7057805143),(11,'Erin Norman',1761579175),(12,'Kermit Newton',3435860128),(13,'Chi Byrd',7938144847),(14,'Aurelio Sparks',6473795618),(15,'Roslyn Porter',2209470951),(16,'Dianne Bolton',5751854463),(17,'Donte Noble',4510593095),(18,'Gerald Erickson',2694770708),(19,'Dirk Rowe',3946780537),(20,'Chas Waller',1730052156),(21,'Ray Lester',6561482720),(22,'Leonel Combs',8203848654),(23,'Darlene Robinson',5571537835),(24,'Juana Allen',3829195013),(25,'Earline Mcintyre',1306448806),(26,'Vincent Montgomery',3475493001),(27,'Scot Brady',1018277627),(28,'Marian Rodgers',9791926558),(29,'Granville Bowman',9602030970),(30,'Jere Ruiz',8713635863),(31,'Cora Ashley',8929759869),(32,'Kasey Parks',9603290378),(33,'Hester Schmitt',2882096985),(34,'Salvatore Ray',4827087758),(35,'Fran Barber',8096240409),(36,'Nikki Braun',9101868371),(37,'Johnnie Spence',8369993833),(38,'Von Thomas',1681092113),(39,'Jermaine Gould',9937082853),(40,'Janell Willis',7503321755),(41,'Isaiah Vaughan',5451654295),(42,'Jonathon Butler',7200142214),(43,'Wiley Werner',6013614627),(44,'Freida Stanley',7506955713),(45,'Rashad Lucas',5101421920),(46,'Freida Farrell',2643941319),(47,'Valentine Long',6828235911),(48,'Willard Andersen',8748099846),(49,'Sallie Cohen',1943391120),(50,'Lidia Mays',4401847856),(51,'Eugene Adkins',2322928735),(52,'Jacqueline Drake',1557782649),(53,'Lesa Mathews',1148285610),(54,'Martin Barber',8667775753),(55,'Carey Wilkins',5130932432),(56,'Doris Frye',8465448929),(57,'Ingrid White',7591147422),(58,'Myra Hammond',4254817037),(59,'Ashley Wang',2538575598),(60,'Roscoe Lane',2180121869),(61,'Rashad Charles',7693670685),(62,'Dave Holloway',4659681659),(63,'Morgan Huang',7487772905),(64,'Debbie Mahoney',5261035859),(65,'Lula Deleon',2369784482),(66,'Autumn Mooney',8995210418),(67,'Cecile Bradshaw',8647307228),(68,'Jean Gregory',6670786696),(69,'Eric Haas',5116950633),(70,'Fran Mercado',3871640820),(71,'Normand Hopkins',5845142925),(72,'Adriana Glover',4607702194),(73,'Jana Conner',9348726061),(74,'Kristine Potts',9161146473),(75,'Imogene Herrera',2727280742),(76,'Juliana Adams',8887726434),(77,'Carmine Cross',9887125363),(78,'Ollie Frank',6652432401),(79,'Bette Fitzpatrick',8607085813),(80,'Amos Andrade',7404531205),(81,'Lottie Mcclain',4825627553),(82,'Gavin Jacobs',3559371341),(83,'Vicki Ibarra',6732387316),(84,'Bertha Bryan',5864042167),(85,'Wilda Flowers',6909056838),(86,'Hugo Ballard',4222211400),(87,'Desiree Cooley',8195192790),(88,'Tabitha Holland',6442943674),(89,'Casey Mercer',8661078595),(90,'Silvia Stephenson',8209291840),(91,'Bennett Bush',6412608955),(92,'Moses Clements',8512272011),(93,'Monty Chan',8693165625),(94,'Ophelia Rubio',1134237872),(95,'Vicky Rush',4880060004),(96,'Erika Bridges',3695495032),(97,'Claud Woods',8047219393),(98,'Basil Keith',6066985717),(99,'Jodi Chapman',2328566354),(100,'Selena Middleton',4135949062),(101,'Nettie Crosby',9800596844),(102,'Elsie Glenn',2308242966),(103,'Lee Copeland',9242241608),(104,'Leigh Waters',1424934929),(105,'Carey Chapman',7058854430),(106,'Foster Wu',1139088467),(107,'Blanche Decker',6556880225),(108,'Jean Walls',7351214520),(109,'Daron Day',7599760692),(110,'Tom Mayo',1593295380),(111,'Bryan Huang',1676414617),(112,'Neva Walter',7472867808),(113,'Margie Hogan',6424682987),(114,'Javier Davidson',6408525816),(115,'Felix Miles',6330004643),(116,'Kristy Liu',9784203431),(117,'Nickolas Sexton',3219728092),(118,'Jerrod Glover',1540820036),(119,'Maura Burch',8163110508),(120,'Glen Leblanc',9545397809),(121,'Hans Newman',6094038478),(122,'Ferdinand Herrera',8201935222),(123,'Leonor Archer',1664480512),(124,'Jamar Valencia',8813285715),(125,'Alfonzo Powell',5328807200),(126,'Coleman Vega',6291917858),(127,'Debra Pennington',1068634443),(128,'Rhoda Walls',5161822339),(129,'Darin Andrews',3981766357);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitems` (
  `ItemID` int NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Price` varchar(10) NOT NULL,
  PRIMARY KEY (`ItemID`),
  UNIQUE KEY `ItemID_UNIQUE` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitems`
--

LOCK TABLES `menuitems` WRITE;
/*!40000 ALTER TABLE `menuitems` DISABLE KEYS */;
INSERT INTO `menuitems` VALUES (1,'Pizza Margherita','Main Course','$118.00'),(2,'Lasagna','Main Course','$64.00'),(3,'Sushi','Main Course','$179.00'),(4,'Pad Thai','Main Course','$46.00'),(5,'Croissant','Bakery','$102.00'),(6,'Paella','Main Course','$59.00'),(7,'Moussaka','Main Course','$182.00'),(8,'Kebab','Main Course','$55.00'),(9,'Bibimbap','Main Course','$74.00'),(10,'Pho','Soup','$102.00'),(11,'Hamburger','Main Course','$64.00'),(12,'Feijoada','Main Course','$131.00'),(13,'Ceviche','Starter','$157.00'),(14,'Goulash','Main Course','$128.00'),(15,'Moules Frites','Main Course','$175.00'),(16,'Samosa','Starter','$55.00'),(17,'Tiramisu','Dessert','$101.00'),(18,'Ramen','Soup','$70.00'),(19,'Tom Yum Goong','Soup','$181.00'),(20,'Croque Monsieur','Main Course','$170.00'),(21,'Gazpacho','Soup','$103.00'),(22,'Souvlaki','Main Course','$179.00'),(23,'Doner Kebab','Main Course','$181.00'),(24,'Kimchi','Side Dish','$76.00'),(25,'Pho Bo','Soup','$114.00'),(26,'Hot Dog','Main Course','$141.00'),(27,'Picanha','Main Course','$184.00'),(28,'Empanadas','Starter','$144.00'),(29,'Pierogi','Starter','$97.00'),(30,'Waffles','Dessert','$178.00'),(31,'Paneer Tikka','Main Course','$156.00'),(32,'Cannoli','Dessert','$87.00'),(33,'Tempura','Starter','$94.00'),(34,'Green Curry','Main Course','$123.00'),(35,'Quiche Lorraine','Main Course','$85.00'),(36,'Paella Valenciana','Main Course','$162.00'),(37,'Dolma','Starter','$96.00'),(38,'Bibim Guksu','Main Course','$97.00'),(39,'Banh Mi','Main Course','$111.00'),(40,'Cheeseburger','Main Course','$148.00'),(41,'Moqueca','Main Course','$68.00'),(42,'Asado','Main Course','$156.00'),(43,'Pierogi Ruskie','Starter','$81.00'),(44,'Mussels in Garlic Butter','Main Course','$180.00'),(45,'Chicken Tikka Masala','Main Course','$57.00'),(46,'Carpaccio','Starter','$112.00'),(47,'Sashimi','Main Course','$148.00'),(48,'Green Papaya Salad','Salad','$130.00'),(49,'Escargots','Starter','$42.00'),(50,'Gazpacho Andaluz','Soup','$53.00'),(51,'Iskender Kebab','Main Course','$107.00'),(52,'Bulgogi','Main Course','$62.00'),(53,'Pho Ga','Soup','$114.00'),(54,'Club Sandwich','Main Course','$55.00'),(55,'Pao de Queijo','Starter','$173.00'),(56,'Gnocchi alla Sorrentina','Main Course','$169.00'),(57,'Borscht','Soup','$112.00'),(58,'Bánh Xèo','Main Course','$187.00'),(59,'Poutine','Side Dish','$91.00'),(60,'Stuffed Bell Peppers','Main Course','$124.00'),(61,'Kabsa','Main Course','$80.00'),(62,'Chicken Adobo','Main Course','$42.00'),(63,'Bobotie','Main Course','$62.00'),(64,'Arepas','Starter','$94.00'),(65,'Tabbouleh','Salad','$98.00'),(66,'Kibbeh Nayyeh','Starter','$131.00'),(67,'Wiener Schnitzel','Main Course','$193.00'),(68,'Fesenjan','Main Course','$172.00'),(69,'Jollof Rice','Main Course','$161.00'),(70,'Tom Kha Gai','Soup','$156.00');
/*!40000 ALTER TABLE `menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `MenuID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Cuisine` varchar(100) NOT NULL,
  PRIMARY KEY (`MenuID`,`ItemID`),
  KEY `itemid_idx` (`ItemID`),
  CONSTRAINT `itemid` FOREIGN KEY (`ItemID`) REFERENCES `menuitems` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,35,'French'),(1,46,'Italian'),(1,50,'Spanish'),(1,63,'South African'),(1,70,'Thai'),(2,3,'Japanese'),(2,6,'Spanish'),(2,22,'Greek'),(2,27,'Brazilian'),(2,30,'Belgian'),(2,31,'Indian'),(3,13,'Peruvian'),(3,16,'Indian'),(3,22,'Greek'),(3,29,'Polish'),(3,38,'Korean'),(3,53,'Vietnamese'),(3,65,'Lebanese'),(3,67,'Austrian'),(4,21,'Spanish'),(5,4,'Thai'),(5,5,'French'),(5,38,'Korean'),(5,46,'Italian'),(5,62,'Filipino'),(6,34,'Thai'),(6,40,'American'),(7,19,'Thai'),(7,25,'Vietnamese'),(7,45,'Indian'),(8,4,'Thai'),(8,10,'Vietnamese'),(8,54,'American'),(8,55,'Brazilian'),(9,10,'Vietnamese'),(9,31,'Indian'),(9,62,'Filipino'),(9,63,'South African'),(10,27,'Brazilian'),(10,44,'Belgian'),(11,18,'Japanese'),(11,38,'Korean'),(11,47,'Japanese'),(12,50,'Spanish'),(12,55,'Brazilian'),(13,34,'Thai'),(13,61,'Saudi Arabian'),(14,15,'Belgian'),(14,28,'Argentinian'),(14,32,'Italian'),(14,44,'Belgian'),(14,61,'Saudi Arabian'),(15,17,'Italian'),(15,18,'Japanese'),(15,19,'Thai'),(15,23,'Turkish'),(15,33,'Japanese'),(15,49,'French'),(15,68,'Iranian'),(16,16,'Indian'),(16,35,'French'),(16,40,'American'),(16,49,'French'),(16,67,'Austrian'),(17,9,'Korean'),(17,14,'Hungarian'),(17,39,'Vietnamese'),(17,60,'American'),(18,17,'Italian'),(18,23,'Turkish'),(18,28,'Argentinian'),(18,45,'Indian'),(18,67,'Austrian'),(19,10,'Vietnamese'),(19,26,'American'),(19,32,'Italian'),(19,53,'Vietnamese'),(19,55,'Brazilian'),(20,43,'Polish'),(20,48,'Thai'),(20,59,'Canadian'),(21,4,'Thai'),(21,57,'Ukrainian'),(22,4,'Thai'),(22,6,'Spanish'),(22,32,'Italian'),(22,35,'French'),(22,58,'Vietnamese'),(22,60,'American'),(23,13,'Peruvian'),(23,16,'Indian'),(23,28,'Argentinian'),(23,35,'French'),(23,67,'Austrian'),(24,7,'Greek'),(24,16,'Indian'),(24,23,'Turkish'),(24,37,'Turkish'),(24,40,'American'),(24,46,'Italian'),(24,59,'Canadian'),(24,64,'Venezuelan'),(25,20,'French'),(25,38,'Korean'),(25,39,'Vietnamese'),(25,48,'Thai'),(26,24,'Korean'),(26,28,'Argentinian'),(26,30,'Belgian'),(26,32,'Italian'),(26,48,'Thai'),(26,52,'Korean'),(27,32,'Italian'),(28,23,'Turkish'),(28,35,'French'),(29,21,'Spanish'),(30,36,'Spanish'),(30,40,'American'),(30,47,'Japanese'),(30,53,'Vietnamese');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdeliverystatus`
--

DROP TABLE IF EXISTS `orderdeliverystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdeliverystatus` (
  `StatusID` int NOT NULL,
  `OrderID` int NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryTime` time DEFAULT NULL,
  `DeliveryStatus` varchar(70) NOT NULL,
  PRIMARY KEY (`StatusID`),
  UNIQUE KEY `StatusID_UNIQUE` (`StatusID`),
  KEY `orderid_idx` (`OrderID`),
  CONSTRAINT `orderid` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdeliverystatus`
--

LOCK TABLES `orderdeliverystatus` WRITE;
/*!40000 ALTER TABLE `orderdeliverystatus` DISABLE KEYS */;
INSERT INTO `orderdeliverystatus` VALUES (0,1,'2024-05-21','03:54:02','Delivered'),(1,2,NULL,NULL,'Processing'),(2,3,'2024-12-01','08:15:21','Delivered'),(5,6,NULL,NULL,'Processing'),(6,7,NULL,NULL,'Processing'),(7,8,'2024-12-26','11:33:41','Delivered'),(8,9,NULL,NULL,'Processing'),(9,10,NULL,NULL,'Processing'),(10,11,NULL,NULL,'Processing'),(11,12,NULL,NULL,'Pending'),(12,13,NULL,NULL,'Failed'),(13,14,NULL,NULL,'Failed'),(14,15,NULL,NULL,'Out For Delivery'),(15,16,NULL,NULL,'Failed'),(16,17,NULL,NULL,'Out For Delivery'),(17,18,NULL,NULL,'Processing'),(18,19,NULL,NULL,'Failed'),(19,20,NULL,NULL,'Failed'),(20,21,NULL,NULL,'Processing'),(21,22,NULL,NULL,'Out For Delivery'),(22,23,NULL,NULL,'Pending'),(23,24,NULL,NULL,'Pending'),(24,25,NULL,NULL,'Out For Delivery'),(25,26,'2024-12-19','04:06:58','Delivered'),(26,27,NULL,NULL,'Out For Delivery'),(27,28,NULL,NULL,'Pending'),(28,29,NULL,NULL,'Failed'),(29,30,'2024-06-06','03:35:44','Delivered'),(30,31,NULL,NULL,'Failed'),(31,32,NULL,NULL,'Processing'),(32,33,'2024-07-19','15:05:05','Delivered'),(33,34,NULL,NULL,'Failed'),(34,35,NULL,NULL,'Out For Delivery'),(35,36,NULL,NULL,'Failed'),(36,37,NULL,NULL,'Processing'),(37,38,NULL,NULL,'Out For Delivery'),(38,39,NULL,NULL,'Out For Delivery'),(39,40,NULL,NULL,'Processing'),(40,41,'2024-12-12','19:37:45','Delivered'),(41,42,NULL,NULL,'Out For Delivery'),(42,43,NULL,NULL,'Failed'),(43,44,NULL,NULL,'Processing'),(44,45,NULL,NULL,'Pending'),(45,46,NULL,NULL,'Failed'),(46,47,NULL,NULL,'Pending'),(47,48,'2024-12-28','14:34:14','Delivered'),(48,49,NULL,NULL,'Failed'),(49,50,NULL,NULL,'Failed'),(50,51,NULL,NULL,'Failed'),(51,52,NULL,NULL,'Failed'),(52,53,NULL,NULL,'Processing'),(53,54,NULL,NULL,'Processing'),(54,55,NULL,NULL,'Failed'),(55,56,NULL,NULL,'Pending'),(56,57,NULL,NULL,'Failed'),(57,58,NULL,NULL,'Failed'),(58,59,NULL,NULL,'Pending'),(59,60,'2024-06-22','04:51:08','Delivered'),(60,61,NULL,NULL,'Failed'),(61,62,'2024-11-26','04:45:25','Delivered'),(62,63,NULL,NULL,'Out For Delivery'),(63,64,NULL,NULL,'Pending'),(64,65,NULL,NULL,'Pending'),(65,66,NULL,NULL,'Pending'),(66,67,'2024-10-09','15:04:20','Delivered'),(67,68,NULL,NULL,'Processing'),(68,69,NULL,NULL,'Processing'),(69,70,NULL,NULL,'Failed'),(70,71,NULL,NULL,'Processing'),(71,72,NULL,NULL,'Failed'),(72,73,NULL,NULL,'Out For Delivery'),(73,74,NULL,NULL,'Pending'),(74,75,NULL,NULL,'Failed'),(75,76,NULL,NULL,'Processing'),(76,77,NULL,NULL,'Pending'),(77,78,'2024-11-30','17:02:30','Delivered'),(78,79,'2024-10-24','18:18:32','Delivered'),(79,80,'2024-07-21','22:46:14','Delivered'),(80,81,NULL,NULL,'Out For Delivery'),(81,82,'2024-12-21','20:30:21','Delivered'),(82,83,NULL,NULL,'Processing'),(83,84,NULL,NULL,'Pending'),(84,85,'2024-12-03','11:24:08','Delivered'),(85,86,NULL,NULL,'Failed'),(86,87,NULL,NULL,'Processing'),(87,88,NULL,NULL,'Out For Delivery'),(88,89,'2024-08-10','21:47:41','Delivered'),(89,90,NULL,NULL,'Pending'),(90,91,'2024-07-18','02:59:06','Delivered'),(91,92,NULL,NULL,'Pending'),(92,93,NULL,NULL,'Processing'),(93,94,NULL,NULL,'Out For Delivery'),(94,95,NULL,NULL,'Processing'),(95,96,'2024-08-10','13:09:11','Delivered'),(96,97,NULL,NULL,'Processing'),(97,98,NULL,NULL,'Pending'),(98,99,NULL,NULL,'Pending'),(99,100,NULL,NULL,'Failed'),(100,101,NULL,NULL,'Out For Delivery'),(101,102,NULL,NULL,'Processing'),(102,103,NULL,NULL,'Out For Delivery'),(103,104,NULL,NULL,'Processing'),(104,105,NULL,NULL,'Pending'),(105,106,NULL,NULL,'Pending'),(106,107,NULL,NULL,'Out For Delivery'),(107,108,NULL,NULL,'Out For Delivery'),(108,109,NULL,NULL,'Failed'),(109,110,NULL,NULL,'Failed'),(110,111,'2024-12-30','06:37:47','Delivered'),(111,112,NULL,NULL,'Processing'),(112,113,NULL,NULL,'Out For Delivery'),(113,114,NULL,NULL,'Out For Delivery'),(114,115,NULL,NULL,'Pending'),(115,116,NULL,NULL,'Failed'),(116,117,NULL,NULL,'Pending'),(117,118,NULL,NULL,'Processing'),(118,119,NULL,NULL,'Pending'),(119,120,NULL,NULL,'Out For Delivery'),(120,121,NULL,NULL,'Out For Delivery'),(121,122,NULL,NULL,'Failed'),(122,123,NULL,NULL,'Pending'),(123,124,'2024-07-14','06:05:30','Delivered'),(124,125,NULL,NULL,'Processing'),(125,126,NULL,NULL,'Processing'),(126,127,NULL,NULL,'Out For Delivery'),(127,128,NULL,NULL,'Out For Delivery'),(128,129,'2024-07-08','09:50:17','Delivered'),(129,130,NULL,NULL,'Failed'),(130,131,'2024-07-02','23:47:04','Delivered'),(131,132,NULL,NULL,'Processing'),(132,133,'2024-06-15','17:19:37','Delivered'),(133,134,'2024-09-10','15:27:35','Delivered'),(134,135,NULL,NULL,'Out For Delivery'),(135,136,NULL,NULL,'Out For Delivery'),(136,137,NULL,NULL,'Out For Delivery'),(137,138,NULL,NULL,'Failed'),(138,139,NULL,NULL,'Failed'),(139,140,NULL,NULL,'Pending'),(140,141,NULL,NULL,'Pending'),(141,142,'2024-12-06','13:20:44','Delivered'),(142,143,NULL,NULL,'Pending'),(143,144,NULL,NULL,'Failed'),(144,145,'2024-12-22','19:01:16','Delivered'),(145,146,NULL,NULL,'Processing'),(146,147,NULL,NULL,'Out For Delivery'),(147,148,NULL,NULL,'Pending'),(148,149,'2024-12-25','02:33:46','Delivered'),(149,150,NULL,NULL,'Failed'),(150,151,NULL,NULL,'Processing'),(151,152,NULL,NULL,'Failed'),(152,153,NULL,NULL,'Pending'),(153,154,NULL,NULL,'Failed'),(154,155,NULL,NULL,'Out For Delivery'),(155,156,NULL,NULL,'Failed'),(156,157,NULL,NULL,'Out For Delivery'),(157,158,NULL,NULL,'Pending'),(158,159,'2024-12-29','16:10:10','Delivered'),(159,160,NULL,NULL,'Out For Delivery'),(160,161,NULL,NULL,'Out For Delivery'),(161,162,NULL,NULL,'Failed'),(162,163,'2024-05-01','20:51:42','Delivered'),(163,164,NULL,NULL,'Failed'),(164,165,NULL,NULL,'Pending'),(165,166,'2024-11-04','00:34:24','Delivered'),(166,167,NULL,NULL,'Out For Delivery'),(167,168,NULL,NULL,'Out For Delivery'),(168,169,'2024-10-02','04:52:38','Delivered'),(169,170,NULL,NULL,'Out For Delivery'),(170,171,'2024-06-07','11:12:13','Delivered'),(171,172,NULL,NULL,'Pending'),(172,173,NULL,NULL,'Processing'),(173,174,'2024-12-01','21:22:59','Delivered'),(174,175,NULL,NULL,'Pending'),(175,176,NULL,NULL,'Failed'),(176,177,NULL,NULL,'Failed'),(177,178,NULL,NULL,'Failed'),(178,179,NULL,NULL,'Failed'),(179,180,NULL,NULL,'Processing'),(180,181,'2024-10-03','12:58:44','Delivered'),(181,182,'2024-10-20','14:38:12','Delivered'),(182,183,NULL,NULL,'Failed'),(183,184,NULL,NULL,'Failed'),(184,185,NULL,NULL,'Failed'),(185,186,NULL,NULL,'Out For Delivery'),(186,187,NULL,NULL,'Out For Delivery'),(187,188,NULL,NULL,'Pending'),(188,189,'2024-08-29','05:12:14','Delivered'),(189,190,'2024-12-09','14:04:41','Delivered'),(190,191,NULL,NULL,'Out For Delivery'),(191,192,NULL,NULL,'Processing'),(192,193,NULL,NULL,'Processing'),(193,194,NULL,NULL,'Out For Delivery'),(194,195,'2024-12-27','13:44:10','Delivered'),(195,196,NULL,NULL,'Failed'),(196,197,NULL,NULL,'Failed'),(197,198,NULL,NULL,'Processing'),(198,199,NULL,NULL,'Out For Delivery'),(199,200,NULL,NULL,'Out For Delivery'),(200,201,NULL,NULL,'Processing'),(201,202,NULL,NULL,'Pending'),(202,203,NULL,NULL,'Out For Delivery'),(203,204,NULL,NULL,'Pending'),(204,205,NULL,NULL,'Pending'),(205,206,NULL,NULL,'Out For Delivery'),(206,207,'2024-11-23','12:38:33','Delivered'),(207,208,'2024-11-10','17:26:47','Delivered'),(208,209,NULL,NULL,'Processing'),(209,210,'2024-07-18','04:48:50','Delivered'),(210,211,NULL,NULL,'Processing'),(211,212,NULL,NULL,'Out For Delivery'),(212,213,NULL,NULL,'Pending'),(213,214,NULL,NULL,'Failed'),(214,215,NULL,NULL,'Failed'),(215,216,NULL,NULL,'Pending'),(216,217,NULL,NULL,'Pending'),(217,218,NULL,NULL,'Failed'),(218,219,NULL,NULL,'Failed'),(219,220,NULL,NULL,'Processing'),(220,221,'2024-10-26','14:51:29','Delivered'),(221,222,NULL,NULL,'Out For Delivery'),(222,223,NULL,NULL,'Failed'),(223,224,NULL,NULL,'Pending'),(224,225,NULL,NULL,'Processing'),(225,226,'2024-02-25','01:28:40','Delivered'),(226,227,NULL,NULL,'Pending'),(227,228,NULL,NULL,'Pending'),(228,229,NULL,NULL,'Processing'),(229,230,NULL,NULL,'Pending'),(230,231,NULL,NULL,'Out For Delivery'),(231,232,NULL,NULL,'Failed'),(232,233,NULL,NULL,'Pending'),(233,234,NULL,NULL,'Pending'),(234,235,NULL,NULL,'Processing'),(235,236,NULL,NULL,'Out For Delivery'),(236,237,NULL,NULL,'Failed'),(237,238,'2024-12-08','02:33:05','Delivered'),(238,239,NULL,NULL,'Out For Delivery'),(239,240,NULL,NULL,'Processing'),(240,241,NULL,NULL,'Out For Delivery'),(241,242,NULL,NULL,'Failed'),(242,243,NULL,NULL,'Pending'),(243,244,NULL,NULL,'Pending'),(244,245,NULL,NULL,'Failed'),(245,246,NULL,NULL,'Failed'),(246,247,NULL,NULL,'Processing'),(247,248,'2024-12-03','23:59:37','Delivered'),(248,249,NULL,NULL,'Failed'),(249,250,NULL,NULL,'Pending'),(250,251,NULL,NULL,'Out For Delivery'),(251,252,NULL,NULL,'Out For Delivery'),(252,253,'2024-12-29','09:35:02','Delivered'),(253,254,NULL,NULL,'Failed'),(254,255,'2024-10-13','12:27:28','Delivered'),(255,256,'2024-10-30','14:21:09','Delivered'),(256,257,NULL,NULL,'Failed'),(257,258,NULL,NULL,'Pending'),(258,259,NULL,NULL,'Pending'),(259,260,'2024-12-08','10:27:22','Delivered'),(260,261,NULL,NULL,'Out For Delivery'),(261,262,NULL,NULL,'Processing'),(262,263,NULL,NULL,'Failed'),(263,264,NULL,NULL,'Pending'),(264,265,NULL,NULL,'Pending'),(265,266,'2024-11-13','03:03:01','Delivered'),(266,267,NULL,NULL,'Processing'),(267,268,NULL,NULL,'Processing'),(268,269,NULL,NULL,'Processing'),(269,270,NULL,NULL,'Out For Delivery'),(270,271,NULL,NULL,'Failed'),(271,272,NULL,NULL,'Processing'),(272,273,NULL,NULL,'Pending'),(273,274,NULL,NULL,'Pending'),(274,275,NULL,NULL,'Processing'),(275,276,NULL,NULL,'Pending'),(276,277,NULL,NULL,'Pending'),(277,278,'2024-12-22','17:19:56','Delivered'),(278,279,NULL,NULL,'Pending'),(279,280,'2024-09-30','18:31:31','Delivered'),(280,281,NULL,NULL,'Out For Delivery'),(281,282,NULL,NULL,'Processing'),(282,283,'2024-12-06','21:08:03','Delivered'),(283,284,NULL,NULL,'Processing'),(284,285,'2024-11-21','13:00:58','Delivered'),(285,286,NULL,NULL,'Out For Delivery'),(286,287,NULL,NULL,'Failed'),(287,288,NULL,NULL,'Failed'),(288,289,NULL,NULL,'Processing'),(289,290,NULL,NULL,'Out For Delivery'),(290,291,'2024-10-21','09:50:49','Delivered'),(291,292,'2024-12-07','10:50:41','Delivered'),(292,293,NULL,NULL,'Processing'),(293,294,NULL,NULL,'Processing'),(294,295,NULL,NULL,'Pending'),(295,296,NULL,NULL,'Processing'),(296,297,NULL,NULL,'Pending'),(297,298,NULL,NULL,'Pending'),(298,299,NULL,NULL,'Failed'),(299,300,NULL,NULL,'Failed'),(300,301,NULL,NULL,'Processing'),(301,302,NULL,NULL,'Processing'),(302,303,NULL,NULL,'Failed'),(303,304,NULL,NULL,'Processing'),(304,305,NULL,NULL,'Pending'),(305,306,NULL,NULL,'Failed'),(306,307,NULL,NULL,'Out For Delivery'),(307,308,'2024-10-23','22:13:11','Delivered'),(308,309,'2024-10-19','12:30:52','Delivered'),(309,310,NULL,NULL,'Processing'),(310,311,NULL,NULL,'Processing'),(311,312,'2024-06-25','10:28:02','Delivered'),(312,313,NULL,NULL,'Failed'),(313,314,NULL,NULL,'Pending'),(314,315,NULL,NULL,'Processing'),(315,316,NULL,NULL,'Processing'),(316,317,NULL,NULL,'Pending'),(317,318,NULL,NULL,'Pending'),(318,319,NULL,NULL,'Processing'),(319,320,NULL,NULL,'Processing'),(320,321,NULL,NULL,'Failed'),(321,322,NULL,NULL,'Processing'),(322,323,NULL,NULL,'Processing'),(323,324,NULL,NULL,'Failed'),(324,325,NULL,NULL,'Out For Delivery'),(325,326,NULL,NULL,'Failed'),(326,327,NULL,NULL,'Pending'),(327,328,NULL,NULL,'Failed'),(328,329,'2024-12-16','07:33:44','Delivered'),(329,330,NULL,NULL,'Out For Delivery'),(330,331,NULL,NULL,'Pending'),(331,332,NULL,NULL,'Failed'),(332,333,NULL,NULL,'Failed'),(333,334,NULL,NULL,'Failed'),(334,335,NULL,NULL,'Processing'),(335,336,NULL,NULL,'Pending'),(336,337,NULL,NULL,'Failed'),(337,338,NULL,NULL,'Failed'),(338,339,NULL,NULL,'Processing'),(339,340,NULL,NULL,'Pending'),(340,341,NULL,NULL,'Out For Delivery'),(341,342,NULL,NULL,'Failed'),(342,343,NULL,NULL,'Failed'),(343,344,NULL,NULL,'Failed'),(344,345,NULL,NULL,'Pending'),(345,346,NULL,NULL,'Pending'),(346,347,'2024-11-22','07:38:31','Delivered'),(347,348,NULL,NULL,'Failed'),(348,349,NULL,NULL,'Pending'),(349,350,NULL,NULL,'Failed'),(350,351,NULL,NULL,'Pending'),(351,352,NULL,NULL,'Failed'),(352,353,NULL,NULL,'Failed'),(353,354,'2024-12-25','10:40:35','Delivered'),(354,355,NULL,NULL,'Out For Delivery'),(355,356,NULL,NULL,'Processing'),(356,357,NULL,NULL,'Out For Delivery'),(357,358,NULL,NULL,'Failed'),(358,359,NULL,NULL,'Out For Delivery'),(359,360,NULL,NULL,'Failed'),(360,361,NULL,NULL,'Failed'),(361,362,NULL,NULL,'Out For Delivery'),(362,363,NULL,NULL,'Processing'),(363,364,'2024-10-15','07:07:20','Delivered'),(364,365,'2024-11-25','02:09:24','Delivered'),(365,366,NULL,NULL,'Processing'),(366,367,NULL,NULL,'Out For Delivery'),(367,368,NULL,NULL,'Pending'),(368,369,NULL,NULL,'Failed'),(369,370,NULL,NULL,'Processing'),(370,371,NULL,NULL,'Out For Delivery'),(371,372,NULL,NULL,'Out For Delivery'),(372,373,NULL,NULL,'Pending'),(373,374,NULL,NULL,'Pending'),(374,375,NULL,NULL,'Pending'),(375,376,NULL,NULL,'Failed'),(376,377,NULL,NULL,'Failed'),(377,378,'2024-12-02','23:07:21','Delivered'),(378,379,NULL,NULL,'Pending'),(379,380,NULL,NULL,'Pending'),(380,381,'2024-04-08','05:03:31','Delivered'),(381,382,NULL,NULL,'Pending'),(382,383,NULL,NULL,'Failed'),(383,384,'2024-12-30','12:35:32','Delivered'),(384,385,NULL,NULL,'Processing'),(385,386,NULL,NULL,'Pending'),(386,387,NULL,NULL,'Out For Delivery'),(387,388,NULL,NULL,'Out For Delivery'),(388,389,NULL,NULL,'Pending'),(389,390,NULL,NULL,'Failed'),(390,391,NULL,NULL,'Failed'),(391,392,'2024-12-17','23:39:19','Delivered'),(392,393,NULL,NULL,'Processing'),(393,394,'2024-12-31','05:20:31','Delivered'),(394,395,NULL,NULL,'Failed'),(395,396,NULL,NULL,'Pending'),(396,397,NULL,NULL,'Failed'),(397,398,NULL,NULL,'Failed'),(398,399,NULL,NULL,'Pending'),(399,400,NULL,NULL,'Failed');
/*!40000 ALTER TABLE `orderdeliverystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `TableNo` int NOT NULL,
  `MenuID` int NOT NULL,
  `BookingID` int NOT NULL,
  `Quantity` int NOT NULL,
  `TotalCost` varchar(10) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTime` time NOT NULL,
  `TrueTableNo` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `OrderID_UNIQUE` (`OrderID`),
  KEY `menu_idx` (`MenuID`),
  KEY `bookingid_idx` (`BookingID`),
  CONSTRAINT `bookingid` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menu` FOREIGN KEY (`MenuID`) REFERENCES `menus` (`MenuID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,30,28,475,1,'$487.00','2024-11-19','11:57:39',NULL),(2,30,12,258,10,'$696.00','2024-05-23','01:31:07',NULL),(3,30,4,429,1,'$504.00','2024-12-19','01:57:41',NULL),(6,10,8,424,8,'$642.00','2024-12-08','12:52:20',NULL),(7,23,21,45,3,'$364.00','2024-12-24','08:31:03',NULL),(8,27,27,292,4,'$639.00','2024-12-08','05:51:24',NULL),(9,12,26,375,8,'$669.00','2024-10-01','08:31:25',NULL),(10,30,1,90,9,'$546.00','2024-05-01','12:10:31',NULL),(11,27,16,452,5,'$677.00','2024-07-21','04:34:09',NULL),(12,6,25,204,1,'$109.00','2024-12-31','01:38:52',NULL),(13,3,5,33,8,'$247.00','2024-12-12','02:44:37',NULL),(14,4,29,490,5,'$408.00','2024-08-17','23:06:25',NULL),(15,18,8,73,3,'$652.00','2024-12-06','10:39:16',NULL),(16,4,12,342,5,'$440.00','2024-12-28','07:16:30',NULL),(17,8,30,352,7,'$371.00','2024-06-24','20:44:50',NULL),(18,7,23,480,9,'$700.00','2024-10-30','18:01:51',NULL),(19,3,17,376,6,'$158.00','2024-12-13','08:31:54',NULL),(20,7,9,449,10,'$387.00','2024-12-13','08:17:31',NULL),(21,5,9,422,9,'$130.00','2024-05-31','23:38:11',NULL),(22,14,19,4,4,'$154.00','2024-07-04','20:27:57',NULL),(23,25,24,215,1,'$310.00','2024-04-07','07:50:41',NULL),(24,29,8,287,4,'$580.00','2024-12-30','07:18:09',NULL),(25,29,5,493,4,'$512.00','2024-04-25','00:16:06',NULL),(26,5,17,330,9,'$418.00','2024-06-02','15:14:19',NULL),(27,5,22,240,2,'$228.00','2024-12-22','01:19:33',NULL),(28,19,2,150,2,'$400.00','2024-08-07','22:00:04',NULL),(29,8,26,224,2,'$187.00','2024-10-26','10:16:40',NULL),(30,16,24,313,8,'$413.00','2024-09-19','02:49:10',NULL),(31,8,24,352,8,'$123.00','2024-11-02','22:29:12',NULL),(32,15,6,312,3,'$315.00','2024-11-25','22:33:24',NULL),(33,12,29,38,2,'$679.00','2024-11-12','15:52:00',NULL),(34,8,15,253,2,'$202.00','2024-11-13','03:53:05',NULL),(35,13,15,362,6,'$342.00','2024-12-25','19:45:31',NULL),(36,27,10,124,7,'$465.00','2024-12-20','18:35:04',NULL),(37,19,26,340,6,'$546.00','2024-10-27','08:04:47',NULL),(38,16,20,271,10,'$395.00','2024-12-04','00:52:27',NULL),(39,6,13,361,8,'$144.00','2024-12-18','21:02:21',NULL),(40,6,10,357,3,'$306.00','2024-12-04','08:02:25',NULL),(41,18,2,195,6,'$684.00','2024-09-14','19:52:58',NULL),(42,23,22,234,3,'$185.00','2024-07-10','13:21:29',NULL),(43,23,10,202,7,'$658.00','2024-03-12','05:07:07',NULL),(44,23,29,419,8,'$189.00','2024-06-12','03:30:51',NULL),(45,19,29,51,7,'$144.00','2024-11-14','02:56:53',NULL),(46,15,24,281,4,'$360.00','2024-10-11','07:31:50',NULL),(47,5,24,372,4,'$626.00','2024-12-11','09:29:05',NULL),(48,12,29,199,6,'$641.00','2024-12-25','05:14:11',NULL),(49,7,14,449,4,'$218.00','2024-11-06','22:55:53',NULL),(50,11,22,162,8,'$490.00','2024-05-01','18:22:33',NULL),(51,13,28,232,8,'$360.00','2024-09-27','03:30:20',NULL),(52,4,29,184,10,'$232.00','2024-12-12','20:34:40',NULL),(53,6,22,357,8,'$456.00','2024-11-30','08:22:44',NULL),(54,5,14,39,4,'$297.00','2024-08-24','08:47:05',NULL),(55,1,29,147,7,'$373.00','2024-12-02','00:59:06',NULL),(56,16,20,394,8,'$412.00','2024-11-10','14:18:37',NULL),(57,23,15,78,8,'$614.00','2024-09-02','00:26:26',NULL),(58,5,21,488,10,'$253.00','2024-11-23','07:50:48',NULL),(59,8,11,367,10,'$699.00','2024-03-18','15:11:20',NULL),(60,25,20,47,6,'$176.00','2024-12-17','20:29:37',NULL),(61,20,14,81,8,'$598.00','2024-04-16','09:02:41',NULL),(62,5,1,31,3,'$200.00','2024-11-02','01:05:07',NULL),(63,6,10,61,6,'$210.00','2024-12-17','14:35:20',NULL),(64,28,27,229,8,'$142.00','2024-06-22','12:36:12',NULL),(65,12,7,391,2,'$197.00','2024-12-29','01:29:38',NULL),(66,23,14,139,5,'$480.00','2024-12-09','06:02:57',NULL),(67,6,16,94,8,'$145.00','2024-12-05','06:47:19',NULL),(68,28,18,156,5,'$550.00','2024-11-22','05:38:26',NULL),(69,15,5,421,4,'$449.00','2024-12-12','14:39:06',NULL),(70,16,4,491,2,'$138.00','2024-08-13','09:11:01',NULL),(71,1,23,14,6,'$460.00','2024-07-22','06:34:55',NULL),(72,1,26,477,6,'$151.00','2024-06-07','01:08:00',NULL),(73,8,9,253,10,'$582.00','2024-11-28','19:49:47',NULL),(74,24,9,459,6,'$166.00','2024-12-23','03:25:34',NULL),(75,9,1,426,6,'$658.00','2024-10-27','07:03:09',NULL),(76,17,23,448,3,'$448.00','2024-06-26','19:31:56',NULL),(77,24,7,80,6,'$334.00','2024-06-06','06:07:53',NULL),(78,4,3,311,10,'$260.00','2024-12-31','17:44:12',NULL),(79,31,30,486,2,'$514.00','2024-09-29','23:05:13',NULL),(80,3,30,451,5,'$340.00','2024-12-05','02:52:06',NULL),(81,12,18,6,3,'$395.00','2024-09-12','10:07:19',NULL),(82,30,29,476,9,'$257.00','2024-11-30','00:10:38',NULL),(83,24,19,71,2,'$149.00','2024-12-31','14:55:34',NULL),(84,31,22,69,2,'$310.00','2024-10-12','01:56:50',NULL),(85,31,3,358,7,'$599.00','2024-11-14','03:45:51',NULL),(86,8,24,359,6,'$326.00','2024-11-03','22:57:25',NULL),(87,16,13,48,7,'$509.00','2024-12-30','10:42:19',NULL),(88,13,22,442,10,'$106.00','2024-12-09','23:30:59',NULL),(89,25,9,205,4,'$250.00','2024-07-22','21:37:55',NULL),(90,18,28,236,3,'$204.00','2024-04-28','15:56:40',NULL),(91,22,14,314,10,'$420.00','2024-10-17','14:48:34',NULL),(92,3,7,203,3,'$575.00','2024-09-02','15:42:40',NULL),(93,9,16,131,2,'$662.00','2024-12-04','02:18:29',NULL),(94,22,26,343,2,'$238.00','2024-12-31','19:16:53',NULL),(95,1,4,102,2,'$543.00','2024-08-12','15:53:45',NULL),(96,24,30,255,9,'$366.00','2024-09-10','05:27:10',NULL),(97,11,14,415,6,'$405.00','2024-07-07','23:54:57',NULL),(98,14,27,472,10,'$312.00','2024-06-10','17:46:43',NULL),(99,22,28,453,9,'$655.00','2024-11-22','06:48:44',NULL),(100,10,4,427,7,'$328.00','2024-10-15','08:24:58',NULL),(101,23,2,354,9,'$244.00','2024-10-26','05:16:53',NULL),(102,30,6,65,9,'$514.00','2024-07-10','16:49:45',NULL),(103,23,21,78,2,'$406.00','2024-07-30','23:34:57',NULL),(104,18,3,212,1,'$122.00','2024-04-05','08:50:33',NULL),(105,24,18,7,8,'$680.00','2024-10-11','15:05:44',NULL),(106,13,30,348,9,'$621.00','2024-09-24','18:51:51',NULL),(107,31,28,358,4,'$480.00','2024-07-04','11:47:49',NULL),(108,5,16,70,2,'$619.00','2024-02-10','04:08:44',NULL),(109,23,29,378,4,'$360.00','2024-08-12','19:34:13',NULL),(110,28,28,229,10,'$378.00','2024-10-03','12:29:08',NULL),(111,7,4,449,5,'$317.00','2024-11-22','23:08:26',NULL),(112,13,10,20,8,'$594.00','2024-12-10','06:39:03',NULL),(113,16,30,11,4,'$194.00','2024-12-29','03:47:24',NULL),(114,12,25,286,4,'$598.00','2024-12-16','16:40:01',NULL),(115,16,1,49,3,'$487.00','2024-11-07','00:41:17',NULL),(116,24,27,71,4,'$342.00','2024-12-31','15:10:38',NULL),(117,6,7,297,2,'$187.00','2024-11-05','19:02:36',NULL),(118,23,2,45,6,'$390.00','2024-11-01','08:36:01',NULL),(119,29,7,473,9,'$458.00','2024-11-22','18:41:30',NULL),(120,11,6,409,6,'$204.00','2024-08-20','14:44:02',NULL),(121,6,10,94,3,'$373.00','2024-10-28','21:14:45',NULL),(122,2,29,106,5,'$211.00','2024-11-07','06:05:50',NULL),(123,30,18,389,6,'$541.00','2024-10-18','20:32:01',NULL),(124,2,6,317,3,'$132.00','2024-10-31','11:23:42',NULL),(125,5,21,417,8,'$344.00','2024-12-04','03:39:30',NULL),(126,6,1,297,5,'$682.00','2024-09-28','03:26:58',NULL),(127,8,19,352,10,'$569.00','2024-07-15','18:55:06',NULL),(128,9,29,104,10,'$170.00','2024-09-08','21:52:38',NULL),(129,28,22,315,2,'$304.00','2024-12-29','07:07:20',NULL),(130,22,7,453,10,'$488.00','2024-12-25','06:51:34',NULL),(131,25,2,411,9,'$403.00','2024-12-10','16:30:44',NULL),(132,24,20,270,4,'$483.00','2024-08-15','03:06:16',NULL),(133,18,13,266,7,'$413.00','2024-05-05','10:59:02',NULL),(134,5,7,164,7,'$381.00','2024-12-28','02:42:33',NULL),(135,6,17,30,2,'$536.00','2024-12-11','17:53:19',NULL),(136,30,18,65,7,'$387.00','2024-08-19','13:54:12',NULL),(137,23,26,378,6,'$645.00','2024-04-16','23:14:17',NULL),(138,11,27,206,5,'$475.00','2024-03-16','11:58:26',NULL),(139,5,25,76,2,'$457.00','2024-09-20','12:12:52',NULL),(140,28,16,145,10,'$653.00','2024-12-30','06:50:31',NULL),(141,5,15,138,1,'$429.00','2024-12-06','12:45:50',NULL),(142,23,2,8,2,'$487.00','2024-09-25','17:18:01',NULL),(143,20,11,250,1,'$347.00','2024-12-24','22:37:20',NULL),(144,8,16,121,4,'$156.00','2024-11-24','04:44:26',NULL),(145,9,25,337,4,'$116.00','2024-12-21','15:35:03',NULL),(146,30,22,258,8,'$660.00','2024-10-01','17:13:42',NULL),(147,5,6,76,1,'$629.00','2024-10-12','08:52:05',NULL),(148,23,10,298,2,'$246.00','2024-09-24','00:42:04',NULL),(149,5,17,278,7,'$383.00','2024-10-07','20:56:20',NULL),(150,13,13,262,5,'$568.00','2024-08-27','11:27:14',NULL),(151,11,19,162,6,'$560.00','2024-09-12','15:15:00',NULL),(152,3,30,451,7,'$278.00','2024-11-12','03:10:02',NULL),(153,8,19,121,10,'$567.00','2024-12-17','04:44:12',NULL),(154,17,15,152,9,'$213.00','2024-11-09','02:05:42',NULL),(155,27,3,209,5,'$595.00','2024-07-10','02:00:37',NULL),(156,23,26,200,2,'$540.00','2024-11-08','13:52:39',NULL),(157,5,20,31,8,'$307.00','2024-12-11','01:24:30',NULL),(158,8,9,213,8,'$596.00','2024-08-31','03:39:00',NULL),(159,17,4,448,9,'$271.00','2024-12-27','16:50:57',NULL),(160,2,23,482,5,'$690.00','2024-12-28','21:51:16',NULL),(161,2,24,492,9,'$343.00','2024-10-12','06:04:34',NULL),(162,7,26,93,6,'$107.00','2024-09-18','04:13:12',NULL),(163,29,21,153,5,'$339.00','2024-10-03','13:40:13',NULL),(164,15,23,351,4,'$279.00','2024-09-27','23:02:44',NULL),(165,24,26,433,10,'$522.00','2024-12-22','07:42:21',NULL),(166,30,13,122,6,'$110.00','2024-08-22','06:29:22',NULL),(167,13,27,20,9,'$149.00','2024-10-11','06:58:12',NULL),(168,24,27,255,6,'$223.00','2024-11-13','15:18:47',NULL),(169,6,23,204,1,'$109.00','2024-12-30','01:41:06',NULL),(170,19,26,443,4,'$499.00','2024-12-01','01:18:41',NULL),(171,15,18,75,10,'$578.00','2024-04-21','00:45:58',NULL),(172,5,13,278,9,'$399.00','2024-12-29','18:32:48',NULL),(173,6,22,383,8,'$404.00','2024-12-04','21:53:49',NULL),(174,17,20,413,8,'$541.00','2024-12-17','16:52:09',NULL),(175,15,4,312,2,'$616.00','2024-12-12','02:07:28',NULL),(176,6,22,204,5,'$598.00','2024-12-29','01:16:02',NULL),(177,3,28,233,4,'$134.00','2024-12-01','20:28:54',NULL),(178,30,15,259,1,'$471.00','2024-07-14','08:50:50',NULL),(179,3,28,451,7,'$324.00','2024-11-12','03:12:09',NULL),(180,21,30,149,4,'$674.00','2024-12-28','17:31:49',NULL),(181,19,24,27,3,'$244.00','2024-12-18','01:46:55',NULL),(182,26,22,308,1,'$680.00','2024-12-11','18:25:10',NULL),(183,14,21,96,1,'$430.00','2024-12-18','21:09:08',NULL),(184,5,16,70,7,'$517.00','2024-05-31','07:53:23',NULL),(185,31,12,264,1,'$470.00','2024-08-10','13:29:52',NULL),(186,26,27,334,10,'$630.00','2024-12-11','07:46:18',NULL),(187,31,14,10,2,'$342.00','2024-09-19','10:03:47',NULL),(188,3,29,272,8,'$137.00','2024-06-21','02:44:23',NULL),(189,24,4,80,4,'$111.00','2024-07-19','03:24:46',NULL),(190,29,17,431,1,'$138.00','2024-12-12','17:06:33',NULL),(191,2,20,492,10,'$490.00','2024-08-12','06:22:33',NULL),(192,18,20,379,4,'$689.00','2024-12-16','12:20:45',NULL),(193,24,5,270,5,'$301.00','2024-09-14','13:37:24',NULL),(194,26,5,241,10,'$260.00','2024-04-27','12:35:53',NULL),(195,23,20,419,4,'$492.00','2024-12-26','23:58:45',NULL),(196,1,27,296,7,'$195.00','2024-11-14','09:48:25',NULL),(197,14,1,96,1,'$205.00','2024-12-04','09:36:18',NULL),(198,28,25,229,4,'$500.00','2024-12-31','14:11:56',NULL),(199,14,26,120,7,'$159.00','2024-05-12','18:45:11',NULL),(200,7,30,176,4,'$266.00','2024-12-17','12:54:55',NULL),(201,18,26,97,7,'$147.00','2024-07-02','06:12:30',NULL),(202,9,25,426,8,'$386.00','2024-11-24','06:55:00',NULL),(203,3,28,376,2,'$404.00','2024-12-27','08:17:34',NULL),(204,18,10,159,1,'$348.00','2024-12-31','12:04:43',NULL),(205,25,12,411,3,'$244.00','2024-12-26','16:53:37',NULL),(206,7,7,370,7,'$221.00','2024-12-10','08:35:01',NULL),(207,4,27,151,1,'$212.00','2024-11-04','06:06:24',NULL),(208,24,29,7,2,'$394.00','2024-11-12','15:18:04',NULL),(209,11,17,166,1,'$650.00','2024-10-22','14:10:34',NULL),(210,12,20,193,6,'$667.00','2024-11-15','15:11:16',NULL),(211,13,10,227,6,'$530.00','2024-08-21','21:44:41',NULL),(212,17,11,5,7,'$238.00','2024-12-10','01:46:27',NULL),(213,30,3,388,2,'$418.00','2024-09-06','03:35:49',NULL),(214,8,25,253,1,'$563.00','2024-09-23','22:48:28',NULL),(215,15,28,351,6,'$216.00','2024-10-10','04:35:54',NULL),(216,17,8,345,9,'$625.00','2024-10-01','08:52:41',NULL),(217,31,20,69,7,'$217.00','2024-10-15','21:04:44',NULL),(218,7,1,247,1,'$216.00','2024-12-04','01:25:46',NULL),(219,22,4,274,10,'$691.00','2024-12-05','02:24:12',NULL),(220,3,25,13,10,'$475.00','2024-09-20','21:05:38',NULL),(221,26,12,179,9,'$251.00','2024-10-08','07:59:13',NULL),(222,23,26,95,2,'$625.00','2024-12-20','08:13:44',NULL),(223,11,10,496,6,'$198.00','2024-09-19','22:23:31',NULL),(224,3,14,451,7,'$586.00','2024-11-23','02:50:59',NULL),(225,5,10,329,2,'$608.00','2024-10-16','23:33:05',NULL),(226,15,11,75,4,'$593.00','2024-11-24','00:00:13',NULL),(227,30,23,115,7,'$186.00','2024-12-19','18:38:22',NULL),(228,15,8,351,10,'$619.00','2024-11-18','20:48:49',NULL),(229,18,19,353,10,'$669.00','2024-09-26','06:01:22',NULL),(230,28,8,145,3,'$102.00','2024-07-30','07:50:23',NULL),(231,19,7,23,10,'$217.00','2024-11-15','03:25:59',NULL),(232,1,12,267,2,'$224.00','2024-06-18','22:00:21',NULL),(233,5,9,390,3,'$157.00','2024-11-30','13:02:21',NULL),(234,5,17,278,4,'$329.00','2024-09-23','03:11:40',NULL),(235,30,21,475,8,'$650.00','2024-06-21','07:21:26',NULL),(236,29,3,86,2,'$313.00','2024-09-23','20:35:52',NULL),(237,22,24,343,2,'$637.00','2024-12-31','19:24:11',NULL),(238,16,26,220,6,'$504.00','2024-12-29','09:49:10',NULL),(239,22,1,319,8,'$171.00','2024-12-27','12:09:51',NULL),(240,5,21,330,6,'$294.00','2024-05-11','14:04:30',NULL),(241,17,27,316,3,'$611.00','2024-12-27','14:54:21',NULL),(242,21,22,168,1,'$700.00','2024-12-31','19:52:31',NULL),(243,16,11,394,4,'$240.00','2024-09-07','14:20:18',NULL),(244,23,19,126,2,'$222.00','2024-09-16','02:46:18',NULL),(245,27,22,157,1,'$136.00','2024-12-18','13:22:54',NULL),(246,12,27,265,8,'$262.00','2024-11-30','05:41:11',NULL),(247,17,29,263,2,'$489.00','2024-12-10','22:24:13',NULL),(248,21,15,277,8,'$507.00','2024-09-21','23:20:54',NULL),(249,8,6,224,10,'$661.00','2024-12-08','10:23:10',NULL),(250,31,13,356,7,'$668.00','2024-11-13','11:18:44',NULL),(251,8,5,367,9,'$242.00','2024-03-20','16:54:47',NULL),(252,7,9,393,5,'$250.00','2024-09-06','01:33:39',NULL),(253,4,12,331,5,'$206.00','2024-10-12','03:30:08',NULL),(254,3,29,441,6,'$366.00','2024-08-21','18:07:08',NULL),(255,13,29,416,1,'$282.00','2024-11-08','01:42:06',NULL),(256,23,5,126,8,'$102.00','2024-05-09','22:40:42',NULL),(257,10,23,395,2,'$328.00','2024-12-22','00:56:11',NULL),(258,12,7,119,10,'$513.00','2024-11-05','06:25:34',NULL),(259,4,30,34,6,'$285.00','2024-11-18','21:56:35',NULL),(260,3,16,451,10,'$292.00','2024-11-20','21:55:16',NULL),(261,9,10,131,1,'$292.00','2024-11-22','09:09:38',NULL),(262,27,22,173,9,'$255.00','2024-12-31','12:00:26',NULL),(263,25,23,109,8,'$168.00','2024-10-14','04:32:32',NULL),(264,26,24,461,8,'$176.00','2024-11-25','21:05:09',NULL),(265,14,23,19,5,'$425.00','2024-12-11','16:43:11',NULL),(266,20,24,2,6,'$298.00','2024-08-19','12:58:34',NULL),(267,17,27,83,8,'$529.00','2024-06-27','17:52:53',NULL),(268,15,27,281,8,'$248.00','2024-06-21','07:37:52',NULL),(269,1,10,320,10,'$399.00','2024-03-22','23:03:12',NULL),(270,13,22,499,4,'$476.00','2024-11-02','23:11:15',NULL),(271,5,1,31,5,'$190.00','2024-10-14','01:05:48',NULL),(272,28,22,191,8,'$639.00','2024-03-10','11:44:03',NULL),(273,11,27,162,8,'$283.00','2024-11-10','06:35:08',NULL),(274,7,27,480,10,'$246.00','2024-08-11','08:26:54',NULL),(275,2,30,67,10,'$428.00','2024-07-10','00:56:09',NULL),(276,23,10,139,7,'$399.00','2024-12-06','21:05:23',NULL),(277,13,12,232,2,'$123.00','2024-07-31','22:34:13',NULL),(278,16,14,74,2,'$433.00','2024-12-20','02:21:40',NULL),(279,11,19,206,5,'$185.00','2024-11-05','06:25:04',NULL),(280,1,6,267,8,'$585.00','2024-04-20','12:08:38',NULL),(281,13,30,416,1,'$684.00','2024-12-22','01:56:33',NULL),(282,16,30,313,8,'$296.00','2024-10-06','02:53:53',NULL),(283,16,16,48,2,'$239.00','2024-12-31','10:42:46',NULL),(284,30,2,368,3,'$277.00','2024-11-23','19:57:31',NULL),(285,11,4,496,7,'$191.00','2024-08-06','22:17:16',NULL),(286,23,29,378,2,'$640.00','2024-06-16','00:39:04',NULL),(287,9,12,131,4,'$419.00','2024-12-03','09:16:13',NULL),(288,15,24,312,5,'$416.00','2024-10-13','22:29:18',NULL),(289,19,7,51,1,'$334.00','2024-05-23','21:49:28',NULL),(290,20,6,22,2,'$514.00','2024-11-22','10:04:56',NULL),(291,26,22,218,8,'$379.00','2024-12-10','13:24:30',NULL),(292,9,20,337,2,'$693.00','2024-10-15','21:23:51',NULL),(293,6,5,297,10,'$404.00','2024-12-21','03:49:01',NULL),(294,29,9,299,3,'$414.00','2024-10-29','13:06:17',NULL),(295,18,17,379,6,'$620.00','2024-12-11','12:33:34',NULL),(296,30,7,369,10,'$122.00','2024-11-23','07:14:07',NULL),(297,25,17,411,7,'$365.00','2024-12-13','16:39:06',NULL),(298,8,9,213,4,'$125.00','2024-10-11','17:08:15',NULL),(299,16,24,82,9,'$329.00','2024-12-05','11:37:56',NULL),(300,21,29,168,1,'$670.00','2024-11-03','19:36:54',NULL),(301,20,24,210,1,'$129.00','2024-11-24','11:24:17',NULL),(302,5,29,175,4,'$375.00','2024-12-23','01:33:37',NULL),(303,13,26,498,10,'$261.00','2024-09-12','21:16:49',NULL),(304,2,17,349,9,'$411.00','2024-09-22','05:51:32',NULL),(305,16,6,407,10,'$650.00','2024-09-16','12:48:50',NULL),(306,12,11,338,9,'$460.00','2024-12-28','02:41:48',NULL),(307,25,25,284,2,'$465.00','2024-10-04','12:14:35',NULL),(308,11,1,406,1,'$137.00','2024-12-24','20:02:41',NULL),(309,7,5,371,4,'$203.00','2024-12-31','03:09:55',NULL),(310,23,15,419,10,'$365.00','2024-01-28','20:16:25',NULL),(311,14,24,386,3,'$606.00','2024-11-07','10:11:30',NULL),(312,7,1,93,1,'$666.00','2024-04-22','11:33:38',NULL),(313,7,8,93,3,'$659.00','2024-08-21','04:21:51',NULL),(314,20,2,304,2,'$629.00','2024-11-21','22:57:13',NULL),(315,16,22,74,10,'$319.00','2024-12-06','15:27:55',NULL),(316,23,29,354,4,'$440.00','2024-12-29','23:37:01',NULL),(317,9,5,260,7,'$305.00','2024-12-03','18:15:14',NULL),(318,14,14,324,1,'$521.00','2024-11-29','10:54:47',NULL),(319,19,30,211,3,'$538.00','2024-07-28','09:35:08',NULL),(320,11,27,332,5,'$650.00','2024-12-21','09:51:53',NULL),(321,4,26,223,9,'$610.00','2024-12-13','23:05:28',NULL),(322,16,7,74,6,'$637.00','2024-11-12','20:38:42',NULL),(323,27,29,209,6,'$427.00','2024-08-11','18:29:35',NULL),(324,10,23,192,10,'$401.00','2024-09-22','01:59:38',NULL),(325,15,28,301,7,'$347.00','2024-12-20','12:58:12',NULL),(326,14,12,146,4,'$307.00','2024-09-03','17:16:40',NULL),(327,4,20,26,2,'$173.00','2024-02-16','04:43:26',NULL),(328,16,28,52,5,'$660.00','2024-11-10','20:13:19',NULL),(329,5,29,39,7,'$656.00','2024-12-14','01:41:02',NULL),(330,6,16,361,8,'$693.00','2024-11-02','22:35:33',NULL),(331,26,6,179,8,'$152.00','2024-05-25','16:49:04',NULL),(332,30,19,388,10,'$508.00','2024-11-08','03:54:12',NULL),(333,16,26,245,3,'$411.00','2024-11-09','20:49:17',NULL),(334,8,29,29,6,'$548.00','2024-12-19','02:07:12',NULL),(335,28,7,479,9,'$210.00','2024-09-30','06:28:22',NULL),(336,11,26,206,10,'$138.00','2024-05-16','06:23:23',NULL),(337,7,2,428,7,'$671.00','2024-11-08','10:38:26',NULL),(338,6,20,186,4,'$675.00','2024-05-01','10:56:21',NULL),(339,19,12,150,10,'$643.00','2024-08-30','00:15:45',NULL),(340,17,30,403,7,'$346.00','2024-12-09','19:05:28',NULL),(341,15,13,281,5,'$467.00','2024-05-26','07:19:21',NULL),(342,30,25,300,4,'$694.00','2024-12-29','03:06:08',NULL),(343,8,17,158,6,'$298.00','2024-12-30','19:23:47',NULL),(344,22,1,167,2,'$358.00','2024-05-27','20:44:10',NULL),(345,25,4,411,6,'$114.00','2024-12-13','16:31:32',NULL),(346,29,16,431,9,'$585.00','2024-12-17','17:04:05',NULL),(347,14,9,401,10,'$263.00','2024-07-31','06:32:44',NULL),(348,17,5,471,6,'$175.00','2024-08-09','09:40:09',NULL),(349,23,8,360,10,'$367.00','2024-12-03','14:03:18',NULL),(350,2,28,67,8,'$485.00','2024-12-29','18:28:18',NULL),(351,28,25,180,4,'$116.00','2024-03-25','21:30:10',NULL),(352,20,11,181,7,'$227.00','2024-12-22','05:13:42',NULL),(353,16,7,171,10,'$270.00','2024-09-07','16:01:27',NULL),(354,5,8,330,3,'$551.00','2024-09-06','15:36:23',NULL),(355,12,27,338,3,'$651.00','2024-12-13','02:52:40',NULL),(356,13,15,498,8,'$663.00','2024-10-05','04:41:04',NULL),(357,26,14,241,6,'$363.00','2024-12-30','12:22:46',NULL),(358,16,14,313,5,'$270.00','2024-07-25','23:04:19',NULL),(359,24,6,400,1,'$642.00','2024-12-18','09:55:04',NULL),(360,5,8,137,6,'$444.00','2024-11-30','01:17:32',NULL),(361,8,13,468,2,'$429.00','2024-03-17','09:54:22',NULL),(362,27,20,209,4,'$641.00','2024-12-23','21:05:37',NULL),(363,16,26,220,3,'$306.00','2024-12-29','09:59:05',NULL),(364,4,25,439,9,'$203.00','2024-10-11','04:12:28',NULL),(365,25,7,47,6,'$446.00','2024-12-22','20:42:26',NULL),(366,22,2,72,6,'$353.00','2024-12-15','07:43:10',NULL),(367,9,29,104,10,'$376.00','2024-03-07','15:18:00',NULL),(368,30,28,303,4,'$695.00','2024-10-16','11:27:38',NULL),(369,1,22,322,5,'$270.00','2024-06-17','22:53:29',NULL),(370,7,12,371,1,'$619.00','2024-11-29','03:14:56',NULL),(371,6,14,297,9,'$308.00','2024-11-02','03:30:37',NULL),(372,31,4,89,9,'$697.00','2024-03-17','14:35:28',NULL),(373,12,19,38,10,'$358.00','2024-07-23','15:24:51',NULL),(374,6,25,357,4,'$279.00','2024-11-29','08:09:32',NULL),(375,10,24,295,4,'$265.00','2024-07-05','14:57:25',NULL),(376,25,22,288,9,'$133.00','2024-08-27','20:50:35',NULL),(377,15,20,497,10,'$384.00','2024-10-13','04:46:51',NULL),(378,27,20,377,5,'$536.00','2024-07-19','17:50:37',NULL),(379,23,24,354,10,'$115.00','2024-07-19','23:21:58',NULL),(380,6,10,467,2,'$366.00','2024-11-09','16:15:23',NULL),(381,24,8,270,7,'$229.00','2024-12-12','02:49:52',NULL),(382,12,3,265,7,'$181.00','2024-12-19','05:31:58',NULL),(383,16,19,394,10,'$690.00','2024-09-24','05:03:58',NULL),(384,5,6,70,5,'$651.00','2024-12-22','21:21:58',NULL),(385,3,22,183,8,'$633.00','2024-05-05','14:11:58',NULL),(386,19,1,150,4,'$150.00','2024-11-16','22:10:19',NULL),(387,3,5,203,4,'$189.00','2024-12-11','12:18:09',NULL),(388,13,20,499,2,'$657.00','2024-10-01','22:49:01',NULL),(389,7,4,414,5,'$585.00','2024-11-15','18:05:17',NULL),(390,10,6,483,6,'$152.00','2024-09-24','23:06:42',NULL),(391,29,8,484,6,'$422.00','2024-11-27','18:23:56',NULL),(392,31,9,402,10,'$342.00','2024-12-08','06:30:41',NULL),(393,8,7,54,4,'$426.00','2024-06-20','17:35:19',NULL),(394,17,22,152,4,'$259.00','2024-08-07','04:31:54',NULL),(395,27,6,377,4,'$676.00','2024-10-20','17:53:23',NULL),(396,21,15,305,7,'$318.00','2024-09-01','10:09:06',NULL),(397,17,1,460,10,'$569.00','2024-09-15','00:26:55',NULL),(398,30,17,388,6,'$220.00','2024-09-20','03:53:36',NULL),(399,12,8,193,2,'$399.00','2024-12-01','15:13:10',NULL),(400,30,8,440,10,'$264.00','2024-11-28','17:19:31',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersview`
--

DROP TABLE IF EXISTS `ordersview`;
/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersview` AS SELECT 
 1 AS `OrderID`,
 1 AS `Quantity`,
 1 AS `TotalCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` int NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Contact` bigint NOT NULL,
  `Email` varchar(100) NOT NULL,
  `AnnualSalary` varchar(100) NOT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `StaffID_UNIQUE` (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Neva Walter','Chef','69758 Romaguera Camp Apt. 793',4299151417,'EfhEh1@hotmail.com','$50000'),(2,'Nina Adams','Sous Chef','1730 Billie Burgs Suite 468',5916043491,'yZ0OwP@example.com','$40000'),(3,'Beverley Sosa','Line Cook','79254 Carter Square Suite 400',6553186002,'fOhmvj@outlook.com','$35000'),(4,'Darcy Hendricks','Pastry Chef','Apt. 690 761 Powlowski Loop, Armstrongtown, WV 89601',3174618024,'ej0ZP@gmail.com','$45000'),(5,'Earline Mcintyre','Kitchen Assistant','5856 Colin Summit, Jastburgh, NH 38034-0626',5925603972,'RrGny85Eth@hotmail.com','$25000'),(6,'Jeanie Rivers','Server/Waiter/Waitress','Apt. 243 543 King Bypass, North Laverne, DE 84112-9033',7120767411,'nzrQSf@example.com','$30000'),(7,'Leonor Archer','Bartender','Suite 352 985 Rosamond Motorway, East Heiditon, OR 44161',5238966529,'dpIP7bjkv@gmail.com','$35000'),(8,'Monty Chan','Host/Hostess','32888 Rempel Parkway, Port Valentin, MT 64257-1241',1905599811,'Yj8P1XhK@yahoo.com','$28000'),(9,'Ollie Frank','Busser','189 Ettie Streets, Port Arronhaven, AL 68543',1487209259,'V0Fwq2@hotmail.com','$22000'),(10,'Von Thomas','Dishwasher','120 Harris Inlet, Weimannshire, GA 79000',1273950229,'K6R8R@yahoo.com','$20000'),(11,'Donte Hernandez','Manager','95203 Hessel Drives, Lake Rosemariechester, VT 02265',5529137869,'c4gyPYFyq@yahoo.com','$60000'),(12,'Irwin Maxwell','Assistant Manager','Apt. 761 301 Bruen Curve, New Lukemouth, TN 50502-6169',3380355634,'xgaqMeRh@yahoo.com','$45000'),(13,'Myra Hammond','Cashier','8354 Adams Coves, Audraland, WY 53526-6197',5924851288,'u3XCqzWbdg@example.com','$28000'),(14,'Kermit Newton','Expeditor','Apt. 846 787 Dee Points, Braunstad, MS 92976',6821661124,'ucclh8@outlook.com','$30000'),(15,'Casey Mercer','Sommelier','Apt. 307 17615 Newton Valley, North Anderson, AR 47808',3685169813,'N2pf56b@example.com','$40000');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_log`
--

DROP TABLE IF EXISTS `update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_log`
--

LOCK TABLES `update_log` WRITE;
/*!40000 ALTER TABLE `update_log` DISABLE KEYS */;
INSERT INTO `update_log` VALUES (1,'The date of Booking 15 is updated. Old Date: 2024-10-24, New date=2024-01-09','2024-04-28 19:31:06'),(2,'Booking deleted: Booking ID=25, Date=2024-06-13','2024-04-28 19:37:18');
/*!40000 ALTER TABLE `update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'littlelemondb'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `AddBooking`(
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_no INT,
    OUT BookingStatus VARCHAR(100)
)
BEGIN
    DECLARE booking_status_check VARCHAR(100);
    
    CALL CheckBooking(booking_date, table_no, booking_status_check);
    
    IF booking_status_check LIKE '%already%' THEN
        SET BookingStatus = 'Booking is failed.';
    ELSE
        INSERT INTO Bookings (
            `BookingID`,
            `BookingDate`,
            `TableNo`,
            `GuestFullName`,
            `StaffID`,
            `BookingSlot`,
            `CustomerID`
        ) VALUES (
            booking_id,
            booking_date,
            table_no,
            'Elon Musk',
            4,
            '18:00:00',
            customer_id
        );
        SET BookingStatus = 'New Booking Added';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddValidBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `AddValidBooking`(booking_date DATE,table_no INT,OUT BookingStatus VARCHAR(200))
BEGIN
DECLARE booked_status INT;
SELECT COUNT(*) INTO booked_status
FROM Bookings
WHERE BookingDate = booking_date AND TableNo = table_no;
START TRANSACTION;
INSERT INTO bookings(BookingID,`BookingDate`, `TableNo`, `GuestFullName`, `StaffID`, `BookingSlot`, `CustomerID`) VALUES (506,booking_date, table_no, 'Elon Musk', 4, '16:30:43', NULL);
IF booked_status > 0 THEN
ROLLBACK;
SET BookingStatus = CONCAT('Table ', table_no, ' is already booked. - Booking Cancelled.');
ELSE
COMMIT;
SET BookingStatus = CONCAT('Table ', table_no, ' is available for booking. - Your booking has been successfully completed. Thank you!');
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `CancelBooking`(booking_id INT)
BEGIN
DELETE FROM Bookings
WHERE BookingID = booking_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `CancelOrder`(order_id INT)
BEGIN DELETE FROM Orders WHERE OrderID = @order_id; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `CheckBooking`(booking_date DATE,table_no INT,OUT BookingStatus VARCHAR(40))
BEGIN
DECLARE booked_status INT;
SELECT COUNT(*) INTO booked_status
FROM Bookings
WHERE BookingDate = booking_date AND TableNo = table_no;
IF booked_status > 0 THEN SET BookingStatus = CONCAT('Table ', table_no, ' is already booked.');
ELSE SET BookingStatus = CONCAT('Table ', table_no, ' is available for booking.');
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaxQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN SELECT MAX(Quantity) AS 'Max Quantity in Orders' FROM Orders; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`little_lemon_user`@`localhost` PROCEDURE `UpdateBooking`(booking_id INT,booking_date DATE)
BEGIN
UPDATE Bookings
SET BookingDate = booking_date
WHERE BookingID = booking_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ordersview`
--

/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`little_lemon_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersview` AS select `orders`.`OrderID` AS `OrderID`,`orders`.`Quantity` AS `Quantity`,`orders`.`TotalCost` AS `TotalCost` from `orders` */;
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

-- Dump completed on 2024-04-28 22:41:44
