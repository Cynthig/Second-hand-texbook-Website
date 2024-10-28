-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 29, 2022 at 07:32 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 1, 'cynthia', 'cynthiacleopatra03@gmail.com', '0768515088', 'how does your website work?'),
(3, 1, 'cynthia', 'cynthiacleopatra03@gmail.com', '0768515088', 'im having difivculties on using the website');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_products` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(6, 1, 'cynthia', '0768515088', 'cynthiacleopatra03@gmail.com', 'cash on delivery', 'flat no. 16, 72, pretoria, SOUTH AFRICA - 002', ', BASIC ACCOUNTING (1) , BUSINESS STUDIES (1) ', '355', '29-Jun-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(2, 'AUDIOLOGY', '110', 'AUDIOLOGY.jpg'),
(3, 'BASIC ACCOUNTING', '105', 'BASIC ACCOUNTING.jpg'),
(4, 'BUSINESS MANAGEMENT', '200', 'BUSINESS MANAGEMENT.jpg'),
(5, 'BUSINESS STUDIES', '250', 'BUSINESS STUDIES.jpg'),
(6, 'EXPLORING SCIENCE', '130', 'EXPLORING SCIENCE.jpg'),
(7, 'INTERNATIONAL ECONOMICS', '305', 'INTERNATIONAL ECONOMICS.jpg'),
(8, 'MATHEMETICAL ECONOMICS', '189', 'MATHEMETICAL ECONOMICS.jpg'),
(9, 'PRINCIPLES OF COMPUTER PROGRAMMING', '249', 'Principles of Computer Programming.jpg'),
(10, 'SYSTEMS PROGRAMMING AND OPARATING SYSTEMS', '299', 'SYSTEMS PROGRAMMING and OPERATING SYSTEMS.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'cynthia', 'cynthiacleopatra03@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(2, 'selly', 'selly@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(3, 'cleopatra', 'phathutshedzosibara@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
