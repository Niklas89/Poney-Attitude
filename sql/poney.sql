-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2011 at 07:18 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `poney`
--

-- --------------------------------------------------------

--
-- Table structure for table `poney`
--

CREATE TABLE IF NOT EXISTS `poney` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `robe` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rate` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `poney`
--

INSERT INTO `poney` (`id`, `nom`, `age`, `sex`, `color`, `height`, `robe`, `type`, `image`, `rate`) VALUES
(1, 'Poneyhead', '14', 'female ', 'brown ', '1m03 ', 'black ', 'Asian ', '1.jpg', 3),
(2, 'Putty ', '17 ', 'female ', 'ight brown', '98cm ', 'white ', 'Arabian', '2.jpg', 5),
(3, 'Fop ', '10 ', 'male ', 'yellow ', '70cm ', 'gray ', 'Australian', '3.jpg', 1),
(4, 'Nepti ', '20 ', 'male ', 'black ', '90cmm ', 'blue ', 'Runner', '4.jpg', 2),
(5, 'Poneyli ', '7 ', 'female ', 'red ', '1m50 ', 'red ', 'Hyperponey', '5.jpg', 5),
(6, 'Poneyyy', '14', 'female ', 'brown ', '1m03 ', 'black ', 'Asian ', '6.jpg', 3),
(7, 'Ponpon', '16', 'male', 'blue', '1m89', 'black', 'Asian', '7.jpg', 3),
(8, 'Poneyhead', '14', 'female ', 'brown ', '1m03 ', 'black ', 'Asian ', '8.jpg', 3),
(9, 'Putty ', '17 ', 'female ', 'ight brown', '98cm ', 'white ', 'Arabian', '9.jpg', 5),
(10, 'Fop ', '10 ', 'male ', 'yellow ', '70cm ', 'gray ', 'Australian', '10.jpg', 1),
(11, 'Nepti ', '20 ', 'male ', 'black ', '90cmm ', 'blue ', 'Runner', '11.jpg', 2);
