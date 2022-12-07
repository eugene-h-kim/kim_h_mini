-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2022 at 06:32 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

DROP TABLE IF EXISTS `tbl_feature`;
CREATE TABLE IF NOT EXISTS `tbl_feature` (
  `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `feature_desc` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`id`, `feature_desc`) VALUES
(1, '3 Cylinder 12 Valve Twin Power Turbo'),
(2, '4 Cylinder 16 Valve Twin Power Turbo'),
(3, '8 Speed Steptronic Automatic'),
(4, '6 Speed Steptronic Automatic'),
(5, 'Top Speed - 200 km/h'),
(6, 'Top Speed - 223 km/h'),
(7, 'Top Speed - 240 km/h'),
(8, 'Top Speed - 197 km/h');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature_assem`
--

DROP TABLE IF EXISTS `tbl_feature_assem`;
CREATE TABLE IF NOT EXISTS `tbl_feature_assem` (
  `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mini_id` smallint(10) NOT NULL,
  `feature_id` smallint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feature_assem`
--

INSERT INTO `tbl_feature_assem` (`id`, `mini_id`, `feature_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 5),
(4, 2, 2),
(5, 2, 3),
(6, 2, 6),
(7, 3, 2),
(8, 3, 3),
(9, 3, 7),
(10, 4, 1),
(11, 4, 4),
(12, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini`
--

DROP TABLE IF EXISTS `tbl_mini`;
CREATE TABLE IF NOT EXISTS `tbl_mini` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `price` varchar(80) CHARACTER SET utf8 NOT NULL,
  `lease` varchar(80) CHARACTER SET utf8 NOT NULL,
  `finance` varchar(90) CHARACTER SET utf8 NOT NULL,
  `pic` varchar(90) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mini`
--

INSERT INTO `tbl_mini` (`id`, `name`, `price`, `lease`, `finance`, `pic`) VALUES
(1, 'Cooper All 4', '$40,956', '$616', '$750', 'cooper.png'),
(2, 'Cooper S All 4', '$46,156', '$677', '$847', 'cooper_s.png'),
(3, 'John Cooper Works All 4', '$54,156', '$773', '$996', 'john_cooper_works.png'),
(4, 'Cooper SE All 4', '$47,956', '$770', '$652', 'cooper_se.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
