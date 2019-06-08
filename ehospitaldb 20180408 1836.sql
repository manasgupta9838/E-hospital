-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ehosp
--

CREATE DATABASE IF NOT EXISTS ehosp;
USE ehosp;

--
-- Definition of table `appointmentinfo`
--

DROP TABLE IF EXISTS `appointmentinfo`;
CREATE TABLE `appointmentinfo` (
  `Apptid` varchar(40) NOT NULL,
  `Docid` varchar(40) NOT NULL,
  `Pateintid` varchar(40) NOT NULL,
  `Appdate` date NOT NULL,
  `Status` varchar(6) default NULL,
  `Tokenid` varchar(100) default NULL,
  PRIMARY KEY  (`Apptid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmentinfo`
--

/*!40000 ALTER TABLE `appointmentinfo` DISABLE KEYS */;
INSERT INTO `appointmentinfo` (`Apptid`,`Docid`,`Pateintid`,`Appdate`,`Status`,`Tokenid`) VALUES 
 ('123','d125','p1123','2018-04-08','yes','5455'),
 ('1234','d126','p1123','2018-04-08','yes','1054');
/*!40000 ALTER TABLE `appointmentinfo` ENABLE KEYS */;


--
-- Definition of table `doctordetail`
--

DROP TABLE IF EXISTS `doctordetail`;
CREATE TABLE `doctordetail` (
  `Docid` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Spid` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  `Qualification` varchar(200) NOT NULL,
  `Experience` varchar(20) NOT NULL,
  `Speciality` varchar(45) NOT NULL,
  `photo` varchar(45) default NULL,
  PRIMARY KEY  (`Docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctordetail`
--

/*!40000 ALTER TABLE `doctordetail` DISABLE KEYS */;
INSERT INTO `doctordetail` (`Docid`,`password`,`Name`,`Spid`,`Gender`,`Contactno`,`Qualification`,`Experience`,`Speciality`,`photo`) VALUES 
 ('','','','','','','','','',''),
 ('d124','','','','','','','','',''),
 ('d125','1203','Dr. Chandra','120','male','7855587772','M.B.B.S','12','Eye Specialist','DSC_3055.JPG'),
 ('d126','7895','Dr. Rohit phatak','145','male','7854691258','M.S','15','Cardiac','DSC_3071.JPG');
/*!40000 ALTER TABLE `doctordetail` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Pateintid` varchar(45) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `Feedback` varchar(200) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Docid` varchar(45) NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`Id`,`Pateintid`,`Subject`,`Feedback`,`Date`,`Docid`) VALUES 
 (1,'p1123','ill treatment','very poor','2018-04-04','d125'),
 (2,'p1123','','','2018-04-04',''),
 (3,'p1123','','','2018-04-04',''),
 (4,'p1123','','','2018-04-04',''),
 (5,'manas','treatment','good','2018-04-08','d125');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `inbox`
--

DROP TABLE IF EXISTS `inbox`;
CREATE TABLE `inbox` (
  `Msgid` int(10) unsigned NOT NULL auto_increment,
  `Senderid` varchar(45) NOT NULL,
  `Receiverid` varchar(45) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `Message` varchar(45) NOT NULL,
  `Dateofmsg` date NOT NULL,
  PRIMARY KEY  (`Msgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` (`Msgid`,`Senderid`,`Receiverid`,`Subject`,`Message`,`Dateofmsg`) VALUES 
 (1,'p1123','d125','jdjd','ddjjdjd','2018-04-04'),
 (2,'manas','manas','malfunctioning','site is not good','2018-04-08');
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userid` varchar(30) NOT NULL,
  `userpass` varchar(30) NOT NULL,
  `usertype` varchar(10) NOT NULL,
  PRIMARY KEY  USING BTREE (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`userid`,`userpass`,`usertype`) VALUES 
 ('d125','1203','doctor'),
 ('d126','7895','doctor'),
 ('manas','1234','admin'),
 ('p1123','13345','pateint'),
 ('p114','7412','pateint'),
 ('p211','4562','pateint');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `pateintdetail`
--

DROP TABLE IF EXISTS `pateintdetail`;
CREATE TABLE `pateintdetail` (
  `Pateintid` varchar(45) NOT NULL,
  `Pateintpass` varchar(20) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Dob` date NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  PRIMARY KEY  (`Pateintid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pateintdetail`
--

/*!40000 ALTER TABLE `pateintdetail` DISABLE KEYS */;
INSERT INTO `pateintdetail` (`Pateintid`,`Pateintpass`,`Name`,`Dob`,`Gender`,`Address`,`Contactno`) VALUES 
 ('p1123','13345','Ramesh','2018-04-02','male','Lucknow','7891112255'),
 ('p114','7412','Rampal','2018-04-08','male','kanpur','7422855221'),
 ('p211','4562','Ram','2018-04-04','male','Lucknow','141184848'),
 ('xjxjx','jxjxjx','xnxjxj','2018-03-29','male','xkkxkx','58545');
/*!40000 ALTER TABLE `pateintdetail` ENABLE KEYS */;


--
-- Definition of table `sentitems`
--

DROP TABLE IF EXISTS `sentitems`;
CREATE TABLE `sentitems` (
  `Msgid` int(10) unsigned NOT NULL auto_increment,
  `Senderid` varchar(45) NOT NULL,
  `Receiverid` varchar(45) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `Message` varchar(45) NOT NULL,
  `Dateofmsg` date NOT NULL,
  PRIMARY KEY  (`Msgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sentitems`
--

/*!40000 ALTER TABLE `sentitems` DISABLE KEYS */;
INSERT INTO `sentitems` (`Msgid`,`Senderid`,`Receiverid`,`Subject`,`Message`,`Dateofmsg`) VALUES 
 (1,'p1123','d125','extension','i am well','2018-04-04'),
 (2,'manas','manas','malfunctioning','site is not good','2018-04-08');
/*!40000 ALTER TABLE `sentitems` ENABLE KEYS */;


--
-- Definition of table `speciality`
--

DROP TABLE IF EXISTS `speciality`;
CREATE TABLE `speciality` (
  `Spid` varchar(20) NOT NULL,
  `Spname` varchar(100) NOT NULL,
  PRIMARY KEY  USING BTREE (`Spid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speciality`
--

/*!40000 ALTER TABLE `speciality` DISABLE KEYS */;
INSERT INTO `speciality` (`Spid`,`Spname`) VALUES 
 ('120','EyeSpecialist'),
 ('145','Cardiac');
/*!40000 ALTER TABLE `speciality` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
