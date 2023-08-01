-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 05:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud-php-mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

CREATE TABLE `studentclass` (
  `cid` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`cid`, `cname`) VALUES
(1, '10th'),
(2, '+2'),
(3, 'BCA'),
(4, 'B-tech'),
(5, '+3'),
(6, 'ITI');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sid` int(30) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `saddress` varchar(100) NOT NULL,
  `sclass` int(20) NOT NULL,
  `sphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sid`, `sname`, `saddress`, `sclass`, `sphone`) VALUES
(1, 'Likun k k', 'Nalco nagar, Angul', 1, '8895216174'),
(2, 'Likun', 'Angul', 2, '8895216174'),
(6, '', '', 0, ''),
(8, 'Subham majhi', 'Angul', 3, '6468598578'),
(9, 'Lokesh kumar Kisan', 'Nalco nagar, Angul Qtr B-124', 4, '9827691322'),
(10, 'Himansu', 'Kandsar', 3, '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentclass`
--
ALTER TABLE `studentclass`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentclass`
--
ALTER TABLE `studentclass`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
