-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2015 at 04:20 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jif`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peserta`
--

CREATE TABLE IF NOT EXISTS `data_peserta` (
  `id` int(100) NOT NULL auto_increment,
  `tanggal` datetime default NULL,
  `no_pendaftaran` varchar(100) NOT NULL,
  `nama_peserta` varchar(100) default NULL,
  `no_telp` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `alamat` varchar(800) default NULL,
  `jenis_kel` varchar(100) default NULL,
  `gambar` varchar(300) default NULL,
  PRIMARY KEY  (`id`,`no_pendaftaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `data_peserta`
--

INSERT INTO `data_peserta` (`id`, `tanggal`, `no_pendaftaran`, `nama_peserta`, `no_telp`, `kota`, `alamat`, `jenis_kel`, `gambar`) VALUES
(144, '2015-01-09 15:08:02', 'JPC-2015-0001', 'khkk', '8989', 'jkjkj', 'jjkj', 'Laki-Laki', 'gambar/'),
(145, '2015-01-09 15:37:23', 'JPC-2015-0002', 'kjkjkj', '8989', 'jkjkj', 'jkjk', 'Laki-Laki', 'gambar/Logo-Design-esempi-di-loghi-per-fotografi.jpg'),
(147, '2015-01-09 15:45:43', 'JPC-2015-0003', 'khkk', '8989', 'jkjkj', 'jjkj', 'Laki-Laki', 'gambar/Logo-Design-esempi-di-loghi-per-fotografi.jpg'),
(148, '2015-01-09 15:47:38', 'JPC-2015-0004', 'khkk', '8989', 'jkjkj', 'jjkj', 'Laki-Laki', 'gambar/Logo-Design-esempi-di-loghi-per-fotografi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_peserta`
--

CREATE TABLE IF NOT EXISTS `detail_peserta` (
  `id` int(10) NOT NULL auto_increment,
  `tanggal` varchar(20) default NULL,
  `no_pendaftaran` varchar(100) NOT NULL default '',
  `nama_peserta` varchar(100) default NULL,
  `rekening` varchar(200) default NULL,
  `bank` varchar(100) default NULL,
  `w_transfer` varchar(30) default NULL,
  `jumlah` varchar(100) default NULL,
  `keterangan` varchar(300) default NULL,
  PRIMARY KEY  (`no_pendaftaran`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `detail_peserta`
--

INSERT INTO `detail_peserta` (`id`, `tanggal`, `no_pendaftaran`, `nama_peserta`, `rekening`, `bank`, `w_transfer`, `jumlah`, `keterangan`) VALUES
(8, '2015-01-09 15:08:56', 'JPC-2015-0001', 'khkk', '123', 'danamon', '20-11-1998', '424242', 'fefweg'),
(9, '2015-01-09 15:38:28', 'JPC-2015-0002', 'angga', '898989', 'bri', '20-11-1998', '10000000', 'hjhjh');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `password`) VALUES
(11, 'admin', '123');
