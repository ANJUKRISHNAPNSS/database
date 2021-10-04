-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `city_table`
--

DROP TABLE IF EXISTS `city_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_table` (
  `city_no` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_table`
--

LOCK TABLES `city_table` WRITE;
/*!40000 ALTER TABLE `city_table` DISABLE KEYS */;
INSERT INTO `city_table` VALUES (1,'Palakkad'),(2,'Thrisur'),(3,'Kozhikode'),(4,'surat'),(5,'palakad'),(7,'madras'),(8,'kashmir'),(9,'xbvx'),(10,'kashmir'),(11,'fdsgsdg');
/*!40000 ALTER TABLE `city_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_site_table`
--

DROP TABLE IF EXISTS `emp_site_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_site_table` (
  `emp_site_no` int NOT NULL,
  `emp_site_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emp_site_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_site_table`
--

LOCK TABLES `emp_site_table` WRITE;
/*!40000 ALTER TABLE `emp_site_table` DISABLE KEYS */;
INSERT INTO `emp_site_table` VALUES (1,'cochin'),(2,'up'),(3,'mumbai'),(4,'jk'),(5,'chennai'),(6,'surat'),(7,'jaipur'),(8,'kashmir'),(9,'kolkata'),(10,'jaipur'),(11,'kanpur'),(12,'surat');
/*!40000 ALTER TABLE `emp_site_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_work_table`
--

DROP TABLE IF EXISTS `emp_work_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_work_table` (
  `work_id` int NOT NULL,
  `emp_id_no` int DEFAULT NULL,
  `work_hours` int DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `monthly_salary` int DEFAULT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_work_table`
--

LOCK TABLES `emp_work_table` WRITE;
/*!40000 ALTER TABLE `emp_work_table` DISABLE KEYS */;
INSERT INTO `emp_work_table` VALUES (1,1,10,'2000-09-02','2019-09-09',100000),(2,2,7,'2020-08-18','2021-08-18',299999),(3,3,10,'2020-01-08','2021-08-28',20000),(4,4,5,'2018-01-26','2020-01-20',200000),(5,5,5,'2018-09-01','2090-09-08',345432),(6,6,6,'2021-09-03','2021-09-24',546546),(7,7,3,'2021-09-03','2021-06-04',32424),(8,8,8,'2021-09-16','2021-10-07',657658),(9,9,9,'2021-09-11','2021-10-23',78798),(10,10,3,'2021-10-01','2021-10-22',234444),(11,11,12,'2021-10-01','2021-10-08',90000);
/*!40000 ALTER TABLE `emp_work_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `emp_id_no` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `emp_site` int DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `city` int DEFAULT NULL,
  PRIMARY KEY (`emp_id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,'ANJU','KP',3245235,'DSFSD','SDG',2,'12/09/7987',3),(2,'akhil','kp',2324,'sfdg','fgfdg',3,'12/09/1236',2),(3,'jithin','raju',234535,'ji@123','asdd',1,'12/09/2000',2),(4,'ramu','sd',2332434,'asa@123','dfgdf',3,'12/09/1999',1),(5,'remya','c',233243,'sdf','aass',1,'12/09/2000',3),(6,'akhil','kp',9897755,'akhl@1234','fdg',4,'12/08/1999',5),(7,'sreeja','k',993847,'sre@123','dfgf',3,'12/09/1997',2),(8,'unni','kp',765786,'ahgn@312','hgfhsd',1,'12/09/1988',1),(9,'kshema','l',234324,'asjk@12334','qareqr',1,'12/09/2000',1),(10,'jaya','w',232434,'sa@121','df',1,'12/09/1988',1);
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_history`
--

DROP TABLE IF EXISTS `work_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_history` (
  `no` int NOT NULL AUTO_INCREMENT,
  `emp_id_no` int DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `emp_site_no` int DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_history`
--

LOCK TABLES `work_history` WRITE;
/*!40000 ALTER TABLE `work_history` DISABLE KEYS */;
INSERT INTO `work_history` VALUES (1,1,'2000-04-12','2000-09-12',2),(2,1,'2000-09-13','2008-01-17',1),(3,2,'1998-09-18','2002-03-14',2),(4,2,'2002-03-15','2019-08-17',1),(5,2,'2019-08-18','2020-01-20',3),(6,2,'2021-10-01','2021-10-08',1),(7,3,'2014-02-27','2021-10-15',1),(8,3,'2009-04-11','2021-10-02',1);
/*!40000 ALTER TABLE `work_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 10:13:05
