-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 08:07 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beli_beli`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloth`
--

CREATE TABLE `cloth` (
  `id_cloth` int(10) NOT NULL,
  `nama_cloth` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `bahan` varchar(500) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloth`
--

INSERT INTO `cloth` (`id_cloth`, `nama_cloth`, `harga`, `ukuran`, `warna`, `bahan`, `stok`) VALUES
(1, 'Emporio Dark Grey – Kemeja Pria Premium', '199.000', 'M', 'Abu-abu', 'Emporio Dark Grey dibuat dengan detil yang rapi menggunakan bahan chambray yang pastinya sangat nyaman untuk digunakan. Kemeja pria premium ini sangat elegan.', 10),
(2, 'Cardenio Blue Navy – Kemeja Pria Premium', '219.000', 'M', 'Blue Navy', 'Berbahan baby canvas dengan kualitas tinggi menjadi keunggulan Cardenio Blue Navy yang dilengkapi dengan ukuran slim fit.. Kemeja pria lengan panjang ini cocok digunakan untuk berbagai kegiatan.\r\n\r\n', 10),
(3, 'Cardenio Dark Green – Kemeja Pria Premium', '219.000', 'S', 'Dark Green', 'Berbahan baby canvas dengan kualitas tinggi menjadi keunggulan Cardenio Dark Green yang dilengkapi dengan ukuran slim fit.. Kemeja pria lengan panjang ini cocok digunakan untuk berbagai kegiatan.', 5),
(4, 'Emporio Azule Pattern – Kemeja Pria Premium', '199.000', 'M', 'Biru Corak', 'Berbahan katun dengan kualitas tinggi menjadi keunggulan Emporio Azule Pattern. Bahannya yang tepat akan membuat Anda merasa nyaman saat mengenakannya.\r\n\r\n', 5),
(5, 'Quixanno Light Blue – Kemeja Pria Lengan Pendek', '199.000', 'L', 'Light Blue', 'Quixanno Light Blue terbuat dari bahan Oxford dan dibuat dengan detail yang sangat rapi. Kemeja pria premium ini memiliki keunggulan di jahitan, desain, dan warna serta bahan yang mendapatkan garment washing dalam tahap produksi.', 9),
(6, 'Emporio Blanco Pattern – Kemeja Pria Premium', '199.000', 'XL', 'Putih Corak', 'Berbahan katun dengan kualitas tinggi menjadi keunggulan Emporio Blanco Pattern. Kemeja ini dilengkapi dengan corak batik dengan desain yang sangat elegan.', 9),
(7, 'Kemeja Lengan Pendek Gray', '199.000', 'XL', 'Abu-abu', 'Menggunakan bahan chambray yang pastinya sangat nyaman untuk digunakan. Kemeja pria premium ini sangat elegan.', 5),
(8, 'Sweater Pria', '259.000', 'L', 'Putih', 'Katun Kombed ( Combed Cotton )', 5),
(9, 'Blouse Wanita', '125.000', 'M', 'Merah Maroon', 'Kain Katun yang lembut', 5),
(10, 'Jaket Wanita Musim Dingin', '250.000', 'L', 'Dark Blue', 'Bahan Baby Terry', 5),
(11, 'Blouses Ladies Top', '250.000', 'L', 'Dark Blue', 'Bahan Kain Lembut', 3),
(12, 'Blouses Ladies Top', '150.000', 'L', 'Pink Soft', 'Bahan Combad yang halus', 10),
(13, 'Outer Batik', '125.000', 'L', 'Hijau Corak Batik', 'Bahan yang halus', 5),
(14, 'Baju Muslimah', '200.000', 'L', 'Abu-abu Corak', 'Bahan yang halus', 10),
(15, 'Baju Wanita', '150.000', 'L', 'Coklat Muda', 'Bahan yang halus', 10),
(16, 'Baju Wanita Putih 2', '200.000', 'L', 'White Bone', 'Bahan yang halus', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `id_kids` int(10) NOT NULL,
  `nama_kids` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `stok` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makeup`
--

CREATE TABLE `makeup` (
  `id_makeup` int(10) NOT NULL,
  `nama_makeup` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `guna` varchar(100) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pant`
--

CREATE TABLE `pant` (
  `id_pant` int(10) NOT NULL,
  `nama_pant` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `bahan` varchar(30) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(10) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `NIK` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `jumlah_pesan` int(30) NOT NULL,
  `no_rek` varchar(100) NOT NULL,
  `total_harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloth`
--
ALTER TABLE `cloth`
  ADD PRIMARY KEY (`id_cloth`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`id_kids`);

--
-- Indexes for table `makeup`
--
ALTER TABLE `makeup`
  ADD PRIMARY KEY (`id_makeup`);

--
-- Indexes for table `pant`
--
ALTER TABLE `pant`
  ADD PRIMARY KEY (`id_pant`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cloth`
--
ALTER TABLE `cloth`
  MODIFY `id_cloth` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `id_kids` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `makeup`
--
ALTER TABLE `makeup`
  MODIFY `id_makeup` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pant`
--
ALTER TABLE `pant`
  MODIFY `id_pant` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(10) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
