-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: vergil.u.washington.edu    Database: AKCRegistration
-- ------------------------------------------------------
-- Server version	5.6.39

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
-- Table structure for table `Animal`
--

DROP TABLE IF EXISTS `Animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Animal` (
  `AnimalID` int(11) NOT NULL AUTO_INCREMENT,
  `RegisteredName` varchar(48) NOT NULL,
  `AKCRegistrationNumber` bigint(11) DEFAULT NULL,
  `MicrochipNumber` bigint(11) DEFAULT NULL,
  `BreedID` int(11) NOT NULL,
  `VarietyID` int(11) DEFAULT NULL,
  `Gender` varchar(6) NOT NULL,
  `ColorCode` char(8) DEFAULT NULL,
  `LitterID` int(11) DEFAULT NULL,
  `Limited` char(1) DEFAULT NULL,
  PRIMARY KEY (`AnimalID`),
  UNIQUE KEY `AKCRegistrationNumber` (`AKCRegistrationNumber`),
  UNIQUE KEY `MicrochipNumber` (`MicrochipNumber`),
  KEY `BreedID` (`BreedID`),
  KEY `VarietyID` (`VarietyID`),
  KEY `ColorCode` (`ColorCode`),
  KEY `LitterID` (`LitterID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animal`
--
-- ORDER BY:  `AnimalID`

LOCK TABLES `Animal` WRITE;
/*!40000 ALTER TABLE `Animal` DISABLE KEYS */;
INSERT INTO `Animal` (`AnimalID`, `RegisteredName`, `AKCRegistrationNumber`, `MicrochipNumber`, `BreedID`, `VarietyID`, `Gender`, `ColorCode`, `LitterID`, `Limited`) VALUES (1,'Mr Biscuits',32514681297,6147584875,1,NULL,'F','WH',3,'N'),(2,'Dandy',38264562847,8287385849,5,NULL,'M','BLK',2,'Y'),(3,'Freckles',28364768756,3534264756,5,NULL,'F','YLW',NULL,'Y'),(4,'Bear',23356576879,9767464527,13,NULL,'M','BK-TN',NULL,'N'),(5,'Bojangles',87867675869,4812397346,14,NULL,'F','BLK',4,'Y'),(6,'Tonka',96979897878,8376193487,1,NULL,'F','GLD',NULL,'N'),(7,'Pepper',86875768796,8472263856,25,16,'M','WH',NULL,'N'),(8,'Ace',85584636272,8572923837,23,NULL,'M','WH',NULL,'Y'),(9,'Mia',14236443675,8528273615,12,NULL,'M','GLD',NULL,'N'),(10,'Remington',25143546237,1272736493,6,NULL,'F','BLK-TN',NULL,'N'),(11,'Milly',59123124453,9493362848,24,NULL,'M','BLK',NULL,'Y'),(12,'Trout',97978689503,3116258485,18,NULL,'M','GLD',NULL,'Y'),(13,'Buddy',98473626384,1424364758,10,NULL,'F','CR',NULL,'N'),(14,'Iceman',95932034234,6273545463,2,NULL,'M','MRL',NULL,'N'),(15,'Flex',6969585746,7363525374,5,NULL,'F','CHLT',2,'Y'),(16,'Rocky',25685936485,8326252537,14,NULL,'M','BLK',NULL,'N'),(17,'Ace',7079476256,9484735475,23,NULL,'F','WH',NULL,'N'),(18,'Gunner',43256914568,25641589635,5,NULL,'M','BLK',NULL,'N'),(19,'King',42658953261,14256329875,14,NULL,'F','BLK',1,'Y'),(20,'Simba',45862543567,26541598764,1,NULL,'M','GLD',NULL,'N'),(21,'Ace',36984592175,64891752640,23,NULL,'F','WH',NULL,'N'),(22,'Ace',25382346782,1725483579,23,NULL,'M','WH',5,'N');
/*!40000 ALTER TABLE `Animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnimalMarkings`
--

DROP TABLE IF EXISTS `AnimalMarkings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AnimalMarkings` (
  `AnimalID` int(11) NOT NULL,
  `MarkingsCode` char(16) NOT NULL,
  PRIMARY KEY (`AnimalID`,`MarkingsCode`),
  KEY `MarkingsCode` (`MarkingsCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnimalMarkings`
--
-- ORDER BY:  `AnimalID`,`MarkingsCode`

LOCK TABLES `AnimalMarkings` WRITE;
/*!40000 ALTER TABLE `AnimalMarkings` DISABLE KEYS */;
INSERT INTO `AnimalMarkings` (`AnimalID`, `MarkingsCode`) VALUES (3,'WH MKGS'),(5,'BLK MSK'),(7,'SBL'),(9,'TN PTS'),(13,'BL MSK'),(14,'BL MRL'),(16,'GR MSK'),(17,'BLK MSK');
/*!40000 ALTER TABLE `AnimalMarkings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Breed`
--

DROP TABLE IF EXISTS `Breed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Breed` (
  `BreedID` int(11) NOT NULL AUTO_INCREMENT,
  `BreedName` varchar(24) NOT NULL,
  PRIMARY KEY (`BreedID`),
  UNIQUE KEY `BreedName` (`BreedName`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Breed`
--
-- ORDER BY:  `BreedID`

LOCK TABLES `Breed` WRITE;
/*!40000 ALTER TABLE `Breed` DISABLE KEYS */;
INSERT INTO `Breed` (`BreedID`, `BreedName`) VALUES (1,'Golden Retriever'),(2,'Australian Shepa'),(3,'German Shepard'),(4,'Corgi'),(5,'Labrador Retriev'),(6,'Doberman Pincher'),(7,'Beagle'),(8,'Akita'),(9,'Husky'),(10,'French Bulldog'),(11,'Basset Hound'),(12,'Border Collie'),(13,'Rottweiler'),(14,'Cane Corso'),(15,'Papillon'),(16,'Pekingese'),(17,'Poodle'),(18,'Pug'),(19,'Leonberger'),(20,'Havanese'),(21,'Brittany Spaniel'),(22,'Cocker Spaniel'),(23,'Samoyed'),(24,'Scottish Terrier'),(25,'Collie'),(26,'Shiba Inu'),(27,'Great Dane'),(28,'Dachshunds'),(29,'Bull Terrier'),(30,'Manchester Terri'),(31,'Chihuahua'),(32,'English Toy Span');
/*!40000 ALTER TABLE `Breed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Color`
--

DROP TABLE IF EXISTS `Color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Color` (
  `ColorCode` char(8) NOT NULL,
  `DescriptiveName` varchar(36) NOT NULL,
  PRIMARY KEY (`ColorCode`),
  UNIQUE KEY `DescriptiveName` (`DescriptiveName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Color`
--
-- ORDER BY:  `ColorCode`

LOCK TABLES `Color` WRITE;
/*!40000 ALTER TABLE `Color` DISABLE KEYS */;
INSERT INTO `Color` (`ColorCode`, `DescriptiveName`) VALUES ('APCT','Apricot'),('BG','Beige'),('BL','Blue'),('BLK','Black'),('BLK-T','Black & Tan'),('BR','Brown'),('BRDL','Brindle'),('CHLT','Chocolate'),('CHSNT','Chestnut'),('CR','Cream'),('FN','Fawn'),('GLD','Gold'),('GLDN','Golden'),('LMN','Lemon'),('MRL','Merle'),('PBLD','Piebald'),('RBY','Ruby'),('RST','Rust'),('SLTE','Slate'),('SLVR','Silver'),('SNDY','Sandy'),('SPTD','Spotted'),('TRI','Tri-Color'),('TWNY','Tawny'),('WH','White'),('YLW','Yellow');
/*!40000 ALTER TABLE `Color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Country` (
  `CountryCode` char(4) NOT NULL,
  `CountryName` varchar(24) NOT NULL,
  PRIMARY KEY (`CountryCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--
-- ORDER BY:  `CountryCode`

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` (`CountryCode`, `CountryName`) VALUES ('ARG','Argentina'),('AST','Austria'),('AUS','Australia'),('BAR','Barbados'),('BEL','Belgium'),('BER','Bermuda'),('BOS','Bosnia-Herzegov'),('BRA','Brazil'),('BUL','Bulgaria'),('CAN','Canada'),('CHI','Chile'),('COL','Columbia'),('COS','Costa Rica'),('CRO','Croatia'),('CZF','Czech and Slova'),('CZR','Czech Republic'),('DEN','Denmark'),('EAF','East Africa'),('ECU','Ecuador'),('EST','Estonia'),('FIN','Finland'),('FRA','France'),('GER','Germany'),('GRC','Greece'),('HKG','Hong Kong'),('HOL','Holland'),('HUN','Hungary'),('ICE','Iceland'),('IDN','Indonesia'),('IRE','Ireland'),('ISR','Israel'),('ITA','Italy'),('JAM','Jamaica'),('JPN','Japan'),('LAT','Latvia'),('LIT','Lithuania'),('LUX','Luxembourg'),('MAL','Malaysia'),('MEX','Mexico'),('MLD','Moldova'),('MTA','Malta'),('NOR','Norway'),('NZL','New Zealand'),('PAK','Pakistan'),('PAN','Panama'),('PER','Peru'),('PHI','Philippines'),('POL','Poland'),('POR','Portugal'),('PR','Puerto Rico'),('ROM','Romania'),('RUS','Russia'),('SAF','South Africa'),('SFR','Slovak Republic'),('SIN','Singapore'),('SKR','South Korea'),('SLV','Slovenia'),('SNM','San Marino'),('SPA','Spain'),('SRI','Sri Lanka'),('SWE','Sweden'),('SWI','Switzerland'),('TAI','Taiwan'),('THI','Thailand'),('TRI','Trinidad'),('UKG','United Kingdom'),('UKR','Ukraine'),('URU','Uruguay'),('USA','United States'),('VEN','Venezuela'),('YUG','Yugoslavia'),('ZIM','Zimbabwe');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Litter`
--

DROP TABLE IF EXISTS `Litter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Litter` (
  `LitterID` int(11) NOT NULL AUTO_INCREMENT,
  `DameAnimalID` int(11) NOT NULL,
  `SireAnimalID` int(11) NOT NULL,
  `LitterDate` datetime NOT NULL,
  `RegistrationOwnerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LitterID`),
  KEY `SireAnimalID` (`SireAnimalID`),
  KEY `DameAnimalID` (`DameAnimalID`),
  KEY `RegistrationOwnerID` (`RegistrationOwnerID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Litter`
--
-- ORDER BY:  `LitterID`

LOCK TABLES `Litter` WRITE;
/*!40000 ALTER TABLE `Litter` DISABLE KEYS */;
INSERT INTO `Litter` (`LitterID`, `DameAnimalID`, `SireAnimalID`, `LitterDate`, `RegistrationOwnerID`) VALUES (1,5,16,'2014-09-10 00:00:00',1),(2,3,18,'2016-07-29 00:00:00',3),(3,6,20,'2012-09-30 00:00:00',25),(4,5,16,'2013-03-16 00:00:00',12),(5,17,8,'2020-02-10 00:00:00',12);
/*!40000 ALTER TABLE `Litter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Markings`
--

DROP TABLE IF EXISTS `Markings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Markings` (
  `MarkingsCode` char(24) NOT NULL,
  `DescriptiveName` varchar(48) NOT NULL,
  PRIMARY KEY (`MarkingsCode`),
  UNIQUE KEY `DescriptiveName` (`DescriptiveName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Markings`
--
-- ORDER BY:  `MarkingsCode`

LOCK TABLES `Markings` WRITE;
/*!40000 ALTER TABLE `Markings` DISABLE KEYS */;
INSERT INTO `Markings` (`MarkingsCode`, `DescriptiveName`) VALUES ('BL MRL MKGS','Blue Merle Markings'),('BLK & TN MKGS','Black & Tan Markings'),('BLK & WH MSK, WH','Black & White Mask, White Markings'),('BLK MKGS','Black Markings'),('BLK MSK','Black Mask'),('BLK MSK, WH MKGS','Black Mask, White Markings'),('BLK MZL','Black Muzzle'),('BLK PTS','Black Points'),('BLTK','Blue Tick'),('BR MKGS','Brown Markings'),('BRDL MKGS','Brindle Markings'),('DBLDP','Double Dapple'),('DPL','Dapple'),('FCE','Face'),('GR MSK','Gray Mask'),('HLQN','Harlequin'),('MRL MKGS','Merle Markings'),('MZL','Muzzle'),('PBLD','Piebald'),('PNTO','Pinto'),('PNTO, BLK & WH M','Pinto, Black & White Markings'),('PNTO, BLK MSK','Pinto, Black Mask'),('PPR','Pepper'),('PRTI','Parti-Colored'),('RD MKGS','Red Markings'),('RDTK','Red Tick'),('RN','Roan'),('SBL','Sable'),('SDL','Saddle'),('SPKLD','Speckled'),('SPTD','Spotted'),('TKD','Ticked'),('TN-PTS','Tan Points'),('TPS','Tips'),('WH MKGS','White Markings'),('WH MKGS TN PTS','White Markings, Tan Points'),('WH MKGS, BRDL PT','White Markings, Brindle Points'),('WH MKGS, TKD','White Markings Ticked'),('WH MSK','White Mask');
/*!40000 ALTER TABLE `Markings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Method`
--

DROP TABLE IF EXISTS `Method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Method` (
  `MethodCode` varchar(6) NOT NULL,
  `MethodName` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`MethodCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Method`
--
-- ORDER BY:  `MethodCode`

LOCK TABLES `Method` WRITE;
/*!40000 ALTER TABLE `Method` DISABLE KEYS */;
INSERT INTO `Method` (`MethodCode`, `MethodName`) VALUES ('AMEX','American Express'),('CHECK','Check or Money O'),('DISC','Discover'),('MC','MasterCard'),('VISA','Visa');
/*!40000 ALTER TABLE `Method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Owner`
--

DROP TABLE IF EXISTS `Owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Owner` (
  `OwnerID` int(11) NOT NULL AUTO_INCREMENT,
  `AKCMemberNumber` bigint(11) DEFAULT NULL,
  `LastName` varchar(36) DEFAULT NULL,
  `FirstName` varchar(36) DEFAULT NULL,
  `Email` varchar(36) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `StreetAddress` varchar(36) DEFAULT NULL,
  `CityName` varchar(36) DEFAULT NULL,
  `StateCode` char(3) DEFAULT NULL,
  `PostalCode` int(11) DEFAULT NULL,
  `CountryCode` char(4) DEFAULT NULL,
  PRIMARY KEY (`OwnerID`),
  UNIQUE KEY `AKCMemberNumber` (`AKCMemberNumber`),
  KEY `StateCode` (`StateCode`),
  KEY `CountryCode` (`CountryCode`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Owner`
--
-- ORDER BY:  `OwnerID`

LOCK TABLES `Owner` WRITE;
/*!40000 ALTER TABLE `Owner` DISABLE KEYS */;
INSERT INTO `Owner` (`OwnerID`, `AKCMemberNumber`, `LastName`, `FirstName`, `Email`, `PhoneNumber`, `StreetAddress`, `CityName`, `StateCode`, `PostalCode`, `CountryCode`) VALUES (1,41839573853,'Spellman','Amy','amy.spellman@gmail.com',2830293746,'162 First ST','Woodinville','WA',98072,'USA'),(2,79375639739,'Smith','Tara','tara.smith@hotmail.com',2839485728,'3884 A ST','Toronto','ON',29384,'CAN'),(3,92874866386,'Sosa','Amanda','amanda.sosa@outlook.com',9858267894,'939 Second AVE','Sydney','NSW',20385,'AUS'),(4,93756395785,'White','Sam','sam.white@yahoo.com',9283615736,'2345 B Court','Eugene','OR',284729,'USA'),(5,9574759702,'Brown','Garett','garett.brown@hotmail.com',8263859749,'4927 Third RD','Vancouver','BC',28364,'CAN'),(6,3958604869,'Kuhnhenn','Daniel','daniel.kuhnhenn@gmail.com',2947354952,'038 45th ST','Hobart','TAS',19284,'AUS'),(7,8465638474,'Grizzel','Alex','alex.grizzel@outlook.com',473638594,'3047 23nd AVE','San Diego','CA',92873,'USA'),(8,25354758666,'Hanlin','Ashley','ashley.hanlin@hotmail.com',272736294,'10293 Apple ST','Calgary','AB',84620,'CAN'),(9,28365837483,'Zullo','Jason','jason.zullo@yahoo.com',284625486,'29463 Main AVE','Cairns','QLD',34857,'AUS'),(10,95746859348,'Kien','Vince','vince.kien@gmail.com',1365424364,'9395 Maple Court','Myrtle Beach','SC',29374,'USA'),(11,92927464735,'Sears','Beth','beth.sears@hotmail.com',9374976468,'3944 Pear ST','Winnipeg','MB',37462,'CAN'),(12,15243657344,'Minch','Jeff','jeff.minch@outlook.com',9375967348,'1038 Kangaroo AVE','Alice Springs','NT',97203,'AUS'),(13,52533364758,'Crandall','Laura','laura.crandall@yahoo.com',9375635947,'4839 Peach ST','Atlanta','GA',80382,'USA'),(14,25384525486,'Adams','Lisa','lisa.adams@gmail.com',9375638505,'2345 Bear Loop','Edmonton','AB',38309,'CAN'),(15,94856583648,'Buchman','Lorie','lorie.buchman@hotmail.com',3947693694,'52141 Koala ST','Melborne','VIC',304826,'AUS'),(16,73775936553,'Bute','Sasha','sasha.bute@outlook.com',9273659373,'4235 Colby AVE','Everett','WA',98021,'USA'),(17,73658576593,'Wisman','Cheri','cheri.wisman@yahoo.com',9284759663,'8273 Gold ST','Victoria','BC',67543,'CAN'),(18,33423123341,'Appleton','Joel','joel.appleton@gmail.com',2542446241,'23423 Edwin ST','Drummoyne','NSW',37492,'AUS'),(19,21537453142,'Kruger','Trevor','trevor.kruger@hotmail.com',1733162826,'234 Clevland ST','Redmond','WA',98011,'USA'),(20,62534476246,'Horton','Dale','dale.horton@outlook.com',9274649202,'1624 Grape ST','Smithers','BC',72537,'CAN'),(21,79885776977,'Belvin','Cindy','cindy.belvin@live.com',9374638264,'12423 Hunter ST','Abbotsford','NSW',739475,'AUS'),(22,17253748253,'Prudy','Kent','kent.prudy231@live.com',2947593659,'4322 State ST','Marysville','WA',98011,'USA'),(23,82747252859,'Baker','Ben','baker.ben@gmail.com',2048573559,'2344 George ST','Prince George','BC',92837,'CAN'),(24,19214132447,'Perch','Kevin','kevin.perch@hotmail.com',939485654,'494 Talbot RD','Queenstown','TAS',27382,'AUS'),(25,95767633445,'Hecker','Zach','zach.hecker@outlook.com',2846598369,'3943 First Ave','Forks','WA',29383,'USA'),(26,94846597736,'Schaffer','Alana','alana.schaffer@yahoo.com',9384669793,'12334 French ST','Quebec City','QC',93374,'CAN'),(27,1309943,'Doyle','Terry',NULL,NULL,NULL,'Dover','MD',NULL,'USA');
/*!40000 ALTER TABLE `Owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ownership`
--

DROP TABLE IF EXISTS `Ownership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ownership` (
  `OwnershipID` int(11) NOT NULL AUTO_INCREMENT,
  `AnimalID` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`OwnershipID`),
  KEY `AnimalID` (`AnimalID`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ownership`
--
-- ORDER BY:  `OwnershipID`

LOCK TABLES `Ownership` WRITE;
/*!40000 ALTER TABLE `Ownership` DISABLE KEYS */;
INSERT INTO `Ownership` (`OwnershipID`, `AnimalID`, `StartDate`, `EndDate`) VALUES (1,1,'2015-12-12','2021-01-05'),(2,3,'2016-07-29','2021-01-04'),(3,2,'2017-09-30','2021-01-03'),(4,5,'2014-09-10','2021-01-02'),(5,4,'2013-10-19','2021-01-02'),(6,17,'2013-03-16','2021-01-01'),(7,6,'2013-02-04','2021-01-09'),(8,7,'2016-04-04','2021-01-08'),(9,8,'2018-11-07','2021-01-07'),(10,9,'2019-10-10','2021-01-06'),(11,10,'2013-06-11','2021-01-05'),(12,11,'2012-04-12','2021-01-04'),(13,12,'2015-03-16','2021-01-03'),(14,13,'2012-02-18','2021-01-02'),(15,14,'2011-01-17','2021-01-01'),(16,NULL,'2017-12-06',NULL),(17,NULL,'2019-11-29',NULL),(18,NULL,'2013-09-03',NULL),(19,NULL,'2016-08-31',NULL),(20,NULL,'2018-05-16',NULL),(21,NULL,'2013-04-09',NULL),(22,NULL,'2017-12-06',NULL),(23,NULL,'2019-11-29',NULL),(24,NULL,'2013-09-03',NULL),(25,NULL,'2016-08-31',NULL),(26,NULL,'2018-05-16',NULL),(27,NULL,'2013-04-09',NULL);
/*!40000 ALTER TABLE `Ownership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OwnershipMember`
--

DROP TABLE IF EXISTS `OwnershipMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OwnershipMember` (
  `OwnershipID` int(11) NOT NULL,
  `Sequence` varchar(36) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  PRIMARY KEY (`OwnershipID`,`OwnerID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OwnershipMember`
--
-- ORDER BY:  `OwnershipID`,`OwnerID`

LOCK TABLES `OwnershipMember` WRITE;
/*!40000 ALTER TABLE `OwnershipMember` DISABLE KEYS */;
INSERT INTO `OwnershipMember` (`OwnershipID`, `Sequence`, `OwnerID`) VALUES (1,'Primary',2),(2,'Secondary',3),(3,'Primary',4),(4,'Secondary',6),(5,'Secondary',5),(6,'Primary',12),(7,'Primary',11),(8,'Secondary',1),(9,'Primary',7),(10,'Secondary',8),(11,'Primary',21),(12,'Primary',9),(13,'Secondary',20),(14,'Secondary',13),(15,'Secondary',14),(16,'Primary',22),(17,'Primary',24),(18,'Secondary',25),(19,'Primary',26),(20,'Primary',15),(21,'Primary',16),(22,'Secondary',17),(23,'Primary',18),(24,'Secondary',19),(25,'Secondary',10),(26,'Secondary',23);
/*!40000 ALTER TABLE `OwnershipMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment` (
  `PaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `PedigreeFlag` char(2) DEFAULT NULL,
  `AkcRegistrationFlag` char(2) DEFAULT NULL,
  `MethodCode` varchar(10) NOT NULL,
  `ProcessingFeeFlag` varchar(2) NOT NULL,
  `PrintedNameFlag` char(2) DEFAULT NULL,
  `LateFeeFlag` char(2) DEFAULT NULL,
  `LostAndFoundFlag` char(2) DEFAULT NULL,
  `TotalPayment` int(11) NOT NULL,
  `LitterID` int(11) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  UNIQUE KEY `LitterID` (`LitterID`),
  KEY `MethodCode` (`MethodCode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--
-- ORDER BY:  `PaymentID`

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` (`PaymentID`, `PedigreeFlag`, `AkcRegistrationFlag`, `MethodCode`, `ProcessingFeeFlag`, `PrintedNameFlag`, `LateFeeFlag`, `LostAndFoundFlag`, `TotalPayment`, `LitterID`) VALUES (1,'Y','Y','VISA','Y','Y','N','N',59,1),(2,'Y','Y','MC','Y','Y','N','N',93,2),(3,'Y','Y','DISC','Y','Y','N','N',59,3),(4,'Y','Y','CHECK','Y','Y','N','N',59,4);
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `State`
--

DROP TABLE IF EXISTS `State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State` (
  `CountryCode` char(4) NOT NULL,
  `StateCode` char(3) NOT NULL,
  `StateName` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`StateCode`),
  KEY `CountryCode` (`CountryCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State`
--
-- ORDER BY:  `StateCode`

LOCK TABLES `State` WRITE;
/*!40000 ALTER TABLE `State` DISABLE KEYS */;
INSERT INTO `State` (`CountryCode`, `StateCode`, `StateName`) VALUES ('CAN','AB','Alberta'),('USA','AK','Alaska'),('CAN','BC','British Columbia'),('USA','CA','California'),('USA','FL','Florida'),('USA','GA','Georgia'),('USA','HI','Hawaii'),('USA','ID','Idaho'),('CAN','MB','Manitoba'),('USA','ME','Maine'),('USA','MT','Montana'),('USA','NC','North Carolina'),('AUS','NSW','New South Whales'),('AUS','NT','Northern Territories'),('USA','NY','New York'),('USA','OH','Ohio'),('CAN','ON','Ontario'),('USA','OR','Oregon'),('CAN','QC','Quebec'),('AUS','QLD','Queensland'),('USA','RI','Rhode Island'),('USA','SC','South Carolina'),('AUS','TAS','Tasmania'),('AUS','VIC','Victoria'),('USA','VT','Vermont'),('USA','WA','Washington'),('USA','WY','Wyoming');
/*!40000 ALTER TABLE `State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Variety`
--

DROP TABLE IF EXISTS `Variety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Variety` (
  `VarietyID` int(11) NOT NULL AUTO_INCREMENT,
  `BreedID` int(11) DEFAULT NULL,
  `VarietyName` text,
  PRIMARY KEY (`VarietyID`),
  KEY `BreedID` (`BreedID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Variety`
--
-- ORDER BY:  `VarietyID`

LOCK TABLES `Variety` WRITE;
/*!40000 ALTER TABLE `Variety` DISABLE KEYS */;
INSERT INTO `Variety` (`VarietyID`, `BreedID`, `VarietyName`) VALUES (1,7,'Under 13\"'),(2,7,'Between 13\" and 15\" '),(3,17,'Toy'),(4,17,'Standard'),(5,17,'Miniature'),(6,32,'Blenheim'),(7,32,'King Charles'),(8,32,'Prince Charles'),(9,32,'Ruby'),(10,30,'Standard'),(11,30,'Toy'),(12,28,'Smooth'),(13,28,'Wirehair'),(14,28,'Longhair'),(15,25,'Rough'),(16,25,'Smooth');
/*!40000 ALTER TABLE `Variety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'AKCRegistration'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-09 12:10:06
