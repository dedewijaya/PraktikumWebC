-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 29, 2020 at 08:09 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_simak`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminsimak`
--

CREATE TABLE `adminsimak` (
  `id_admin` int(11) NOT NULL,
  `role` char(1) NOT NULL,
  `nip` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminsimak`
--

INSERT INTO `adminsimak` (`id_admin`, `role`, `nip`, `nama`, `email`, `alamat`, `tgl_lahir`, `password`) VALUES
(2, '0', '1234512345', 'Administrator', 'admin@gmail.com', 'bali', '2020-04-28', '$2y$10$myFCUysMmWRR2PZ5NUcXqer1gK.TkrVEtMPXsPFzllHE/FgyCLO2C');

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id_bimbingan` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`id_bimbingan`, `id_dosen`, `id_mahasiswa`) VALUES
(3, 3, 1),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `role` char(1) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nidn` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `role`, `nip`, `nidn`, `nama`, `email`, `alamat`, `tanggal_lahir`, `status`, `password`) VALUES
(1, '2', '1234567890', '1656312565', 'Gede Adi Pramana', 'gedeadi@gmail.com', 'Gianyar', '2020-05-19', 'aktif', '$2y$10$OZjJi2kW1CDIXeZ42ngAp.yuJG.nzBzzDwyFPGXXjMsQ.1/1ItoxO'),
(2, '2', '1231231231', '3434627346', 'Wayan Sucipta', 'wayan@gmail.com', 'Denpasar', '2020-04-29', 'aktif', '$2y$10$sXlj6kxyStGbqD6wlr6SgOj.kpNOPFW/nolcllq5llQGiB.xfPUjS'),
(3, '2', '1234567891', '2136147167', 'Putu Gede Wijaya', 'putuwijaya@gmail.com', 'Badung', '2020-05-26', 'aktif', '$2y$10$N9Jtnndos4OVEqDqKR8kXeSgUfMqkjV4uCU5d.BZs2rkIcMejbMYC');

-- --------------------------------------------------------

--
-- Table structure for table `join_kelas`
--

CREATE TABLE `join_kelas` (
  `id_join` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `join_kelas`
--

INSERT INTO `join_kelas` (`id_join`, `id_mahasiswa`, `id_kelas`) VALUES
(1, 1, 1),
(18, 2, 1),
(19, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `jam_kuliah` varchar(20) NOT NULL,
  `kuota_kelas` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jam_kuliah`, `kuota_kelas`, `id_dosen`, `status`) VALUES
(1, 'Pemrograman Web', '08.30 - 10.50', 25, 2, 'aktif'),
(9, 'Sistem Digital', '13.00 - 15.00', 25, 2, 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_mk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `semester`, `id_mahasiswa`, `id_mk`) VALUES
(1, 'Ganjil 2020/2021', 1, 1),
(2, 'Ganjil 2020/2021', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `role` char(1) NOT NULL,
  `nim` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `role`, `nim`, `nama`, `email`, `alamat`, `tanggal_lahir`, `status`, `password`) VALUES
(1, '1', '1708561045', 'I Gusti Ngurah Agung Dharmawangsa', 'Dharmaagung56@gmail.com', 'Denpasar', '2020-05-14', 'aktif', '$2y$10$n/bNgl/F6z/XeTbsdA28G.LMADwFYHcCEm/la2STF56Sv.FssqlAi'),
(2, '1', '1708561077', 'Bagus Semara', 'semara123@gmail.com', 'Karangasem', '2020-04-28', 'aktif', '$2y$10$ePnwfLXkebClZ8zVxS1KQeRPmoHI4uNhBuX54gFlEQurEg4RJ67KC'),
(4, '1', '1708561046', 'Einstein', 'Einstein@gmail.com', 'denpasar', '1999-11-04', 'aktif', '$2y$10$6GqWhNwB6x4N6gTA1EQdJ..2VXc43350fikVNRECl8T1HJ/yITBOe'),
(5, '1', '1708561048', 'I Gede Bagus Semara Wijaya', 'semara@gmail.com', 'denpasar', '1999-10-04', 'aktif', '$2y$10$0D9ETUSJXs78NQ0QBTFLVOS595EqSvZMMtiWUY5bXLtlzq7iCYcm.');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_mk` int(11) NOT NULL,
  `kode_mk` char(6) NOT NULL,
  `matakuliah` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_mk`, `kode_mk`, `matakuliah`, `sks`) VALUES
(1, 'IF1234', 'Pemrograman Web', 3),
(2, 'IF1235', 'Sistem Digital', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminsimak`
--
ALTER TABLE `adminsimak`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id_bimbingan`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `join_kelas`
--
ALTER TABLE `join_kelas`
  ADD PRIMARY KEY (`id_join`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_mk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminsimak`
--
ALTER TABLE `adminsimak`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bimbingan`
--
ALTER TABLE `bimbingan`
  MODIFY `id_bimbingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `join_kelas`
--
ALTER TABLE `join_kelas`
  MODIFY `id_join` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_mk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD CONSTRAINT `bimbingan_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `bimbingan_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);

--
-- Constraints for table `join_kelas`
--
ALTER TABLE `join_kelas`
  ADD CONSTRAINT `join_kelas_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  ADD CONSTRAINT `join_kelas_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `matakuliah` (`id_mk`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);
