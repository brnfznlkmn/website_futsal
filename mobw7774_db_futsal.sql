-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2024 at 06:26 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobw7774_db_futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`, `nama`, `phone`, `email`) VALUES
(2, 'admin', 'admin', 'admin', '909845', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `idbayar` int(11) NOT NULL,
  `idsewa` int(11) NOT NULL,
  `bukti` text NOT NULL,
  `tgl_upload` date NOT NULL,
  `konfirmasi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`idbayar`, `idsewa`, `bukti`, `tgl_upload`, `konfirmasi`) VALUES
(16, 30, 'Desert.jpg', '2017-11-27', 'Sudah'),
(17, 31, 'Jellyfish.jpg', '2017-11-27', 'Belum'),
(18, 32, 'Lighthouse.jpg', '2017-11-27', 'Sudah'),
(19, 33, 'Hydrangeas.jpg', '2017-11-27', 'Belum'),
(20, 34, 'Jellyfish.jpg', '2017-11-27', 'Belum'),
(21, 35, 'Koala.jpg', '2017-11-27', 'Belum'),
(22, 36, 'Tulips.jpg', '2017-11-27', 'Sudah'),
(23, 37, 'Desert.jpg', '2017-11-27', 'Belum'),
(24, 39, 'Chrysanthemum.jpg', '2017-11-27', 'Sudah'),
(25, 38, 'Jellyfish.jpg', '2017-11-27', 'Sudah'),
(26, 40, 'Screenshot_2024-12-09-19-05-20-435_com.android.chrome.jpg', '2024-12-10', 'Sudah'),
(27, 41, 'Pas Foto Brian Square.jpg', '2024-12-10', 'Belum'),
(28, 42, 'ratava.jpg', '2024-12-10', 'Sudah'),
(29, 43, 'Permodelan UML.jpeg', '2024-12-10', 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `idlap` int(11) NOT NULL,
  `nm` varchar(35) NOT NULL,
  `ket` text NOT NULL,
  `harga1` int(11) NOT NULL,
  `harga2` int(11) NOT NULL,
  `f1` text NOT NULL,
  `f2` text NOT NULL,
  `f3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`idlap`, `nm`, `ket`, `harga1`, `harga2`, `f1`, `f2`, `f3`) VALUES
(1, 'Golden', 'ket1', 50000, 60000, 'katakana 2.jpg', '2.jpg', '3.jpg'),
(2, 'Prima', 'ket2', 50000, 55000, '4.jpg', '5.jpg', '6.jpg'),
(3, 'qw', 'qwqe', 4000, 54000, '1505586_500579516728270_1800199790_n.jpg', 'katakana 3.jpg', 'hiragana 2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `idsewa` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idlap` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `lama` int(11) NOT NULL,
  `jmulai` datetime NOT NULL,
  `jhabis` datetime NOT NULL,
  `jns` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`idsewa`, `iduser`, `idlap`, `tgl_pesan`, `lama`, `jmulai`, `jhabis`, `jns`, `harga`, `tot`) VALUES
(30, 56, 1, '2017-11-27', 1, '2017-04-15 13:00:00', '2017-04-15 13:00:00', 'Siang', 50000, 50000),
(31, 56, 1, '2017-11-27', 3, '2017-09-26 21:00:00', '2017-09-26 21:00:00', 'Malam', 60000, 180000),
(32, 55, 2, '2017-11-27', 1, '2017-01-01 14:00:00', '2017-01-01 14:00:00', 'Siang', 50000, 50000),
(33, 55, 1, '2017-11-27', 1, '2017-06-11 14:00:00', '2017-06-11 14:00:00', 'Siang', 50000, 50000),
(34, 55, 3, '2017-11-27', 14, '2017-03-19 22:00:00', '2017-03-19 22:00:00', 'Malam', 54000, 756000),
(35, 40, 3, '2017-11-27', 3, '2017-07-05 13:00:00', '2017-07-05 13:00:00', 'Siang', 4000, 12000),
(36, 40, 1, '2017-11-27', 1, '2017-12-01 17:00:00', '2017-12-01 17:00:00', 'Siang', 50000, 50000),
(37, 40, 1, '2017-11-27', 13, '2017-01-28 09:00:00', '2017-01-28 09:00:00', 'Siang', 50000, 650000),
(38, 41, 1, '2017-11-27', 2, '2017-05-20 13:00:00', '2017-05-20 13:00:00', 'Siang', 50000, 100000),
(39, 41, 1, '2017-11-27', 1, '2017-09-12 14:00:00', '2017-09-12 14:00:00', 'Siang', 50000, 50000),
(40, 57, 1, '2024-12-10', 9, '2024-12-11 00:00:00', '2024-12-11 09:40:00', 'Siang', 50000, 450000),
(41, 57, 3, '2024-12-10', 11, '2024-12-10 17:00:00', '2024-12-11 04:07:00', 'Siang', 4000, 44000),
(42, 58, 2, '2024-12-10', 16, '2024-12-10 20:00:00', '2024-12-11 12:45:00', 'Malam', 55000, 880000),
(43, 60, 1, '2024-12-10', 19, '2024-12-11 19:00:00', '2024-12-12 14:19:00', 'Siang', 50000, 950000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `hp`, `jenis_kelamin`, `nama_lengkap`, `alamat`) VALUES
(58, 'salomo', 'salomo', '09809809', 'Laki-Laki', 'salomo', 'jalan jalan'),
(33, 'ridwan@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '082170445566', 'L', 'Ridwan Indrawan', ''),
(45, 'indaswari@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '082170214495', 'P', 'Feronika Indaswari', ''),
(52, 'indah2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '081', 'Laki-Laki', 'tes2', 'asas'),
(60, 'aldi@gmail.com', 'aldi', '052554889', 'Laki-Laki', 'ryno', 'Jl.Naga raya'),
(54, 'andiputra@gmail.com', 'ce0e5bf55e4f71749eade7a8b95c4e46', '081234567890', 'Laki-Laki', 'Andi Putra', 'Padang'),
(59, 'awang@gmail.com', 'awang', '009898798', 'Laki-Laki', 'awang', 'jalan gatot subroto'),
(57, 'brian', 'brian', '08512', 'Laki-Laki', 'Brian', 'Jlanin aja dlu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`idbayar`);

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`idlap`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`idsewa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `idbayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `idlap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `idsewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
