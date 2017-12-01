-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2017 at 07:37 AM
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
-- Database: `music_band_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `song_data`
--

DROP TABLE IF EXISTS `song_data`;
CREATE TABLE IF NOT EXISTS `song_data` (
  `songId` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `album` varchar(50) NOT NULL,
  `releaseDate` date NOT NULL,
  `composer` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  PRIMARY KEY (`songId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song_data`
--

INSERT INTO `song_data` (`songId`, `title`, `album`, `releaseDate`, `composer`, `genre`, `photo`) VALUES
(2, 'asd', 'asd', '2017-12-14', 'asd', 'pop', '2017-11-29-PHOTO-00000097.jpg'),
(3, 'asd', 'asd', '2017-12-08', 'sad', 'pop', '2017-11-29-PHOTO-00000097.jpg'),
(4, 'asd', 'asd', '2017-12-14', 'kju', 'pop', '2017-11-29-PHOTO-00000097.jpg'),
(5, 'asd', 'asd', '2017-12-14', 'kju', 'pop', '2017-11-29-PHOTO-00000097.jpg'),
(6, 'asd', 'asd', '2017-12-07', 'asd', 'pop', '2017-11-29-PHOTO-00000097.jpg'),
(7, 'asd', 'asd', '2017-12-07', 'asd', 'pop', '2017-11-29-PHOTO-00000097.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
