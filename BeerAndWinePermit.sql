-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: vergil.u.washington.edu:63050
-- Generation Time: Feb 12, 2021 at 11:27 AM
-- Server version: 5.6.39
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BeerAndWinePermit`
--
CREATE DATABASE IF NOT EXISTS `BeerAndWinePermit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `BeerAndWinePermit`;

-- --------------------------------------------------------

--
-- Table structure for table `Applicant`
--

DROP TABLE IF EXISTS `Applicant`;
CREATE TABLE IF NOT EXISTS `Applicant` (
  `ApplicantID` int(11) NOT NULL AUTO_INCREMENT,
  `RequestID` int(11) NOT NULL,
  `EntityID` int(11) NOT NULL,
  `ContactID` int(11) NOT NULL,
  PRIMARY KEY (`ApplicantID`),
  KEY `RequestID` (`RequestID`),
  KEY `EntityID` (`EntityID`),
  KEY `ContactID` (`ContactID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Applicant`
--

INSERT INTO `Applicant` (`ApplicantID`, `RequestID`, `EntityID`, `ContactID`) VALUES
(1, 10, 3, 3),
(2, 11, 4, 4),
(3, 12, 5, 5),
(4, 13, 6, 6),
(5, 14, 7, 7),
(6, 15, 8, 8),
(7, 1, 9, 9),
(8, 2, 10, 10),
(9, 3, 11, 11),
(10, 4, 12, 12),
(11, 5, 13, 13),
(12, 6, 14, 14),
(13, 7, 15, 15),
(14, 8, 1, 1),
(15, 9, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Beverage`
--

DROP TABLE IF EXISTS `Beverage`;
CREATE TABLE IF NOT EXISTS `Beverage` (
  `BeverageID` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` text NOT NULL,
  `BeverageTypeCode` varchar(10) NOT NULL,
  PRIMARY KEY (`BeverageID`),
  KEY `BeverageTypeCode` (`BeverageTypeCode`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Beverage`
--

INSERT INTO `Beverage` (`BeverageID`, `BrandName`, `BeverageTypeCode`) VALUES
(1, 'Miller Lite', 'Beer'),
(2, 'Coors Light', 'Beer'),
(3, 'Mickeys', 'Beer'),
(4, 'Chateau St Michelle Riesling 2018', 'Wine'),
(5, 'Heineken', 'Beer'),
(6, 'Rolling Rock', 'Beer'),
(7, 'Cote des Roses Rose 2019', 'Wine'),
(8, 'Butter Chardonnay 2017', 'Wine'),
(9, 'Bud Light', 'Beer'),
(10, 'Busch', 'Beer'),
(11, 'Bogle \"Chardonnay 2018', 'Wine'),
(12, 'Lone Star', 'Beer'),
(14, 'Barista Pinotage 2019', 'Wine'),
(15, 'Famega Vinho Verde Blanco 2019', 'Wine'),
(16, 'Columbia Crest H3 Cabernet Sauvignon 2016', 'Wine'),
(17, 'SeaGlass Pinot Noir 2017', 'Wine'),
(18, 'Dark Horse Sauvignon Blanc', 'Wine'),
(19, 'Brazin (B) Old Vine Zinfandel Lodi 2016', 'Wine'),
(20, 'Guinness Extra Stout', 'Beer'),
(21, 'Bud Light Lime', 'Beer'),
(22, 'Bud Light Platinum', 'Beer'),
(23, 'Corona Light', 'Beer'),
(24, 'Dos Equis', 'Beer'),
(25, 'Fosters', 'Beer'),
(26, 'Blue Moon', 'Beer'),
(27, 'Modelo Especial', 'Beer');

-- --------------------------------------------------------

--
-- Table structure for table `BeverageType`
--

DROP TABLE IF EXISTS `BeverageType`;
CREATE TABLE IF NOT EXISTS `BeverageType` (
  `BeverageTypeCode` varchar(10) NOT NULL,
  PRIMARY KEY (`BeverageTypeCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BeverageType`
--

INSERT INTO `BeverageType` (`BeverageTypeCode`) VALUES
('Beer'),
('Wine');

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

DROP TABLE IF EXISTS `Contact`;
CREATE TABLE IF NOT EXISTS `Contact` (
  `ContactID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(16) NOT NULL,
  `ContactTitle` varchar(48) DEFAULT NULL,
  `PhoneNo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ContactID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`ContactID`, `ContactName`, `ContactTitle`, `PhoneNo`) VALUES
(1, 'Ronny Smith', 'Event Coordinator', 2083162947),
(2, 'Tara Krown', 'Event Manager', 2082159874),
(3, 'Calvin Karge', 'Event Coordinator', 2014973465),
(5, 'Linda Padden', 'Manager of Public Events', 5876147325),
(6, 'Greg Hoist', 'Event Planner', 9513245670),
(7, 'Max Brian', 'Manager of Event Planning', 6023010500),
(8, 'Bill Smith', 'Senior Manager of Event Planning', 234957016),
(10, 'Trevor Bird', 'Director of Event Planning', 42536801254),
(12, 'Graham Green', 'Associate Event Planner', 5203216579),
(13, 'Gary Larson', 'Event Coordinator', 2013204856),
(4, 'David Ringer', 'Event Coordinator', 6492517563),
(9, 'Bob Wilson', 'Event Manager', 4097012555),
(11, 'Amanda White', 'Event Planner', 4851021674);

-- --------------------------------------------------------

--
-- Table structure for table `Entity`
--

DROP TABLE IF EXISTS `Entity`;
CREATE TABLE IF NOT EXISTS `Entity` (
  `EntityID` int(11) NOT NULL AUTO_INCREMENT,
  `EntityName` text NOT NULL,
  `LocationID` int(11) DEFAULT NULL,
  `FedTaxID` varchar(36) DEFAULT NULL,
  `StateTaxID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`EntityID`),
  KEY `LocationID` (`LocationID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Entity`
--

INSERT INTO `Entity` (`EntityID`, `EntityName`, `LocationID`, `FedTaxID`, `StateTaxID`) VALUES
(1, 'Idaho Humane Society', 2, '12-36-1025', '62-014589'),
(2, 'MCPAWS Regional Animal Shelter', 3, '92-136-2014', '41-752699'),
(3, 'Mystic Farm Wildlife Rescue Inc.', 12, '62-14-0125', '10-25961'),
(4, 'Horse Rescue Idaho', 5, '41-51-4558', '95-012658'),
(5, 'Thriive', 6, '62-59-1458', '74-10259'),
(6, 'Boxer Lovers Rescue', 7, '85-925-1456', '33-10529'),
(7, 'AquAbility', 8, '15-485-3021', '95-01465'),
(8, 'Fuzzy Paws', 9, '47-96-3021', '74-0120'),
(9, 'Greyhoud Rescue of Idaho', 10, '02-01-0268', '00-00125'),
(10, 'The Idaho Foodbank', 11, '65-74-2013', '73-01259'),
(11, 'Happy Jack Cats Inc', 12, '01-03-1027', '41-5394'),
(12, 'Lewis Clark Animal Shelter Inc', 13, '98-15-0165', '99-01257'),
(13, 'Spay Neuter Idaho Pets', 14, '12-14-5964', '55-52156'),
(14, 'Pawsitive Works', 15, '48-185021', '10-01269'),
(15, 'Fly By Night', 14, '01-02694', '45-10259');

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
CREATE TABLE IF NOT EXISTS `Event` (
  `EventID` int(11) NOT NULL AUTO_INCREMENT,
  `EventName` text NOT NULL,
  `Purpose` text NOT NULL,
  `LocationID` int(11) NOT NULL,
  PRIMARY KEY (`EventID`),
  KEY `LocationID` (`LocationID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Event`
--

INSERT INTO `Event` (`EventID`, `EventName`, `Purpose`, `LocationID`) VALUES
(1, 'Idaho Humane Society Silent Auction', 'To raise money  for the shelter', 1),
(2, 'MCPAWS Regional Animal Shelter 5K Fun Run', 'To raise money for the shelter', 2),
(3, 'Mystic Farm Wildlife Rescue Dinner', 'To raise money and awareness for the rescue', 3),
(4, 'Horse Rescue Idaho 5K Fun Run', 'To raise money and awareness', 4),
(5, 'Thriive Silent Auction', 'To raise money and awareness', 5),
(6, 'Boxer Lovers Rescue Dinner', 'To raise money and awareness', 6),
(7, 'AquAbility Charity Concert', 'To raise money and awareness', 7),
(8, 'Fuzzy Paws Comedy Night', 'To raise money and awareness', 8),
(9, 'Greyhoud Rescue of Idaho 10K', 'To raise money and awareness', 9),
(10, 'The Idaho Foodbank Silent Auction', 'To raise money and awareness', 10),
(11, 'Happy Jack Cats Comedy Night', 'To raise money and awareness', 11),
(12, 'Lewis Clark Animal Shelter 15K', 'To raise money and awareness', 12),
(13, 'Spay Neuter Idaho Pets Karaoke Night', 'To raise money and awareness', 13),
(14, 'Pawsitive Works Charity Kickball', 'To raise money and awareness', 14),
(15, 'Christmas For All Holiday Bazaar', 'To raise money and awareness', 15);

-- --------------------------------------------------------

--
-- Table structure for table `EventDay`
--

DROP TABLE IF EXISTS `EventDay`;
CREATE TABLE IF NOT EXISTS `EventDay` (
  `EventID` int(11) NOT NULL,
  `EventDate` date NOT NULL,
  `FromTime` time NOT NULL,
  `ToTime` time NOT NULL,
  PRIMARY KEY (`EventID`,`EventDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventDay`
--

INSERT INTO `EventDay` (`EventID`, `EventDate`, `FromTime`, `ToTime`) VALUES
(1, '2020-07-14', '19:30:00', '23:50:00'),
(2, '2020-10-12', '10:00:00', '13:00:00'),
(3, '2026-01-31', '13:00:00', '16:00:00'),
(4, '2019-02-01', '14:00:00', '16:00:00'),
(5, '2012-06-08', '19:00:00', '23:00:00'),
(6, '2020-11-29', '17:00:00', '22:00:00'),
(1, '2020-07-17', '14:00:00', '17:00:00'),
(8, '2012-05-16', '19:30:00', '23:00:00'),
(1, '2020-07-15', '10:30:00', '15:00:00'),
(1, '2020-07-16', '12:00:00', '17:00:00'),
(7, '2012-05-15', '09:00:00', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
CREATE TABLE IF NOT EXISTS `Location` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(48) NOT NULL,
  `StreetAddress` varchar(24) NOT NULL,
  `CityName` varchar(16) NOT NULL,
  `StateCode` varchar(3) NOT NULL,
  `PostalCode` int(11) DEFAULT NULL,
  `CityFlag` char(1) NOT NULL,
  PRIMARY KEY (`LocationID`),
  KEY `StateCode` (`StateCode`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`LocationID`, `LocationName`, `StreetAddress`, `CityName`, `StateCode`, `PostalCode`, `CityFlag`) VALUES
(1, 'Meridian Community Center', '201 E Idaho Ave', 'Meridian', 'ID', 83642, 'Y'),
(2, 'The Community Center', '1088 N Orchard St', 'Boise', 'ID', 83706, 'N'),
(3, 'Morley Nelson Community Center', '7701 W Northview St', 'Boise', 'ID', 83704, 'N'),
(4, 'Woodridge Community Center', '2000 E Woodbridge Dr', 'Meridian', 'ID', 83642, 'Y'),
(5, 'The Club at Spurwing', '6800 N Spurwing Way', 'Meridian', 'ID', 83646, 'Y'),
(6, 'BanBury Golf Club Eagle', '2626 S Marypost Pl', 'Eagle', 'ID', 83616, 'N'),
(7, 'The Curb Bar and Grill', '1760 S Meridian RD #100', 'Meridian', 'ID', 83646, 'Y'),
(8, 'The Highway Bar & Grill', '1510 S Celebration Ave', 'Meridian', 'ID', 83642, 'Y'),
(9, 'Rudys Pub & Grill', '2310 E Overland RD #150', 'Meridian', 'ID', 83642, 'Y'),
(10, 'Homestead Bar & Grill', '6275 N Linder RD #100', 'Meridian', 'ID', 83642, 'Y'),
(11, 'Paulys Bar Room', '130 E Idaho Ave', 'Meridian', 'ID', 83642, 'Y'),
(12, 'The Construction Zone Bar & Grill', '229 W Franklin RD', 'Meridian', 'ID', 83642, 'Y'),
(13, 'Strikers Bar', '324 S Meridian RD', 'Meridian', 'ID', 83642, 'Y'),
(14, 'Fly By Night', '123 First ST', 'Half-Moon Bay', 'CA', 91204, 'N'),
(15, 'Shady Lane Center', '123 Shady Lane', 'Truth or Consequ', 'NM', 87901, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `Notary`
--

DROP TABLE IF EXISTS `Notary`;
CREATE TABLE IF NOT EXISTS `Notary` (
  `NotaryID` int(11) NOT NULL AUTO_INCREMENT,
  `NotaryName` varchar(16) DEFAULT NULL,
  `NotaryNo` char(10) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `LocationID` int(11) NOT NULL,
  PRIMARY KEY (`NotaryID`),
  KEY `LocationID` (`LocationID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Notary`
--

INSERT INTO `Notary` (`NotaryID`, `NotaryName`, `NotaryNo`, `ExpirationDate`, `LocationID`) VALUES
(1, 'Bob Smith', '12309', '2025-03-01', 4),
(2, 'Bill Wilson', '920143', '2026-01-01', 11),
(3, 'Elgy Grizzel', '751032', '2025-02-01', 2),
(4, 'Barbara White', '410312', '2030-01-10', 13),
(5, 'Ibee Fourger', '620121', '2026-05-10', 15),
(6, 'Matt Jones', '601232', '2022-06-16', 3),
(7, 'Stevie Joyce', '741032', '2027-12-12', 1),
(8, 'Sierra Stine', '952036', '2012-05-27', 5),
(9, 'Katherine Barker', '602351', '2021-06-05', 6),
(10, 'Shelby Marr', '915320', '2025-01-10', 7),
(11, 'Stephanie Hecker', '742695', '2024-02-01', 8),
(12, 'Nick Schmidt', '936204', '2025-06-01', 9),
(13, 'Mia Alverez', '736502', '2030-12-01', 10),
(14, 'Hank Miller', '915064', '2030-01-01', 12),
(15, 'Niya Green', '501426', '2030-02-02', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Permit`
--

DROP TABLE IF EXISTS `Permit`;
CREATE TABLE IF NOT EXISTS `Permit` (
  `PermitID` int(11) NOT NULL AUTO_INCREMENT,
  `PermitTypeCode` char(4) NOT NULL,
  `PermitNumber` int(11) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PermitID`),
  KEY `PermitTypeCode` (`PermitTypeCode`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Permit`
--

INSERT INTO `Permit` (`PermitID`, `PermitTypeCode`, `PermitNumber`, `IssueDate`) VALUES
(1, 'Beer', 32851, '2012-02-01 00:00:00'),
(2, 'Both', 13, '2012-03-03 00:00:00'),
(3, 'Wine', 1236, '2012-06-09 00:00:00'),
(4, 'Wine', 10257, '2013-06-03 00:00:00'),
(5, 'Both', 85250, '2012-12-12 00:00:00'),
(6, 'Beer', 20146, '2013-11-16 00:00:00'),
(7, 'Wine', 98012, '2013-05-31 00:00:00'),
(8, 'Beer', 50030, '2014-02-18 00:00:00'),
(9, 'Both', 14, '2014-03-29 00:00:00'),
(10, 'Beer', 2195, '2015-01-01 00:00:00'),
(11, 'Wine', 1203, '2021-02-21 00:00:00'),
(12, 'Beer', 97021, '2021-03-23 00:00:00'),
(13, 'Both', 1023, '2021-09-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `PermitBeverage`
--

DROP TABLE IF EXISTS `PermitBeverage`;
CREATE TABLE IF NOT EXISTS `PermitBeverage` (
  `RequestID` int(11) NOT NULL,
  `BeverageID` int(11) NOT NULL,
  `ProviderID` int(11) NOT NULL,
  PRIMARY KEY (`RequestID`,`BeverageID`),
  KEY `BeverageID` (`BeverageID`),
  KEY `ProviderID` (`ProviderID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PermitBeverage`
--

INSERT INTO `PermitBeverage` (`RequestID`, `BeverageID`, `ProviderID`) VALUES
(9, 3, 8),
(1, 9, 7),
(2, 4, 6),
(3, 1, 5),
(4, 12, 4),
(5, 19, 3),
(6, 27, 2),
(7, 21, 1),
(8, 16, 9);

-- --------------------------------------------------------

--
-- Table structure for table `PermitRequest`
--

DROP TABLE IF EXISTS `PermitRequest`;
CREATE TABLE IF NOT EXISTS `PermitRequest` (
  `RequestID` int(11) NOT NULL AUTO_INCREMENT,
  `PermitID` int(11) DEFAULT NULL,
  `PermitTypeCode` char(4) NOT NULL,
  `RequestDate` datetime NOT NULL,
  `WitnessNotaryID` int(11) DEFAULT NULL,
  `EventID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RequestID`),
  KEY `PermitID` (`PermitID`),
  KEY `PermitTypeCode` (`PermitTypeCode`),
  KEY `WitnessNotaryID` (`WitnessNotaryID`),
  KEY `EventID` (`EventID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PermitRequest`
--

INSERT INTO `PermitRequest` (`RequestID`, `PermitID`, `PermitTypeCode`, `RequestDate`, `WitnessNotaryID`, `EventID`) VALUES
(1, 4, 'Beer', '2021-01-03 00:00:00', 5, 7),
(2, 5, 'Wine', '2020-05-10 00:00:00', 6, 8),
(3, 6, 'Both', '2021-10-16 00:00:00', 7, 9),
(4, 7, 'Both', '2022-12-31 00:00:00', 8, 10),
(5, 8, 'Wine', '2021-08-17 00:00:00', 9, 11),
(6, 9, 'Beer', '2022-04-20 00:00:00', 10, 12),
(7, 10, 'Beer', '2021-07-15 00:00:00', 12, 13),
(8, 11, 'Wine', '2021-03-31 00:00:00', 11, 6),
(9, 12, 'Beer', '2012-01-21 00:00:00', 13, 15),
(10, 13, 'Both', '2012-06-29 00:00:00', 14, 1),
(11, 14, 'Beer', '2013-11-29 00:00:00', 15, 2),
(12, NULL, 'Wine', '2014-05-16 00:00:00', 1, 3),
(13, 1, 'Both', '2012-02-01 00:00:00', 2, 4),
(14, 2, 'Beer', '2015-10-31 00:00:00', 3, 5),
(15, 3, 'Wine', '2016-10-11 00:00:00', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `PermitType`
--

DROP TABLE IF EXISTS `PermitType`;
CREATE TABLE IF NOT EXISTS `PermitType` (
  `PermitTypeCode` char(4) NOT NULL,
  `PermitFee` int(11) NOT NULL,
  PRIMARY KEY (`PermitTypeCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PermitType`
--

INSERT INTO `PermitType` (`PermitTypeCode`, `PermitFee`) VALUES
('Beer', 20),
('Wine', 20),
('Both', 40);

-- --------------------------------------------------------

--
-- Table structure for table `Provider`
--

DROP TABLE IF EXISTS `Provider`;
CREATE TABLE IF NOT EXISTS `Provider` (
  `ProviderID` int(11) NOT NULL AUTO_INCREMENT,
  `EntityID` int(11) NOT NULL,
  PRIMARY KEY (`ProviderID`),
  KEY `EntityID` (`EntityID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Provider`
--

INSERT INTO `Provider` (`ProviderID`, `EntityID`) VALUES
(1, 8),
(2, 7),
(3, 6),
(4, 5),
(5, 4),
(6, 3),
(7, 2),
(8, 1),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Recipient`
--

DROP TABLE IF EXISTS `Recipient`;
CREATE TABLE IF NOT EXISTS `Recipient` (
  `RecipientID` int(11) NOT NULL AUTO_INCREMENT,
  `RequestID` int(11) NOT NULL,
  `EntityID` int(11) NOT NULL,
  `Profit` int(11) DEFAULT NULL,
  PRIMARY KEY (`RecipientID`),
  KEY `RequestID` (`RequestID`),
  KEY `EntityID` (`EntityID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Recipient`
--

INSERT INTO `Recipient` (`RecipientID`, `RequestID`, `EntityID`, `Profit`) VALUES
(1, 2, 3, 12000),
(2, 3, 4, 10000),
(3, 4, 5, 15000),
(4, 5, 6, 5600),
(5, 6, 7, 500),
(6, 7, 8, 900),
(7, 8, 9, 775),
(8, 9, 10, 600),
(9, 10, 11, 13000),
(10, 11, 12, 16000),
(11, 12, 13, 15575),
(12, 13, 14, 14995),
(13, 14, 15, 11652),
(14, 15, 1, 10652),
(15, 1, 2, 19520);

-- --------------------------------------------------------

--
-- Table structure for table `State`
--

DROP TABLE IF EXISTS `State`;
CREATE TABLE IF NOT EXISTS `State` (
  `StateCode` varchar(3) NOT NULL,
  `StateName` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`StateCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `State`
--

INSERT INTO `State` (`StateCode`, `StateName`) VALUES
('WA', 'Washington'),
('ID', 'Idaho'),
('CA', 'California'),
('OR', 'Oregon'),
('MT', 'Montana'),
('NV', 'Nevada'),
('AZ', 'Arizona'),
('CO', 'Colorado'),
('NM', 'New Mexico'),
('TX', 'Texas'),
('SD', 'South Dakota'),
('WY', 'Wyoming'),
('UT', 'Utah'),
('OK', 'Oklahoma'),
('ND', 'North Dakota');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
