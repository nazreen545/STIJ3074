-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 09:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `email` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `otp` varchar(4) NOT NULL,
  `date_reg` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`email`, `phone`, `name`, `password`, `otp`, `date_reg`) VALUES
('nazreen545@gmail.com', '0127573618', 'Mohd Nazreen', 'abc12345', '1', '2021-07-09 04:07:51.135245'),
('nazreen9798@gmail.com', '012647245581', 'Mohd Nazreen Mukim', '701b389b848a2b1cfab867093101d8d5ac56addd', '5786', '2021-07-09 04:28:23.485996');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `email` varchar(50) NOT NULL,
  `prid` varchar(10) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`email`, `prid`, `qty`) VALUES
('null', '23', 2),
('null', '14', 2),
('null', '18', 1),
('nazreen545@gmail.com', '22', 2),
('nazreen545@gmail.com', '20', 1),
('nazreen545@gmail.com', '17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(4) NOT NULL,
  `prname` varchar(50) NOT NULL,
  `prtype` varchar(50) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(10) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`) VALUES
(5, 'Flower Iris', 'flower', 20, 6, '2021-06-10 14:52:28', '60c1b6ac92722.png'),
(7, 'Gift Box Special A', 'special', 40, 6, '2021-06-10 18:44:03', '60c1ecf3b035c.png'),
(8, 'Mini Bear ', 'special', 5, 10, '2021-06-10 18:45:20', '60c1ed4087686.png'),
(9, 'Bouquet kitKat', 'bouquet', 50, 6, '2021-06-10 18:52:38', '60c1eef6b1afc.png'),
(13, 'Gift Box Set A', 'giftbox', 15, 3, '2021-06-10 19:09:35', '60c1f2ef48f92.png'),
(14, 'Combo Gift Box ', 'combo', 20, 2, '2021-06-10 19:10:48', '60c1f33877b89.png'),
(15, 'Gift Box Set B', 'giftbox', 15, 3, '2021-06-10 19:11:50', '60c1f37687e05.png'),
(16, 'Bouquet Ballon', 'bouquet', 60, 2, '2021-06-10 19:12:54', '60c1f3b6365e0.png'),
(17, 'Gift Box Set B', 'giftbox', 15, 3, '2021-06-10 19:13:46', '60c1f3ea825da.png'),
(18, 'Bouquet Set P', 'bouquet', 60, 2, '2021-06-10 19:15:11', '60c1f43f8a9ef.png'),
(19, 'Special Gift Box Set B', 'giftbox', 15, 2, '2021-06-10 20:08:28', '60c200bc99c9b.png'),
(20, 'Gift Box Set C', 'giftbox', 15, 2, '2021-06-10 20:14:10', '60c20212b8ea1.png'),
(22, 'Gift Box Set D', 'giftbox', 15, 4, '2021-06-10 22:32:28', '60c2227ce22b5.png'),
(23, 'Gift Box Set E', 'giftbox', 15, 6, '2021-06-10 22:59:42', '60c228de56765.png'),
(25, 'Flower Green L', 'flower', 35, 2, '2021-07-09 12:53:03', '60e7d62fca5d7.png'),
(26, 'Gift Box Set H', 'combo', 15, 3, '2021-07-10 03:13:49', '60e89fede1512.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased`
--

CREATE TABLE `tbl_purchased` (
  `id` int(10) NOT NULL,
  `orderid` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` int(40) NOT NULL,
  `otp` varchar(4) NOT NULL,
  `date_reg` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `phone`, `name`, `password`, `otp`, `date_reg`) VALUES
('ahmad@gmail.com', '01172432', 'ahmad', 6367, '8673', '2021-06-08 17:13:59.339105'),
('ali88@gmail.com', '0103618634', 'Ahmad Ali', 6367, '3217', '2021-04-28 14:40:59.190084'),
('maisarah67@gmail.com', '01036183258', 'Siti Maisarah', 6367, '9976', '2021-04-28 14:58:47.793488'),
('nazreen545@gmail.com', '0103614857', 'Mohd Nazreen ', 6367, '1', '2021-04-27 17:07:57.096555'),
('nazreen9798@gmail.com', '0103614765', 'Nazreen', 6367, '3291', '2021-06-09 16:47:12.913962'),
('nizam555@gmail.com', '012775667', 'Mohd Nizam', 6367, '3805', '2021-04-28 09:12:18.107822');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `tbl_purchased`
--
ALTER TABLE `tbl_purchased`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_purchased`
--
ALTER TABLE `tbl_purchased`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
