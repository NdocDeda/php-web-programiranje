-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 06:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`id`, `firstname`, `lastname`, `email`, `subject`, `time`) VALUES
(3, 'Ndoc', 'Deda', 'ndeda@ndeda.com', 'Ovo je bas super stranica.', '2021-01-06 10:57:51'),
(6, 'Ivan', 'Horvat', 'ivan.horvat@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-01-06 14:30:06'),
(7, 'Ana', 'Anic', 'ana@vvg.hr', 'Trebala bih broj telefona na koji vas mogu kontakitrati.', '2021-01-06 14:30:46'),
(8, 'John', 'Smith', 'jsmith@gmail.com', 'Poštovani,\r\nmolim za administratorski pristup stranici.\r\n\r\nPozdrav', '2021-01-06 14:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `username`, `ime`, `prezime`, `lozinka`, `admin`) VALUES
(14, 'admin', 'Ndoc', 'Deda', '$2y$10$BftV.dt/58djURv4vBG4JexNbcnlfMmgVwjuxltcQI4JDSvCFBAVu', 1),
(15, 'jsmith', 'John', 'Smith', '$2y$10$90mmSprdjOecjeZm3.BpBOx4ag1M/udlDfYRbgw3wSwhoTSIPF7Em', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sesije`
--

CREATE TABLE `sesije` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sesije`
--

INSERT INTO `sesije` (`id`, `user_id`, `token`, `created_at`, `updated_at`, `active`) VALUES
(6, 1, 'a503742023b7ff02af93d621bd3536f10351a1ba', '2020-12-12 11:10:59', '2020-12-12 11:10:59', 1),
(7, 1, '5498309979317793fdf64128bdff0c192d0a6a15', '2020-12-12 11:11:04', '2020-12-12 11:11:04', 1),
(8, 1, 'e87fb8f444551b476c1a7a4290ca626fb7fac98c', '2020-12-12 11:12:16', '2020-12-12 11:12:16', 1),
(9, 1, 'acb1f453fe534cd067e77072d9f175e612c663b6', '2020-12-12 12:48:55', '2020-12-12 12:48:55', 1),
(10, 1, '0d243c0968ae7158478d29049226ea8a2198ae59', '2020-12-12 12:49:33', '2020-12-12 12:49:33', 1),
(11, 1, '8a06954703b1347e84b5053a9b4a2e93537a6315', '2020-12-12 12:49:53', '2020-12-12 12:49:53', 0),
(12, 1, '726ae6d7f24e026a189d1f671c7727df015f3748', '2020-12-12 12:59:16', '2020-12-12 12:59:16', 0),
(13, 1, '43e8b8f24762fc09e454de33293f8ef1bc3892c6', '2020-12-12 13:01:33', '2020-12-12 13:22:50', 0),
(14, 1, '962a482beeeb73d5022f11cb47244d7f83685961', '2020-12-12 13:24:44', '2020-12-12 13:41:36', 0),
(15, 1, 'a86c364e9cb0016790e61728c74953cf2fa6d6cc', '2020-12-12 13:50:44', '2020-12-12 13:54:58', 0),
(16, 1, '1c43b3a5ad407c4bae854abae4e0433cfdd364cf', '2020-12-12 13:55:26', '2020-12-12 13:55:26', 0),
(17, 1, 'af2bb1f265f669dd540ff768d2c107ba65417703', '2020-12-12 13:55:40', '2020-12-12 13:57:48', 1),
(18, 1, '71002c422bbc5ca0dad4b8d5df1ed53074812d4e', '2020-12-12 17:35:25', '2020-12-12 17:39:25', 0),
(19, 1, '9b1936a3b7b1833deaf244f2416167181c622dfa', '2020-12-12 17:39:55', '2020-12-12 17:44:19', 0),
(20, 5, '6a0b0aa572374fe3d970a557d6d0d42a80b0acc3', '2020-12-12 18:25:16', '2020-12-12 18:25:23', 0),
(21, 7, '6371e8e00de3fb3e4e089683caf1839659abd39c', '2020-12-12 18:32:34', '2020-12-12 18:32:34', 0),
(22, 8, '3458196fd5eb80b33ff00c1e30edab06356ab2bc', '2020-12-12 18:34:53', '2020-12-12 18:35:01', 0),
(23, 8, '967e54b5295f6ce75e01241d2930f0de7d1a2036', '2020-12-12 18:35:09', '2020-12-12 18:35:09', 0),
(24, 9, '968ea139e681252ff00580b2e3fcf9f5cd366161', '2020-12-12 18:37:54', '2020-12-12 18:37:54', 0),
(25, 10, 'c67e75d407f94fefc0c3fcd516c99cd98085d2b0', '2020-12-12 18:38:10', '2020-12-12 18:38:10', 0),
(26, 11, '654d92185e134cf154750262508b4c201472e358', '2020-12-12 18:39:05', '2020-12-12 18:39:05', 0),
(27, 12, 'c62b16bac969faffc9e76fde98e1975e781ff620', '2020-12-12 18:41:47', '2020-12-12 18:41:47', 0),
(28, 12, '5ac1b23bff4906f9c23f6d8a67fcbbf2a5a62942', '2020-12-12 18:42:13', '2020-12-12 18:42:13', 0),
(29, 13, 'd7936d4b83945254bb3108b6154dc87b7c1ff470', '2020-12-12 18:44:59', '2020-12-12 18:44:59', 0),
(30, 13, '1febf04601bff45076d090058c2bc600d11cf55c', '2020-12-12 18:46:30', '2020-12-12 18:49:54', 0),
(31, 14, '16e52c450d993c9c9bb3b624e512ea48a7edd87e', '2021-01-06 14:22:28', '2021-01-06 14:25:27', 0),
(32, 14, 'ca4480b5356f2ce5cec4ac68c11bfeaeef6f11bd', '2021-01-06 14:32:14', '2021-01-06 14:55:29', 0),
(33, 14, 'afc94e53cf73f52b4d1a131b7891a81c72e8ffd7', '2021-01-06 14:57:38', '2021-01-06 15:14:04', 0),
(34, 14, '09dace05e17617a172d0ee573d5efef569a7cfbd', '2021-01-06 15:14:47', '2021-01-06 15:32:26', 0),
(35, 15, '6089a1b6496ceb893ef054287205ca1dc64025c8', '2021-01-06 15:33:09', '2021-01-06 15:38:10', 0),
(36, 14, 'd9481ddcd62c473e78971d61fa55c886fd819028', '2021-01-06 15:38:18', '2021-01-06 15:38:45', 0),
(37, 15, 'ca1e5a5400a450271d82273ba42bf2b226fd00dc', '2021-01-06 15:38:55', '2021-01-06 15:47:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stranice`
--

CREATE TABLE `stranice` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stranice`
--

INSERT INTO `stranice` (`id`, `title`, `content`) VALUES
(1, 'Naslovnica', '<img src=\"https://pixabay.com/get/54e7d246494fad0bffd89960c62e37771c3cdce05356_1280.png\" style=\"width:200px; float: left; margin: 20px \">\r\n<p> Ovo je naslovna stranica projekta. Sadržaj naslovnice uređujemo u CMS-u. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n'),
(3, 'O projektu', '<img src=\"https://cdn.pixabay.com/photo/2017/01/31/23/42/animal-2028258_960_720.png\" style=\"width:200px; float: left; margin: 20px \">\r\n\r\n<p> Ovaj projekt je primjer stranice na koju se sadržaj postavlja iz <strong>CMS-a</strong>. Stranica je izrađena u <strong>PHP-u</strong>. Sadržaj je spremljen u <strong>MySQL</strong> bazu podataka. Projekt je završni zadatak iz kolegija <strong>PHP Web Programiranje</strong> </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p style=\"text-align:center\"><img src=\"https://repozitorij.vvg.hr/sites/repozitorij.vvg.hr/files/vvg_header_tansparent.png\" alt=\"vvg logo\" style=\"width:50%\"></p>\r\n'),
(4, 'Galerija', '<img src=\"https://cdn.pixabay.com/photo/2020/05/06/19/43/star-wars-5138941_960_720.jpg\">\r\n<img src=\"https://pixabay.com/get/53e8d2464955a514f6d1867dda3536781536d7e15354734d_1920.jpg\">\r\n<img src=\"https://pixabay.com/get/53e6d2424954a914f6d1867dda3536781536d7e15251724b_1920.jpg\">\r\n<img src=\"https://pixabay.com/get/53e8d047425bab14f6d1867dda3536781536d7e152507748_1920.jpg\">\r\n<img src=\"https://pixabay.com/get/53e8d1414f52a514f6d1867dda3536781536d7e15250784c_1920.jpg\">\r\n<img src=\"https://pixabay.com/get/52e7d5454a57ad14f6d1867dda3536781536d7e15253724f_1920.jpg\">\r\n<img src=\"https://pixabay.com/get/53e8d6424353ab14f6d1867dda3536781536d7e15253774f_1920.jpg\">');

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `naslov` varchar(250) NOT NULL,
  `slika` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `naslov`, `slika`, `text`, `created_at`, `updated_at`) VALUES
(14, 'Novi naslov', 'https://pixabay.com/get/55e7d3464d57ad14f6d1867dda3536781536d7e65b53754a_1920.jpg', '<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Novi paragraf </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>', '2021-01-06 12:33:33', '2021-01-06 14:47:17'),
(15, 'Google confirms plans for new Nest Cam lineup this year', 'https://cdn.vox-cdn.com/thumbor/Daegd_PgBVVRaHOVv6IXasTcwtM=/0x0:2040x1360/1220x813/filters:focal(782x604:1108x930):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/68626374/vpavic_180605_2644_0027.0.jpg', '<p>The Nest Cam IQ Outdoor is no longer available to buy, Google has confirmed to 9to5Google, after the site noticed that the camera was out of stock in most countries around the world. The company says, however, that “Nest will keep investing in new innovations” including a “new lineup of security cameras for 2021.” </p>\r\n<p>For now, Google still sells the $129 Nest Cam Indoor, the $299 Next Cam IQ Indoor, and the $199 Nest Cam Outdoor. The IQ models have upgraded video quality and AI-based features like face and pet recognition. Google says it will continue to support its existing Nest cameras with new features and security updates. None of the current hardware is newer than 2017, though, so an upgrade is probably overdue. </p>\r\n<p>Google didn’t provide any details on what the new Nest Cam lineup will actually include, nor when it will arrive, but it’s not necessarily surprising to see the company get ahead of the announcement. The Pixel 4A 5G and Pixel 5 were revealed months ahead of their actual shipping date, while Google tweeted out an early picture of the Pixel 4 the year before in an attempt to pre-empt inevitable leaks. </p>\r\n<p>Google also appears to be working on a new Nest Hub with Soli radar gesture support, as indicated by a recent FCC filing.</p>\r\n<p>Originalnu vijest pogledajte <a href=\"https://www.theverge.com/2021/1/6/22216568/new-google-nest-cam-lineup-confirmed-outdoor-iq-discontinued\"> ovdje </a> </p>', '2021-01-06 14:43:10', '2021-01-06 14:45:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesije`
--
ALTER TABLE `sesije`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stranice`
--
ALTER TABLE `stranice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sesije`
--
ALTER TABLE `sesije`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `stranice`
--
ALTER TABLE `stranice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
