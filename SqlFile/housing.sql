-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2015 at 11:44 AM
-- Server version: 5.5.41
-- PHP Version: 5.3.10-1ubuntu3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `housing`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`user`, `pass`) VALUES
('sid', '4f076fa31e953954e548fe4a295591e4e9ec0722916fecf635b70c76'),
('sid3', '4f076fa31e953954e548fe4a295591e4e9ec0722916fecf635b70c76'),
('sid4', '4f076fa31e953954e548fe4a295591e4e9ec0722916fecf635b70c76'),
('siddimania', '4f076fa31e953954e548fe4a295591e4e9ec0722916fecf635b70c76'),
('u7karsh', 'd63dc919e201d7bc4c825630d2cf25fdc93d4b2f0d46706d29038d01'),
('utkarsh', 'd63dc919e201d7bc4c825630d2cf25fdc93d4b2f0d46706d29038d01');

-- --------------------------------------------------------

--
-- Table structure for table `cookie`
--

CREATE TABLE IF NOT EXISTS `cookie` (
  `user` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE IF NOT EXISTS `follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `follow` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `user`, `follow`) VALUES
(1, 'utsid', 'u7sid'),
(2, 'u7sid', 'utsid'),
(3, 'siddimania', 'u7sid'),
(5, 'siddimania', 'sid'),
(6, 'siddimania', 'sid3'),
(7, 'siddimania', 'sid4'),
(9, 'siddimania', 'utsid');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `tweet` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user`, `tweet`, `timestamp`) VALUES
(1, 'u7sid', 'hi there! i am using clone twitter!!!', '2015-01-24 21:01:13'),
(2, 'utsid', 'i am amazing!!!', '2015-01-24 21:01:24'),
(3, 'utsid', 'abcdef', '2015-01-24 21:01:35'),
(4, 'utsid', 'asd', '2015-01-24 21:01:52'),
(5, 'utsid', 'qwerty', '2015-01-24 21:01:58'),
(6, 'siddimania', 'this is siddhartha dimania', '2015-01-25 21:30:00'),
(7, 'siddimania', 'my name is sid', '2015-01-24 11:35:24'),
(8, 'siddimania', 'siddhartha dimania', '2015-01-24 16:05:40'),
(9, 'siddimania', 'time is 12:35 am', '2015-01-24 19:06:27'),
(10, 'siddimania', 'tweet 1:02 am', '2015-01-24 19:32:47'),
(11, 'siddimania', 'tweet 1 : 30 am', '2015-01-24 19:33:16'),
(12, 'siddimania', 'sid 131', '2015-01-24 20:01:18'),
(13, 'siddimania', 'this is it', '2015-01-24 21:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `email`, `timestamp`) VALUES
(1, 'u7sid', 'u7karsh@yahoo.co.in', '2015-01-24 21:02:08'),
(2, 'utsid', 'utkarsh@gmail.com', '2015-01-24 21:02:15'),
(3, 'siddimania', 'sid@gmail.com', '2015-01-24 11:34:58'),
(4, 'sid', 'sidd@gmail.com', '2015-01-24 16:21:37'),
(5, 'sid3', 'siddd@gmail.com', '2015-01-24 16:22:30'),
(6, 'sid4', 'sidddd@gmail.com', '2015-01-24 16:23:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
