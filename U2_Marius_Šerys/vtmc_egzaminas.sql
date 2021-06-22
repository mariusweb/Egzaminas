-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 01:39 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtmc_egzaminas`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentarai`
--

CREATE TABLE `komentarai` (
  `id` bigint(20) NOT NULL,
  `kursai_id` bigint(20) NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;

--
-- Dumping data for table `komentarai`
--

INSERT INTO `komentarai` (`id`, `kursai_id`, `comment`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),
(2, 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),
(3, 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),
(4, 4, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia '),
(5, 5, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia ');

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `lastname` varchar(40) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `small_description` varchar(200) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_lithuanian_ci DEFAULT NULL,
  `popular` bigint(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;

--
-- Dumping data for table `kursai`
--

INSERT INTO `kursai` (`id`, `name`, `lastname`, `title`, `created_at`, `small_description`, `description`, `image`, `popular`, `price`) VALUES
(1, 'Tomas', 'Tomaitis', 'PHP Pagrindai', '2021-06-22 09:49:21', 'Cia kazkas paprasto', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!', 'images/php.jpg', 7, 1.3),
(2, 'Juste', 'Justina', 'HTML/CSS Įvadas', '2021-06-22 09:49:21', 'Visai lengvai.', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!', 'images/css.jpg', 7, 1.3),
(3, 'Vaclov', 'Vaclovas', 'Pažintis Su GIT', '2021-06-22 09:49:21', 'Perprantama', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!', 'images/git.jpg', 5, 1.2),
(4, 'Marius', 'Maraitis', 'Javascript Žemėlapis', '2021-06-22 09:49:21', 'Paskui atrodis lengva', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!', 'images/js.jpg', 9, 1.1),
(5, 'Goda', 'Godyte', 'Viskas Sudėta', '2021-06-22 09:49:21', 'Viska išmoksi', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.\r\n                Deleniti minus animi, earum eos quo cumque numquam impedit ut?\r\n                Quia dolor possimus aliquam ea natus dolore itaque ad unde quas\r\n                libero!', 'images/logo.png', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) NOT NULL,
  `kursai_id` bigint(20) NOT NULL,
  `rating` int(1) NOT NULL DEFAULT 0 CHECK (`rating` between 0 and 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `kursai_id`, `rating`) VALUES
(1, 1, 1),
(2, 2, 5),
(3, 3, 3),
(4, 4, 2),
(5, 5, 1),
(6, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentarai`
--
ALTER TABLE `komentarai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentarai_fk0` (`kursai_id`);

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_fk0` (`kursai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentarai`
--
ALTER TABLE `komentarai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentarai`
--
ALTER TABLE `komentarai`
  ADD CONSTRAINT `komentarai_fk0` FOREIGN KEY (`kursai_id`) REFERENCES `kursai` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_fk0` FOREIGN KEY (`kursai_id`) REFERENCES `kursai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
