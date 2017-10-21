-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for safecheck
CREATE DATABASE IF NOT EXISTS `safecheck` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `safecheck`;

-- Dumping structure for table safecheck.event
CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(11) DEFAULT NULL,
  `eventDec` varchar(50) DEFAULT NULL,
  `eventstart` timestamp NULL DEFAULT NULL,
  `eventend` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.event: ~1 rows (approximately)
DELETE FROM `event`;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` (`eventID`, `eventDec`, `eventstart`, `eventend`) VALUES
	(1, 'basicevent', '2017-10-14 13:00:00', '2017-10-14 15:00:00');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

-- Dumping structure for table safecheck.eventform
CREATE TABLE IF NOT EXISTS `eventform` (
  `EventID` int(11) DEFAULT NULL,
  `FormID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.eventform: ~2 rows (approximately)
DELETE FROM `eventform`;
/*!40000 ALTER TABLE `eventform` DISABLE KEYS */;
INSERT INTO `eventform` (`EventID`, `FormID`) VALUES
	(1, 1),
	(1, 2);
/*!40000 ALTER TABLE `eventform` ENABLE KEYS */;

-- Dumping structure for table safecheck.form
CREATE TABLE IF NOT EXISTS `form` (
  `FormID` int(11) DEFAULT NULL,
  `FormName` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `LastUpated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.form: ~2 rows (approximately)
DELETE FROM `form`;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` (`FormID`, `FormName`, `created`, `LastUpated`) VALUES
	(1, 'basicform', '2017-10-13 13:00:00', '2017-10-14 12:00:00'),
	(2, 'newform', '2017-10-15 15:20:00', '2017-10-22 15:20:00');
/*!40000 ALTER TABLE `form` ENABLE KEYS */;

-- Dumping structure for table safecheck.formregister
CREATE TABLE IF NOT EXISTS `formregister` (
  `fileID` int(11) NOT NULL AUTO_INCREMENT,
  `reg` timestamp NULL DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `contents` blob,
  PRIMARY KEY (`fileID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.formregister: ~0 rows (approximately)
DELETE FROM `formregister`;
/*!40000 ALTER TABLE `formregister` DISABLE KEYS */;
INSERT INTO `formregister` (`fileID`, `reg`, `filename`, `contents`) VALUES
	(1, '2017-10-21 15:58:34', 'TEST', _binary 0x7B226E616D65223A2254455354222C2273656374696F6E73223A5B7B226E616D65223A22506172656E74222C227175657374696F6E73223A5B7B226E616D65223A224E616D65222C2274797065223A2254455854227D2C7B226E616D65223A22444F42222C2274797065223A2244415445227D2C7B226E616D65223A2250686F6E65222C2274797065223A2254455854227D5D2C2272657065617461626C65223A66616C73657D2C7B226E616D65223A224368696C64222C227175657374696F6E73223A5B7B226E616D65223A224E616D65222C2274797065223A2254455854227D2C7B226E616D65223A22444F42222C2274797065223A2244415445227D2C7B226E616D65223A22416C6C657267696573222C2274797065223A2254455854227D2C7B226E616D65223A224F7468657244657461696C73222C2274797065223A2254455854227D2C7B226E616D65223A225369676E6174757265222C2274797065223A225349474E4154555245227D5D2C2272657065617461626C65223A747275657D5D7D);
/*!40000 ALTER TABLE `formregister` ENABLE KEYS */;

-- Dumping structure for table safecheck.formsection
CREATE TABLE IF NOT EXISTS `formsection` (
  `FormID` int(11) DEFAULT NULL,
  `SectionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.formsection: ~4 rows (approximately)
DELETE FROM `formsection`;
/*!40000 ALTER TABLE `formsection` DISABLE KEYS */;
INSERT INTO `formsection` (`FormID`, `SectionID`) VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 3);
/*!40000 ALTER TABLE `formsection` ENABLE KEYS */;

-- Dumping structure for table safecheck.item
CREATE TABLE IF NOT EXISTS `item` (
  `itemID` int(11) DEFAULT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `itemtype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.item: ~10 rows (approximately)
DELETE FROM `item`;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`itemID`, `itemName`, `itemtype`) VALUES
	(1, 'parentname', 'TEXT'),
	(2, 'parentcontact', 'TEXT'),
	(3, 'parentsignature', 'SIGNATURE'),
	(4, 'childname', 'TEXT'),
	(5, 'childDoB', 'DATE'),
	(6, 'childnote', 'TEXT'),
	(7, 'forename', 'TEXT'),
	(8, 'middlename', 'TEXT'),
	(9, 'surname', 'TEXT'),
	(10, 'favcolour', 'TEXT');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;

-- Dumping structure for table safecheck.section
CREATE TABLE IF NOT EXISTS `section` (
  `sectionID` int(11) DEFAULT NULL,
  `sectionName` varchar(50) DEFAULT NULL,
  `Repeatable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.section: ~3 rows (approximately)
DELETE FROM `section`;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` (`sectionID`, `sectionName`, `Repeatable`) VALUES
	(1, 'parent', 0),
	(2, 'child', 1),
	(3, 'child2', 0);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

-- Dumping structure for table safecheck.sectionitem
CREATE TABLE IF NOT EXISTS `sectionitem` (
  `SectionID` int(11) DEFAULT NULL,
  `ItemID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.sectionitem: ~10 rows (approximately)
DELETE FROM `sectionitem`;
/*!40000 ALTER TABLE `sectionitem` DISABLE KEYS */;
INSERT INTO `sectionitem` (`SectionID`, `ItemID`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(3, 10);
/*!40000 ALTER TABLE `sectionitem` ENABLE KEYS */;

-- Dumping structure for table safecheck.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `settingvalue` varchar(50) DEFAULT NULL,
  `settingname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table safecheck.settings: ~0 rows (approximately)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
