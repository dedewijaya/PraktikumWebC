-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 06, 2020 at 02:33 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `simak`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` char(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `fakultas` enum('Fakultas Ilmu Budaya','Fakultas Kedokteran','Fakultas Hukum','Fakultas Teknik','Fakultas Pertanian','Fakultas Ekonomi dan Bisnis','Fakultas Peternakan','Fakultas MIPA','Fakultas Kedokteran Hewan','Fakultas Teknologi Pertanian','Fakultas Ilmu Sosial dan Ilmu Politik','Fakultas Kelautan dan Perikanan','Fakultas Pariwisata') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `jk`, `tempat`, `tgl_lahir`, `alamat`, `fakultas`) VALUES
(21, 'Semara Wijaya', '1708561048', 'dede@gmail.com', 'Laki-laki', 'Denpasar', '2020-06-03', 'Denpasar', 'Fakultas Kedokteran Hewan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
