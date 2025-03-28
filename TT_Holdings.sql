-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: TT_Holdings
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment` (
  `PersonID` int NOT NULL,
  `OrganizationID` int NOT NULL,
  `EmploymentDate` date DEFAULT NULL,
  `TerminationDate` date DEFAULT NULL,
  `work_shift` enum('Day','Night','Rotational') DEFAULT NULL,
  PRIMARY KEY (`PersonID`,`OrganizationID`),
  KEY `OrganizationID` (`OrganizationID`),
  CONSTRAINT `employment_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`),
  CONSTRAINT `employment_ibfk_2` FOREIGN KEY (`OrganizationID`) REFERENCES `organization` (`OrganizationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (1,50,'2022-05-10',NULL,'Day'),(2,51,'2021-08-15',NULL,'Night'),(3,52,'2023-01-20',NULL,'Rotational'),(4,53,'2022-03-05',NULL,'Day'),(5,54,'2021-11-12',NULL,'Night'),(6,55,'2023-06-18',NULL,'Rotational'),(7,56,'2022-09-22',NULL,'Day'),(8,57,'2021-04-03',NULL,'Night'),(9,58,'2023-10-30',NULL,'Rotational'),(10,59,'2022-01-15',NULL,'Day'),(11,60,'2021-07-08',NULL,'Night'),(12,61,'2023-04-11',NULL,'Rotational');
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `externalorganizations`
--

DROP TABLE IF EXISTS `externalorganizations`;
/*!50001 DROP VIEW IF EXISTS `externalorganizations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `externalorganizations` AS SELECT 
 1 AS `OrganizationID`,
 1 AS `Name`,
 1 AS `industry_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `highbonusemployees`
--

DROP TABLE IF EXISTS `highbonusemployees`;
/*!50001 DROP VIEW IF EXISTS `highbonusemployees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highbonusemployees` AS SELECT 
 1 AS `PersonID`,
 1 AS `Bonus`,
 1 AS `basic_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `highearning`
--

DROP TABLE IF EXISTS `highearning`;
/*!50001 DROP VIEW IF EXISTS `highearning`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highearning` AS SELECT 
 1 AS `PersonID`,
 1 AS `Salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `itdepartmentpositions`
--

DROP TABLE IF EXISTS `itdepartmentpositions`;
/*!50001 DROP VIEW IF EXISTS `itdepartmentpositions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `itdepartmentpositions` AS SELECT 
 1 AS `PositionID`,
 1 AS `Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jobposition`
--

DROP TABLE IF EXISTS `jobposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobposition` (
  `PositionID` int NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `ResponsibleOrganizationID` int DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PositionID`),
  KEY `ResponsibleOrganizationID` (`ResponsibleOrganizationID`),
  CONSTRAINT `jobposition_ibfk_1` FOREIGN KEY (`ResponsibleOrganizationID`) REFERENCES `organization` (`OrganizationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobposition`
--

LOCK TABLES `jobposition` WRITE;
/*!40000 ALTER TABLE `jobposition` DISABLE KEYS */;
INSERT INTO `jobposition` VALUES (1,'Operator',50,'Operations'),(2,'Software Developer',51,'Development'),(3,'Project Manager',52,'Management'),(4,'Graphic Designer',53,'Design'),(5,'Database Administrator',54,'IT'),(6,'Supervisor',55,'Operations'),(7,'Network Administrator',56,'IT'),(8,'Network Administrator',57,'IT'),(9,'Web Page Admin',58,'Development'),(10,'Marketing',59,'Marketing'),(11,'Software Tester',60,'Quality Assurance'),(12,'Business Analyst',61,'Analysis');
/*!40000 ALTER TABLE `jobposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `jobposition_details`
--

DROP TABLE IF EXISTS `jobposition_details`;
/*!50001 DROP VIEW IF EXISTS `jobposition_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `jobposition_details` AS SELECT 
 1 AS `Title`,
 1 AS `ResponsibleOrganizationName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `longserving`
--

DROP TABLE IF EXISTS `longserving`;
/*!50001 DROP VIEW IF EXISTS `longserving`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `longserving` AS SELECT 
 1 AS `PersonID`,
 1 AS `OrganizationID`,
 1 AS `EmploymentDate`,
 1 AS `TerminationDate`,
 1 AS `work_shift`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `night_shift`
--

DROP TABLE IF EXISTS `night_shift`;
/*!50001 DROP VIEW IF EXISTS `night_shift`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `night_shift` AS SELECT 
 1 AS `PersonID`,
 1 AS `EmploymentDate`,
 1 AS `Work_shift`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `OrganizationID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `BudgetNumber` decimal(10,2) DEFAULT NULL,
  `OrganizationType` enum('Internal','External') DEFAULT NULL,
  `industry_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OrganizationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (50,'Khali enterprise','Sekake 640','696989',5000000.00,'External','Manufacturing'),(51,'Khali&brothers','Sehapas 608','222223',3000000.00,'Internal','Retail'),(52,'Descando','Qanya','1111112',8000000.00,'External','Finance'),(53,'Kylow graphics','Likepeng','89755982',7000000.00,'Internal','Graphic Design'),(54,'KhaliJnr','White hill','78282487',5000000.00,'External','Construction'),(55,'Now','Qhokoza','89443',4000000.00,'Internal','Technology'),(56,'K&K pty','Sehapas 608','632552',50000.50,'External','Consulting'),(57,'Khaliseniors ltd','Sehapa','2525215',535897.00,'Internal','Healthcare'),(58,'GiveBack org','Likepeng','3532653',543543.00,'Internal','Nonprofit'),(59,'KG Ltd','Sekakes 640','353276',87657.00,'External','Transportation'),(60,'TK Tech','SK- mapuntsuleng','988765',345667.00,'Internal','Information Technology'),(61,'Lioela PTY','White hill','746354',7653.50,'External','Food & Beverage');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `organization_after_update_log_changes` AFTER UPDATE ON `organization` FOR EACH ROW BEGIN
    IF OLD.Address <> NEW.Address OR OLD.PhoneNumber <> NEW.PhoneNumber THEN
        INSERT INTO organization_changes_log (
            OrganizationID,
            OldAddress,
            NewAddress,
            OldPhoneNumber,
            NewPhoneNumber
        ) VALUES (
            OLD.OrganizationID,
            OLD.Address,
            NEW.Address,
            OLD.PhoneNumber,
            NEW.PhoneNumber
        );
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `organization_before_delete_check_employees` BEFORE DELETE ON `organization` FOR EACH ROW BEGIN
    DECLARE employee_count INT;

    SELECT COUNT(*) INTO employee_count
    FROM employment
    WHERE OrganizationID = OLD.OrganizationID;

    IF employee_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete organization: Active employees found.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `organization_changes_log`
--

DROP TABLE IF EXISTS `organization_changes_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_changes_log` (
  `OrganizationID` int DEFAULT NULL,
  `OldAddress` varchar(50) DEFAULT NULL,
  `NewAddress` varchar(50) DEFAULT NULL,
  `OldPhoneNumber` varchar(20) DEFAULT NULL,
  `NewPhoneNumber` varchar(20) DEFAULT NULL,
  `ChangeTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_changes_log`
--

LOCK TABLES `organization_changes_log` WRITE;
/*!40000 ALTER TABLE `organization_changes_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_changes_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `organization_contact_info`
--

DROP TABLE IF EXISTS `organization_contact_info`;
/*!50001 DROP VIEW IF EXISTS `organization_contact_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `organization_contact_info` AS SELECT 
 1 AS `Name`,
 1 AS `Address`,
 1 AS `PhoneNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `permanentemployee`
--

DROP TABLE IF EXISTS `permanentemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permanentemployee` (
  `PersonID` int NOT NULL,
  `Bonus` int DEFAULT NULL,
  `Credit` int DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `permanentemployee_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permanentemployee`
--

LOCK TABLES `permanentemployee` WRITE;
/*!40000 ALTER TABLE `permanentemployee` DISABLE KEYS */;
INSERT INTO `permanentemployee` VALUES (1,1000,5000,30000.00),(3,500,2500,28000.00),(5,1500,7500,35000.00),(6,750,3750,32000.00),(8,2000,10000,40000.00),(9,1000,5000,31000.00),(11,2500,12500,45000.00),(12,1250,6250,33000.00),(13,800,1000,24000.00),(14,500,700,22000.00),(15,400,8000,29000.00),(16,2500,2500,38000.00);
/*!40000 ALTER TABLE `permanentemployee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `permanentemployee_before_insert_check_salary` BEFORE INSERT ON `permanentemployee` FOR EACH ROW BEGIN
    IF NEW.basic_salary < 0 OR NEW.basic_salary > 100000 THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid basic_salary: Must be between 0 and 100000.';
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `permanentemployee_delete_from_employment` AFTER DELETE ON `permanentemployee` FOR EACH ROW BEGIN
    DELETE FROM employment
    WHERE PersonID = OLD.PersonID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `permanentemployee_salary_credit`
--

DROP TABLE IF EXISTS `permanentemployee_salary_credit`;
/*!50001 DROP VIEW IF EXISTS `permanentemployee_salary_credit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `permanentemployee_salary_credit` AS SELECT 
 1 AS `PersonID`,
 1 AS `total_compensation`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `PersonID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Thabo','White hill','57575656','2010-01-15'),(2,'Neo','Ha sekake','588588','2000-02-22'),(3,'Mpho','Tebellong','11111','2002-11-08'),(4,'Mphoza','SK- mapuntsuleng','577778','2001-11-11'),(5,'Neuza','Ha sekake','588588','2003-04-04'),(6,'Thiza','Sehlabeng','588588','2005-05-14'),(7,'Khali','Semonkong','09874567','1999-01-09'),(8,'Masilo','Malibamatsho','63478965','2007-05-09'),(9,'Pheko','Mohale s hoek','89756657','2008-11-12'),(10,'Nkopane','Hloahloeng','985689765','2006-01-16'),(11,'Thaa','Mamosa','897526','1999-08-09'),(12,'Mookho','Sun city','897423674','2004-04-04'),(13,'Mohau','Stadium_area','4654354','1989-04-11'),(14,'Thepza','Stadium_area','5343224','2003-09-09'),(15,'Kopza','KHALI rd 45','5432345','2003-08-07'),(16,'Basanta','Khali rd 65','8765654','1988-09-12'),(17,'Lerato','Maseru','555-1234','1990-05-10');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_birth_year`
--

DROP TABLE IF EXISTS `person_birth_year`;
/*!50001 DROP VIEW IF EXISTS `person_birth_year`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_birth_year` AS SELECT 
 1 AS `Name`,
 1 AS `BirthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_contact_details`
--

DROP TABLE IF EXISTS `person_contact_details`;
/*!50001 DROP VIEW IF EXISTS `person_contact_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_contact_details` AS SELECT 
 1 AS `Name`,
 1 AS `PhoneNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `positionhistory`
--

DROP TABLE IF EXISTS `positionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionhistory` (
  `PersonID` int NOT NULL,
  `PositionID` int NOT NULL,
  `StartDate` date NOT NULL,
  `TerminationDate` date DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PersonID`,`PositionID`,`StartDate`),
  KEY `PositionID` (`PositionID`),
  CONSTRAINT `positionhistory_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`),
  CONSTRAINT `positionhistory_ibfk_2` FOREIGN KEY (`PositionID`) REFERENCES `jobposition` (`PositionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionhistory`
--

LOCK TABLES `positionhistory` WRITE;
/*!40000 ALTER TABLE `positionhistory` DISABLE KEYS */;
INSERT INTO `positionhistory` VALUES (1,1,'2022-05-10',NULL,6000.00),(2,2,'2021-08-15',NULL,5000.00),(3,3,'2023-01-20',NULL,7000.00),(4,4,'2022-03-05',NULL,6500.00),(5,5,'2021-11-12',NULL,7500.00),(6,6,'2023-06-18',NULL,4800.00),(7,7,'2022-09-22',NULL,5200.00),(8,8,'2021-04-03',NULL,5800.00),(9,9,'2023-10-30',NULL,6200.00),(10,10,'2022-01-15',NULL,5300.00),(11,11,'2021-07-08',NULL,5900.00),(12,12,'2023-04-11',NULL,6100.00);
/*!40000 ALTER TABLE `positionhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `positionhistory_before_insert_check_dates` BEFORE INSERT ON `positionhistory` FOR EACH ROW BEGIN
    IF NEW.TerminationDate IS NOT NULL AND NEW.StartDate >= NEW.TerminationDate THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid dates: StartDate must be before TerminationDate.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `positionhistory_employee_salary`
--

DROP TABLE IF EXISTS `positionhistory_employee_salary`;
/*!50001 DROP VIEW IF EXISTS `positionhistory_employee_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `positionhistory_employee_salary` AS SELECT 
 1 AS `Name`,
 1 AS `Salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `positionhistory_position_duration`
--

DROP TABLE IF EXISTS `positionhistory_position_duration`;
/*!50001 DROP VIEW IF EXISTS `positionhistory_position_duration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `positionhistory_position_duration` AS SELECT 
 1 AS `PositionID`,
 1 AS `duration_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salary_change_log`
--

DROP TABLE IF EXISTS `salary_change_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_change_log` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `PersonID` int DEFAULT NULL,
  `OldSalary` decimal(10,2) DEFAULT NULL,
  `NewSalary` decimal(10,2) DEFAULT NULL,
  `ChangeDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_change_log`
--

LOCK TABLES `salary_change_log` WRITE;
/*!40000 ALTER TABLE `salary_change_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_change_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporaryemployee`
--

DROP TABLE IF EXISTS `temporaryemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporaryemployee` (
  `PersonID` int NOT NULL,
  `ExtraHours` int DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `temporaryemployee_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporaryemployee`
--

LOCK TABLES `temporaryemployee` WRITE;
/*!40000 ALTER TABLE `temporaryemployee` DISABLE KEYS */;
INSERT INTO `temporaryemployee` VALUES (1,16,'2025-12-31',20000.00),(2,20,'2025-06-30',22000.00),(3,10,'2025-09-30',21000.00),(4,15,'2025-11-30',21500.00),(5,10,'2025-10-15',20000.00),(6,25,'2025-08-31',24000.00),(7,10,'2025-05-30',21000.00),(8,20,'2025-04-15',22500.00),(9,15,'2025-07-15',22000.00),(10,10,'2025-06-30',21500.00),(11,18,'2025-10-31',23000.00),(12,12,'2025-09-30',20000.00);
/*!40000 ALTER TABLE `temporaryemployee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_salary_update_temporary` AFTER UPDATE ON `temporaryemployee` FOR EACH ROW BEGIN
    IF OLD.salary <> NEW.salary THEN
        INSERT INTO salary_change_log (PersonID, OldSalary, NewSalary, ChangeDate)
        VALUES (NEW.PersonID, OLD.salary, NEW.salary, NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `temporaryemployee_contract_details`
--

DROP TABLE IF EXISTS `temporaryemployee_contract_details`;
/*!50001 DROP VIEW IF EXISTS `temporaryemployee_contract_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temporaryemployee_contract_details` AS SELECT 
 1 AS `Name`,
 1 AS `contract_end_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `externalorganizations`
--

/*!50001 DROP VIEW IF EXISTS `externalorganizations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `externalorganizations` AS select `organization`.`OrganizationID` AS `OrganizationID`,`organization`.`Name` AS `Name`,`organization`.`industry_type` AS `industry_type` from `organization` where (`organization`.`OrganizationType` = 'External') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highbonusemployees`
--

/*!50001 DROP VIEW IF EXISTS `highbonusemployees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highbonusemployees` AS select `permanentemployee`.`PersonID` AS `PersonID`,`permanentemployee`.`Bonus` AS `Bonus`,`permanentemployee`.`basic_salary` AS `basic_salary` from `permanentemployee` where (`permanentemployee`.`Bonus` > 1000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highearning`
--

/*!50001 DROP VIEW IF EXISTS `highearning`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highearning` AS select `temporaryemployee`.`PersonID` AS `PersonID`,`temporaryemployee`.`salary` AS `Salary` from `temporaryemployee` where (`temporaryemployee`.`salary` > 21000.00) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `itdepartmentpositions`
--

/*!50001 DROP VIEW IF EXISTS `itdepartmentpositions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `itdepartmentpositions` AS select `jobposition`.`PositionID` AS `PositionID`,`jobposition`.`Title` AS `Title` from `jobposition` where (`jobposition`.`Department` = 'IT') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jobposition_details`
--

/*!50001 DROP VIEW IF EXISTS `jobposition_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jobposition_details` AS select `jp`.`Title` AS `Title`,`o`.`Name` AS `ResponsibleOrganizationName` from (`jobposition` `jp` left join `organization` `o` on((`jp`.`ResponsibleOrganizationID` = `o`.`OrganizationID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `longserving`
--

/*!50001 DROP VIEW IF EXISTS `longserving`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `longserving` AS select `employment`.`PersonID` AS `PersonID`,`employment`.`OrganizationID` AS `OrganizationID`,`employment`.`EmploymentDate` AS `EmploymentDate`,`employment`.`TerminationDate` AS `TerminationDate`,`employment`.`work_shift` AS `work_shift` from `employment` where (`employment`.`EmploymentDate` < '2022-08-20') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `night_shift`
--

/*!50001 DROP VIEW IF EXISTS `night_shift`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `night_shift` AS select `employment`.`PersonID` AS `PersonID`,`employment`.`EmploymentDate` AS `EmploymentDate`,`employment`.`work_shift` AS `Work_shift` from `employment` where (`employment`.`work_shift` = 'night') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `organization_contact_info`
--

/*!50001 DROP VIEW IF EXISTS `organization_contact_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `organization_contact_info` AS select `organization`.`Name` AS `Name`,`organization`.`Address` AS `Address`,`organization`.`PhoneNumber` AS `PhoneNumber` from `organization` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `permanentemployee_salary_credit`
--

/*!50001 DROP VIEW IF EXISTS `permanentemployee_salary_credit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `permanentemployee_salary_credit` AS select `permanentemployee`.`PersonID` AS `PersonID`,((`permanentemployee`.`basic_salary` + `permanentemployee`.`Bonus`) + `permanentemployee`.`Credit`) AS `total_compensation` from `permanentemployee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_birth_year`
--

/*!50001 DROP VIEW IF EXISTS `person_birth_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_birth_year` AS select `person`.`Name` AS `Name`,`person`.`BirthDate` AS `BirthDate` from `person` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_contact_details`
--

/*!50001 DROP VIEW IF EXISTS `person_contact_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_contact_details` AS select `person`.`Name` AS `Name`,`person`.`PhoneNumber` AS `PhoneNumber` from `person` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `positionhistory_employee_salary`
--

/*!50001 DROP VIEW IF EXISTS `positionhistory_employee_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `positionhistory_employee_salary` AS select `p`.`Name` AS `Name`,`ph`.`Salary` AS `Salary` from (`positionhistory` `ph` join `person` `p` on((`ph`.`PersonID` = `p`.`PersonID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `positionhistory_position_duration`
--

/*!50001 DROP VIEW IF EXISTS `positionhistory_position_duration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `positionhistory_position_duration` AS select `positionhistory`.`PositionID` AS `PositionID`,(to_days(`positionhistory`.`TerminationDate`) - to_days(`positionhistory`.`StartDate`)) AS `duration_days` from `positionhistory` where (`positionhistory`.`TerminationDate` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temporaryemployee_contract_details`
--

/*!50001 DROP VIEW IF EXISTS `temporaryemployee_contract_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temporaryemployee_contract_details` AS select `p`.`Name` AS `Name`,`te`.`contract_end_date` AS `contract_end_date` from (`temporaryemployee` `te` join `person` `p` on((`te`.`PersonID` = `p`.`PersonID`))) */;
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

-- Dump completed on 2025-03-28 13:35:35
