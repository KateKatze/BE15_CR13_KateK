-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 06:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr13_bigeventskatek`
--
CREATE DATABASE IF NOT EXISTS `be15_cr13_bigeventskatek` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr13_bigeventskatek`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220408204251', '2022-04-08 22:43:01', 324);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `time`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `eventtype`) VALUES
(1, 'Marathon \"Me & My Dog\"', '2022-04-30 12:00:00', 'Hey there, cool runner! We are waiting for you to take a part in our marathon. We are running in Vienna at 12:00 and do not forget to take your doggo with you! See you there! P.S.: for every pet we prepared treats.', 'https://avatars.mds.yandex.net/i?id=2a00000179ef73b04cd8cc4dc2c3b18a875d-3739799-images-thumbs&n=13&exp=1', 350, 'run@marathon.com', 21365789, 'Runstrasse 1, Vienna 1010', 'https://pixabay.com/de/images/search/runner%20dog/', 'Sport'),
(2, '\"Hamlet\"', '2022-04-10 18:00:00', '‘To be or not to be…’Hamlet’s dad is dead. His uncle has taken over the kingdom and married Hamlet’s mum. The whole world feels like it’s turned upside down. A ghostly encounter reveals a dreadful deed has been done.', 'https://cdn.pixabay.com/photo/2016/03/06/14/08/girl-1240441__480.jpg', 350, 'hamlet@theater.com', 987654321, 'Theaterstrasse 12, Vienna 1011', 'https://pixabay.com/de/images/search/hamlet/', 'Theatre'),
(3, '\"Morbius\"', '2022-04-09 20:00:00', 'Morbius is a 2022 American superhero film based on the Marvel Comics character of the same name, produced by Columbia Pictures in association with Marvel. Distributed by Sony Pictures Releasing.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7Q9NjE9AvfzIiRcpE0PrnyyoVhDxuElLH87OIBzXoqMZPKTaRVr34DNI0DrAT3jXA40&usqp=CAU', 100, 'movie@vienna.com', 127845369, 'Filmstrasse 2, Vienna 1001', 'https://en.wikipedia.org/wiki/Morbius_(film)', 'Movie'),
(4, '\"Jazz in Vienna\"', '2022-04-25 20:00:00', 'Traditional meeting at Sunday evening in our Jazz house to enjoy some drinks and good old jazz music. Reserve the table by email or you can just call us. Unlimited drinks incl. in price 35€. We are waiting for you!', 'https://cdn.pixabay.com/photo/2018/03/06/06/58/performance-3202707__340.jpg', 60, 'jazz@vienna.com', 918273645, 'Jazzstrasse 20, Vienna 1002', 'https://pixabay.com/de/images/search/jazz/', 'Music'),
(5, 'Sunday Joga in Schloss Schoenbrunn', '2022-04-10 10:00:00', 'Do you want to start a day with a good mood and stretch yourself a bit? Welcome to our sunday yoga lessons in Schloss Schoenbrunn! Don´t forget your comfy sporty clothes and yoga mat! Namaste!', 'https://cdn.pixabay.com/photo/2016/06/01/10/44/women-1428773__340.jpg', 50, 'yoga@vienna.com', 74563891, 'Schoenbrunn 1, Vienna 1003', 'https://pixabay.com/de/images/search/yoga%20park/', 'Sport'),
(6, '\"The Four Seasons\"', '2022-04-30 19:00:00', 'The Four Seasons is a ballet choreographed by New York City Ballet ballet master Jerome Robbins to excerpts from Giuseppe Verdi\'s I Vespri Siciliani (1855), I Lombardi (1843), and Il Trovatore (1853).', 'https://cdn.pixabay.com/photo/2016/05/06/17/06/ballerinas-1376250__340.jpg', 450, 'oper@vienna.com', 445628150, 'Oper 1, Vienna 1015', 'https://en.wikipedia.org/wiki/The_Four_Seasons_(ballet)', 'Theatre'),
(7, '\"Fantastic Beasts: The Secrets of Dumbledore\"', '2022-04-11 19:30:00', 'Fantastic Beasts: The Secrets of Dumbledore is a 2022 fantasy film directed by David Yates from a screenplay by J. K. Rowling and Steve Kloves. It is the sequel to Fantastic Beasts.', 'https://avatars.mds.yandex.net/i?id=cde8d00ab6da294a9ad1cf7351670536-4353206-images-thumbs&n=13&exp=1', 150, 'kino@vienna.com', 32436462, 'Kinostrasse 10, Vienna 1022', 'https://en.wikipedia.org/wiki/Fantastic_Beasts:_The_Secrets_of_Dumbledore', 'Movie'),
(8, '\"Havana Rhymes\"', '2022-04-17 22:00:00', 'Dancing with Havana Rhymes all Saturday night! Take yourself and your friends and have a nice party. Dress up in Havana style and enjoy drinks in our bar ;) Reserving tables by email (in the contacts)', 'https://avatars.mds.yandex.net/i?id=88a6bfe8c693450794f82b29a808418f-4080712-images-thumbs&n=13&exp=1', 50, 'tanzen@vienna.com', 272773631, 'Tanzenstrasse 23, Vienna 1018', 'https://pixabay.com/de/images/search/salsa%20dance/', 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
