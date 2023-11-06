-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2021 at 03:13 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `afrinattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `MobileNo` varchar(12) NOT NULL,
  `EmailID` varchar(250) NOT NULL,
  `Designation` varchar(250) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Name`, `MobileNo`, `EmailID`, `Designation`, `UserName`, `Password`) VALUES
(1, 'Afrin Pathan', '7410741010', 'afrinpathan@gmail.com', 'HOD', 'afrin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE IF NOT EXISTS `tblattendance` (
  `Date` date NOT NULL,
  `ID` varchar(150) NOT NULL,
  `FirstName` varchar(250) NOT NULL,
  `LastName` varchar(250) NOT NULL,
  `Class` varchar(250) NOT NULL,
  `Division` varchar(250) NOT NULL,
  `Presenty` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Date`, `ID`, `FirstName`, `LastName`, `Class`, `Division`, `Presenty`) VALUES
('2021-09-29', 'STUD101', 'Varad', 'Bolli', 'FYMCA', 'A', '1'),
('2021-09-29', 'STUD102', 'Shree', 'Bolli', 'FYMCA', 'B', '1'),
('2021-09-28', 'STUD101', 'Varad', 'Bolli', 'FYMCA', 'A', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassdivision`
--

CREATE TABLE IF NOT EXISTS `tblclassdivision` (
  `ClassName` varchar(120) NOT NULL,
  `Division` varchar(120) NOT NULL,
  `SeatNo` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassdivision`
--

INSERT INTO `tblclassdivision` (`ClassName`, `Division`, `SeatNo`) VALUES
('FYMCA', 'A', '60'),
('FYMCA', 'B', '60');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE IF NOT EXISTS `tblcontactus` (
  `Name` varchar(250) NOT NULL,
  `MobileNo` varchar(12) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`Name`, `MobileNo`, `Email`, `Subject`, `Message`) VALUES
('Yogita Kyatam', '7896541230', 'yogi@gmail.com', 'I am interestd in your class', 'sadasdd duhbsadu jasdyas kjnhsad h kjasd ');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE IF NOT EXISTS `tblstaff` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) NOT NULL,
  `MobileNo` varchar(12) NOT NULL,
  `WhatsNo` varchar(12) NOT NULL,
  `EmailID` varchar(150) NOT NULL,
  `AadharCardNo` varchar(12) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`ID`, `Name`, `MobileNo`, `WhatsNo`, `EmailID`, `AadharCardNo`, `UserName`, `Password`) VALUES
(1, 'Demo Data', '7410741010', '7894561230', 'demodata@gmail.com', '741074107410', 'demo', '123'),
(2, 'Yogita Kyatam', '7896541230', '7401014710', 'yogi@gmail.com', '789456123123', 'yogiii', '1230');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentregistration`
--

CREATE TABLE IF NOT EXISTS `tblstudentregistration` (
  `ID` varchar(20) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `MiddleName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `Class` varchar(150) NOT NULL,
  `Division` varchar(150) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `EmailID` varchar(150) NOT NULL,
  `MobileNo` varchar(12) NOT NULL,
  `ParentMobileNo` varchar(12) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `AadharCardNo` varchar(12) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentregistration`
--

INSERT INTO `tblstudentregistration` (`ID`, `FirstName`, `MiddleName`, `LastName`, `Class`, `Division`, `Address`, `EmailID`, `MobileNo`, `ParentMobileNo`, `DateOfBirth`, `AadharCardNo`, `UserName`, `Password`) VALUES
('STUD101', 'Varad', 'Amol', 'Bolli', 'FYMCA', 'A', 'Ahmednagar', 'varadamolbolli@gmail.com', '7894561230', '7410741010', '2000-01-30', '789456123321', 'varu', '123'),
('STUD102', 'Shree', 'Amol', 'Bolli', 'FYMCA', 'B', 'Chitale Road', 'shree@gmail.com', '7896541230', '7410741010', '2000-04-08', '74107410741', 'shree', '1230');
