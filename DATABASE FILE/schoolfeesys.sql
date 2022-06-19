-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 09:25 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolfeesys`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees_transaction`
--

CREATE TABLE `fees_transaction` (
  `id` int(255) NOT NULL,
  `stdid` varchar(255) NOT NULL,
  `paid` int(255) NOT NULL,
  `submitdate` datetime NOT NULL,
  `transcation_remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_transaction`
--

INSERT INTO `fees_transaction` (`id`, `stdid`, `paid`, `submitdate`, `transcation_remark`) VALUES
(6, '5', 1500, '2018-06-02 00:00:00', 'DEMO'),
(11, '10', 2500, '2021-01-14 00:00:00', 'advance payment received'),
(12, '11', 2100, '2021-03-26 00:00:00', 'Advance payment done!'),
(13, '12', 3000, '2019-10-11 00:00:00', 'advance received'),
(14, '13', 1000, '2021-04-01 00:00:00', 'advance received'),
(15, '14', 2500, '2021-04-01 00:00:00', 'advance fee received first of month'),
(16, '15', 2100, '2018-04-01 00:00:00', 'advance fee received march'),
(17, '16', 2900, '2019-04-06 00:00:00', 'received during enrollment'),
(18, '17', 3500, '2021-04-18 00:00:00', 'received on apr 18'),
(19, '18', 500, '2021-01-03 00:00:00', 'none'),
(20, '19', 4900, '2015-02-20 00:00:00', 'none'),
(21, '20', 0, '2021-04-01 00:00:00', 'none'),
(22, '21', 2000, '2021-04-04 00:00:00', 'none'),
(23, '22', 0, '2021-02-21 00:00:00', 'none'),
(24, '23', 5000, '2021-04-04 00:00:00', 'none'),
(25, '24', 3900, '2021-03-29 00:00:00', 'advance payment received on march'),
(26, '24', 3100, '2021-04-21 00:00:00', 'fees cleared up!'),
(27, '22', 4900, '2021-04-23 00:00:00', 'all clear'),
(28, '24', 900, '2021-04-23 00:00:00', 'cleared up remainings');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade`, `detail`, `delete_status`) VALUES
(1, '1st Grade', 'This is a demo text', '0'),
(2, '2nd Grade', 'This is a demo text', '0'),
(3, '3rd Grade', 'This is a demo text', '0'),
(4, '4th Grade', 'This is a demo text', '0'),
(5, '5th Grade', 'This is a demo text', '0'),
(6, '6th Grade', 'This is a demo text', '0'),
(7, '7th Grade', 'This is a demo text', '0'),
(8, '8th Grade', 'This is a demo text', '0'),
(9, 'Freshman/9th Grade', 'This is a demo text', '0'),
(10, 'Sophomore/10th Grade', 'This is a demo text', '0'),
(11, 'Junior/11th Grade', 'This is a demo text', '0'),
(12, 'Senior/12th Grade', 'This is a demo text', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `about` text NOT NULL,
  `contact` varchar(255) NOT NULL,
  `fees` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `emailid`, `sname`, `joindate`, `about`, `contact`, `fees`, `grade`, `balance`, `delete_status`) VALUES
(5, 'christinemoore@gmail.com', 'Christine Moore', '2020-02-14 00:00:00', 'Demo About Text', '7566969650', 3660, '11', 2160, '0'),
(10, 'leomaxwell@gmail.com', 'Leo Maxwell', '2021-01-14 00:00:00', 'new enrollment', '7563690002', 5120, '8', 2620, '0'),
(11, 'arandrew@gmail.com', 'Andrew Arnette', '2021-03-26 00:00:00', 'new enrollment', '3520120006', 5200, '12', 3100, '0'),
(12, 'jonathan@gmail.com', 'Jonathan Odell', '2019-10-11 00:00:00', 'old enrollment', '4230001205', 6900, '8', 3900, '0'),
(13, 'benjamin@gmail.com', 'Benjamin L Russell', '2021-04-01 00:00:00', 'new enroll', '9012568500', 3600, '3', 2600, '0'),
(14, 'kathrynmc@gmail.com', 'Kathryn McKeehan', '2021-04-01 00:00:00', 'new student from centrol branch', '9751250006', 5000, '10', 2500, '0'),
(15, 'davidandersn@gmail.com', 'David Anderson', '2018-04-01 00:00:00', 'std from woodcreek branch', '7412036660', 7900, '7', 5800, '0'),
(16, 'joannnt@gmail.com', 'Joann TSaylor', '2019-04-06 00:00:00', 'std from riverview branch', '9031480360', 6100, '12', 3200, '0'),
(17, 'kevinrogers@gmail.com', 'Kevin Rogers', '2021-04-18 00:00:00', 'fresh enrollment', '9031476969', 5500, '11', 2000, '0'),
(18, 'chavez.ly@gmail.com', 'Lyle Chavez', '2021-01-03 00:00:00', 'central student', '8520696976', 3600, '3', 3100, '0'),
(20, 'none@dem.com', 'Demo', '2021-04-01 00:00:00', 'none', '785555555', 0, '1', 0, '1'),
(21, 'marcellak@gmail.com', 'Marcella Keyes', '2021-04-04 00:00:00', 'fresh enrollment', '7456000020', 4900, '6', 2900, '0'),
(22, 'george@gmail.com', 'George Russell', '2021-02-21 00:00:00', 'none', '2004568500', 4900, '5', 0, '0'),
(23, 'willwilliams55@gmail.com', 'Will Williams', '2021-04-04 00:00:00', 'none', '8521245000', 12000, '11', 7000, '0'),
(24, 'staceyellsw@gmail.com', 'Stacey Ellsworth', '2021-03-29 00:00:00', 'new enrollment', '6570002549', 7900, '10', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `emailid`, `lastlogin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@gmail.com', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees_transaction`
--
ALTER TABLE `fees_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees_transaction`
--
ALTER TABLE `fees_transaction`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
