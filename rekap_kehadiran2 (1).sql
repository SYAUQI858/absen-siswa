-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2018 at 05:18 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekap_kehadiran2`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_guru`
--

CREATE TABLE `absen_guru` (
  `id_absen_guru` int(11) NOT NULL,
  `tgl_absen` date DEFAULT NULL,
  `keterangan` varchar(1) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_guru`
--

INSERT INTO `absen_guru` (`id_absen_guru`, `tgl_absen`, `keterangan`, `id_guru`) VALUES
(87, '2018-07-18', 'h', 10),
(88, '2018-07-18', 'h', 5),
(89, '2018-07-18', 'h', 6),
(90, '2018-07-18', 'h', 8),
(91, '2018-07-18', 'h', 9),
(92, '2018-07-18', 'h', 15),
(93, '2018-07-18', 's', 7),
(94, '2018-07-22', 'a', 7),
(95, '2018-07-22', 'a', 10),
(96, '2018-07-22', 'a', 5),
(97, '2018-07-22', 'a', 6),
(98, '2018-07-22', 'a', 8),
(99, '2018-07-22', 'a', 9),
(100, '2018-07-22', 'a', 15),
(108, '2018-08-05', 'h', 7),
(109, '2018-08-05', 'h', 10),
(110, '2018-08-05', 'h', 5),
(111, '2018-08-05', 'h', 6),
(112, '2018-08-05', 'h', 8),
(113, '2018-08-05', 'h', 9),
(114, '2018-08-05', 'h', 15),
(115, '2018-08-28', 's', 7),
(116, '2018-08-28', 'h', 10),
(117, '2018-08-28', 's', 5),
(118, '2018-08-28', 's', 6),
(119, '2018-08-28', 's', 8),
(120, '2018-08-28', 's', 9),
(121, '2018-08-28', 's', 15),
(122, '2018-08-10', 'i', 7),
(123, '2018-08-10', 'h', 10),
(124, '2018-08-10', 'i', 5),
(125, '2018-08-10', 'i', 6),
(126, '2018-08-10', 'i', 8),
(127, '2018-08-10', 'i', 9),
(128, '2018-08-10', 'i', 15);

-- --------------------------------------------------------

--
-- Table structure for table `absen_jam_ngajar`
--

CREATE TABLE `absen_jam_ngajar` (
  `id_absen_jam_ngajar` int(11) NOT NULL,
  `tgl_ngajar` date NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `id_jam_mengajar` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_jam_ngajar`
--

INSERT INTO `absen_jam_ngajar` (`id_absen_jam_ngajar`, `tgl_ngajar`, `jumlah_jam`, `id_jam_mengajar`, `id_guru`) VALUES
(10, '2018-03-08', 4, 2, 6),
(11, '2018-03-08', 2, 1, 15),
(12, '2018-03-09', 4, 3, 6),
(14, '2018-03-09', 2, 2, 6),
(15, '2018-07-22', 2, 2, 6),
(16, '2018-07-22', 2, 3, 6),
(17, '2018-07-22', 2, 1, 15),
(18, '2018-07-21', 2, 2, 6),
(19, '2018-07-21', 2, 3, 6),
(20, '2018-08-28', 2, 2, 6),
(21, '2018-08-28', 2, 3, 6),
(22, '2018-08-28', 1, 1, 15),
(23, '2018-08-27', 2, 2, 6),
(24, '2018-08-27', 2, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `absen_siswa`
--

CREATE TABLE `absen_siswa` (
  `id_absen_siswa` int(11) NOT NULL,
  `tgl_absen` date DEFAULT NULL,
  `keterangan` varchar(1) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_siswa`
--

INSERT INTO `absen_siswa` (`id_absen_siswa`, `tgl_absen`, `keterangan`, `id_siswa`) VALUES
(53, '2017-11-13', 'h', 28),
(54, '2017-11-13', 'h', 19),
(55, '2017-11-13', 's', 29),
(56, '2017-11-13', 's', 20),
(58, '2017-11-15', 's', 23),
(59, '2017-11-15', 's', 31),
(60, '2018-07-22', 's', 32),
(61, '2018-08-27', 's', 33),
(62, '2018-08-27', 's', 34),
(63, '2018-08-27', 's', 32),
(64, '2018-08-28', 'i', 33),
(65, '2018-08-28', 'i', 34),
(66, '2018-08-28', 'i', 32),
(67, '2018-08-28', 'a', 33),
(68, '2018-08-28', 'a', 34),
(69, '2018-08-28', 'a', 32),
(70, '2018-08-29', 'a', 33),
(71, '2018-08-29', 'a', 34),
(72, '2018-08-29', 'a', 32),
(73, '2018-08-30', 'h', 33),
(74, '2018-08-30', 'h', 34),
(75, '2018-08-30', 'h', 32),
(77, '2018-08-05', 'i', 34),
(78, '2018-08-05', 'h', 32),
(79, '2018-08-28', 'i', 35),
(80, '2018-08-05', 'h', 35),
(81, '2018-08-05', 'h', 33);

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `nama_sekolah`, `alamat`, `photo`, `email`, `telepon`, `kota`) VALUES
(1, 'SMA SMK Puragabaya', 'JL.Pasteur', 'puragabaya.jpeg', 'email@gmail.com', '(088) 838-7377 x35', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `biodata_laporan`
--

CREATE TABLE `biodata_laporan` (
  `id` int(11) NOT NULL,
  `nama_ketua` varchar(100) NOT NULL,
  `nama_wakil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata_laporan`
--

INSERT INTO `biodata_laporan` (`id`, `nama_ketua`, `nama_wakil`) VALUES
(1, 'wandi febriandi', 'edo biantoro');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nuptk` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nuptk`, `nama`, `jenis_kelamin`, `status`, `alamat`, `jabatan`, `telepon`, `tgl_lahir`) VALUES
(5, '0', '0', 'Bu penii', 'p', '', 'konoha gakure', 'W.K.sek. kesiswaan', '037737746628', '1945-07-17'),
(6, '088272', '0', 'Dian Diana  S.pd', 'P', '', 'Suna Gakurre', 'Sesepuh Hokage', 'ganjil genap', '1945-08-17'),
(7, '04888477', '00048837', 'Aini', 'l', 'pns', 'Jalan kenangan', 'Ketua Program', '(048) 848-8477 ', '2000-04-10'),
(8, '3094747', '3948932', 'Gilar Nugraha', 'l', 'pns', 'Jln. Penyesalan Terlambat', 'Guru Pengajar', '(039) 474-7747', '1901-01-01'),
(9, '0', '0', 'Hilman Denpasar', 'L', '', 'Disamping rumah mantan ', '', '', '1947-05-05'),
(10, '0', '0', 'Azis', 'l', '', 'Manado', 'Wakasek Kesiswaan', '(088) 355-5337 ', '0000-00-00'),
(15, '84663', '0', 'Prabowo', 'l', '', 'Konoha', 'jdf', '(088) 128-8383', '2017-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `jam_mengajar`
--

CREATE TABLE `jam_mengajar` (
  `id_jam_mengajar` int(11) NOT NULL,
  `jam` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam_mengajar`
--

INSERT INTO `jam_mengajar` (`id_jam_mengajar`, `jam`, `id_pelajaran`, `id_guru`, `id_kelas`) VALUES
(1, 2, 1, 15, 3),
(2, 4, 3, 6, 4),
(3, 4, 3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'X-RPL A'),
(3, 'X-RPL B'),
(4, 'XI-RPL A'),
(5, 'XI-RPL B'),
(6, 'XII-RPL');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `mata_pelajaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id_pelajaran`, `mata_pelajaran`) VALUES
(1, 'Fisika'),
(3, 'Sejarah Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `kelas` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telepon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `jenis_kelamin`, `kelas`, `alamat`, `tgl_lahir`, `telepon`) VALUES
(18, 'hamdani', 'l', 2, 'bandung', '2017-04-15', '0888422209'),
(19, 'egi', 'l', 3, 'bandung', '2017-04-14', '0883882902'),
(20, 'dadan', 'l', 4, 'bandung', '2017-04-08', '0882829920'),
(23, 'Dede Yusup', 'l', 6, 'bandung', '2017-04-07', '(088) 666-6666 '),
(27, 'hamdani', 'l', 2, 'konoha', '2017-04-19', '038774337'),
(28, 'aditia', 'l', 3, 'konoha', '2017-04-13', '038747392'),
(29, 'andrian', 'l', 4, 'konoha', '2017-04-01', '08828271'),
(31, 'Leonel Messi', 'l', 6, 'Spanyol', '2017-11-03', '(088) 287-4774 '),
(32, 'Wandi Febriandi', 'l', 1, 'Jln. Karang Tineung', '2000-02-10', '(088) 288-2882 '),
(33, 'tes', 'l', 1, 'Jln. Manado', '2018-08-23', '(123) 456-7890 '),
(34, 'tes 2', 'l', 1, 'jln. manado', '2018-08-11', '(088) 122-0769 x25'),
(35, 'dian candra', 'p', 1, 'jln. manado', '1998-02-17', '(088) 122-0769 x77');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `akses` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `akses`) VALUES
(1, 'admin', 'admin', 'naruto', 'narutoglobaltv@gmail.com', 'admin'),
(2, 'petugas', 'petugas', 'sahawehlah', 'naonwehlah@gmail.com', 'petugas_piket'),
(3, 'kesiswaan', 'kesiswaan', 'kesiswaan', 'kesiswaan@gmail.com', 'kesiswaan'),
(4, 'koordinator', 'koordinator', 'koordinator', 'koordinator@gmail.com', 'koordinator'),
(5, 'kepsek', 'kepsek', 'Kepala Sekolah', 'kepalasekolah@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_wali` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_wali`, `username`, `password`, `id_guru`, `id_kelas`) VALUES
(2, 'zxcvbnm', 'zxcvbnm', 6, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_guru`
--
ALTER TABLE `absen_guru`
  ADD PRIMARY KEY (`id_absen_guru`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `absen_jam_ngajar`
--
ALTER TABLE `absen_jam_ngajar`
  ADD PRIMARY KEY (`id_absen_jam_ngajar`);

--
-- Indexes for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD PRIMARY KEY (`id_absen_siswa`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`);

--
-- Indexes for table `biodata_laporan`
--
ALTER TABLE `biodata_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  ADD PRIMARY KEY (`id_jam_mengajar`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_guru`
--
ALTER TABLE `absen_guru`
  MODIFY `id_absen_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `absen_jam_ngajar`
--
ALTER TABLE `absen_jam_ngajar`
  MODIFY `id_absen_jam_ngajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  MODIFY `id_absen_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `biodata_laporan`
--
ALTER TABLE `biodata_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  MODIFY `id_jam_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen_guru`
--
ALTER TABLE `absen_guru`
  ADD CONSTRAINT `absen_guru_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD CONSTRAINT `absen_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
