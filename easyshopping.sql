-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 07:59 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easyshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` varchar(255) NOT NULL,
  `namabarang` varchar(255) DEFAULT NULL,
  `stok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `namabarang`, `stok`) VALUES
('1', 'Adidas NMB', '5'),
('2', 'Vans Old School', '4'),
('3', 'Vans Authentic', '8'),
('4', 'Adidas Sport', '3'),
('5', 'Vans GO', '9');

-- --------------------------------------------------------

--
-- Table structure for table `gdp`
--

CREATE TABLE `gdp` (
  `id_reg` int(11) NOT NULL,
  `ipk` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `portfolio` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(3),
(3),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `full_name`, `password`) VALUES
(1, 'admin@gmail.com', 'admin', '$2a$10$5qftETT6M.UjH8SR0EcAJeBwaZOA3ECqrT0fqjcQjbFfJAhekzqK.');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`user_id`, `role_id`) VALUES
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gdp`
--
ALTER TABLE `gdp`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD KEY `FK3qjq7qsiigxa82jgk0i0wuq3g` (`role_id`),
  ADD KEY `FK70yokprcxt79v4p7a5y42obhx` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_role`
--
ALTER TABLE `users_role`
  ADD CONSTRAINT `FK3qjq7qsiigxa82jgk0i0wuq3g` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FK70yokprcxt79v4p7a5y42obhx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
