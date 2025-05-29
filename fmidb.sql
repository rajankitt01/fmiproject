-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 21, 2023 at 03:32 AM
-- Server version: 10.10.2-MariaDB
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fmidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `regid` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `village` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `aadharno` varchar(12) NOT NULL,
  `noofpacket` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `totalamt` int(11) NOT NULL,
  `advanceamt` int(11) NOT NULL,
  `restamt` int(11) NOT NULL,
  `bookingdate` varchar(30) NOT NULL,
  PRIMARY KEY (`aadharno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`regid`, `name`, `village`, `post`, `district`, `state`, `pincode`, `contactno`, `aadharno`, `noofpacket`, `duration`, `rate`, `totalamt`, `advanceamt`, `restamt`, `bookingdate`) VALUES
('BCS-123456789123', 'Abhijeet Rawat', 'Inayatpur', 'Abc', 'Lucknow', 'Uttar Pradesh', '226017', '1234567891', '123456789123', 100, 6, 100, 60000, 10000, 49000, '2023-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(500) NOT NULL,
  `enquirydate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`, `enquirytext`, `enquirydate`) VALUES
(7, 'aa', 'Male', 'qwertyuio', '3456789', 'qwertyu', 'hjhgfdsdfghj', '2023-09-19'),
(4, 'Abhijeet Rawat', 'Male', 'Rajnagar colony,  Para, Rajajipuram', '6386', 'abhijeetrawat45@gmail.com', 'abcd', '2023-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `farmerinfo`
--

DROP TABLE IF EXISTS `farmerinfo`;
CREATE TABLE IF NOT EXISTS `farmerinfo` (
  `regid` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `village` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `aadharno` varchar(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `regdate` varchar(30) NOT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `farmerinfo`
--

INSERT INTO `farmerinfo` (`regid`, `name`, `fname`, `mname`, `gender`, `village`, `post`, `district`, `state`, `pincode`, `contactno`, `aadharno`, `panno`, `regdate`) VALUES
('BCS-123456789123', 'Abhijeet Rawat', 'HC Rawat', 'Ramdulari Rawat', 'Male', 'Inayatpur', 'Abc', 'Lucknow', 'Uttar Pradesh', '226017', '1234567891', '123456789123', 'jhgfds1234', '2023-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newstext` varchar(1000) NOT NULL,
  `posteddate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstext`, `posteddate`) VALUES
(1, 'Hello everyone, there is a holiday on tomorrow.', '2023-09-19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
