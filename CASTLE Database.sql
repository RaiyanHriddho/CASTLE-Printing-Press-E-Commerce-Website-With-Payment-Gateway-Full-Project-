-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 06:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `castle`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `feel` text NOT NULL,
  `size` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `filepath` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `dob` date NOT NULL,
  `email` text NOT NULL,
  `phone_num` text NOT NULL,
  `gender` text NOT NULL,
  `usertype` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Id`, `firstname`, `lastname`, `dob`, `email`, `phone_num`, `gender`, `usertype`, `password`) VALUES
(1, 'Safa', 'Ahmed', '2023-10-03', 'safa.ahmed@gmail.com', '01811857743', 'Female', 'vendor', 'c2def8f053556fcb3ae3ea9716731d0a'),
(2, 'Israt', 'Jahan', '2023-10-11', 'israt.jahan@gmail.com', '01899992223', 'Female', 'customer', 'c2def8f053556fcb3ae3ea9716731d0a'),
(3, 'Mohammed', 'Sidique', '2023-10-20', 'mohammed.sidique@gmail.com', '01894446223', 'Other', 'admin', 'c2def8f053556fcb3ae3ea9716731d0a'),
(4, 'Ali', 'Bulbul', '2023-10-18', 'ali.bulbul@gmail.com', '018940002235', 'Male', 'vendor', 'c2def8f053556fcb3ae3ea9716731d0a'),
(6, 'Sarfaraz', 'Islam', '2023-10-25', 'sarfaraz@gmail.com', '01811857743', 'Male', 'customer', 'c2def8f053556fcb3ae3ea9716731d0a'),
(7, 'Muhtasim', 'An-Nafi', '1998-03-10', 'muhtasim.nafi@gmail.com', '01811857743', 'Male', 'customer', 'c2def8f053556fcb3ae3ea9716731d0a'),
(0, 'Raiyan', 'Hriddho', '2023-01-12', 'raiyanh992@gmail.com', '01749282192', 'Male', 'vendor', 'fcea920f7412b5da7be0cf42b8c93759'),
(0, 'Humayun', 'Kabir', '2023-10-05', 'raiyanh992@gmail.com', '01749282192', 'Male', 'customer', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_requests`
--

CREATE TABLE `vendor_requests` (
  `Company_Name` varchar(255) DEFAULT NULL,
  `Item_Sold` varchar(255) DEFAULT NULL,
  `Item_Type` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_requests`
--

INSERT INTO `vendor_requests` (`Company_Name`, `Item_Sold`, `Item_Type`, `Quantity`, `Price`, `Status`) VALUES
('abcompany', 'Paper', 'A4', 1000, 5000, 'Approved'),
('Christina\'s Cardboards', 'BackCover', 'A2', 60000, 8000, 'Approved'),
('Gaylico commercial Inks', 'Ink', 'Black', 60000, 8000, 'Pending'),
('abcompany', 'Ink', 'Black', 500, 5000, 'Approved'),
('PagesIntel', 'Ink', 'Pages', 3, 5000, 'Pending'),
('PagesIntel', 'Ink', 'Pages', 3, 5000, 'Pending'),
('Tanzim inc', 'Paper', 'A3', 1000, 5000, 'Pending'),
('Safa Limited', 'Paper', 'A5', 200, 10000, 'Pending'),
('abcompany', 'BackCover', 'Hard', 100, 20000, 'Pending'),
('abcompany', 'Paper', 'A7', 5, 5000, 'Pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
