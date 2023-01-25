-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 25, 2023 at 04:59 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(20) NOT NULL,
  `Fcode` int(11) NOT NULL,
  `Pgender` varchar(10) NOT NULL,
  `Ppassport` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `Pnationality` varchar(30) NOT NULL,
  PRIMARY KEY (`ticketid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`ticketid`, `Pname`, `Fcode`, `Pgender`, `Ppassport`, `amount`, `Pnationality`) VALUES
(1, 'ERIC', 23231, 'Male', '12435', 5000, 'Canada'),
(2, 'ERIC', 23231, 'Male', '12435', 2344, 'Canada'),
(3, 'ruth', 2343, 'Female', '21345623', 766, 'USA'),
(4, 'sibomana', 2343, 'Male', '213451234', 766, 'USA'),
(5, 'ruth', 2343, 'Female', '21345623', 567, 'USA'),
(6, 'diane', 3452, 'Female', '23343', 500, 'Kenya'),
(8, 'METHODE', 2323, 'Male', '2315', 2, 'Kenya'),
(9, 'ruth', 2323, 'Female', '21345623', 2, 'USA'),
(10, 'ERIC', 2323, 'Male', '12435', 12, 'Canada'),
(11, 'ERIC', 2323, 'Male', '12435', 5656, 'Canada'),
(12, 'ERIC', 2323, 'Male', '12435', 5656, 'Canada'),
(13, 'METHODE', 2323, 'Male', '2315', 2, 'Kenya'),
(14, 'METHODE', 2323, 'Male', '2315', 3, 'Kenya'),
(15, 'METHODE', 2323, 'Male', '2315', 0, 'Kenya'),
(16, 'METHODE', 2323, 'Male', '2315', 0, 'Kenya'),
(17, 'METHODE', 2323, 'Male', '2315', 777, 'Kenya'),
(18, 'alice', 6789, 'Female', '132556', 200000, 'South Africa'),
(19, 'jolly', 6789, 'Female', '156131873747', 100000, 'Russia'),
(20, 'gisa', 1234, 'Male', '23456', 45678, 'Kenya');

-- --------------------------------------------------------

--
-- Table structure for table `booking_back`
--

DROP TABLE IF EXISTS `booking_back`;
CREATE TABLE IF NOT EXISTS `booking_back` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(20) NOT NULL,
  `Fcode` int(11) NOT NULL,
  `Pgender` varchar(10) NOT NULL,
  `Ppassport` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `Pnationality` varchar(30) NOT NULL,
  PRIMARY KEY (`ticketid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_back`
--

INSERT INTO `booking_back` (`ticketid`, `Pname`, `Fcode`, `Pgender`, `Ppassport`, `amount`, `Pnationality`) VALUES
(1, 'ERIC', 23231, 'Male', '12435', 5000, 'Canada'),
(2, 'ERIC', 23231, 'Male', '12435', 2344, 'Canada'),
(3, 'ruth', 2343, 'Female', '21345623', 766, 'USA'),
(4, 'sibomana', 2343, 'Male', '213451234', 766, 'USA'),
(5, 'ruth', 2343, 'Female', '21345623', 567, 'USA'),
(6, 'diane', 3452, 'Female', '23343', 500, 'Kenya'),
(8, 'METHODE', 2323, 'Male', '2315', 2, 'Kenya'),
(9, 'ruth', 2323, 'Female', '21345623', 2, 'USA'),
(10, 'ERIC', 2323, 'Male', '12435', 12, 'Canada'),
(11, 'ERIC', 2323, 'Male', '12435', 5656, 'Canada'),
(12, 'ERIC', 2323, 'Male', '12435', 5656, 'Canada'),
(13, 'METHODE', 2323, 'Male', '2315', 2, 'Kenya'),
(14, 'METHODE', 2323, 'Male', '2315', 3, 'Kenya'),
(15, 'METHODE', 2323, 'Male', '2315', 0, 'Kenya'),
(16, 'METHODE', 2323, 'Male', '2315', 0, 'Kenya'),
(17, 'METHODE', 2323, 'Male', '2315', 777, 'Kenya'),
(18, 'alice', 6789, 'Female', '132556', 200000, 'South Africa'),
(19, 'jolly', 6789, 'Female', '156131873747', 100000, 'Russia'),
(20, 'gisa', 1234, 'Male', '23456', 45678, 'Kenya');

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

DROP TABLE IF EXISTS `cancel`;
CREATE TABLE IF NOT EXISTS `cancel` (
  `cancelid` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `Fcode` varchar(10) NOT NULL,
  `canceldate` varchar(50) NOT NULL,
  PRIMARY KEY (`cancelid`),
  KEY `ticketid` (`ticketid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancel`
--

INSERT INTO `cancel` (`cancelid`, `ticketid`, `Fcode`, `canceldate`) VALUES
(1, 4, '2343', 'Thu Nov 24 06:59:59 PST 2022'),
(2, 5, '2343', 'Tue Nov 29 17:14:38 PST 2022'),
(3, 1, '23231', 'Tue Nov 29 17:16:02 PST 2022'),
(4, 4, '2343', 'Wed Nov 02 17:21:40 PDT 2022'),
(5, 2, '', 'Mon Dec 12 23:48:52 PST 2022'),
(6, 19, '6789', 'Wed Dec 07 01:01:06 PST 2022'),
(7, 20, '1234', 'Thu Dec 01 08:39:20 PST 2022');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE IF NOT EXISTS `flight` (
  `Fcode` varchar(50) NOT NULL,
  `Fsource` varchar(50) NOT NULL,
  `Fdestination` varchar(50) NOT NULL,
  `Fdate` varchar(50) NOT NULL,
  `Fseat` int(10) NOT NULL,
  PRIMARY KEY (`Fcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Fcode`, `Fsource`, `Fdestination`, `Fdate`, `Fseat`) VALUES
('1234', 'South Africa', 'USA', 'Thu Dec 01 17:39:00 PST 2022', 12),
('2345', 'England', 'Russia', 'Wed Dec 07 08:27:37 PST 2022', 45),
('3456', 'USA', 'Kenya', 'Wed Dec 14 10:15:35 PST 2022', 48);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'airline', '123');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `Pid` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(30) NOT NULL,
  `Pnationality` varchar(30) NOT NULL,
  `Pgender` varchar(10) NOT NULL,
  `Ppassport` varchar(30) NOT NULL,
  `Paddress` varchar(30) NOT NULL,
  `Pphone` varchar(10) NOT NULL,
  PRIMARY KEY (`Pid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Pid`, `Pname`, `Pnationality`, `Pgender`, `Ppassport`, `Paddress`, `Pphone`) VALUES
(6, 'ruth', 'USA', 'Female', '21345', 'xfv', '213451234'),
(7, 'alice', 'South Africa', 'Female', '132556', 'cape town', '54324354'),
(11, 'eric', 'Kenya', 'Female', '123456', '24', '1`2455'),
(17, 'Rebecca ', 'USA', 'Female', '13334221', 'new jessy', '13422211'),
(18, 'soki', 'South Africa', 'Male', '21424', 'capetown', '234534'),
(25, 'jolly', 'USA', 'Female', '156131873747', 'qugali', '0783993283'),
(26, 'gisa', 'Kenya', 'Male', '23456', 'sdsfdg', '234567');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cancel`
--
ALTER TABLE `cancel`
  ADD CONSTRAINT `cancel_ibfk_1` FOREIGN KEY (`ticketid`) REFERENCES `booking` (`ticketid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
