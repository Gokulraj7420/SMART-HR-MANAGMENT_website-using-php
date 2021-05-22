-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 06:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(101, 'Gokul', 'Raj', 'gokul@gmail.com', '2121', '2002-02-13', 'Male', '8667665962', 1111, 'Cuddalore', 'CSE', 'B.Tech', 'images/1.jpeg'),
(102, 'Vedha', 'Harsih', 'vedha@gmail.com', '1234', '2008-01-01', 'Male', '4512451255', 2222, 'Chennai', 'CSE', 'B.Tech', 'images/2.jpeg'),
(103, 'Rishi', 'Wilson', 'rishi@gmail.com', '1234', '1990-02-02', 'Male', '5252545448', 3333, 'Thames, UK', 'Creative', 'MSc', 'images/3.jpeg'),
(104, 'Abi', 'ram', 'abi@gmail.com', '1234', '1971-12-01', 'Male', '9595654655', 4444, 'USA', 'Creative', 'MSc', 'images/4.jpeg'),
(105, 'Mukesh', 'Musk', 'Muki@gmail.com', '1234', '1971-06-28', 'Male', '6518456585', 5555, 'USA', 'Space', 'BSc', 'images/5.jpeg\r\n'),
(106, 'Ram', 'Raja', 'Ram@gmail.com', '1234', '1990-02-02', 'Male', '7575757575', 6666, 'India', 'IOT', 'MSc', 'images/6.jpeg'),
(107, 'Max', 'Max', 'max@gmail.com', '1234', '1993-03-03', 'Female', '4545454545', 7777, 'India', 'Defense ', 'MS', 'images/7.jpeg'),
(108, 'Rishi', 'NG', 'andrew@gmail.com', '1234', '1976-04-16', 'Male', '7587587858', 8888, 'USA', 'ML', 'PhD', 'images/8.jpeg\r\n'),
(109, 'Ian ', 'I', 'ian@gmail.com', '1234', '1985-01-01', 'Male', '8528528525', 2828, 'USA', 'AI', 'PhD', 'images/9.jpeg'),
(110, 'Chris', 'Max', 'chris@gmail.com', '1234', '1965-09-18', 'Male', '1471471475', 1212, 'USA', 'ML', 'PhD', 'images/10.jpeg'),
(111, 'John', 'Snow', 'john@gmail.com', '1234', '2011-02-01', 'Male', '1254564535', 1010, 'USA', 'Management', 'B.Tech', 'images/11.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2020-11-04', '2020-11-05', 'Sick Leave', 'Approved'),
(102, 305, '2020-11-07', '2020-11-08', 'Family Issue', 'Approved'),
(103, 306, '2020-11-08', '2020-11-08', 'Concert', 'Approved'),
(101, 307, '2020-11-14', '2020-11-30', 'Vacation Tour', 'Pending'),
(105, 308, '2020-11-26', '2020-11-30', 'Personal Work', 'Pending'),
(111, 309, '2020-11-09', '2020-11-13', 'Going Home', 'Pending'),
(104, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending'),
(101, 311, '2020-11-20', '2020-11-21', 'Sick Leave', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 101, 'Database', '2020-11-11', '2020-11-29', 10, 'Submitted'),
(214, 102, 'Test', '2020-11-02', '0000-00-00', 0, 'Due'),
(215, 105, 'RAM', '2020-11-17', '2020-11-18', 10, 'Submitted'),
(216, 106, 'Hack', '2020-10-08', '2020-10-16', 5, 'Submitted'),
(217, 111, 'Do Nothing', '2020-11-04', '2020-11-23', 8, 'Submitted'),
(218, 105, 'Tesla Model X', '2020-11-19', '2020-11-19', 10, 'Submitted'),
(219, 101, 'PHP', '2020-09-16', '0000-00-00', 0, 'Due'),
(220, 110, 'Data Analysis', '2020-11-01', '2020-11-25', 8, 'Submitted'),
(221, 110, 'Data Analysis', '2020-10-14', '2020-11-18', 7, 'Submitted'),
(222, 103, 'Statistical', '2020-09-22', '2020-11-17', 6, 'Submitted'),
(223, 108, 'Software Scema', '2020-10-28', '2020-11-30', 3, 'Submitted'),
(224, 107, 'Security Check', '2020-07-08', '2020-11-12', 9, 'Submitted'),
(225, 109, 'ML', '2020-10-14', '2020-10-31', 6, 'Submitted'),
(226, 101, 'Database', '2020-11-20', '0000-00-00', 0, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 10),
(102, 0),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 9),
(108, 3),
(109, 6),
(110, 15),
(111, 8);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 55000, 10, 60500),
(102, 16500, 0, 16500),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 9, 83930),
(108, 50000, 3, 51500),
(109, 85000, 6, 90100),
(110, 47000, 15, 54050),
(111, 45000, 8, 48600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
