-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 10:21 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_barang`, `nama_barang`, `stok`) VALUES
(1, 'Rinso Cair', 1),
(2, 'Sikat Gigi Formula', 2),
(3, 'Pepsodent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mu_agama`
--

CREATE TABLE `mu_agama` (
  `id_agama` int(11) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_agama`
--

INSERT INTO `mu_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Katholik'),
(3, 'Protestan'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu'),
(7, 'Kepercayaan');

-- --------------------------------------------------------

--
-- Table structure for table `mu_agen_ekspedisi`
--

CREATE TABLE `mu_agen_ekspedisi` (
  `id_agen_ekspedisi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `chat` varchar(50) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_agen_ekspedisi`
--

INSERT INTO `mu_agen_ekspedisi` (`id_agen_ekspedisi`, `nama`, `alamat`, `city_id`, `state_id`, `country_id`, `telepon`, `email`, `fax`, `chat`, `id_users`) VALUES
(1, 'POS', 'Jln. Ratuwangi Jamban', 369, 31, 1, '0752693211', 'pos@gmail.com', '0752693299', 'pos@yahoo.com', 1),
(2, 'JNE', 'Jl. Sirotol Mustaqin', 355, 30, 1, '0752968822', 'jne@gmail.com', '0752968855', 'jne@yahoo.com', 1),
(3, 'Tiki', 'Jl. Baharudin Haiti Musa', 324, 28, 1, '0759121113', 'tiki@gmail.com', '0759121122', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_bahasa`
--

CREATE TABLE `mu_bahasa` (
  `id_bahasa` int(11) NOT NULL,
  `nama_bahasa` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_bahasa`
--

INSERT INTO `mu_bahasa` (`id_bahasa`, `nama_bahasa`, `id_users`) VALUES
(1, 'Bahasa Indonesia', 1),
(2, 'Bahasa Inggris', 1),
(3, 'Bahasa mandarin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_barang`
--

CREATE TABLE `mu_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merek_brand` varchar(100) DEFAULT NULL,
  `model_type` varchar(100) DEFAULT NULL,
  `berat_bruto` float DEFAULT NULL,
  `ukuran_volume` varchar(100) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_subkategori` int(11) DEFAULT NULL,
  `id_rak` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `jml_minimal` int(11) DEFAULT NULL,
  `jml_maksimal` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `ppn` char(12) DEFAULT NULL,
  `kode_satuan` varchar(10) NOT NULL,
  `keterangan_barang` text NOT NULL,
  `status_jual` char(12) DEFAULT NULL,
  `foto_barang` varchar(255) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `waktu_input` datetime NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `kode_supplier` varchar(10) DEFAULT NULL,
  `id_gudang` int(11) DEFAULT NULL,
  `id_bin` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_barang`
--

INSERT INTO `mu_barang` (`id_barang`, `kode_barang`, `nama_barang`, `merek_brand`, `model_type`, `berat_bruto`, `ukuran_volume`, `warna`, `id_kategori`, `id_subkategori`, `id_rak`, `harga_beli`, `jml_minimal`, `jml_maksimal`, `stok`, `ppn`, `kode_satuan`, `keterangan_barang`, `status_jual`, `foto_barang`, `id_users`, `waktu_input`, `id_supplier`, `kode_supplier`, `id_gudang`, `id_bin`) VALUES
(1, 'BRG-000001', 'Sabun Mandi', 'Lifebuoy', 'Cair', 0.1, '10cm x 10 cm', 'putih', 1, 0, 2, 3000, 5, 200, 15, NULL, 'lsn', 'Tuliskan Keterangan Disini,..', NULL, 'sabun.png', 1, '2017-03-31 10:00:36', 0, '', NULL, NULL),
(21, 'BRG-000020', 'Sepatu', 'A', NULL, 0, '1', 'Hitam', 11, NULL, NULL, 0, NULL, NULL, 0, NULL, 'bh', '', NULL, NULL, 1, '2020-02-17 06:27:04', NULL, NULL, NULL, NULL),
(24, 'BRG-000023', 'Taro', 'Taro', '', NULL, '42gr', 'hijau', 7, NULL, NULL, 0, NULL, NULL, 0, NULL, 'bh', '', NULL, NULL, 1, '2020-02-17 06:42:50', 5, 'PEM-000006', 0, 1),
(28, 'BRG-000028', 'Bengbeng', 'Bengbeng', NULL, 0, '1gr', '', 7, NULL, NULL, 0, NULL, NULL, 0, NULL, 'bks', '', NULL, NULL, 1, '2020-02-17 08:09:42', NULL, NULL, NULL, NULL),
(22, 'BRG-000022', 'AQUA', 'AQUA', NULL, 0, '500ml', '', 7, NULL, NULL, 0, NULL, NULL, 0, NULL, 'bh', '', NULL, NULL, 1, '2020-02-17 06:27:55', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mu_barang_harga`
--

CREATE TABLE `mu_barang_harga` (
  `id_barang_harga` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_kategori_pelanggan` int(11) DEFAULT NULL,
  `id_jenis_jual` int(11) DEFAULT NULL,
  `harga` varchar(111) DEFAULT NULL,
  `persen_beli` varchar(111) DEFAULT NULL,
  `diskon` varchar(111) DEFAULT NULL,
  `jumlah` varchar(111) DEFAULT NULL,
  `satuan` varchar(111) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_barang_harga`
--

INSERT INTO `mu_barang_harga` (`id_barang_harga`, `id_barang`, `id_kategori_pelanggan`, `id_jenis_jual`, `harga`, `persen_beli`, `diskon`, `jumlah`, `satuan`, `id_supplier`) VALUES
(1, 1, 1, 1, '3500', '17', '200', '1', 'bh', 0),
(2, 1, 1, 2, '3250', '8', '0', '3', 'bks', 0),
(3, 1, 1, 3, '3211', '7', '0', '12', 'lsn', 0),
(4, 1, 1, 4, '3200', '7', '0', '20', 'kodi', 0),
(5, 1, 2, 1, '3250', '8', '0', '1', 'bh', 0),
(6, 1, 2, 2, '3211', '7', '0', '3', 'bks', 0),
(7, 1, 2, 3, '3300', '10', '0', '12', 'lsn', 0),
(8, 1, 2, 4, '3150', '5', '0', '20', 'kodi', 0),
(9, 1, 3, 1, '3211', '7', '0', '1', 'bh', 0),
(10, 1, 3, 2, '3200', '7', '0', '3', 'bks', 0),
(11, 1, 3, 3, '3300', '10', '0', '12', 'lsn', 0),
(12, 1, 3, 4, '3050', '2', '0', '20', 'kodi', 0),
(13, 2, 1, 1, '2400', '13', '0', '1', 'bh', 0),
(14, 2, 1, 2, '2250', '8', '0', '3', 'bks', 0),
(15, 2, 1, 3, '2200', '7', '0', '12', 'lsn', 0),
(16, 2, 1, 4, '2300', '-74.615384615385', '0', '20', 'kodi', 0),
(17, 2, 2, 1, '2250', '-75', '0', '1', 'bh', 0),
(18, 2, 2, 2, '2200', '-75.384615384615', '0', '3', 'bks', 0),
(19, 2, 2, 3, '2300', '-74.615384615385', '0', '12', 'lsn', 0),
(20, 2, 2, 4, '2250', '-75', '0', '20', 'kodi', 0),
(21, 2, 3, 1, '2250', '-75', '0', '1', 'bh', 0),
(22, 2, 3, 2, '2200', '-75.384615384615', '0', '3', 'bks', 0),
(23, 2, 3, 3, '2300', '-74.615384615385', '0', '12', 'lsn', 0),
(24, 2, 3, 4, '2250', '-75', '0', '20', 'kodi', 0),
(37, 4, 1, 1, '2500', '9', '0', '1', 'bh', 0),
(25, 3, 1, 1, '2400', '60', '0', '1', 'bh', 0),
(26, 3, 1, 2, '2250', '50', '0', '3', 'bks', 0),
(27, 3, 1, 3, '2200', '47', '0', '12', 'lsn', 0),
(28, 3, 1, 4, '2300', '53', '0', '20', 'kodi', 0),
(29, 3, 2, 1, '2250', '50', '0', '1', 'bh', 0),
(30, 3, 2, 2, '2200', '47', '0', '3', 'bks', 0),
(31, 3, 2, 3, '2300', '53', '0', '12', 'lsn', 0),
(32, 3, 2, 4, '2250', '50', '0', '20', 'kodi', 0),
(33, 3, 3, 1, '2250', '50', '0', '1', 'bh', 0),
(34, 3, 3, 2, '2200', '47', '0', '3', 'bks', 0),
(35, 3, 3, 3, '2300', '53', '0', '12', 'lsn', 0),
(36, 3, 3, 4, '2250', '50', '0', '20', 'kodi', 0),
(38, 4, 1, 2, '2400', '4', '0', '12', 'lsn', 0),
(39, 4, 1, 3, '', '', '', '', '', 0),
(40, 4, 1, 4, '', '', '', '', '', 0),
(41, 4, 2, 1, '', '', '', '1', 'bh', 0),
(42, 4, 2, 2, '', '', '', '', 'lsn', 0),
(43, 4, 2, 3, '', '', '', '', '', 0),
(44, 4, 2, 4, '', '', '', '', '', 0),
(45, 4, 3, 1, '', '', '', '1', 'bh', 0),
(46, 4, 3, 2, '', '', '', '', 'lsn', 0),
(47, 4, 3, 3, '', '', '', '', '', 0),
(48, 4, 3, 4, '', '', '', '', '', 0),
(49, 5, 1, 1, '2400', '60', '0', '1', 'bh', 0),
(50, 5, 1, 2, '2250', '50', '0', '3', 'bks', 0),
(51, 5, 1, 3, '2200', '47', '0', '12', 'lsn', 0),
(52, 5, 1, 4, '2300', '53', '0', '20', 'kodi', 0),
(53, 5, 2, 1, '2250', '50', '0', '1', 'bh', 0),
(54, 5, 2, 2, '2200', '47', '0', '3', 'bks', 0),
(55, 5, 2, 3, '2300', '53', '0', '12', 'lsn', 0),
(56, 5, 2, 4, '2250', '50', '0', '20', 'kodi', 0),
(57, 5, 3, 1, '2250', '50', '0', '1', 'bh', 0),
(58, 5, 3, 2, '2200', '47', '0', '3', 'bks', 0),
(59, 5, 3, 3, '2300', '53', '0', '12', 'lsn', 0),
(60, 5, 3, 4, '2250', '50', '0', '20', 'kodi', 0),
(61, 5, 5, 1, '', '', '', '1', 'bh', 0),
(62, 5, 5, 2, '', '', '', '', 'bks', 0),
(63, 5, 5, 3, '', '', '', '', 'lsn', 0),
(64, 5, 5, 4, '', '', '', '', 'kodi', 0),
(65, 5, 6, 1, '', '', '', '1', 'bh', 0),
(66, 5, 6, 2, '', '', '', '', 'bks', 0),
(67, 5, 6, 3, '', '', '', '', 'lsn', 0),
(68, 5, 6, 4, '', '', '', '', 'kodi', 0),
(69, 7, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(70, 7, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(71, 7, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(72, 7, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(73, 7, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(74, 7, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(75, 7, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(76, 7, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(77, 7, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(78, 7, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(79, 7, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(80, 7, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(81, 7, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(82, 7, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(83, 7, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(84, 7, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(85, 7, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(86, 7, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(87, 7, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(88, 7, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(89, 8, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(90, 8, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(91, 8, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(92, 8, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(93, 8, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(94, 8, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(95, 8, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(96, 8, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(97, 8, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(98, 8, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(99, 8, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(100, 8, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(101, 8, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(102, 8, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(103, 8, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(104, 8, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(105, 8, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(106, 8, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(107, 8, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(108, 8, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(109, 9, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(110, 9, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(111, 9, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(112, 9, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(113, 9, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(114, 9, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(115, 9, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(116, 9, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(117, 9, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(118, 9, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(119, 9, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(120, 9, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(121, 9, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(122, 9, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(123, 9, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(124, 9, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(125, 9, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(126, 9, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(127, 9, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(128, 9, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(129, 10, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(130, 10, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(131, 10, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(132, 10, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(133, 10, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(134, 10, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(135, 10, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(136, 10, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(137, 10, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(138, 10, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(139, 10, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(140, 10, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(141, 10, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(142, 10, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(143, 10, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(144, 10, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(145, 10, NULL, 1, '', NULL, NULL, NULL, NULL, 0),
(146, 10, NULL, 2, '', NULL, NULL, NULL, NULL, 0),
(147, 10, NULL, 3, '', NULL, NULL, NULL, NULL, 0),
(148, 10, NULL, 4, '', NULL, NULL, NULL, NULL, 0),
(149, 12, NULL, 1, '', NULL, NULL, NULL, NULL, 12),
(150, 12, NULL, 2, '', NULL, NULL, NULL, NULL, 12),
(151, 12, NULL, 3, '', NULL, NULL, NULL, NULL, 12),
(152, 12, NULL, 4, '', NULL, NULL, NULL, NULL, 12),
(153, 12, NULL, 1, '', NULL, NULL, NULL, NULL, 12),
(154, 12, NULL, 2, '', NULL, NULL, NULL, NULL, 12),
(155, 12, NULL, 3, '', NULL, NULL, NULL, NULL, 12),
(156, 12, NULL, 4, '', NULL, NULL, NULL, NULL, 12),
(157, 12, NULL, 1, '', NULL, NULL, NULL, NULL, 12),
(158, 12, NULL, 2, '', NULL, NULL, NULL, NULL, 12),
(159, 12, NULL, 3, '', NULL, NULL, NULL, NULL, 12),
(160, 12, NULL, 4, '', NULL, NULL, NULL, NULL, 12),
(161, 12, NULL, 1, '', NULL, NULL, NULL, NULL, 12),
(162, 12, NULL, 2, '', NULL, NULL, NULL, NULL, 12),
(163, 12, NULL, 3, '', NULL, NULL, NULL, NULL, 12),
(164, 12, NULL, 4, '', NULL, NULL, NULL, NULL, 12),
(165, 12, NULL, 1, '', NULL, NULL, NULL, NULL, 12),
(166, 12, NULL, 2, '', NULL, NULL, NULL, NULL, 12),
(167, 12, NULL, 3, '', NULL, NULL, NULL, NULL, 12),
(168, 12, NULL, 4, '', NULL, NULL, NULL, NULL, 12),
(169, 13, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(170, 13, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(171, 13, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(172, 13, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(173, 13, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(174, 13, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(175, 13, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(176, 13, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(177, 13, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(178, 13, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(179, 13, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(180, 13, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(181, 13, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(182, 13, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(183, 13, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(184, 13, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(185, 13, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(186, 13, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(187, 13, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(188, 13, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(189, 14, NULL, 1, '', NULL, NULL, NULL, NULL, 14),
(190, 14, NULL, 2, '', NULL, NULL, NULL, NULL, 14),
(191, 14, NULL, 3, '', NULL, NULL, NULL, NULL, 14),
(192, 14, NULL, 4, '', NULL, NULL, NULL, NULL, 14),
(193, 14, NULL, 1, '', NULL, NULL, NULL, NULL, 14),
(194, 14, NULL, 2, '', NULL, NULL, NULL, NULL, 14),
(195, 14, NULL, 3, '', NULL, NULL, NULL, NULL, 14),
(196, 14, NULL, 4, '', NULL, NULL, NULL, NULL, 14),
(197, 14, NULL, 1, '', NULL, NULL, NULL, NULL, 14),
(198, 14, NULL, 2, '', NULL, NULL, NULL, NULL, 14),
(199, 14, NULL, 3, '', NULL, NULL, NULL, NULL, 14),
(200, 14, NULL, 4, '', NULL, NULL, NULL, NULL, 14),
(201, 14, NULL, 1, '', NULL, NULL, NULL, NULL, 14),
(202, 14, NULL, 2, '', NULL, NULL, NULL, NULL, 14),
(203, 14, NULL, 3, '', NULL, NULL, NULL, NULL, 14),
(204, 14, NULL, 4, '', NULL, NULL, NULL, NULL, 14),
(205, 14, NULL, 1, '', NULL, NULL, NULL, NULL, 14),
(206, 14, NULL, 2, '', NULL, NULL, NULL, NULL, 14),
(207, 14, NULL, 3, '', NULL, NULL, NULL, NULL, 14),
(208, 14, NULL, 4, '', NULL, NULL, NULL, NULL, 14),
(209, 15, NULL, 1, '', NULL, NULL, NULL, NULL, 15),
(210, 15, NULL, 2, '', NULL, NULL, NULL, NULL, 15),
(211, 15, NULL, 3, '', NULL, NULL, NULL, NULL, 15),
(212, 15, NULL, 4, '', NULL, NULL, NULL, NULL, 15),
(213, 15, NULL, 1, '', NULL, NULL, NULL, NULL, 15),
(214, 15, NULL, 2, '', NULL, NULL, NULL, NULL, 15),
(215, 15, NULL, 3, '', NULL, NULL, NULL, NULL, 15),
(216, 15, NULL, 4, '', NULL, NULL, NULL, NULL, 15),
(217, 15, NULL, 1, '', NULL, NULL, NULL, NULL, 15),
(218, 15, NULL, 2, '', NULL, NULL, NULL, NULL, 15),
(219, 15, NULL, 3, '', NULL, NULL, NULL, NULL, 15),
(220, 15, NULL, 4, '', NULL, NULL, NULL, NULL, 15),
(221, 15, NULL, 1, '', NULL, NULL, NULL, NULL, 15),
(222, 15, NULL, 2, '', NULL, NULL, NULL, NULL, 15),
(223, 15, NULL, 3, '', NULL, NULL, NULL, NULL, 15),
(224, 15, NULL, 4, '', NULL, NULL, NULL, NULL, 15),
(225, 15, NULL, 1, '', NULL, NULL, NULL, NULL, 15),
(226, 15, NULL, 2, '', NULL, NULL, NULL, NULL, 15),
(227, 15, NULL, 3, '', NULL, NULL, NULL, NULL, 15),
(228, 15, NULL, 4, '', NULL, NULL, NULL, NULL, 15),
(229, 16, NULL, 1, '', NULL, NULL, NULL, NULL, 16),
(230, 16, NULL, 2, '', NULL, NULL, NULL, NULL, 16),
(231, 16, NULL, 3, '', NULL, NULL, NULL, NULL, 16),
(232, 16, NULL, 4, '', NULL, NULL, NULL, NULL, 16),
(233, 16, NULL, 1, '', NULL, NULL, NULL, NULL, 16),
(234, 16, NULL, 2, '', NULL, NULL, NULL, NULL, 16),
(235, 16, NULL, 3, '', NULL, NULL, NULL, NULL, 16),
(236, 16, NULL, 4, '', NULL, NULL, NULL, NULL, 16),
(237, 16, NULL, 1, '', NULL, NULL, NULL, NULL, 16),
(238, 16, NULL, 2, '', NULL, NULL, NULL, NULL, 16),
(239, 16, NULL, 3, '', NULL, NULL, NULL, NULL, 16),
(240, 16, NULL, 4, '', NULL, NULL, NULL, NULL, 16),
(241, 16, NULL, 1, '', NULL, NULL, NULL, NULL, 16),
(242, 16, NULL, 2, '', NULL, NULL, NULL, NULL, 16),
(243, 16, NULL, 3, '', NULL, NULL, NULL, NULL, 16),
(244, 16, NULL, 4, '', NULL, NULL, NULL, NULL, 16),
(245, 16, NULL, 1, '', NULL, NULL, NULL, NULL, 16),
(246, 16, NULL, 2, '', NULL, NULL, NULL, NULL, 16),
(247, 16, NULL, 3, '', NULL, NULL, NULL, NULL, 16),
(248, 16, NULL, 4, '', NULL, NULL, NULL, NULL, 16),
(249, 17, NULL, 1, '', NULL, NULL, NULL, NULL, 17),
(250, 17, NULL, 2, '', NULL, NULL, NULL, NULL, 17),
(251, 17, NULL, 3, '', NULL, NULL, NULL, NULL, 17),
(252, 17, NULL, 4, '', NULL, NULL, NULL, NULL, 17),
(253, 17, NULL, 1, '', NULL, NULL, NULL, NULL, 17),
(254, 17, NULL, 2, '', NULL, NULL, NULL, NULL, 17),
(255, 17, NULL, 3, '', NULL, NULL, NULL, NULL, 17),
(256, 17, NULL, 4, '', NULL, NULL, NULL, NULL, 17),
(257, 17, NULL, 1, '', NULL, NULL, NULL, NULL, 17),
(258, 17, NULL, 2, '', NULL, NULL, NULL, NULL, 17),
(259, 17, NULL, 3, '', NULL, NULL, NULL, NULL, 17),
(260, 17, NULL, 4, '', NULL, NULL, NULL, NULL, 17),
(261, 17, NULL, 1, '', NULL, NULL, NULL, NULL, 17),
(262, 17, NULL, 2, '', NULL, NULL, NULL, NULL, 17),
(263, 17, NULL, 3, '', NULL, NULL, NULL, NULL, 17),
(264, 17, NULL, 4, '', NULL, NULL, NULL, NULL, 17),
(265, 17, NULL, 1, '', NULL, NULL, NULL, NULL, 17),
(266, 17, NULL, 2, '', NULL, NULL, NULL, NULL, 17),
(267, 17, NULL, 3, '', NULL, NULL, NULL, NULL, 17),
(268, 17, NULL, 4, '', NULL, NULL, NULL, NULL, 17),
(269, 18, NULL, 1, '', NULL, NULL, NULL, NULL, 18),
(270, 18, NULL, 2, '', NULL, NULL, NULL, NULL, 18),
(271, 18, NULL, 3, '', NULL, NULL, NULL, NULL, 18),
(272, 18, NULL, 4, '', NULL, NULL, NULL, NULL, 18),
(273, 18, NULL, 1, '', NULL, NULL, NULL, NULL, 18),
(274, 18, NULL, 2, '', NULL, NULL, NULL, NULL, 18),
(275, 18, NULL, 3, '', NULL, NULL, NULL, NULL, 18),
(276, 18, NULL, 4, '', NULL, NULL, NULL, NULL, 18),
(277, 18, NULL, 1, '', NULL, NULL, NULL, NULL, 18),
(278, 18, NULL, 2, '', NULL, NULL, NULL, NULL, 18),
(279, 18, NULL, 3, '', NULL, NULL, NULL, NULL, 18),
(280, 18, NULL, 4, '', NULL, NULL, NULL, NULL, 18),
(281, 18, NULL, 1, '', NULL, NULL, NULL, NULL, 18),
(282, 18, NULL, 2, '', NULL, NULL, NULL, NULL, 18),
(283, 18, NULL, 3, '', NULL, NULL, NULL, NULL, 18),
(284, 18, NULL, 4, '', NULL, NULL, NULL, NULL, 18),
(285, 18, NULL, 1, '', NULL, NULL, NULL, NULL, 18),
(286, 18, NULL, 2, '', NULL, NULL, NULL, NULL, 18),
(287, 18, NULL, 3, '', NULL, NULL, NULL, NULL, 18),
(288, 18, NULL, 4, '', NULL, NULL, NULL, NULL, 18),
(289, 19, NULL, 1, '', NULL, NULL, NULL, NULL, 19),
(290, 19, NULL, 2, '', NULL, NULL, NULL, NULL, 19),
(291, 19, NULL, 3, '', NULL, NULL, NULL, NULL, 19),
(292, 19, NULL, 4, '', NULL, NULL, NULL, NULL, 19),
(293, 19, NULL, 1, '', NULL, NULL, NULL, NULL, 19),
(294, 19, NULL, 2, '', NULL, NULL, NULL, NULL, 19),
(295, 19, NULL, 3, '', NULL, NULL, NULL, NULL, 19),
(296, 19, NULL, 4, '', NULL, NULL, NULL, NULL, 19),
(297, 19, NULL, 1, '', NULL, NULL, NULL, NULL, 19),
(298, 19, NULL, 2, '', NULL, NULL, NULL, NULL, 19),
(299, 19, NULL, 3, '', NULL, NULL, NULL, NULL, 19),
(300, 19, NULL, 4, '', NULL, NULL, NULL, NULL, 19),
(301, 19, NULL, 1, '', NULL, NULL, NULL, NULL, 19),
(302, 19, NULL, 2, '', NULL, NULL, NULL, NULL, 19),
(303, 19, NULL, 3, '', NULL, NULL, NULL, NULL, 19),
(304, 19, NULL, 4, '', NULL, NULL, NULL, NULL, 19),
(305, 19, NULL, 1, '', NULL, NULL, NULL, NULL, 19),
(306, 19, NULL, 2, '', NULL, NULL, NULL, NULL, 19),
(307, 19, NULL, 3, '', NULL, NULL, NULL, NULL, 19),
(308, 19, NULL, 4, '', NULL, NULL, NULL, NULL, 19),
(309, 20, NULL, 1, '', NULL, NULL, NULL, NULL, 20),
(310, 20, NULL, 2, '', NULL, NULL, NULL, NULL, 20),
(311, 20, NULL, 3, '', NULL, NULL, NULL, NULL, 20),
(312, 20, NULL, 4, '', NULL, NULL, NULL, NULL, 20),
(313, 20, NULL, 1, '', NULL, NULL, NULL, NULL, 20),
(314, 20, NULL, 2, '', NULL, NULL, NULL, NULL, 20),
(315, 20, NULL, 3, '', NULL, NULL, NULL, NULL, 20),
(316, 20, NULL, 4, '', NULL, NULL, NULL, NULL, 20),
(317, 20, NULL, 1, '', NULL, NULL, NULL, NULL, 20),
(318, 20, NULL, 2, '', NULL, NULL, NULL, NULL, 20),
(319, 20, NULL, 3, '', NULL, NULL, NULL, NULL, 20),
(320, 20, NULL, 4, '', NULL, NULL, NULL, NULL, 20),
(321, 20, NULL, 1, '', NULL, NULL, NULL, NULL, 20),
(322, 20, NULL, 2, '', NULL, NULL, NULL, NULL, 20),
(323, 20, NULL, 3, '', NULL, NULL, NULL, NULL, 20),
(324, 20, NULL, 4, '', NULL, NULL, NULL, NULL, 20),
(325, 20, NULL, 1, '', NULL, NULL, NULL, NULL, 20),
(326, 20, NULL, 2, '', NULL, NULL, NULL, NULL, 20),
(327, 20, NULL, 3, '', NULL, NULL, NULL, NULL, 20),
(328, 20, NULL, 4, '', NULL, NULL, NULL, NULL, 20),
(329, 21, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(330, 21, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(331, 21, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(332, 21, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(333, 21, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(334, 21, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(335, 21, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(336, 21, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(337, 21, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(338, 21, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(339, 21, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(340, 21, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(341, 21, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(342, 21, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(343, 21, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(344, 21, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(345, 21, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(346, 21, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(347, 21, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(348, 21, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(349, 22, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(350, 22, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(351, 22, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(352, 22, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(353, 22, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(354, 22, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(355, 22, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(356, 22, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(357, 22, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(358, 22, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(359, 22, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(360, 22, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(361, 22, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(362, 22, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(363, 22, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(364, 22, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(365, 22, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(366, 22, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(367, 22, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(368, 22, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(369, 23, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(370, 23, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(371, 23, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(372, 23, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(373, 23, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(374, 23, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(375, 23, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(376, 23, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(377, 23, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(378, 23, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(379, 23, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(380, 23, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(381, 23, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(382, 23, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(383, 23, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(384, 23, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(385, 23, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(386, 23, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(387, 23, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(388, 23, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(389, 24, NULL, 1, '', NULL, NULL, NULL, NULL, 24),
(390, 24, NULL, 2, '', NULL, NULL, NULL, NULL, 24),
(391, 24, NULL, 3, '', NULL, NULL, NULL, NULL, 24),
(392, 24, NULL, 4, '', NULL, NULL, NULL, NULL, 24),
(393, 24, NULL, 1, '', NULL, NULL, NULL, NULL, 24),
(394, 24, NULL, 2, '', NULL, NULL, NULL, NULL, 24),
(395, 24, NULL, 3, '', NULL, NULL, NULL, NULL, 24),
(396, 24, NULL, 4, '', NULL, NULL, NULL, NULL, 24),
(397, 24, NULL, 1, '', NULL, NULL, NULL, NULL, 24),
(398, 24, NULL, 2, '', NULL, NULL, NULL, NULL, 24),
(399, 24, NULL, 3, '', NULL, NULL, NULL, NULL, 24),
(400, 24, NULL, 4, '', NULL, NULL, NULL, NULL, 24),
(401, 24, NULL, 1, '', NULL, NULL, NULL, NULL, 24),
(402, 24, NULL, 2, '', NULL, NULL, NULL, NULL, 24),
(403, 24, NULL, 3, '', NULL, NULL, NULL, NULL, 24),
(404, 24, NULL, 4, '', NULL, NULL, NULL, NULL, 24),
(405, 24, NULL, 1, '', NULL, NULL, NULL, NULL, 24),
(406, 24, NULL, 2, '', NULL, NULL, NULL, NULL, 24),
(407, 24, NULL, 3, '', NULL, NULL, NULL, NULL, 24),
(408, 24, NULL, 4, '', NULL, NULL, NULL, NULL, 24),
(409, 25, NULL, 1, '', NULL, NULL, NULL, NULL, 25),
(410, 25, NULL, 2, '', NULL, NULL, NULL, NULL, 25),
(411, 25, NULL, 3, '', NULL, NULL, NULL, NULL, 25),
(412, 25, NULL, 4, '', NULL, NULL, NULL, NULL, 25),
(413, 25, NULL, 1, '', NULL, NULL, NULL, NULL, 25),
(414, 25, NULL, 2, '', NULL, NULL, NULL, NULL, 25),
(415, 25, NULL, 3, '', NULL, NULL, NULL, NULL, 25),
(416, 25, NULL, 4, '', NULL, NULL, NULL, NULL, 25),
(417, 25, NULL, 1, '', NULL, NULL, NULL, NULL, 25),
(418, 25, NULL, 2, '', NULL, NULL, NULL, NULL, 25),
(419, 25, NULL, 3, '', NULL, NULL, NULL, NULL, 25),
(420, 25, NULL, 4, '', NULL, NULL, NULL, NULL, 25),
(421, 25, NULL, 1, '', NULL, NULL, NULL, NULL, 25),
(422, 25, NULL, 2, '', NULL, NULL, NULL, NULL, 25),
(423, 25, NULL, 3, '', NULL, NULL, NULL, NULL, 25),
(424, 25, NULL, 4, '', NULL, NULL, NULL, NULL, 25),
(425, 25, NULL, 1, '', NULL, NULL, NULL, NULL, 25),
(426, 25, NULL, 2, '', NULL, NULL, NULL, NULL, 25),
(427, 25, NULL, 3, '', NULL, NULL, NULL, NULL, 25),
(428, 25, NULL, 4, '', NULL, NULL, NULL, NULL, 25),
(429, 26, NULL, 1, '', NULL, NULL, NULL, NULL, 26),
(430, 26, NULL, 2, '', NULL, NULL, NULL, NULL, 26),
(431, 26, NULL, 3, '', NULL, NULL, NULL, NULL, 26),
(432, 26, NULL, 4, '', NULL, NULL, NULL, NULL, 26),
(433, 26, NULL, 1, '', NULL, NULL, NULL, NULL, 26),
(434, 26, NULL, 2, '', NULL, NULL, NULL, NULL, 26),
(435, 26, NULL, 3, '', NULL, NULL, NULL, NULL, 26),
(436, 26, NULL, 4, '', NULL, NULL, NULL, NULL, 26),
(437, 26, NULL, 1, '', NULL, NULL, NULL, NULL, 26),
(438, 26, NULL, 2, '', NULL, NULL, NULL, NULL, 26),
(439, 26, NULL, 3, '', NULL, NULL, NULL, NULL, 26),
(440, 26, NULL, 4, '', NULL, NULL, NULL, NULL, 26),
(441, 26, NULL, 1, '', NULL, NULL, NULL, NULL, 26),
(442, 26, NULL, 2, '', NULL, NULL, NULL, NULL, 26),
(443, 26, NULL, 3, '', NULL, NULL, NULL, NULL, 26),
(444, 26, NULL, 4, '', NULL, NULL, NULL, NULL, 26),
(445, 26, NULL, 1, '', NULL, NULL, NULL, NULL, 26),
(446, 26, NULL, 2, '', NULL, NULL, NULL, NULL, 26),
(447, 26, NULL, 3, '', NULL, NULL, NULL, NULL, 26),
(448, 26, NULL, 4, '', NULL, NULL, NULL, NULL, 26),
(449, 27, NULL, 1, '', NULL, NULL, NULL, NULL, 27),
(450, 27, NULL, 2, '', NULL, NULL, NULL, NULL, 27),
(451, 27, NULL, 3, '', NULL, NULL, NULL, NULL, 27),
(452, 27, NULL, 4, '', NULL, NULL, NULL, NULL, 27),
(453, 27, NULL, 1, '', NULL, NULL, NULL, NULL, 27),
(454, 27, NULL, 2, '', NULL, NULL, NULL, NULL, 27),
(455, 27, NULL, 3, '', NULL, NULL, NULL, NULL, 27),
(456, 27, NULL, 4, '', NULL, NULL, NULL, NULL, 27),
(457, 27, NULL, 1, '', NULL, NULL, NULL, NULL, 27),
(458, 27, NULL, 2, '', NULL, NULL, NULL, NULL, 27),
(459, 27, NULL, 3, '', NULL, NULL, NULL, NULL, 27),
(460, 27, NULL, 4, '', NULL, NULL, NULL, NULL, 27),
(461, 27, NULL, 1, '', NULL, NULL, NULL, NULL, 27),
(462, 27, NULL, 2, '', NULL, NULL, NULL, NULL, 27),
(463, 27, NULL, 3, '', NULL, NULL, NULL, NULL, 27),
(464, 27, NULL, 4, '', NULL, NULL, NULL, NULL, 27),
(465, 27, NULL, 1, '', NULL, NULL, NULL, NULL, 27),
(466, 27, NULL, 2, '', NULL, NULL, NULL, NULL, 27),
(467, 27, NULL, 3, '', NULL, NULL, NULL, NULL, 27),
(468, 27, NULL, 4, '', NULL, NULL, NULL, NULL, 27),
(469, 28, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(470, 28, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(471, 28, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(472, 28, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(473, 28, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(474, 28, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(475, 28, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(476, 28, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(477, 28, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(478, 28, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(479, 28, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(480, 28, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(481, 28, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(482, 28, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(483, 28, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(484, 28, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(485, 28, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(486, 28, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(487, 28, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(488, 28, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(489, 1, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(490, 1, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(491, 1, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(492, 1, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(493, 1, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(494, 1, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(495, 1, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(496, 1, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(497, 1, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(498, 1, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(499, 1, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(500, 1, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(501, 1, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(502, 1, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(503, 1, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(504, 1, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(505, 1, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(506, 1, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(507, 1, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(508, 1, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(509, 2, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(510, 2, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(511, 2, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(512, 2, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(513, 2, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(514, 2, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(515, 2, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(516, 2, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(517, 2, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(518, 2, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(519, 2, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(520, 2, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(521, 2, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(522, 2, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(523, 2, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(524, 2, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(525, 2, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(526, 2, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(527, 2, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(528, 2, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(529, 3, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(530, 3, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(531, 3, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(532, 3, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(533, 3, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(534, 3, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(535, 3, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(536, 3, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(537, 3, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(538, 3, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(539, 3, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(540, 3, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(541, 3, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(542, 3, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(543, 3, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(544, 3, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(545, 3, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(546, 3, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(547, 3, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(548, 3, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(549, 4, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(550, 4, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(551, 4, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(552, 4, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(553, 4, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(554, 4, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(555, 4, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(556, 4, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(557, 4, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(558, 4, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(559, 4, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(560, 4, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(561, 4, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(562, 4, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(563, 4, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(564, 4, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(565, 4, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(566, 4, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(567, 4, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(568, 4, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(569, 5, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(570, 5, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(571, 5, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(572, 5, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(573, 5, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(574, 5, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(575, 5, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(576, 5, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(577, 5, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(578, 5, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(579, 5, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(580, 5, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(581, 5, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(582, 5, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(583, 5, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(584, 5, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(585, 5, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(586, 5, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(587, 5, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(588, 5, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(589, 6, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(590, 6, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(591, 6, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(592, 6, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(593, 6, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(594, 6, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(595, 6, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(596, 6, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(597, 6, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(598, 6, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(599, 6, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(600, 6, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(601, 6, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(602, 6, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(603, 6, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(604, 6, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(605, 6, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(606, 6, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(607, 6, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(608, 6, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(609, 7, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(610, 7, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(611, 7, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(612, 7, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(613, 7, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(614, 7, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(615, 7, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(616, 7, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(617, 7, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(618, 7, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(619, 7, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(620, 7, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(621, 7, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(622, 7, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(623, 7, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(624, 7, NULL, 4, '', NULL, NULL, NULL, NULL, NULL),
(625, 7, NULL, 1, '', NULL, NULL, NULL, NULL, NULL),
(626, 7, NULL, 2, '', NULL, NULL, NULL, NULL, NULL),
(627, 7, NULL, 3, '', NULL, NULL, NULL, NULL, NULL),
(628, 7, NULL, 4, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mu_barang_jenis_jual`
--

CREATE TABLE `mu_barang_jenis_jual` (
  `id_barang_jenis_jual` int(11) NOT NULL,
  `nama_jenis_jual` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_barang_jenis_jual`
--

INSERT INTO `mu_barang_jenis_jual` (`id_barang_jenis_jual`, `nama_jenis_jual`) VALUES
(1, 'Ritel'),
(2, 'Grosir 1'),
(3, 'Grosir 2'),
(4, 'Grosir 3');

-- --------------------------------------------------------

--
-- Table structure for table `mu_bebanbiaya_list`
--

CREATE TABLE `mu_bebanbiaya_list` (
  `id_bebanbiaya_list` int(11) NOT NULL,
  `id_bebanbiaya_sub` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_uang` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `waktu_proses` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_bebanbiaya_list`
--

INSERT INTO `mu_bebanbiaya_list` (`id_bebanbiaya_list`, `id_bebanbiaya_sub`, `tanggal`, `jumlah_uang`, `keterangan`, `id_karyawan`, `waktu_proses`) VALUES
(1, 7, '2017-03-01', 250000, 'Sudah dibayarkan,..', 1, '2017-03-07 09:19:15'),
(2, 1, '2017-03-02', 1500000, 'Sudah dibayarkan,..', 1, '2017-03-07 13:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `mu_bebanbiaya_main`
--

CREATE TABLE `mu_bebanbiaya_main` (
  `id_bebanbiaya_main` int(11) NOT NULL,
  `nama_bebanbiaya_main` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_bebanbiaya_main`
--

INSERT INTO `mu_bebanbiaya_main` (`id_bebanbiaya_main`, `nama_bebanbiaya_main`) VALUES
(1, 'Beban Usaha atau Operasi'),
(2, 'Beban Penjualan'),
(3, 'Beban Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `mu_bebanbiaya_sub`
--

CREATE TABLE `mu_bebanbiaya_sub` (
  `id_bebanbiaya_sub` int(11) NOT NULL,
  `id_bebanbiaya_main` int(11) NOT NULL,
  `nama_bebanbiaya_sub` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_bebanbiaya_sub`
--

INSERT INTO `mu_bebanbiaya_sub` (`id_bebanbiaya_sub`, `id_bebanbiaya_main`, `nama_bebanbiaya_sub`) VALUES
(1, 1, 'Beban Gaji Karyawan'),
(2, 1, 'Beban Biaya Pengiriman'),
(3, 1, 'Beban Listrik, Telepon dan Air'),
(4, 1, 'Beban Angkutan'),
(5, 1, 'Beban Perlengkapan'),
(6, 2, 'Return Penjualan'),
(7, 2, 'Beban Iklan'),
(8, 3, 'Beban Pajak Penjualan'),
(9, 3, 'Beban Bunga');

-- --------------------------------------------------------

--
-- Table structure for table `mu_bin`
--

CREATE TABLE `mu_bin` (
  `id_bin` int(11) NOT NULL,
  `bin_loc` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_bin`
--

INSERT INTO `mu_bin` (`id_bin`, `bin_loc`) VALUES
(1, '1.1'),
(2, '1.2'),
(3, '1.3'),
(4, '1.4'),
(5, '2.1'),
(6, '2.2'),
(7, '2.3'),
(8, '2.4'),
(9, '3.1'),
(10, '3.2'),
(11, '3.3'),
(12, '3.4'),
(13, '4.1'),
(14, '4.2'),
(15, '4.3'),
(16, '4.4');

-- --------------------------------------------------------

--
-- Table structure for table `mu_city`
--

CREATE TABLE `mu_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `mu_city`
--

INSERT INTO `mu_city` (`city_id`, `state_id`, `name`, `id_users`) VALUES
(1, 1, 'Badung', 1),
(2, 1, 'Bangli', 1),
(3, 1, 'Buleleng', 1),
(4, 1, 'Gianyar', 1),
(5, 1, 'Jembrana', 1),
(6, 1, 'Karangasem', 1),
(7, 1, 'Klungkung', 1),
(8, 1, 'Tabanan', 1),
(9, 1, 'Denpasar', 1),
(10, 2, 'Bengkulu Selatan', 1),
(11, 2, 'Bengkulu Utara', 1),
(12, 2, 'Kaur', 1),
(13, 2, 'Kepahiang', 1),
(14, 2, 'Lebong', 1),
(15, 2, 'Muko-Muko', 1),
(16, 2, 'Rejang Lebong', 1),
(17, 2, 'Seluma', 1),
(18, 2, 'Bengkulu', 1),
(19, 3, 'Lebak', 1),
(20, 3, 'Pandeglang', 1),
(21, 3, 'Serang', 1),
(22, 3, 'Tangerang', 1),
(23, 3, 'Cilegon', 1),
(24, 3, 'Tangerang', 1),
(25, 4, 'Bantul', 1),
(26, 4, 'Gunung Kidul', 1),
(27, 4, 'Kulon Progo', 1),
(28, 4, 'Sleman', 1),
(29, 4, 'Yogyakarta', 1),
(30, 5, 'Boalemo', 1),
(31, 5, 'Bone Bolango', 1),
(32, 5, 'Gorontalo', 1),
(33, 5, 'Pohuwato', 1),
(34, 6, 'Fak-fak', 1),
(35, 6, 'Kaimana', 1),
(36, 6, 'Monakwari', 1),
(37, 6, 'Raja Ampat', 1),
(38, 6, 'Sorong', 1),
(39, 6, 'Sorong Selatan', 1),
(40, 6, 'Teluk Bintuni', 1),
(41, 6, 'Teluk Wandama', 1),
(42, 7, 'Jakarta Barat', 1),
(43, 7, 'Jakarta Pusat', 1),
(44, 7, 'Jakarta Utara', 1),
(45, 7, 'Jakarta Timur', 1),
(46, 7, 'Jakarta Selatan', 1),
(47, 7, 'Kepulauan Seribu', 1),
(48, 8, 'Batang Hari', 1),
(49, 8, 'Bungo', 1),
(50, 8, 'Kerinci', 1),
(51, 8, 'Merangin', 1),
(52, 8, 'Muaro Jambi', 1),
(53, 8, 'Sarolangun', 1),
(54, 8, 'Tanjung Jabung Timur', 1),
(55, 8, 'Tanjung Jabung Barat', 1),
(56, 8, 'Tebo', 1),
(57, 8, 'Jambi', 1),
(58, 9, 'Bandung', 1),
(59, 9, 'Bekasi', 1),
(60, 9, 'Bogor', 1),
(61, 9, 'Ciamis', 1),
(62, 9, 'Cianjur', 1),
(63, 9, 'Cirebon', 1),
(64, 9, 'Garut', 1),
(65, 9, 'Indramayu', 1),
(66, 9, 'Karawang', 1),
(67, 9, 'Kuningan', 1),
(68, 9, 'Majanlengka', 1),
(69, 9, 'Purwakarta', 1),
(70, 9, 'Subang', 1),
(71, 9, 'Sukabumi', 1),
(72, 9, 'Sumedang', 1),
(73, 9, 'Tasikmalaya', 1),
(74, 9, 'Banjar', 1),
(75, 9, 'Cimahi', 1),
(76, 9, 'Depok', 1),
(77, 10, 'Banjarnegara', 1),
(78, 10, 'Banyumas', 1),
(79, 10, 'Batang', 1),
(80, 10, 'Blora', 1),
(81, 10, 'Boyolali', 1),
(82, 10, 'Brebes', 1),
(83, 10, 'Cilacap', 1),
(84, 10, 'Demak', 1),
(85, 10, 'Grobogan', 1),
(86, 10, 'Jepara', 1),
(87, 10, 'Karanganyar', 1),
(88, 10, 'Kebumen', 1),
(89, 10, 'Kendal', 1),
(90, 10, 'Klaten', 1),
(91, 10, 'Kudus', 1),
(92, 10, 'Magelang', 1),
(93, 10, 'Pati', 1),
(94, 10, 'Pekalongan', 1),
(95, 10, 'Pemalang', 1),
(96, 10, 'Purbalingga', 1),
(97, 10, 'Purworejo', 1),
(98, 10, 'Rembang', 1),
(99, 10, 'Semarang', 1),
(100, 10, 'Sragen', 1),
(101, 10, 'Sukoharjo', 1),
(102, 10, 'Tegal', 1),
(103, 10, 'Temanggung', 1),
(104, 10, 'Wonogiri', 1),
(105, 10, 'Wonosobo', 1),
(106, 11, 'Bangakalan', 1),
(107, 11, 'Banyuwangi', 1),
(108, 11, 'Blitar', 1),
(109, 11, 'Bojonegoro', 1),
(110, 11, 'Bondowoso', 1),
(111, 11, 'Gresik', 1),
(112, 11, 'Jember', 1),
(113, 11, 'Jombang', 1),
(114, 11, 'Kediri', 1),
(115, 11, 'Lamongan', 1),
(116, 11, 'Lumajang', 1),
(117, 11, 'Madiun', 1),
(118, 11, 'Magetan', 1),
(119, 11, 'Malang', 1),
(120, 11, 'Mojokerto', 1),
(121, 11, 'Nganjuk', 1),
(122, 11, 'Ngawi', 1),
(123, 11, 'Pacitan', 1),
(124, 11, 'Pamekasan', 1),
(125, 11, 'Pasuruan', 1),
(126, 11, 'Ponorogo', 1),
(127, 11, 'Probolinggo', 1),
(128, 11, 'Sampang', 1),
(129, 11, 'Sidoarjo', 1),
(130, 11, 'Situbondo', 1),
(131, 11, 'Sumenep', 1),
(132, 11, 'Trenggalek', 1),
(133, 11, 'Tuban', 1),
(134, 11, 'Tulungagung', 1),
(135, 11, 'Batu', 1),
(136, 11, 'Surabaya', 1),
(137, 12, 'Bengkayang', 1),
(138, 12, 'Kapuas Hulu', 1),
(139, 12, 'Ketapang', 1),
(140, 12, 'Landak', 1),
(141, 12, 'Melawi', 1),
(142, 12, 'Pontianak', 1),
(143, 12, 'Sambas', 1),
(144, 12, 'Sanggau', 1),
(145, 12, 'Sukadau', 1),
(146, 12, 'Sintang', 1),
(147, 13, 'Barito Selatan', 1),
(148, 13, 'Barito Timur', 1),
(149, 13, 'Barito Utara', 1),
(150, 13, 'Gunung Mas', 1),
(151, 13, 'Kapuas', 1),
(152, 13, 'Katingan', 1),
(153, 13, 'Kotawaringin Barat', 1),
(154, 13, 'Kotawaringin Timur', 1),
(155, 13, 'Lamandayu', 1),
(156, 13, 'Murung Raya', 1),
(157, 13, 'Pulang Pisau', 1),
(158, 13, 'Sukamara', 1),
(159, 13, 'Seruyan', 1),
(160, 13, 'Palangka Raya', 1),
(161, 14, 'Berau', 1),
(162, 14, 'Bulungan', 1),
(163, 14, 'Kutai Barat', 1),
(164, 14, 'Kutai Kertanegara', 1),
(165, 14, 'Kutai Timur', 1),
(166, 14, 'Malinau', 1),
(167, 14, 'Nunukan', 1),
(168, 14, 'Pasir', 1),
(169, 14, 'Penajam Paser Utara', 1),
(170, 14, 'Balikpapan', 1),
(171, 14, 'Bontang', 1),
(172, 14, 'Samarinda', 1),
(173, 14, 'Tarakan', 1),
(174, 15, 'Balangan', 1),
(175, 15, 'Banjar', 1),
(176, 15, 'Barito Kuala', 1),
(177, 15, 'Hulu Sungai Selatan', 1),
(178, 15, 'Hulu Sungai Tengah', 1),
(179, 15, 'Hulu Sungai Utara', 1),
(180, 15, 'Kota Baru', 1),
(181, 15, 'Kota Laut', 1),
(182, 15, 'Tabalong', 1),
(183, 15, 'Tanah Bambu', 1),
(184, 15, 'Tapin', 1),
(185, 15, 'Banjarbaru', 1),
(186, 15, 'Banjarmasin', 1),
(187, 16, 'Bangka', 1),
(188, 16, 'Bangka Barat', 1),
(189, 16, 'Bangka Tengah', 1),
(190, 16, 'Bangka Selatan', 1),
(191, 16, 'Belitung', 1),
(192, 16, 'Belitung Timur', 1),
(193, 16, 'Pangkal Pinang', 1),
(194, 17, 'Lampung Barat', 1),
(195, 17, 'Lampung Selatan', 1),
(196, 17, 'Lampung Tengah', 1),
(197, 17, 'Lampung Timur', 1),
(198, 17, 'Lampung Utara', 1),
(199, 17, 'Way Kanan', 1),
(200, 17, 'Tanggamus', 1),
(201, 17, 'Tulang Bawang', 1),
(202, 17, 'Bandar Lampung', 1),
(203, 17, 'Metro', 1),
(204, 18, 'Buru', 1),
(205, 18, 'Kepulauan Aru', 1),
(206, 18, 'Maluku Tengah', 1),
(207, 18, 'Maluku Tenggara', 1),
(208, 18, 'Maluku Tenggara Barat', 1),
(209, 18, 'Seram Bagian Barat', 1),
(210, 18, 'Seram Bagian Timur', 1),
(211, 18, 'Ambon', 1),
(212, 19, 'Halmahera Barat', 1),
(213, 19, 'Halmahera Selatan', 1),
(214, 19, 'Halmahera Tengah', 1),
(215, 19, 'Halmahera Timur', 1),
(216, 19, 'Halmahera Utara', 1),
(217, 19, 'Kepulauan Sula', 1),
(218, 19, 'Ternate', 1),
(219, 19, 'Tidore', 1),
(220, 20, 'Aceh Barat', 1),
(221, 20, 'Aceh Barat Daya', 1),
(222, 20, 'Aceh Besar', 1),
(223, 20, 'Aceh Jaya', 1),
(224, 20, 'Aceh Selatan', 1),
(225, 20, 'Aceh Singkil', 1),
(226, 20, 'Aceh Tamiang', 1),
(227, 20, 'Aceh Tengah', 1),
(228, 20, 'Aceh Tenggara', 1),
(229, 20, 'Aceh Timur', 1),
(230, 20, 'Aceh Utara', 1),
(231, 20, 'Bener Meriah', 1),
(232, 20, 'Bireuen', 1),
(233, 20, 'Gayo Lues', 1),
(234, 20, 'Nagan Raya', 1),
(235, 20, 'Pidie', 1),
(236, 20, 'Simeulue', 1),
(237, 20, 'Banda Aceh', 1),
(238, 20, 'Langsa', 1),
(239, 20, 'Lhokseumawe', 1),
(240, 20, 'Sabang', 1),
(241, 21, 'Bima', 1),
(242, 21, 'Dompu', 1),
(243, 21, 'Lombok Barat', 1),
(244, 21, 'Lombok Tengah', 1),
(245, 21, 'Lombok Timur', 1),
(246, 21, 'Sumbawa', 1),
(247, 21, 'Sumbawa Barat', 1),
(248, 21, 'Mataram', 1),
(249, 22, 'Alor', 1),
(250, 22, 'Belu', 1),
(251, 22, 'Ende', 1),
(252, 22, 'Flores Timur', 1),
(253, 22, 'Kupang', 1),
(254, 22, 'Lembata', 1),
(255, 22, 'Manggarai', 1),
(256, 22, 'Manggarai Barat', 1),
(257, 22, 'Ngada', 1),
(258, 22, 'Rote Ndau', 1),
(259, 22, 'Sikka', 1),
(260, 22, 'Sumba Barat', 1),
(261, 22, 'Sumba Timur', 1),
(262, 22, 'Timor Tengah Selatan', 1),
(263, 22, 'Timor Tengah Utara', 1),
(264, 22, 'Kupang', 1),
(265, 23, 'Asmat', 1),
(266, 23, 'Biak Numfor', 1),
(267, 23, 'Boven Digoel', 1),
(268, 23, 'Jayapura', 1),
(269, 23, 'Jayawijaya', 1),
(270, 23, 'Keeron', 1),
(271, 23, 'Mappi', 1),
(272, 23, 'Merauke', 1),
(273, 23, 'Mimika', 1),
(274, 23, 'Nabire', 1),
(275, 23, 'Paniai', 1),
(276, 23, 'Pegunungan Bintang', 1),
(277, 23, 'Puncak Jaya', 1),
(278, 23, 'Sarmi', 1),
(279, 23, 'Sapiori', 1),
(280, 23, 'Tolikara', 1),
(281, 23, 'Waropen', 1),
(282, 23, 'Yahukimo', 1),
(283, 23, 'Yapen Waropen', 1),
(284, 24, 'Bengkalis', 1),
(285, 24, 'Indragiri Hilir', 1),
(286, 24, 'Indragiri Hulu', 1),
(287, 24, 'Kampar', 1),
(288, 24, 'Kuantan Singingi', 1),
(289, 24, 'Pelalawan', 1),
(290, 24, 'Rokan Hulu', 1),
(291, 24, 'Rokan Hilir', 1),
(292, 24, 'Siak', 1),
(293, 24, 'Dumai', 1),
(294, 24, 'Pekanbaru', 1),
(295, 25, 'Karimun', 1),
(296, 25, 'Bintan', 1),
(297, 25, 'Lingga', 1),
(298, 25, 'Natuna', 1),
(299, 25, 'Batam', 1),
(300, 25, 'Tanjung Pinang', 1),
(301, 26, 'Majene', 1),
(302, 26, 'Mamasa', 1),
(303, 26, 'Mamuju', 1),
(304, 26, 'Mamuju Utara', 1),
(305, 26, 'Polewali Mandar', 1),
(306, 27, 'Banggai', 1),
(307, 27, 'Banggai Kepulauan', 1),
(308, 27, 'Buol', 1),
(309, 27, 'Donggala', 1),
(310, 27, 'Morowali', 1),
(311, 27, 'Pirigi Moutong', 1),
(312, 27, 'Poso', 1),
(313, 27, 'Tojo Una-Una', 1),
(314, 27, 'Toli-Toli', 1),
(315, 27, 'Palu', 1),
(316, 28, 'Bombana', 1),
(317, 28, 'Buton', 1),
(318, 28, 'Kolaka', 1),
(319, 28, 'Kolaka Utara', 1),
(320, 28, 'Konawe', 1),
(321, 28, 'Konawe Selatan', 1),
(322, 28, 'Muna', 1),
(323, 28, 'Wakatobi', 1),
(324, 28, 'Bau-Bau', 1),
(325, 28, 'Kendari', 1),
(326, 29, 'Bantaeng', 1),
(327, 29, 'Barru', 1),
(328, 29, 'Bone', 1),
(329, 29, 'Bulukumba', 1),
(330, 29, 'Enrekang', 1),
(331, 29, 'Gowa', 1),
(332, 29, 'Jeneponto', 1),
(333, 29, 'Luwu', 1),
(334, 29, 'Luwu Timur', 1),
(335, 29, 'Luwu Utara', 1),
(336, 29, 'Maros', 1),
(337, 29, 'Pangkajene Kepulauan', 1),
(338, 29, 'Pinrang', 1),
(339, 29, 'Selayar', 1),
(340, 29, 'Sinjai', 1),
(341, 29, 'Sidenreng Rappang', 1),
(342, 29, 'Soppeng', 1),
(343, 29, 'Takalar', 1),
(344, 29, 'Tana Toraja', 1),
(345, 29, 'Wajo', 1),
(346, 29, 'Makassar', 1),
(347, 29, 'Palopo', 1),
(348, 29, 'Pare-Pare', 1),
(349, 30, 'Bolaang Mongondow', 1),
(350, 30, 'Kepulaun Sangihe', 1),
(351, 30, 'Kepulauan Talaud', 1),
(352, 30, 'Minahasa', 1),
(353, 30, 'Minahasa Selatan', 1),
(354, 30, 'Minahasa Utara', 1),
(355, 30, 'Bitung', 1),
(356, 30, 'Manado', 1),
(357, 30, 'Tomohon', 1),
(358, 31, 'Agam', 1),
(359, 31, 'Dharmasraya', 1),
(360, 31, 'Limapuluh Koto', 1),
(361, 31, 'Kepulauan Mentawai', 1),
(362, 31, 'Padang Pariaman', 1),
(363, 31, 'Pasaman', 1),
(364, 31, 'Pasaman Barat', 1),
(365, 31, 'Pesisir Selatan', 1),
(366, 31, 'Sawahlunto Sijunjung', 1),
(367, 31, 'Solok', 1),
(368, 31, 'Solok Selatan', 1),
(369, 31, 'Tanah Datar', 1),
(370, 31, 'Bukittinggi', 1),
(371, 31, 'Padang', 1),
(372, 31, 'Padang Panjang', 1),
(373, 31, 'Pariaman', 1),
(374, 31, 'Payakumbuh', 1),
(375, 32, 'Banyuasin', 1),
(376, 32, 'Lahat', 1),
(377, 32, 'Muara Enim', 1),
(378, 32, 'Musi Banyuasin', 1),
(379, 32, 'Musi Rawas', 1),
(380, 32, 'Ogan Ilir', 1),
(381, 32, 'Ogan Komering Ilir', 1),
(382, 32, 'Ogan Komering Ulu', 1),
(383, 32, 'Ogan Komering Ulu Timur', 1),
(384, 32, 'Ogan Komering Ulu Selatan', 1),
(385, 32, 'Lubuklinggau', 1),
(386, 32, 'Pagar Alam', 1),
(387, 32, 'Palembang', 1),
(388, 32, 'Prabumulih', 1),
(389, 33, 'Asahan', 1),
(390, 33, 'Dairi', 1),
(391, 33, 'Deli Serdang', 1),
(392, 33, 'Humbang Hasundatan', 1),
(393, 33, 'Karo', 1),
(394, 33, 'Labuhan Batu', 1),
(395, 33, 'Langkat', 1),
(396, 33, 'Mandailing Natal', 1),
(397, 33, 'Nias', 1),
(398, 33, 'Nias Selatan', 1),
(399, 33, 'Pakpak Bharat', 1),
(400, 33, 'Samosir', 1),
(401, 33, 'Serdang Bedagai', 1),
(402, 33, 'Simalungun', 1),
(403, 33, 'Tapanuli Selatan', 1),
(404, 33, 'Tapanuli Tengah', 1),
(405, 33, 'Tapanuli Utara', 1),
(406, 33, 'Toba Samosir', 1),
(407, 33, 'Binjai', 1),
(408, 33, 'Medan', 1),
(409, 33, 'Padang Sidempuan', 1),
(410, 33, 'Pematangsiantar', 1),
(411, 33, 'Sibolga', 1),
(412, 33, 'Tanjung Balai', 1),
(413, 33, 'Tebing Tinggi', 1),
(2019, 10, 'Salatiga', 1),
(2020, 23, 'Timika', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_conf_barang`
--

CREATE TABLE `mu_conf_barang` (
  `id_conf_barang` int(11) NOT NULL,
  `kode_barang` enum('default','angka') NOT NULL,
  `harga_grosir` enum('visible','hidden') NOT NULL,
  `grosir_berdasarkan` enum('multi_satuan','jumlah_minimal') NOT NULL,
  `harga_kategori_pelanggan` enum('visible','hidden') NOT NULL,
  `kode_satuan` varchar(11) NOT NULL,
  `konversi_satuan_beli` enum('visible','hidden') NOT NULL,
  `sertakan_gambar` enum('visible','hidden') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_conf_barang`
--

INSERT INTO `mu_conf_barang` (`id_conf_barang`, `kode_barang`, `harga_grosir`, `grosir_berdasarkan`, `harga_kategori_pelanggan`, `kode_satuan`, `konversi_satuan_beli`, `sertakan_gambar`) VALUES
(1, 'default', 'visible', 'multi_satuan', 'visible', 'bh', 'visible', 'visible');

-- --------------------------------------------------------

--
-- Table structure for table `mu_conf_penjualan`
--

CREATE TABLE `mu_conf_penjualan` (
  `id_conf_penjualan` int(11) NOT NULL,
  `terapkan_pajak` enum('visible','hidden') NOT NULL,
  `font_totalbayar_besar` enum('visible','hidden') NOT NULL,
  `posisi_totalbayar_besar` enum('atas','bawah') NOT NULL,
  `font_jumlahbayar_besar` enum('visible','hidden') NOT NULL,
  `tipe_diskon` enum('persen','uang') NOT NULL,
  `terapkan_perubahan_diskon` enum('visible','hidden') NOT NULL,
  `terapkan_perubahan_harga` enum('visible','hidden') NOT NULL,
  `terapkan_batas_piutang` enum('visible','hidden') NOT NULL,
  `id_jatuh_tempo` int(11) NOT NULL,
  `menunjang_penjualan_tunggu` enum('visible','hidden') NOT NULL,
  `sertakan_nama_penjual` enum('visible','hidden') NOT NULL,
  `sertakan_biaya_kirim` enum('visible','hidden') NOT NULL,
  `diskon_agen_expadisi` enum('visible','hidden') NOT NULL,
  `tipe_diskon_ekspedisi` enum('persen','uang') NOT NULL,
  `diskon_untuk_pelanggan` enum('visible','hidden') NOT NULL,
  `tipe_diskon_pelanggan` enum('persen','uang') NOT NULL,
  `kode_satuan` varchar(11) NOT NULL,
  `keterangan_perbarang` enum('visible','hidden') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_conf_penjualan`
--

INSERT INTO `mu_conf_penjualan` (`id_conf_penjualan`, `terapkan_pajak`, `font_totalbayar_besar`, `posisi_totalbayar_besar`, `font_jumlahbayar_besar`, `tipe_diskon`, `terapkan_perubahan_diskon`, `terapkan_perubahan_harga`, `terapkan_batas_piutang`, `id_jatuh_tempo`, `menunjang_penjualan_tunggu`, `sertakan_nama_penjual`, `sertakan_biaya_kirim`, `diskon_agen_expadisi`, `tipe_diskon_ekspedisi`, `diskon_untuk_pelanggan`, `tipe_diskon_pelanggan`, `kode_satuan`, `keterangan_perbarang`) VALUES
(1, 'visible', 'hidden', 'atas', 'visible', 'uang', 'hidden', 'hidden', 'visible', 4, 'visible', 'hidden', 'visible', 'visible', 'persen', 'visible', 'uang', 'kodi', 'hidden');

-- --------------------------------------------------------

--
-- Table structure for table `mu_conf_perusahaan`
--

CREATE TABLE `mu_conf_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `npwp_perusahaan` varchar(100) NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fax` varchar(150) NOT NULL,
  `website` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mu_country`
--

CREATE TABLE `mu_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_country`
--

INSERT INTO `mu_country` (`country_id`, `name`, `id_users`) VALUES
(1, 'Indonesia', 1),
(2, 'Inggris', 1),
(3, 'Malaysia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_departemen`
--

CREATE TABLE `mu_departemen` (
  `id_departemen` int(11) NOT NULL,
  `nama_departemen` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_departemen`
--

INSERT INTO `mu_departemen` (`id_departemen`, `nama_departemen`, `keterangan`, `id_users`) VALUES
(1, 'Direksi', 'Direksi Usaha', 1),
(2, 'Keuangan', 'Bagian Keuangan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_gudang`
--

CREATE TABLE `mu_gudang` (
  `id_gudang` int(11) NOT NULL,
  `nama_gudang` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_gudang`
--

INSERT INTO `mu_gudang` (`id_gudang`, `nama_gudang`) VALUES
(1, 'COT'),
(2, 'Gudang PT.POS'),
(3, '3PL');

-- --------------------------------------------------------

--
-- Table structure for table `mu_jabatan`
--

CREATE TABLE `mu_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_jabatan`
--

INSERT INTO `mu_jabatan` (`id_jabatan`, `nama_jabatan`, `keterangan`, `id_users`) VALUES
(2, 'KASIR', 'Petugas Kasir Penjualan', 1),
(1, 'ADMIN', 'Orang yang melayani pelayanan atau service (jasa) seperti teknisi dan mekanik', 1),
(3, 'PEMILIK', 'Owner atau Pemilik Usaha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_jatuh_tempo`
--

CREATE TABLE `mu_jatuh_tempo` (
  `id_jatuh_tempo` int(11) NOT NULL,
  `hari_jatuh_tempo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_jatuh_tempo`
--

INSERT INTO `mu_jatuh_tempo` (`id_jatuh_tempo`, `hari_jatuh_tempo`) VALUES
(1, '1'),
(2, '3'),
(3, '7'),
(4, '15'),
(5, '20'),
(6, '30'),
(7, '40'),
(8, '60');

-- --------------------------------------------------------

--
-- Table structure for table `mu_jenis_kelamin`
--

CREATE TABLE `mu_jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL,
  `nama_jenis_kelamin` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_jenis_kelamin`
--

INSERT INTO `mu_jenis_kelamin` (`id_jenis_kelamin`, `nama_jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `mu_karyawan`
--

CREATE TABLE `mu_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `id_jenis_kelamin` int(11) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` int(11) NOT NULL,
  `id_status_pernikahan` int(11) NOT NULL,
  `alamat_karyawan_1` varchar(255) NOT NULL,
  `alamat_karyawan_2` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `telepon_karyawan` varchar(15) NOT NULL,
  `hp_karyawan` varchar(15) NOT NULL,
  `email_karyawan` varchar(150) NOT NULL,
  `website_karyawan` varchar(255) NOT NULL,
  `kode_pos_karyawan` int(10) NOT NULL,
  `fax_karyawan` varchar(15) NOT NULL,
  `chat_karyawan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `foto_karyawan` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `id_status_karyawan` int(11) NOT NULL,
  `aktif` enum('ya','tidak') NOT NULL,
  `id_users` int(11) NOT NULL,
  `waktu_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_karyawan`
--

INSERT INTO `mu_karyawan` (`id_karyawan`, `username`, `password`, `nik`, `nama_karyawan`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `id_agama`, `id_status_pernikahan`, `alamat_karyawan_1`, `alamat_karyawan_2`, `city_id`, `state_id`, `country_id`, `telepon_karyawan`, `hp_karyawan`, `email_karyawan`, `website_karyawan`, `kode_pos_karyawan`, `fax_karyawan`, `chat_karyawan`, `keterangan`, `foto_karyawan`, `id_jabatan`, `id_departemen`, `tanggal_masuk`, `id_status_karyawan`, `aktif`, `id_users`, `waktu_daftar`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '547435345322', 'Tia', 2, 'Sumedang', '1999-12-26', 1, 2, 'Mekarsari', '', 72, 9, 1, '085655580445', '085655580445', 'tia@gmail.com', 'http://tia.com', 56789, '077702145', 'bagusprasetya96@gmail.com', '', 'rob.jpg', 1, 2, '2016-02-12', 1, 'ya', 1, '2020-02-09 18:45:47'),
(3, 'pemilik', '58399557dae3c60e23c78606771dfa3d', '123456789', 'Pemilik', 1, 'Bandung', '1997-12-26', 1, 1, 'Bandung', '', 194, 17, 1, '123456', '456', 'y@gmail.com', 'http://yyyy.com', 12346, '123456', 'bsadbhsad', 'fenwj', '', 3, 1, '2019-12-12', 1, 'ya', 1, '2020-02-09 19:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `mu_kategori`
--

CREATE TABLE `mu_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_kategori`
--

INSERT INTO `mu_kategori` (`id_kategori`, `nama_kategori`, `id_users`) VALUES
(4, 'Kerudung', 1),
(2, 'Barang Dingin', 1),
(5, 'Sepatu', 1),
(6, 'ALAT TULIS', 1),
(7, 'MAKANAN', 1),
(8, 'Elektronik', 1),
(9, 'Aksesoris', 1),
(10, 'Kosmetik', 1),
(11, 'Fashion', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_kategori_pelanggan`
--

CREATE TABLE `mu_kategori_pelanggan` (
  `id_kategori_pelanggan` int(11) NOT NULL,
  `nama_kategori_pelanggan` varchar(255) NOT NULL,
  `permanen` enum('y','n') NOT NULL DEFAULT 'n',
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_kategori_pelanggan`
--

INSERT INTO `mu_kategori_pelanggan` (`id_kategori_pelanggan`, `nama_kategori_pelanggan`, `permanen`, `id_users`) VALUES
(1, 'Pelanggan Umum', 'y', 1),
(2, 'Teknisi', 'n', 1),
(3, 'Cabang Usaha', 'n', 1),
(5, 'Members A', 'n', 1),
(6, 'Members B', 'n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_pelanggan`
--

CREATE TABLE `mu_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_kategori_pelanggan` int(11) NOT NULL,
  `id_type_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `kontak_pelanggan` varchar(150) NOT NULL,
  `alamat_pelanggan_1` varchar(255) NOT NULL,
  `alamat_pelanggan_2` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `telpon_pelanggan` varchar(15) NOT NULL,
  `hp_pelanggan` varchar(15) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `website_pelanggan` varchar(100) NOT NULL,
  `kode_pos_pelanggan` int(10) NOT NULL,
  `fax_pelanggan` varchar(15) NOT NULL,
  `chat_pelanggan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL,
  `waktu_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pelanggan`
--

INSERT INTO `mu_pelanggan` (`id_pelanggan`, `id_kategori_pelanggan`, `id_type_pelanggan`, `nama_pelanggan`, `kontak_pelanggan`, `alamat_pelanggan_1`, `alamat_pelanggan_2`, `city_id`, `state_id`, `country_id`, `telpon_pelanggan`, `hp_pelanggan`, `email_pelanggan`, `website_pelanggan`, `kode_pos_pelanggan`, `fax_pelanggan`, `chat_pelanggan`, `keterangan`, `id_users`, `waktu_daftar`) VALUES
(1, 1, 1, 'Dewiit Safitri', '081265253322 (Dedew)', 'Jln, Saruko Rayo Bamato', '', 373, 31, 1, '0751223311', '085263012000', 'dewitt.safitri@gmail.com', 'http://dewiit.com', 45789, '0751220011', 'dewitt.safitri@yahoo.com', '', 1, '2016-12-31 09:13:22'),
(2, 2, 2, 'Arsenio Orlando', '082173054500', 'Jln. Ulak Karang Raya', '', 373, 31, 1, '0751635899', '082365447899', 'arsenio@gmail.com', 'http://arsenio.com', 45123, '0751567788', 'arsenio@yahoo.com', '', 1, '2016-12-31 06:24:12'),
(3, 5, 1, 'Jaja', '123', 'ghafdwnjdbesh', 'dbwsjhd', 202, 17, 1, '123', '213', 'ghs@gmail.com', 'http://bbb.com', 413545, '123456', '', '', 1, '2020-02-09 18:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pelanggan_piutang`
--

CREATE TABLE `mu_pelanggan_piutang` (
  `id_pelanggan_piutang` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `batas_piutang` int(11) NOT NULL,
  `batas_frekuensi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pelanggan_piutang`
--

INSERT INTO `mu_pelanggan_piutang` (`id_pelanggan_piutang`, `id_pelanggan`, `batas_piutang`, `batas_frekuensi`) VALUES
(1, 2, 750000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mu_pembelian`
--

CREATE TABLE `mu_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_type_bayar` int(11) DEFAULT NULL,
  `keterangan` text NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `referensi` varchar(255) NOT NULL,
  `kepada_attention` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `waktu_pembelian` datetime NOT NULL,
  `no_return` int(11) NOT NULL,
  `tgl_kirim_return` date NOT NULL,
  `keterangan_return` text NOT NULL,
  `tanggal_return` date NOT NULL,
  `waktu_return` datetime NOT NULL,
  `id_pembelian_terima` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pembelian`
--

INSERT INTO `mu_pembelian` (`id_pembelian`, `kode_pembelian`, `tgl_kirim`, `id_karyawan`, `id_supplier`, `id_type_bayar`, `keterangan`, `tgl_pembelian`, `tgl_terima`, `referensi`, `kepada_attention`, `id_users`, `waktu_pembelian`, `no_return`, `tgl_kirim_return`, `keterangan_return`, `tanggal_return`, `waktu_return`, `id_pembelian_terima`) VALUES
(3, 'PO-000003', '2017-05-08', 1, 4, 1, 'asdasdsadas', '2017-05-09', '0000-00-00', '-', 'Direktur PT. Karimie Indonesia', 1, '2017-05-08 09:32:04', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(13, 'DO-000002', '2020-02-09', 2, 1, NULL, 'nxjsnx', '2020-02-09', '0000-00-00', 'x ', 'aa', 1, '2020-02-09 19:21:10', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(14, 'DO-000003', '2020-02-09', 1, 1, NULL, 'q', '2020-02-09', '0000-00-00', 'ss', 'ss', 1, '2020-02-09 19:37:51', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(15, 'DO-000015', '2020-02-09', 0, 0, NULL, '', '2020-02-09', '0000-00-00', 'n', 'm', 1, '2020-02-09 19:57:33', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(16, 'DO-000016', '2020-02-09', 0, 0, NULL, '', '2020-02-09', '0000-00-00', 'l', 'n', 1, '2020-02-09 20:09:44', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(17, 'DO-000004', '2020-02-09', 2, 4, NULL, '', '2020-02-09', '0000-00-00', 'm', 'b', 1, '2020-02-09 20:12:03', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(18, 'DO-000018', '2020-02-09', 2, 4, NULL, '', '2020-02-09', '0000-00-00', 'b', 'w', 1, '2020-02-09 20:13:31', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(19, 'DO-000019', '2020-02-09', 2, 5, NULL, '', '2020-02-09', '0000-00-00', 'n', 'vgvh', 1, '2020-02-09 20:19:43', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(20, 'DO-000020', '2020-02-09', 1, 1, NULL, '', '2020-02-09', '0000-00-00', 'uuu', 's', 1, '2020-02-09 20:25:23', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(21, 'DO-000021', '2020-02-09', 1, 5, NULL, '', '2020-02-09', '0000-00-00', 'kkk', 'qqq', 1, '2020-02-09 20:31:58', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(32, 'DO-000032', '2020-02-12', 1, 4, 1, '', '2020-02-11', '0000-00-00', 'n', 'n', 1, '2020-02-12 05:56:09', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(23, 'DO-000023', '2020-02-09', 1, 1, 1, 'f', '2020-02-09', '0000-00-00', 'e', 'q', 1, '2020-02-09 20:53:08', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(24, 'DO-000024', '2020-02-09', 1, 4, NULL, 'haisdhaksjd', '2020-02-09', '0000-00-00', 'nsjdaskdj', 'gudang', 1, '2020-02-09 21:00:50', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(25, 'DO-000025', '2020-02-09', 1, 5, 1, '', '2020-02-09', '0000-00-00', 'g', 'g', 1, '2020-02-09 21:05:07', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(26, 'DO-000026', '2020-02-11', 1, 1, 1, '', '2020-02-11', '0000-00-00', 'q', 'q', 1, '2020-02-11 07:11:06', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(27, 'DO-000027', '2020-02-12', 1, 5, 1, '', '2020-02-12', '0000-00-00', 'm', 'm', 1, '2020-02-12 03:58:24', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(29, 'DO-000028', '2020-02-12', 1, 5, 1, '', '2020-02-12', '0000-00-00', 't', 'r', 1, '2020-02-12 05:44:25', 0, '0000-00-00', '', '0000-00-00', '2020-02-12 21:49:05', 0),
(30, 'DO-000030', '2020-02-12', 1, 4, 1, '', '2020-02-12', '0000-00-00', 'y', 'u', 1, '2020-02-12 05:46:35', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(31, 'DO-000031', '2020-02-12', 1, 5, 1, '', '2020-02-12', '0000-00-00', 't', 't', 1, '2020-02-12 05:52:34', 0, '0000-00-00', '', '0000-00-00', '2020-02-12 21:55:07', 0),
(33, 'DO-000033', '2020-02-12', 1, 5, 1, '', '2020-02-12', '0000-00-00', 'hjd', 'fcas', 1, '2020-02-12 07:15:14', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(34, 'DO-000034', '2020-02-12', 1, 5, 1, '', '2020-02-12', '0000-00-00', 'llll', 'ghfg', 1, '2020-02-12 07:21:29', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(35, 'DO-000035', '2020-02-12', 0, 0, 1, '', '2020-02-12', '0000-00-00', 'jkh', 'khkjh', 1, '2020-02-12 07:41:22', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(36, 'DO-000036', '2020-02-12', 1, 1, 1, '', '2020-02-12', '0000-00-00', 'ghjh', 'rtdzd', 1, '2020-02-12 07:44:25', 0, '2020-02-04', '', '2020-02-10', '2020-02-13 05:37:43', 1),
(37, 'DO-000037', '2020-02-12', 1, 1, 1, '', '2020-02-12', '0000-00-00', 'b', 'm', 1, '2020-02-12 07:47:00', 48, '2020-02-10', '', '2020-02-03', '2020-02-13 05:38:20', 1),
(38, 'DO-000038', '2020-02-12', 0, 0, 1, '', '2020-02-12', '0000-00-00', 'm', 'q', 1, '2020-02-12 08:36:58', 0, '2020-02-11', '', '0000-00-00', '2020-02-13 05:56:42', 1),
(39, 'DO-000039', '2020-02-12', 0, 0, 1, '', '2020-02-12', '0000-00-00', 'b', 'n', 1, '2020-02-12 19:35:58', 8, '2020-01-30', '', '2020-02-11', '2020-02-13 05:58:11', 1),
(40, 'DO-000040', '2020-02-12', 2, 4, NULL, '', '2020-02-12', '0000-00-00', 'v', 'c', 1, '2020-02-12 19:38:15', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(41, 'DO-000041', '2020-02-12', 2, 4, 1, '', '2020-02-12', '0000-00-00', 'd', 's', 1, '2020-02-12 19:40:45', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(42, 'BK-000042', '2020-02-12', 0, 0, 1, '', '2020-02-12', '0000-00-00', 's', 'a', 1, '2020-02-12 19:52:31', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(44, 'DO-000043', '2020-02-12', 2, 1, 1, '', '2020-02-12', '0000-00-00', '45', 'l', 1, '2020-02-12 21:08:35', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(45, '', '0000-00-00', 0, 0, 1, '', '0000-00-00', '0000-00-00', '', '', 1, '0000-00-00 00:00:00', 0, '0000-00-00', '', '0000-00-00', '2020-02-12 21:52:33', 0),
(46, '', '0000-00-00', 0, 0, 1, '', '0000-00-00', '0000-00-00', '', '', 1, '0000-00-00 00:00:00', 123445, '2020-02-04', 'kljug', '2020-02-20', '2020-02-13 05:32:21', 1),
(47, '', '0000-00-00', 0, 0, 1, '', '0000-00-00', '0000-00-00', '', '', 1, '0000-00-00 00:00:00', 0, '2020-02-02', '', '2020-02-12', '2020-02-13 05:36:10', 1),
(48, 'DO-000048', '2020-02-13', 0, 0, 1, '', '2020-02-13', '0000-00-00', 'h', 't', 1, '2020-02-13 09:36:25', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(49, 'DO-000049', '2020-02-14', 1, 5, 1, '', '2020-02-14', '0000-00-00', 'r', 'r', 1, '2020-02-14 08:00:24', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0),
(50, 'DO-000050', '2020-02-17', 0, 0, 1, '', '2020-02-17', '0000-00-00', 'v', 'e', 1, '2020-02-17 06:49:45', 0, '0000-00-00', '', '0000-00-00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mu_pembelian_detail`
--

CREATE TABLE `mu_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `jml_pesan` int(11) NOT NULL,
  `harga_pesan` int(11) DEFAULT NULL,
  `keterangan` char(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pembelian_detail`
--

INSERT INTO `mu_pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_barang`, `id_rak`, `jml_pesan`, `harga_pesan`, `keterangan`) VALUES
(78, 14, 2, 0, 1, NULL, NULL),
(80, 20, 5, 0, 1, NULL, NULL),
(49, 30, 2, 0, 1, NULL, NULL),
(23, 15, 6, 0, 1, NULL, NULL),
(22, 14, 3, 0, 1, NULL, NULL),
(24, 15, 5, 0, 5, NULL, NULL),
(25, 16, 3, 0, 1, NULL, NULL),
(26, 16, 5, 0, 4, NULL, NULL),
(27, 17, 2, 0, 4, NULL, NULL),
(28, 17, 3, 0, 1, NULL, NULL),
(29, 18, 8, 0, 1, 0, NULL),
(30, 18, 6, 0, 0, 0, NULL),
(81, 44, 5, 0, 1, NULL, NULL),
(32, 20, 3, 0, 1, NULL, NULL),
(33, 20, 2, 0, 1, NULL, NULL),
(36, 18, 5, 0, 1, NULL, NULL),
(52, 32, 5, 0, 45, NULL, NULL),
(87, 26, 5, 0, 1, NULL, NULL),
(92, 31, 5, 0, 1, NULL, NULL),
(88, 27, 3, 0, 2, NULL, NULL),
(91, 30, 5, 0, 2, NULL, NULL),
(45, 27, 8, 0, 54, NULL, NULL),
(94, 35, 5, 0, 1, NULL, NULL),
(53, 33, 2, 0, 12, NULL, NULL),
(95, 36, 5, 0, 1, NULL, NULL),
(98, 39, 3, 0, 1, NULL, NULL),
(71, 42, 2, 0, 1, NULL, NULL),
(101, 49, 5, 0, 1, NULL, NULL),
(100, 48, 5, 0, 1, NULL, NULL),
(99, 40, 0, 0, 0, NULL, NULL),
(70, 41, 2, 0, 12, NULL, NULL),
(75, 11, 5, 0, 1, NULL, NULL),
(74, 10, 3, 0, 1, NULL, NULL),
(76, 12, 3, 0, 1, NULL, NULL),
(77, 13, 5, 0, 2, NULL, NULL),
(83, 22, 5, 0, 1, NULL, NULL),
(103, 50, 22, 0, 1, NULL, 'baru');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pembelian_return`
--

CREATE TABLE `mu_pembelian_return` (
  `id_pembelian_return` int(11) NOT NULL,
  `id_pembelian_terima` int(11) NOT NULL,
  `no_return` varchar(50) NOT NULL,
  `tgl_kirim_return` date NOT NULL,
  `id_type_bayar` int(11) NOT NULL,
  `keterangan_return` text NOT NULL,
  `tanggal_return` date NOT NULL,
  `id_users` int(11) NOT NULL,
  `waktu_return` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pembelian_return`
--

INSERT INTO `mu_pembelian_return` (`id_pembelian_return`, `id_pembelian_terima`, `no_return`, `tgl_kirim_return`, `id_type_bayar`, `keterangan_return`, `tanggal_return`, `id_users`, `waktu_return`) VALUES
(1, 1, 'RET-001', '2017-02-14', 1, 'Sudah dibayarkan semua,..', '2017-02-14', 1, '2017-02-13 05:41:35'),
(2, 4, 'RET-003', '2019-01-31', 1, '-', '2019-01-31', 1, '2019-01-31 14:41:32'),
(3, 3, 'REF-123', '2020-02-10', 1, 'barang bocor', '2020-02-13', 1, '2020-02-09 23:37:49'),
(4, 7, 'REF-121', '2020-02-12', 1, '', '2020-02-10', 1, '2020-02-10 05:16:52'),
(5, 6, 'REF-122', '2020-02-10', 1, '', '2020-02-13', 1, '2020-02-10 06:00:21'),
(6, 28, 'b4', '2020-02-12', 1, '', '2020-02-04', 1, '2020-02-12 07:24:21'),
(7, 28, '777', '2020-02-16', 1, '', '2020-02-18', 1, '2020-02-12 18:05:28'),
(8, 28, 'z', '2020-02-04', 1, '', '2020-02-11', 1, '2020-02-12 19:55:47'),
(9, 28, 'zzzzzzz', '2020-02-13', 1, '', '2020-02-13', 1, '2020-02-12 19:58:58'),
(10, 0, '1298', '2020-02-19', 1, '', '2020-02-11', 1, '2020-02-12 20:24:36'),
(11, 0, '79', '2020-02-13', 1, '', '2020-02-04', 1, '2020-02-12 20:26:29'),
(71, 0, 'BK-000071', '2020-02-14', 1, '', '2020-02-14', 1, '2020-02-14 07:16:41'),
(15, 28, '13', '2020-02-25', 1, '', '2020-02-27', 1, '2020-02-12 20:33:25'),
(16, 28, 'BK-000073', '2020-02-11', 1, '', '2020-02-12', 1, '2020-02-12 20:33:46'),
(17, 28, 'BK-000002', '2020-02-11', 1, '', '2020-02-13', 1, '2020-02-12 20:34:19'),
(18, 28, 'BK-000001', '2020-02-24', 1, '', '2020-02-04', 1, '2020-02-12 20:35:46'),
(20, 0, 'b4', '2020-02-12', 1, '', '2020-02-15', 1, '2020-02-12 21:05:38'),
(67, 0, 'BK-000067', '2020-02-13', 1, '', '0000-00-00', 1, '2020-02-13 19:17:02'),
(23, 0, 'BRG-000001', '2020-02-11', 1, '', '2020-02-15', 1, '2020-02-12 21:21:02'),
(66, 0, 'BK-000066', '2020-02-13', 2, 'p', '0000-00-00', 1, '2020-02-13 19:14:11'),
(26, 0, 'b123', '2020-02-12', 1, '', '0000-00-00', 1, '2020-02-12 21:35:36'),
(70, 0, 'BK-000070', '2020-02-14', 1, '', '2020-02-14', 1, '2020-02-14 07:02:36'),
(68, 0, 'BK-000068', '2020-02-14', 1, 'yuy', '2020-02-13', 1, '2020-02-13 19:36:52'),
(69, 0, 'BK-000069', '2020-02-13', 1, '', '2020-02-13', 1, '2020-02-13 21:16:14'),
(35, 1, '123445', '2020-02-04', 1, 'kljug', '2020-02-20', 1, '2020-02-13 05:32:21'),
(36, 1, 'p44464548', '2020-02-02', 1, '', '2020-02-12', 1, '2020-02-13 05:36:10'),
(37, 1, 'c321', '2020-02-04', 1, '', '2020-02-10', 1, '2020-02-13 05:37:43'),
(38, 1, '48', '2020-02-10', 1, '', '2020-02-03', 1, '2020-02-13 05:38:20'),
(39, 1, 'kl', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 05:56:42'),
(40, 1, '8', '2020-01-30', 1, '', '2020-02-11', 1, '2020-02-13 05:58:11'),
(41, 1, 'x', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 06:03:23'),
(42, 1, 'qr', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:31:38'),
(43, 1, 'x', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 06:05:39'),
(44, 1, 'x', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 06:05:42'),
(45, 1, 'x', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 06:08:27'),
(46, 1, 'x', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 06:10:37'),
(47, 1, 'x', '2020-02-11', 1, '', '0000-00-00', 1, '2020-02-13 06:11:55'),
(48, 1, 'v', '2020-02-03', 1, '', '2020-02-07', 1, '2020-02-13 06:16:07'),
(49, 1, 'm', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:16:22'),
(50, 1, 'v', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:26:32'),
(51, 1, 'vd', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:26:48'),
(52, 1, 'j', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:28:27'),
(53, 1, 'qr', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:31:38'),
(54, 1, 'n', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 06:38:52'),
(55, 1, 'l', '2020-02-19', 1, '', '0000-00-00', 1, '2020-02-13 06:39:52'),
(56, 1, 'z', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 09:35:40'),
(57, 1, 'z', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 09:35:40'),
(58, 1, '13', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 09:55:34'),
(59, 1, '13', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 09:55:34'),
(60, 1, '12', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 09:56:25'),
(61, 1, '12', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 09:56:25'),
(62, 1, '1', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 10:04:04'),
(63, 1, '1', '0000-00-00', 1, '', '0000-00-00', 1, '2020-02-13 10:04:04'),
(64, 0, 'BK-000065', '2020-02-13', 1, '', '0000-00-00', 1, '2020-02-13 18:49:39'),
(65, 0, 'BK-000065', '2020-02-13', 1, '', '0000-00-00', 1, '2020-02-13 18:56:05'),
(72, 0, 'BK-000072', '2020-02-14', 1, '', '2020-02-14', 1, '2020-02-14 07:43:42'),
(73, 0, 'BK-000074', '2020-02-14', 1, '', '2020-02-14', 1, '2020-02-14 08:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pembelian_return_detail`
--

CREATE TABLE `mu_pembelian_return_detail` (
  `id_pembelian_return_detail` int(11) NOT NULL,
  `id_pembelian_return` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `harga_return` int(11) DEFAULT NULL,
  `jml_return` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pembelian_return_detail`
--

INSERT INTO `mu_pembelian_return_detail` (`id_pembelian_return_detail`, `id_pembelian_return`, `id_barang`, `id_rak`, `harga_return`, `jml_return`) VALUES
(1, 1, 1, 0, 3000, 0),
(2, 1, 3, 0, 6500, 3),
(3, 1, 2, 0, 13000, 1),
(4, 2, 5, 0, 1500, 0),
(5, 3, 5, 0, 0, 3),
(6, 4, 3, 0, 0, 1),
(7, 5, 5, 0, 0, 3),
(8, 6, 2, 0, 0, 4),
(9, 7, 2, 0, 0, 5),
(10, 8, 2, 0, 0, 1),
(11, 9, 2, 0, 0, 1),
(71, 69, 9, 0, NULL, 2),
(72, 70, 5, 0, NULL, 2),
(73, 70, 3, 0, NULL, 1),
(68, 66, 2, 0, NULL, 5),
(69, 67, 5, 0, NULL, 4),
(74, 71, 3, 0, NULL, 1),
(75, 71, 2, 0, NULL, 1),
(76, 72, 5, 0, NULL, 1),
(70, 68, 2, 0, NULL, 2),
(66, 64, 5, 0, NULL, 4),
(67, 65, 3, 0, NULL, 1),
(77, 73, 3, 0, NULL, 1),
(78, 73, 3, 0, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mu_pembelian_terima`
--

CREATE TABLE `mu_pembelian_terima` (
  `id_pembelian_terima` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `no_pembelian_terima` varchar(50) NOT NULL,
  `no_surat_jalan` varchar(50) NOT NULL,
  `pengirim_barang` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_terima` date NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `waktu_proses` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pembelian_terima`
--

INSERT INTO `mu_pembelian_terima` (`id_pembelian_terima`, `id_pembelian`, `no_pembelian_terima`, `no_surat_jalan`, `pengirim_barang`, `keterangan`, `tanggal_terima`, `id_karyawan`, `id_users`, `waktu_proses`) VALUES
(1, 1, 'TR-000001', 'JLN-001', 'Amaik Sapihi', 'Barang sampai dengan selamat,..', '2017-02-17', 2, 1, '2017-02-13 05:39:21'),
(2, 6, 'TR-000002', '345678', 'Pak Sudirman', '-', '2019-01-30', 1, 1, '2019-01-31 13:56:54'),
(3, 7, 'TR-000003', '456677777', 'Pak Idris', '-', '2019-01-30', 1, 1, '2019-01-31 13:58:09'),
(4, 8, 'TR-000004', '56789999', 'Pak Sudirman', '-', '2019-01-30', 1, 1, '2019-01-31 14:05:32'),
(5, 11, 'TR-000005', '123', 'abc', 'masukan barang', '2020-02-10', 1, 1, '2020-02-09 18:14:37'),
(6, 22, 'TR-000006', '123', 'budi', 'yuhuuuuuuuuuuuuuuuu', '2020-02-10', 1, 1, '2020-02-09 21:23:18'),
(7, 25, 'TR-000007', '333', 'TIA', 'MAKANAN OK', '2020-02-12', 1, 1, '2020-02-10 05:14:17'),
(8, 12, 'TR-000008', '1111', 'z', '', '2020-02-13', 1, 1, '2020-02-11 07:21:56'),
(9, 27, 'TR-000009', '1234', 'kurir', '', '2020-02-11', 1, 1, '2020-02-12 03:59:31'),
(10, 23, 'TR-000010', '12/02/2020', 'kurir', 'adg', '0000-00-00', 1, 1, '2020-02-12 04:47:41'),
(11, 10, 'TR-000010', '12/02/2020', 'kurir', 'adg', '2020-12-12', 1, 1, '2020-02-12 05:17:15'),
(31, 28, 'TR-000028', '1234567b', 'sfsg', '', '0000-00-00', 1, 1, '2020-02-12 17:02:09'),
(14, 13, 'TR-000013', '12/02/2020', 'tia', 'abc', '2020-02-12', 1, 1, '2020-02-12 05:28:18'),
(30, 36, 'TR-000030', '12345555', 'cbshjd', '', '0000-00-00', 1, 1, '2020-02-12 07:48:10'),
(16, 15, 'TR-000015', '12/02/2020', 'y', '', '2020-02-12', 1, 1, '2020-02-12 05:42:47'),
(29, 28, 'TR-000028', '1234567b', 'sfsg', '', '0000-00-00', 1, 1, '2020-02-12 07:45:52'),
(28, 34, 'TR-000028', '1234567b', 'sfsg', '', '0000-00-00', 1, 1, '2020-02-12 07:22:35'),
(27, 29, 'TR-000027', '', '', '', '0000-00-00', 0, 1, '2020-02-12 07:18:26'),
(26, 33, 'TR-000026', '', '', '', '0000-00-00', 0, 1, '2020-02-12 07:15:28'),
(25, 10, 'TR-000010', '12/02/2020', 'kurir', 'adg', '0000-00-00', 1, 1, '2020-02-12 06:18:29'),
(23, 9, 'TR-000009', '1234', 'kurir', '', '2020-02-11', 1, 1, '2020-02-12 06:13:17'),
(24, 20, 'TR-000020', '456', 'nnnn', '', '2020-12-07', 1, 1, '2020-02-12 06:13:58'),
(32, 41, 'TR-000032', '', '', '', '0000-00-00', 0, 1, '2020-02-12 19:41:14'),
(33, 41, 'TR-000033', '1234645645', 'bbjkahda', '', '0000-00-00', 2, 1, '2020-02-12 19:41:34'),
(34, 34, 'TR-000034', '', '', '', '0000-00-00', 0, 1, '2020-02-12 20:32:53'),
(35, 44, 'TR-000035', '3123678', 'hdswjehd', 'ccsmkdjawjkdbaws', '0000-00-00', 1, 1, '2020-02-12 21:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pembelian_terima_detail`
--

CREATE TABLE `mu_pembelian_terima_detail` (
  `id_pembelian_terima_detail` int(11) NOT NULL,
  `id_pembelian_terima` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga_pembelian` int(11) NOT NULL,
  `jml_terima` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pembelian_terima_detail`
--

INSERT INTO `mu_pembelian_terima_detail` (`id_pembelian_terima_detail`, `id_pembelian_terima`, `id_barang`, `harga_pembelian`, `jml_terima`) VALUES
(1, 1, 1, 3000, 3),
(2, 1, 3, 6500, 7),
(3, 1, 2, 13000, 5),
(4, 2, 2, 13000, 12),
(5, 3, 4, 2300, 5),
(6, 4, 5, 1500, 20),
(7, 5, 8, 0, 12),
(8, 6, 5, 0, 11),
(9, 7, 3, 0, 1),
(10, 8, 1, 0, 0),
(11, 8, 5, 0, 0),
(12, 9, 8, 0, 54),
(13, 10, 3, 0, 2),
(14, 11, 3, 0, 0),
(15, 12, 1, 0, 0),
(16, 12, 5, 0, 0),
(17, 13, 2, 0, 1),
(18, 13, 3, 0, 1),
(19, 14, 2, 0, 0),
(20, 14, 3, 0, 0),
(21, 15, 2, 0, 4),
(22, 16, 2, 0, 0),
(23, 17, 5, 0, 0),
(24, 18, 2, 0, 1),
(25, 19, 5, 0, 0),
(26, 20, 5, 0, 4),
(27, 21, 2, 0, 2),
(28, 22, 5, 0, 45),
(29, 24, 5, 0, 0),
(30, 25, 3, 0, 0),
(31, 26, 2, 0, 12),
(32, 27, 2, 0, 2),
(33, 28, 2, 0, 5),
(34, 29, 2, 0, 0),
(35, 30, 5, 0, 12),
(36, 30, 3, 0, 45),
(37, 31, 2, 0, 0),
(38, 32, 2, 0, 12),
(39, 33, 2, 0, 0),
(40, 34, 2, 0, 0),
(41, 35, 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_pemilik`
--

CREATE TABLE `mu_pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `kode_pemilik` varchar(10) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_gudang` int(11) DEFAULT NULL,
  `id_rak` int(11) DEFAULT NULL,
  `id_bin` int(11) DEFAULT NULL,
  `jumlah` varchar(10) DEFAULT NULL,
  `id_satuan` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pemilik`
--

INSERT INTO `mu_pemilik` (`id_pemilik`, `kode_pemilik`, `id_barang`, `id_supplier`, `id_gudang`, `id_rak`, `id_bin`, `jumlah`, `id_satuan`) VALUES
(1, 'PEM-000001', 22, 5, 0, 6, 3, '', ''),
(2, 'PEM-000002', 22, 5, 1, 0, 1, 'lsn', ''),
(3, 'PEM-000003', 22, 5, 1, 9, 1, '10', 'lsn'),
(4, 'PEM-000004', 28, 1, 0, 0, 0, '12', 'lsn'),
(5, 'PEM-000005', 22, 5, NULL, NULL, NULL, '', 'lsn'),
(6, 'PEM-000006', 28, 5, NULL, NULL, NULL, '100', 'lsn'),
(7, 'PEM-000007', 24, 1, NULL, NULL, NULL, '56', 'lsn');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pendapatan_list`
--

CREATE TABLE `mu_pendapatan_list` (
  `id_pendapatan_list` int(11) NOT NULL,
  `id_pendapatan_sub` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_uang` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `waktu_proses` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pendapatan_list`
--

INSERT INTO `mu_pendapatan_list` (`id_pendapatan_list`, `id_pendapatan_sub`, `tanggal`, `jumlah_uang`, `keterangan`, `id_karyawan`, `waktu_proses`) VALUES
(1, 2, '2017-03-07', 74500, 'Sudah di transferkan,..', 1, '2017-03-07 16:11:16'),
(2, 1, '2017-03-07', 4800, 'Sudah lunas,..', 1, '2017-03-07 16:29:27'),
(3, 1, '2017-03-18', 3300, '', 1, '2017-03-18 15:26:33'),
(4, 1, '2017-05-06', 5700, '', 1, '2017-05-06 10:40:12'),
(5, 1, '2017-05-06', 2400, '', 1, '2017-05-06 10:42:56'),
(6, 1, '2017-05-06', 4800, '', 1, '2017-05-06 10:44:01'),
(7, 1, '2017-05-15', 0, '', 1, '2017-05-15 14:27:11'),
(8, 1, '2017-05-15', 2400, '', 1, '2017-05-15 14:44:12'),
(9, 1, '2017-05-15', 2400, '', 1, '2017-05-15 14:51:56'),
(10, 1, '2017-05-15', 4800, '', 1, '2017-05-15 14:52:27'),
(11, 1, '2018-08-04', 4800, '', 1, '2018-08-04 15:02:12'),
(12, 1, '2020-01-30', 0, '', 1, '2020-01-30 17:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pendapatan_main`
--

CREATE TABLE `mu_pendapatan_main` (
  `id_pendapatan_main` int(11) NOT NULL,
  `nama_pendapatan_main` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pendapatan_main`
--

INSERT INTO `mu_pendapatan_main` (`id_pendapatan_main`, `nama_pendapatan_main`) VALUES
(1, 'Penjualan'),
(2, 'Pendapatan Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pendapatan_sub`
--

CREATE TABLE `mu_pendapatan_sub` (
  `id_pendapatan_sub` int(11) NOT NULL,
  `id_pendapatan_main` int(11) NOT NULL,
  `nama_pendapatan_sub` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pendapatan_sub`
--

INSERT INTO `mu_pendapatan_sub` (`id_pendapatan_sub`, `id_pendapatan_main`, `nama_pendapatan_sub`) VALUES
(1, 1, 'Penjualan Barang'),
(2, 2, 'Biaya Pengiriman (Ongkir)'),
(3, 2, 'Diskon Biaya Pengiriman'),
(4, 2, 'Potongan Pembelian'),
(5, 2, 'Pendapatan Bunga');

-- --------------------------------------------------------

--
-- Table structure for table `mu_pendidikan`
--

CREATE TABLE `mu_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `nama_pendidikan` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_pendidikan`
--

INSERT INTO `mu_pendidikan` (`id_pendidikan`, `nama_pendidikan`, `id_users`) VALUES
(1, 'SMP', 1),
(2, 'SMA', 1),
(3, 'D3', 1),
(4, 'S1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_penyesuaian`
--

CREATE TABLE `mu_penyesuaian` (
  `id_penyesuaian` int(11) NOT NULL,
  `id_sebab_alasan` int(11) NOT NULL,
  `tanggal_penyesuaian` date NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL,
  `tanggal_proses` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_penyesuaian`
--

INSERT INTO `mu_penyesuaian` (`id_penyesuaian`, `id_sebab_alasan`, `tanggal_penyesuaian`, `keterangan`, `id_users`, `tanggal_proses`) VALUES
(1, 2, '2017-02-13', 'Seharusnya ada tambahan lagi,..', 1, '2017-02-13 05:28:46'),
(2, 1, '2017-02-14', 'Beberapa Barang hilang,..', 1, '2017-02-13 05:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `mu_penyesuaian_detail`
--

CREATE TABLE `mu_penyesuaian_detail` (
  `id_penyesuaian_detail` int(11) NOT NULL,
  `id_penyesuaian` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_history` int(11) NOT NULL,
  `tambah` int(11) NOT NULL,
  `kurang` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_penyesuaian_detail`
--

INSERT INTO `mu_penyesuaian_detail` (`id_penyesuaian_detail`, `id_penyesuaian`, `id_barang`, `stok_history`, `tambah`, `kurang`, `keterangan`) VALUES
(1, 1, 3, 0, 5, 0, ''),
(2, 1, 2, 0, 10, 0, ''),
(3, 1, 1, 0, 15, 0, ''),
(6, 2, 1, 12, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `mu_penyimpanan`
--

CREATE TABLE `mu_penyimpanan` (
  `id_penyimpanan` int(11) NOT NULL,
  `id_gudang` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `id_bin` int(11) NOT NULL,
  `keterangan` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_penyimpanan`
--

INSERT INTO `mu_penyimpanan` (`id_penyimpanan`, `id_gudang`, `id_rak`, `id_bin`, `keterangan`) VALUES
(1, 0, 0, 0, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `mu_promosi`
--

CREATE TABLE `mu_promosi` (
  `id_promosi` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `kode_terapkan` varchar(50) NOT NULL,
  `id_kategori` int(11) DEFAULT '0',
  `id_subkategori` int(11) DEFAULT '0',
  `beli_barang` int(11) NOT NULL,
  `jml_beli` int(11) NOT NULL,
  `bonus_barang` int(11) NOT NULL,
  `jml_bonus` int(11) NOT NULL,
  `jenis_diskon` enum('persen','uang') NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL,
  `waktu_promosi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_promosi`
--

INSERT INTO `mu_promosi` (`id_promosi`, `tgl_mulai`, `tgl_selesai`, `kode_terapkan`, `id_kategori`, `id_subkategori`, `beli_barang`, `jml_beli`, `bonus_barang`, `jml_bonus`, `jenis_diskon`, `keterangan`, `id_users`, `waktu_promosi`) VALUES
(1, '2017-03-31', '2017-05-05', 'barang', 0, 0, 1, 2, 2, 1, 'uang', '', 1, '2017-05-05 06:59:13'),
(2, '2017-03-31', '2017-04-04', 'kategori', 1, NULL, 0, 0, 0, 0, 'uang', '', 1, '2017-04-03 09:19:47'),
(3, '2017-03-29', '2017-04-06', 'subkategori', 0, 1, 0, 0, 0, 0, 'persen', '', 1, '2017-03-31 10:34:53'),
(4, '2017-03-30', '2017-04-07', 'barang', 0, 0, 3, 0, 3, 0, 'uang', '', 1, '2017-03-31 10:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `mu_promosi_detail`
--

CREATE TABLE `mu_promosi_detail` (
  `id_promosi_detail` int(11) NOT NULL,
  `id_promosi` int(11) NOT NULL,
  `id_kategori_pelanggan` int(11) NOT NULL,
  `ecer` int(11) DEFAULT NULL,
  `grosir1` int(11) DEFAULT NULL,
  `grosir2` int(11) DEFAULT NULL,
  `grosir3` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_promosi_detail`
--

INSERT INTO `mu_promosi_detail` (`id_promosi_detail`, `id_promosi`, `id_kategori_pelanggan`, `ecer`, `grosir1`, `grosir2`, `grosir3`) VALUES
(1, 1, 1, 150, 0, 0, 0),
(2, 1, 2, 0, 0, 0, 0),
(3, 1, 3, 0, 0, 0, 0),
(4, 2, 1, 200, 300, 300, 300),
(5, 2, 2, 0, 0, 0, 0),
(6, 2, 3, 0, 0, 0, 0),
(7, 3, 1, 5, 10, 10, 10),
(8, 3, 2, 0, 0, 0, 0),
(9, 3, 3, 0, 0, 0, 0),
(10, 4, 1, 400, 500, 500, 500),
(11, 4, 2, 0, 0, 0, 0),
(12, 4, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mu_promosi_terapkan`
--

CREATE TABLE `mu_promosi_terapkan` (
  `kode_terapkan` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_promosi_terapkan`
--

INSERT INTO `mu_promosi_terapkan` (`kode_terapkan`, `keterangan`) VALUES
('barang', 'Barang'),
('kategori', 'Kategori'),
('subkategori', 'Subkategori');

-- --------------------------------------------------------

--
-- Table structure for table `mu_rak`
--

CREATE TABLE `mu_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_gudang` char(50) DEFAULT NULL,
  `id_bin` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_rak`
--

INSERT INTO `mu_rak` (`id_rak`, `nama_rak`, `keterangan`, `id_users`, `id_gudang`, `id_bin`) VALUES
(1, 'Rak 3', 'x', 1, NULL, NULL),
(2, 'Rak 2', 'x', 1, NULL, NULL),
(3, 'Rak 1', 'x\r\n', 1, NULL, NULL),
(5, 'Rak 5', '', 1, NULL, NULL),
(4, 'Rak 4', '', 1, NULL, NULL),
(6, 'Rak 6', '', 1, NULL, NULL),
(7, 'Rak 7', '', 1, NULL, NULL),
(8, 'Rak 8', '', 1, NULL, NULL),
(9, 'Rak 9', '', 1, NULL, NULL),
(10, 'Rak 10', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mu_satuan`
--

CREATE TABLE `mu_satuan` (
  `kode_satuan` varchar(10) NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_satuan`
--

INSERT INTO `mu_satuan` (`kode_satuan`, `keterangan`, `id_users`) VALUES
('kodi', 'Kodi', 1),
('bh', 'Buah', 1),
('bks', 'Bungkus', 1),
('lsn', 'Lusin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_sebab_alasan`
--

CREATE TABLE `mu_sebab_alasan` (
  `id_sebab_alasan` int(11) NOT NULL,
  `nama_sebab_alasan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_sebab_alasan`
--

INSERT INTO `mu_sebab_alasan` (`id_sebab_alasan`, `nama_sebab_alasan`, `keterangan`, `id_users`) VALUES
(1, 'Hilang', 'Barang Hilang', 1),
(2, 'Koreksi', 'Koreksi Barang karena kesalahan Input', 1),
(3, 'Rusak', 'Barang Rusak', 1),
(4, 'Saldo Awal', 'Stok Awal barang', 1),
(5, 'Stok Opname', 'Selisih Stok Buku dan Stok Opname', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_state`
--

CREATE TABLE `mu_state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `mu_state`
--

INSERT INTO `mu_state` (`state_id`, `country_id`, `name`, `id_users`) VALUES
(1, 1, 'Bali', 1),
(2, 1, 'Bengkulu', 1),
(3, 1, 'Banten', 1),
(4, 1, 'DIY', 1),
(5, 1, 'Gorontalo', 1),
(6, 1, 'Irian Jaya Barat', 1),
(7, 1, 'Jakarta', 1),
(8, 1, 'Jambi', 1),
(9, 1, 'Jawa Barat', 1),
(10, 1, 'Jawa Tengah', 1),
(11, 1, 'Jawa Timur', 1),
(12, 1, 'Kalimantan Barat', 1),
(13, 1, 'Kalimantan Tengah', 1),
(14, 1, 'Kalimantan Timur', 1),
(15, 1, 'Kalimantan Selatan', 1),
(16, 1, 'Kepulauan Bangka Belitung', 1),
(17, 1, 'Lampung', 1),
(18, 1, 'Maluku', 1),
(19, 1, 'Maluku Utara', 1),
(20, 1, 'Nanggroe Aceh Darussalam', 1),
(21, 1, 'Nusa Tenggara Barat', 1),
(22, 1, 'Nusa Tenggara Timur', 1),
(23, 1, 'Papua', 1),
(24, 1, 'Riau', 1),
(25, 1, 'Kepulauan Riau', 1),
(26, 1, 'Sulawesi Barat', 1),
(27, 1, 'Sulawesi Tengah', 1),
(28, 1, 'Sulawesi Tenggara', 1),
(29, 1, 'Sulawesi Selatan', 1),
(30, 1, 'Sulawesi Utara', 1),
(31, 1, 'Sumatra Barat', 1),
(32, 1, 'Sumatra Selatan', 1),
(33, 1, 'Sumatra Utara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_status_karyawan`
--

CREATE TABLE `mu_status_karyawan` (
  `id_status_karyawan` int(11) NOT NULL,
  `nama_status_karyawan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_status_karyawan`
--

INSERT INTO `mu_status_karyawan` (`id_status_karyawan`, `nama_status_karyawan`) VALUES
(1, 'Tetap'),
(2, 'Kontrak');

-- --------------------------------------------------------

--
-- Table structure for table `mu_status_pernikahan`
--

CREATE TABLE `mu_status_pernikahan` (
  `id_status_pernikahan` int(11) NOT NULL,
  `nama_status_pernikahan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_status_pernikahan`
--

INSERT INTO `mu_status_pernikahan` (`id_status_pernikahan`, `nama_status_pernikahan`) VALUES
(1, 'Bujang'),
(2, 'Menikah'),
(3, 'Duda'),
(4, 'janda');

-- --------------------------------------------------------

--
-- Table structure for table `mu_subkategori`
--

CREATE TABLE `mu_subkategori` (
  `id_subkategori` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_subkategori` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_subkategori`
--

INSERT INTO `mu_subkategori` (`id_subkategori`, `id_kategori`, `nama_subkategori`, `id_users`) VALUES
(1, 5, 'Budi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mu_supplier`
--

CREATE TABLE `mu_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(150) NOT NULL,
  `kontak_person` varchar(150) NOT NULL,
  `alamat_1` varchar(255) NOT NULL,
  `alamat_2` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `website` varchar(150) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `chat` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_supplier`
--

INSERT INTO `mu_supplier` (`id_supplier`, `nama_supplier`, `kontak_person`, `alamat_1`, `alamat_2`, `city_id`, `state_id`, `country_id`, `telepon`, `hp`, `email`, `website`, `kode_pos`, `fax`, `chat`, `id_users`, `keterangan`) VALUES
(1, 'PT. Indofood Jaya Abadi', 'Budi', 'Jln. Hangtuah No 123 Tri Lestari', 'Jln. Sudirman Said 56 Junum', 370, 31, 1, '0751659800', '081267779988', 'indofood@gmail.com', 'http://indofood.com', 45768, '0751659811', 'indofood@yahoo.com', 1, 'Supplier ini sering telat mengantarkan barang.'),
(4, 'PT. Karimie Indonesia', 'Tommy Utama', 'Jln. Trio Macan Raya', '', 262, 22, 1, '0751659955', '081267770011', 'karimie@gmail.com', 'http://karimie.com', 34534, '0751652323', 'karimie@yahoo.com', 1, ''),
(5, 'PT.Pos', '123', 'jalan sariasih 54', '', 58, 9, 1, '022123456489', '08123456789', 'pos@mail.com', 'http://www.poltekpos.ac.id', 451051, '123456', 'Tia', 1, 'Logistik');

-- --------------------------------------------------------

--
-- Table structure for table `mu_tipe_diskon`
--

CREATE TABLE `mu_tipe_diskon` (
  `tipe_diskon` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_tipe_diskon`
--

INSERT INTO `mu_tipe_diskon` (`tipe_diskon`, `keterangan`) VALUES
('persen', 'Persen (%)'),
('uang', 'Nominal (Rp)');

-- --------------------------------------------------------

--
-- Table structure for table `mu_transaksi`
--

CREATE TABLE `mu_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_type_bayar` int(11) NOT NULL,
  `id_agen_ekspedisi` int(11) NOT NULL,
  `no_resi` varchar(100) NOT NULL,
  `biaya_kirim` int(11) NOT NULL,
  `diskon_persen` int(11) NOT NULL,
  `diskon_rupiah` int(11) NOT NULL,
  `diskon_belanja` int(11) NOT NULL,
  `gratis_kirim` int(11) DEFAULT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `status` enum('tunggu','proses','selesai') NOT NULL DEFAULT 'proses',
  `id_karyawan` int(11) NOT NULL,
  `waktu_proses` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_transaksi`
--

INSERT INTO `mu_transaksi` (`id_transaksi`, `kode_transaksi`, `id_pelanggan`, `id_type_bayar`, `id_agen_ekspedisi`, `no_resi`, `biaya_kirim`, `diskon_persen`, `diskon_rupiah`, `diskon_belanja`, `gratis_kirim`, `jumlah_bayar`, `keterangan`, `status`, `id_karyawan`, `waktu_proses`) VALUES
(1, 'TRX-0000001', 2, 1, 0, '', 0, 0, 0, 200, 0, 7000, '', 'selesai', 1, '2017-03-18 15:36:01'),
(2, 'TRX-0000002', 0, 1, 0, '', 0, 0, 0, 0, 0, 5000, '', 'selesai', 1, '2017-05-06 10:40:12'),
(3, 'TRX-0000003', 0, 1, 0, '', 0, 0, 0, 0, 0, 10000, '', 'selesai', 1, '2017-05-06 10:42:56'),
(19, 'TRX-0000019', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, '', 'proses', 2, '2018-08-04 15:07:04'),
(9, 'TRX-0000004', 0, 1, 0, '', 0, 0, 0, 0, 0, 5000, '', 'selesai', 1, '2017-05-15 14:42:41'),
(11, 'TRX-0000011', 0, 1, 0, '', 0, 0, 0, 0, 0, 10000, '', 'selesai', 1, '2017-05-15 14:44:46'),
(12, 'TRX-0000012', 0, 1, 0, '', 0, 0, 0, 0, 0, 8000, '', 'selesai', 1, '2017-05-15 14:51:56'),
(15, 'TRX-0000013', 0, 1, 0, '', 0, 0, 0, 0, 0, 5000, '', 'selesai', 1, '2017-05-15 15:01:45'),
(18, 'TRX-0000017', 0, 1, 1, '3212365413', 0, 0, 0, 0, 0, 0, '', 'selesai', 1, '2018-08-04 15:02:22'),
(20, 'TRX-0000020', 2, 1, 1, '', 0, 0, 0, 0, 0, 0, '', 'proses', 1, '2020-01-30 17:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `mu_transaksi_detail`
--

CREATE TABLE `mu_transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_jual` varchar(255) NOT NULL,
  `kode_satuan` varchar(10) NOT NULL,
  `jumlah_satuan` int(11) NOT NULL,
  `diskon_jual` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_transaksi_detail`
--

INSERT INTO `mu_transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_barang`, `jumlah_jual`, `kode_satuan`, `jumlah_satuan`, `diskon_jual`, `harga_jual`, `status`) VALUES
(109, 1, 2, '1', 'bh', 1, 0, 2400, '1'),
(108, 1, 1, '1', 'bh', 1, 200, 3500, '1'),
(110, 2, 3, '1', 'bh', 1, 0, 2400, '1'),
(111, 3, 3, '1', 'bh', 1, 0, 2400, '1'),
(112, 3, 2, '1', 'bh', 1, 0, 2400, '1'),
(126, 19, 3, '1', 'bh', 1, 0, 2400, '1'),
(117, 9, 2, '1', 'bh', 1, 0, 2400, '1'),
(119, 11, 2, '1', 'bh', 1, 0, 2400, '1'),
(120, 12, 2, '2', 'bh', 1, 0, 2400, '1'),
(125, 15, 3, '2', 'bh', 1, 0, 2400, '1'),
(127, 18, 5, '1', 'bh', 1, 0, 2400, '1'),
(128, 18, 3, '1', 'bh', 1, 0, 2400, '1'),
(129, 18, 1, '1', 'bh', 1, 200, 3500, '1'),
(130, 20, 5, '1', 'bh', 1, 0, 2400, '1'),
(131, 20, 3, '1', 'bh', 1, 0, 2400, '1');

-- --------------------------------------------------------

--
-- Table structure for table `mu_transaksi_return`
--

CREATE TABLE `mu_transaksi_return` (
  `id_transaksi_return` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_type_bayar` int(11) NOT NULL,
  `bayar_return` int(11) NOT NULL,
  `ket_return` text NOT NULL,
  `status` enum('proses','selesai') NOT NULL DEFAULT 'proses',
  `id_karyawan` int(11) NOT NULL,
  `waktu_return` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mu_transaksi_return_detail`
--

CREATE TABLE `mu_transaksi_return_detail` (
  `id_transaksi_return_detail` int(11) NOT NULL,
  `id_transaksi_return` int(11) NOT NULL,
  `id_transaksi_detail` int(11) NOT NULL,
  `jumlah_return` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mu_type_bayar`
--

CREATE TABLE `mu_type_bayar` (
  `id_type_bayar` int(11) NOT NULL,
  `nama_type_bayar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_type_bayar`
--

INSERT INTO `mu_type_bayar` (`id_type_bayar`, `nama_type_bayar`) VALUES
(1, 'Cash (Tunai)'),
(2, 'Transfer'),
(3, 'Cheque (Cek)'),
(4, 'Debet (Kartu Debit)'),
(5, 'Card (Kartu Kredit)'),
(6, 'Credit (Hutang/Kredit)');

-- --------------------------------------------------------

--
-- Table structure for table `mu_type_pelanggan`
--

CREATE TABLE `mu_type_pelanggan` (
  `id_type_pelanggan` int(11) NOT NULL,
  `type_pelanggan` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mu_type_pelanggan`
--

INSERT INTO `mu_type_pelanggan` (`id_type_pelanggan`, `type_pelanggan`, `id_users`) VALUES
(1, 'Perorangan', 1),
(2, 'Badan Usaha', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `mu_agama`
--
ALTER TABLE `mu_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `mu_agen_ekspedisi`
--
ALTER TABLE `mu_agen_ekspedisi`
  ADD PRIMARY KEY (`id_agen_ekspedisi`);

--
-- Indexes for table `mu_bahasa`
--
ALTER TABLE `mu_bahasa`
  ADD PRIMARY KEY (`id_bahasa`);

--
-- Indexes for table `mu_barang`
--
ALTER TABLE `mu_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `mu_barang_harga`
--
ALTER TABLE `mu_barang_harga`
  ADD PRIMARY KEY (`id_barang_harga`);

--
-- Indexes for table `mu_barang_jenis_jual`
--
ALTER TABLE `mu_barang_jenis_jual`
  ADD PRIMARY KEY (`id_barang_jenis_jual`);

--
-- Indexes for table `mu_bebanbiaya_list`
--
ALTER TABLE `mu_bebanbiaya_list`
  ADD PRIMARY KEY (`id_bebanbiaya_list`);

--
-- Indexes for table `mu_bebanbiaya_main`
--
ALTER TABLE `mu_bebanbiaya_main`
  ADD PRIMARY KEY (`id_bebanbiaya_main`);

--
-- Indexes for table `mu_bebanbiaya_sub`
--
ALTER TABLE `mu_bebanbiaya_sub`
  ADD PRIMARY KEY (`id_bebanbiaya_sub`);

--
-- Indexes for table `mu_bin`
--
ALTER TABLE `mu_bin`
  ADD PRIMARY KEY (`id_bin`);

--
-- Indexes for table `mu_city`
--
ALTER TABLE `mu_city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `fk_city_state` (`state_id`);

--
-- Indexes for table `mu_conf_barang`
--
ALTER TABLE `mu_conf_barang`
  ADD PRIMARY KEY (`id_conf_barang`);

--
-- Indexes for table `mu_conf_penjualan`
--
ALTER TABLE `mu_conf_penjualan`
  ADD PRIMARY KEY (`id_conf_penjualan`);

--
-- Indexes for table `mu_conf_perusahaan`
--
ALTER TABLE `mu_conf_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `mu_country`
--
ALTER TABLE `mu_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `mu_departemen`
--
ALTER TABLE `mu_departemen`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `mu_gudang`
--
ALTER TABLE `mu_gudang`
  ADD PRIMARY KEY (`id_gudang`);

--
-- Indexes for table `mu_jabatan`
--
ALTER TABLE `mu_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `mu_jatuh_tempo`
--
ALTER TABLE `mu_jatuh_tempo`
  ADD PRIMARY KEY (`id_jatuh_tempo`);

--
-- Indexes for table `mu_jenis_kelamin`
--
ALTER TABLE `mu_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `mu_karyawan`
--
ALTER TABLE `mu_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `mu_kategori`
--
ALTER TABLE `mu_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mu_kategori_pelanggan`
--
ALTER TABLE `mu_kategori_pelanggan`
  ADD PRIMARY KEY (`id_kategori_pelanggan`);

--
-- Indexes for table `mu_pelanggan`
--
ALTER TABLE `mu_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `mu_pelanggan_piutang`
--
ALTER TABLE `mu_pelanggan_piutang`
  ADD PRIMARY KEY (`id_pelanggan_piutang`);

--
-- Indexes for table `mu_pembelian`
--
ALTER TABLE `mu_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `mu_pembelian_detail`
--
ALTER TABLE `mu_pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `mu_pembelian_return`
--
ALTER TABLE `mu_pembelian_return`
  ADD PRIMARY KEY (`id_pembelian_return`);

--
-- Indexes for table `mu_pembelian_return_detail`
--
ALTER TABLE `mu_pembelian_return_detail`
  ADD PRIMARY KEY (`id_pembelian_return_detail`);

--
-- Indexes for table `mu_pembelian_terima`
--
ALTER TABLE `mu_pembelian_terima`
  ADD PRIMARY KEY (`id_pembelian_terima`);

--
-- Indexes for table `mu_pembelian_terima_detail`
--
ALTER TABLE `mu_pembelian_terima_detail`
  ADD PRIMARY KEY (`id_pembelian_terima_detail`);

--
-- Indexes for table `mu_pemilik`
--
ALTER TABLE `mu_pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- Indexes for table `mu_pendapatan_list`
--
ALTER TABLE `mu_pendapatan_list`
  ADD PRIMARY KEY (`id_pendapatan_list`);

--
-- Indexes for table `mu_pendapatan_main`
--
ALTER TABLE `mu_pendapatan_main`
  ADD PRIMARY KEY (`id_pendapatan_main`);

--
-- Indexes for table `mu_pendapatan_sub`
--
ALTER TABLE `mu_pendapatan_sub`
  ADD PRIMARY KEY (`id_pendapatan_sub`);

--
-- Indexes for table `mu_pendidikan`
--
ALTER TABLE `mu_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `mu_penyesuaian`
--
ALTER TABLE `mu_penyesuaian`
  ADD PRIMARY KEY (`id_penyesuaian`);

--
-- Indexes for table `mu_penyesuaian_detail`
--
ALTER TABLE `mu_penyesuaian_detail`
  ADD PRIMARY KEY (`id_penyesuaian_detail`);

--
-- Indexes for table `mu_penyimpanan`
--
ALTER TABLE `mu_penyimpanan`
  ADD PRIMARY KEY (`id_penyimpanan`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `id_rak` (`id_rak`),
  ADD KEY `id_bin` (`id_bin`);

--
-- Indexes for table `mu_promosi`
--
ALTER TABLE `mu_promosi`
  ADD PRIMARY KEY (`id_promosi`);

--
-- Indexes for table `mu_promosi_detail`
--
ALTER TABLE `mu_promosi_detail`
  ADD PRIMARY KEY (`id_promosi_detail`);

--
-- Indexes for table `mu_promosi_terapkan`
--
ALTER TABLE `mu_promosi_terapkan`
  ADD PRIMARY KEY (`kode_terapkan`);

--
-- Indexes for table `mu_rak`
--
ALTER TABLE `mu_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indexes for table `mu_satuan`
--
ALTER TABLE `mu_satuan`
  ADD PRIMARY KEY (`kode_satuan`);

--
-- Indexes for table `mu_sebab_alasan`
--
ALTER TABLE `mu_sebab_alasan`
  ADD PRIMARY KEY (`id_sebab_alasan`);

--
-- Indexes for table `mu_state`
--
ALTER TABLE `mu_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `fk_state_country` (`country_id`);

--
-- Indexes for table `mu_status_karyawan`
--
ALTER TABLE `mu_status_karyawan`
  ADD PRIMARY KEY (`id_status_karyawan`);

--
-- Indexes for table `mu_status_pernikahan`
--
ALTER TABLE `mu_status_pernikahan`
  ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indexes for table `mu_subkategori`
--
ALTER TABLE `mu_subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indexes for table `mu_supplier`
--
ALTER TABLE `mu_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `mu_tipe_diskon`
--
ALTER TABLE `mu_tipe_diskon`
  ADD PRIMARY KEY (`tipe_diskon`);

--
-- Indexes for table `mu_transaksi`
--
ALTER TABLE `mu_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `mu_transaksi_detail`
--
ALTER TABLE `mu_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- Indexes for table `mu_transaksi_return`
--
ALTER TABLE `mu_transaksi_return`
  ADD PRIMARY KEY (`id_transaksi_return`);

--
-- Indexes for table `mu_transaksi_return_detail`
--
ALTER TABLE `mu_transaksi_return_detail`
  ADD PRIMARY KEY (`id_transaksi_return_detail`);

--
-- Indexes for table `mu_type_bayar`
--
ALTER TABLE `mu_type_bayar`
  ADD PRIMARY KEY (`id_type_bayar`);

--
-- Indexes for table `mu_type_pelanggan`
--
ALTER TABLE `mu_type_pelanggan`
  ADD PRIMARY KEY (`id_type_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_agama`
--
ALTER TABLE `mu_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mu_agen_ekspedisi`
--
ALTER TABLE `mu_agen_ekspedisi`
  MODIFY `id_agen_ekspedisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_bahasa`
--
ALTER TABLE `mu_bahasa`
  MODIFY `id_bahasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mu_barang`
--
ALTER TABLE `mu_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mu_barang_harga`
--
ALTER TABLE `mu_barang_harga`
  MODIFY `id_barang_harga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT for table `mu_barang_jenis_jual`
--
ALTER TABLE `mu_barang_jenis_jual`
  MODIFY `id_barang_jenis_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mu_bebanbiaya_list`
--
ALTER TABLE `mu_bebanbiaya_list`
  MODIFY `id_bebanbiaya_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_bebanbiaya_main`
--
ALTER TABLE `mu_bebanbiaya_main`
  MODIFY `id_bebanbiaya_main` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_bebanbiaya_sub`
--
ALTER TABLE `mu_bebanbiaya_sub`
  MODIFY `id_bebanbiaya_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mu_bin`
--
ALTER TABLE `mu_bin`
  MODIFY `id_bin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mu_city`
--
ALTER TABLE `mu_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `mu_conf_barang`
--
ALTER TABLE `mu_conf_barang`
  MODIFY `id_conf_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mu_conf_penjualan`
--
ALTER TABLE `mu_conf_penjualan`
  MODIFY `id_conf_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mu_conf_perusahaan`
--
ALTER TABLE `mu_conf_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mu_country`
--
ALTER TABLE `mu_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_departemen`
--
ALTER TABLE `mu_departemen`
  MODIFY `id_departemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_gudang`
--
ALTER TABLE `mu_gudang`
  MODIFY `id_gudang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_jabatan`
--
ALTER TABLE `mu_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mu_jatuh_tempo`
--
ALTER TABLE `mu_jatuh_tempo`
  MODIFY `id_jatuh_tempo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mu_jenis_kelamin`
--
ALTER TABLE `mu_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mu_karyawan`
--
ALTER TABLE `mu_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_kategori`
--
ALTER TABLE `mu_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mu_kategori_pelanggan`
--
ALTER TABLE `mu_kategori_pelanggan`
  MODIFY `id_kategori_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mu_pelanggan`
--
ALTER TABLE `mu_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mu_pelanggan_piutang`
--
ALTER TABLE `mu_pelanggan_piutang`
  MODIFY `id_pelanggan_piutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mu_pembelian`
--
ALTER TABLE `mu_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mu_pembelian_detail`
--
ALTER TABLE `mu_pembelian_detail`
  MODIFY `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `mu_pembelian_return`
--
ALTER TABLE `mu_pembelian_return`
  MODIFY `id_pembelian_return` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `mu_pembelian_return_detail`
--
ALTER TABLE `mu_pembelian_return_detail`
  MODIFY `id_pembelian_return_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `mu_pembelian_terima`
--
ALTER TABLE `mu_pembelian_terima`
  MODIFY `id_pembelian_terima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mu_pembelian_terima_detail`
--
ALTER TABLE `mu_pembelian_terima_detail`
  MODIFY `id_pembelian_terima_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mu_pemilik`
--
ALTER TABLE `mu_pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mu_pendapatan_list`
--
ALTER TABLE `mu_pendapatan_list`
  MODIFY `id_pendapatan_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mu_pendapatan_main`
--
ALTER TABLE `mu_pendapatan_main`
  MODIFY `id_pendapatan_main` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mu_pendapatan_sub`
--
ALTER TABLE `mu_pendapatan_sub`
  MODIFY `id_pendapatan_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mu_pendidikan`
--
ALTER TABLE `mu_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mu_penyesuaian`
--
ALTER TABLE `mu_penyesuaian`
  MODIFY `id_penyesuaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mu_penyesuaian_detail`
--
ALTER TABLE `mu_penyesuaian_detail`
  MODIFY `id_penyesuaian_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mu_penyimpanan`
--
ALTER TABLE `mu_penyimpanan`
  MODIFY `id_penyimpanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mu_promosi`
--
ALTER TABLE `mu_promosi`
  MODIFY `id_promosi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mu_promosi_detail`
--
ALTER TABLE `mu_promosi_detail`
  MODIFY `id_promosi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mu_rak`
--
ALTER TABLE `mu_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mu_sebab_alasan`
--
ALTER TABLE `mu_sebab_alasan`
  MODIFY `id_sebab_alasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mu_state`
--
ALTER TABLE `mu_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mu_status_karyawan`
--
ALTER TABLE `mu_status_karyawan`
  MODIFY `id_status_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mu_status_pernikahan`
--
ALTER TABLE `mu_status_pernikahan`
  MODIFY `id_status_pernikahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mu_subkategori`
--
ALTER TABLE `mu_subkategori`
  MODIFY `id_subkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mu_supplier`
--
ALTER TABLE `mu_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mu_transaksi`
--
ALTER TABLE `mu_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mu_transaksi_detail`
--
ALTER TABLE `mu_transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `mu_transaksi_return`
--
ALTER TABLE `mu_transaksi_return`
  MODIFY `id_transaksi_return` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mu_transaksi_return_detail`
--
ALTER TABLE `mu_transaksi_return_detail`
  MODIFY `id_transaksi_return_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mu_type_bayar`
--
ALTER TABLE `mu_type_bayar`
  MODIFY `id_type_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mu_type_pelanggan`
--
ALTER TABLE `mu_type_pelanggan`
  MODIFY `id_type_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
