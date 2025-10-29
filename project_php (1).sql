-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2025 at 11:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `name`, `email`, `pass`) VALUES
(1, 'admin', 'admin@gmail.com', 'Hello@1u');

-- --------------------------------------------------------

--
-- Table structure for table `catagory_master`
--

CREATE TABLE `catagory_master` (
  `cid` int(11) NOT NULL,
  `cname` varchar(25) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory_master`
--

INSERT INTO `catagory_master` (`cid`, `cname`, `photo`, `status`) VALUES
(1, 'Protein-Powders', 'ProteinPowders.jpg', 0),
(2, 'Gym-Equipment', 'GymEquipment.jpg', 0),
(3, 'Gym-Apparel', 'GymApparel.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `mid` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `uphone` varchar(10) NOT NULL,
  `mplan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`mid`, `uname`, `uemail`, `uphone`, `mplan`) VALUES
(1, 'harshit', 'harshit@gmail.com', '987456321', 'Basic');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pdesc` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` double NOT NULL,
  `pdate` date NOT NULL,
  `photo` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`pid`, `cid`, `pname`, `pdesc`, `qty`, `rate`, `pdate`, `photo`, `status`) VALUES
(1, 2, 'Barbells & Weight Plates', 'Strong cast iron Olympic plates for strength training, ideal for home gyms, durable design ensures safe.', 10, 6000, '2025-08-15', 'abcd.jpg', 0),
(2, 1, 'The CLEAR pre-workout', 'Pre-workout is a generic term for a range of bodybuilding supplement productsused by athletes.', 7, 5000, '2025-08-15', 'The-CLEAR-pre-workout.jpg', 0),
(3, 2, 'Elliptical', 'Elliptical trainer offers low-impact cardio exercise, burns calories, strengthens muscles, improves stamina.', 10, 15000, '2025-08-15', 'Elliptical.jpg', 0),
(4, 1, 'Protein-Chocolate', 'Rich chocolate protein powder supports muscle growth, strength recovery, and nutrition needs, making it perfect for daily post-workout supplementation.', 5, 1000, '2025-08-15', 'Protein-Chocolate.jpg', 0),
(5, 3, 'Gym Clothing Kit', 'Stylish, breathable gym apparel set designed for comfort, flexibility, and durability, ensuring peak performance during intense workouts and training.', 6, 1500, '2025-08-15', 'GymClothingKit.jpg', 0),
(6, 3, 'Gym Shoes', 'Lightweight, cushioned shoes provide maximum comfort, grip, and stability, making them perfect for running, training, and everyday gym sessions.', 8, 750, '2025-08-15', 'GymShoes.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `rid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pnumber` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`rid`, `username`, `email`, `pnumber`, `password`, `gender`, `status`) VALUES
(1, 'harshit', 'harshit@gmail.com', '987456321', 'harshit123', 'Male', 0),
(2, 'krish', 'krish123@gmail.com', '856974123', 'krish123', 'Male', 0),
(3, 'hemil', 'hemil1212@gmail.com', '784596321', 'hemil000', 'Male', 0),
(4, 'kishan', 'ks@gmail.com', '8574693021', 'ks123', 'Male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainer_master`
--

CREATE TABLE `trainer_master` (
  `tid` int(11) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tdesc` varchar(100) NOT NULL,
  `trole` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer_master`
--

INSERT INTO `trainer_master` (`tid`, `tname`, `tdesc`, `trole`, `photo`) VALUES
(1, 'Patrick Cortez', 'non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. ', 'Leader', 'about-trainer-1.jpg'),
(2, 'Gregory Powers', 'non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Gym coach', 'about-trainer-2.jpg'),
(3, 'Walter Wagner', 'non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Dance trainer', 'about-trainer-3.jpg'),
(4, 'Ava Megan', 'non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Yoga specialist', 'trainer-4.jpg'),
(5, 'Oliver Jake', 'non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat\r\n                 ', 'Athletic trainer', 'trainer-5.jpg'),
(6, 'Emily Elizabeth', 'non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat\r\n                 ', 'Sports coach', 'trainer-6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory_master`
--
ALTER TABLE `catagory_master`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `trainer_master`
--
ALTER TABLE `trainer_master`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catagory_master`
--
ALTER TABLE `catagory_master`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainer_master`
--
ALTER TABLE `trainer_master`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_master`
--
ALTER TABLE `product_master`
  ADD CONSTRAINT `product_master_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `catagory_master` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
