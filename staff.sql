-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 02:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staffmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `createe`
--

CREATE TABLE `createe` (
  `Username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createe`
--

INSERT INTO `createe` (`Username`, `password`, `id`) VALUES
('muralidharan', '2211', 7),
('jee', 'jee', 10),
('selvaraj', '2703', 11),
('apple', 'apple', 12),
('selvaraj', 'selvaraj', 15);

-- --------------------------------------------------------

--
-- Table structure for table `createee`
--

CREATE TABLE `createee` (
  `username` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createee`
--

INSERT INTO `createee` (`username`, `password`) VALUES
('a', 1),
('b', 2);

-- --------------------------------------------------------

--
-- Table structure for table `insertt`
--

CREATE TABLE `insertt` (
  `Username` varchar(50) NOT NULL,
  `Id_No` int(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Mobile_No` int(50) NOT NULL,
  `Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insertt`
--

INSERT INTO `insertt` (`Username`, `Id_No`, `Gender`, `Address`, `Mobile_No`, `Position`) VALUES
('a', 1001, 'Male', 'porur', 12345678, 'Hod');

-- --------------------------------------------------------

--
-- Table structure for table `leav`
--

CREATE TABLE `leav` (
  `Id_No` int(11) NOT NULL,
  `staffname` varchar(11) NOT NULL,
  `leavtype` varchar(11) NOT NULL,
  `day` varchar(11) NOT NULL,
  `leavetaken` int(11) NOT NULL,
  `ffrom` varchar(11) NOT NULL,
  `tto` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leav`
--

INSERT INTO `leav` (`Id_No`, `staffname`, `leavtype`, `day`, `leavetaken`, `ffrom`, `tto`) VALUES
(1001, 'a', 'viral', 'monday', 5, '10-05-18', '15-05-18'),
(1956, 'selvaraj', 'medical', 'Tuesday', 10, '15/05/18', '20/05/18');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `staffname` varchar(100) NOT NULL,
  `jan` int(100) NOT NULL,
  `feb` int(100) NOT NULL,
  `mar` int(100) NOT NULL,
  `apr` int(100) NOT NULL,
  `may` int(100) NOT NULL,
  `jun` int(100) NOT NULL,
  `jul` int(100) NOT NULL,
  `aug` int(100) NOT NULL,
  `sep` int(100) NOT NULL,
  `octo` int(100) NOT NULL,
  `nov` int(100) NOT NULL,
  `dece` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`staffname`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `octo`, `nov`, `dece`) VALUES
('a', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createe`
--
ALTER TABLE `createe`
  ADD UNIQUE KEY `U` (`id`);

--
-- Indexes for table `insertt`
--
ALTER TABLE `insertt`
  ADD UNIQUE KEY `Id No` (`Id_No`);

--
-- Indexes for table `leav`
--
ALTER TABLE `leav`
  ADD UNIQUE KEY `staffid` (`Id_No`),
  ADD UNIQUE KEY `staffid_2` (`Id_No`),
  ADD UNIQUE KEY `staffid_3` (`Id_No`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD UNIQUE KEY `staffname` (`staffname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createe`
--
ALTER TABLE `createe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
