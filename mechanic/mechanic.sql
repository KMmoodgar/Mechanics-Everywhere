-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 05:42 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mechanic`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakdown`
--

CREATE TABLE IF NOT EXISTS `breakdown` (
  `customerid` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakdown`
--

INSERT INTO `breakdown` (`customerid`, `date`, `time`, `lat`, `lang`) VALUES
('6', 'kjh', 'kjh', 'k', 'hk'),
('hj', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `complaint_id` varchar(30) NOT NULL,
  `compliant_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `details` varchar(150) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `long` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE IF NOT EXISTS `customer_info` (
  `Customer_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `vehicle_no` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `make` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garage_info`
--

CREATE TABLE IF NOT EXISTS `garage_info` (
  `Garage_id` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Lat` varchar(30) NOT NULL,
  `long` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Mobile_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garage_info`
--

INSERT INTO `garage_info` (`Garage_id`, `Name`, `Type`, `Lat`, `long`, `City`, `Mobile_no`) VALUES
('1', 'sanjay', 'car', '15.66778', '75.87736', 'Dharwad', '9988776655');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `cust_service_id` varchar(30) NOT NULL,
  `service_id` varchar(30) NOT NULL,
  `unitprice` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`cust_service_id`, `service_id`, `unitprice`, `total`, `date`) VALUES
('12', '7', 'jh', 'kjh', 'kh');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `type`) VALUES
('garage', '123123', 'garage'),
('customer', '123123', 'customer'),
('owner', '123123', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic_details`
--

CREATE TABLE IF NOT EXISTS `mechanic_details` (
  `mechanics_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `exp` varchar(30) NOT NULL,
  `specialization` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanic_details`
--

INSERT INTO `mechanic_details` (`mechanics_id`, `name`, `mobile_no`, `exp`, `specialization`) VALUES
('7', 'jkh', 'kjh', 'kjh', 'kjh');

-- --------------------------------------------------------

--
-- Table structure for table `rate_chart`
--

CREATE TABLE IF NOT EXISTS `rate_chart` (
  `service_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `rate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate_chart`
--

INSERT INTO `rate_chart` (`service_id`, `name`, `rate`) VALUES
('12', 'abc', '1200');

-- --------------------------------------------------------

--
-- Table structure for table `srevice_details`
--

CREATE TABLE IF NOT EXISTS `srevice_details` (
  `cust_service_id` varchar(30) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `vehicle_no` varchar(10) NOT NULL,
  `timestamp` varchar(30) NOT NULL,
  `service_type` varchar(30) NOT NULL,
  `details` varchar(150) NOT NULL,
  `mechanic_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `srevice_details`
--

INSERT INTO `srevice_details` (`cust_service_id`, `customer_id`, `vehicle_no`, `timestamp`, `service_type`, `details`, `mechanic_id`) VALUES
('78', '7', 'iy', 'h', 'kjh', 'kjh', 'k'),
('jh', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
