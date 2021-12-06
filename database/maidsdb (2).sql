-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 04:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maidsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `bid` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(30) NOT NULL,
  `experience` varchar(11) NOT NULL,
  `id_number` varchar(16) NOT NULL,
  `work_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `empid` int(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`empid`, `fullname`, `email`, `username`, `password`) VALUES
(1, 'david kwizera', 'david@gmail.com', 'david', 'david'),
(4, 'Muvunyi Patrick', 'Muvunyi@gmail.com', 'MuvPaul', 'm12345');

-- --------------------------------------------------------

--
-- Table structure for table `maids`
--

CREATE TABLE `maids` (
  `mid` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(30) NOT NULL,
  `experience` varchar(11) NOT NULL,
  `id_number` varchar(16) NOT NULL,
  `work_type` varchar(30) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maids`
--

INSERT INTO `maids` (`mid`, `fullname`, `telephone`, `username`, `password`, `address`, `experience`, `id_number`, `work_type`, `status`) VALUES
(33, 'mugabo', '0786534256', 'mugabo', 'mugabo', 'Muhanga', '4', '1199867245627562', 'carwashing', 'Not Booked'),
(34, 'ishimwe ange', '0789634526', 'ange', 'ange', 'Kigali', '3', '1200678563452645', 'cook', 'Not Booked'),
(36, 'aline Mugisha', '0784546664', 'aline', 'aline', 'Musanze', 'More than 5', '243546576768', 'cleaning', 'Not Booked'),
(37, 'sano aime', '5465776', 'sano', 'sano', 'Musanze', '2', '1135465767', 'gardener', 'Not Booked'),
(41, 'muhizi alain', '0787645346', 'alain', 'alain', 'Gatsibo', '4', '1322432346577', 'cleaning', 'Not Booked'),
(42, 'Didier Iranzi', '07856542', 'didier', '12345', 'Kigali', '2', '122565768755', 'cook', 'Not Booked'),
(43, 'ineza clara', '078067345', 'clara', '55555', 'Rubavu', '2', '1999453322111', 'gardener', 'Not Booked'),
(44, 'John Peter', '078534756', 'john', '', 'Nyabihu', '3', '12200005678', 'carwashing', 'Not Booked'),
(45, 'Claude biggy', '0787997363', 'biggy', '55555', 'Nyarugenge', '4', '134566576767', 'cleaning', 'Not Booked'),
(46, 'Jeanette ', '0786745536', 'jeant', '3333', 'Rulindo', '4', '1999784456433', 'gardener', 'Not Booked'),
(47, 'Uwamahoro solange', '078956354', 'Soso', '435555', 'Nyaruguru', 'More than 5', '1200078456222', 'gardener', 'Not Booked'),
(48, 'Mugabo Joe', '0785363343', 'Joe', 'joe', 'Nyamagabe', '3', '1985443333222', 'gardener', 'Not Booked'),
(49, 'Djimmy Jack', '07867435', 'dj', 'dj1', 'Ngororero', '2', '12000678456', 'cook', 'Not Booked'),
(50, 'Ntwali Master', '0786536322', 'ntwali', 'ntwali56', 'Huye', '4', '18956654363636', 'cook', 'Not Booked'),
(51, 'Cedrick Bugingo', '078545443', 'Ceddy', 'cedyyyy', 'Gasabo', 'More than 5', '120007856443', 'carwashing', 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'Kwizera David', 'admin', 'admin'),
(18, 'Mugabo James', 'admin3', 'admin3'),
(21, 'Mukarugendo Dyna', 'dinnah', 'dinnah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `maids`
--
ALTER TABLE `maids`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `empid` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maids`
--
ALTER TABLE `maids`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
