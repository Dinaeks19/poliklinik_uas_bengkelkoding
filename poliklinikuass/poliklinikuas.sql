-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 08:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliklinikuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_periksa`
--

CREATE TABLE `detail_periksa` (
  `id` int(10) NOT NULL,
  `id_periksa` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_periksa`
--

INSERT INTO `detail_periksa` (`id`, `id_periksa`, `id_obat`) VALUES
(82, 30, 6),
(83, 30, 8),
(87, 32, 6),
(88, 32, 7),
(89, 32, 8),
(90, 31, 16),
(91, 31, 17),
(94, 34, 8),
(95, 35, 26);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `alamat`, `no_hp`) VALUES
(20, 'dr. Sigit Prasea Kurniawan,Sp.PD', 'semarang', '12345679'),
(21, 'dr. I Ketut Suardana, Sp.PD', 'thamrin semarang tengah', '1111111');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varbinary(50) NOT NULL,
  `kemasan` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `kemasan`, `harga`) VALUES
(6, 0x416d6c6f646970696e207461626c6574203130206d67, 'ktk 3 x 11 tablet', 8750),
(7, 0x476c696d657072696465207461626c65742031206d67, 'ktk 3 x 10 table', 30000),
(8, 0x49627570726f66656e207461626c657420343030206d67, 'kotak 10 x 10 tablet', 28000),
(9, 0x4b616c7369756d204c616b74617420284b616c6b29207461626c657420353030206d67, 'btl 1000 tablet', 69000),
(10, 0x4d6574666f726d696e2048434c207461626c657420353030206d67, 'ktk 10 x 10 tablet', 8000),
(11, 0x4f62617420426174756b20486974616d20284f2e422e48292063616972616e, 'btl 200 ml', 378000),
(12, 0x50617261736574616d6f6c207461626c657420353030206d67, 'ktk 10 x 10 tablet', 20000),
(13, 0x41435420284172746573756e617465207461626c6574203530206d67202b20416d6f6469617175696e6520616e6879647269, '2 blister @ 12 tablet / kotak', 44),
(14, 0x41435420284172746573756e617465207461626c6574203530206d67202b20416d6f6469617175696e6520616e6879647269, '3 blister @ 8 tablet / kotak', 44),
(15, 0x416c62656e6461736f6c2073757370656e736920323030206d672f35206d6c, 'Ktk 10 btl @ 10 ml', 6),
(16, 0x416c62656e64617a6f6c207461626c65742f207461626c6574206b756e79616820343030206d67, 'ktk 5 x 6 tablet', 16),
(17, 0x416c6f707572696e6f6c207461626c657420333030206d67, 'ktk 10 x 10 tablet', 33),
(18, 0x416c7072617a6f6c616d207461626c657420302c3235206d67, 'ktk 10 x 10 tablet', 64),
(19, 0x416c7072617a6f6c616d207461626c657420302c35206d67, 'ktk 10 x 10 tablet', 77),
(20, 0x416c7072617a6f6c616d207461626c65742031206d67, 'ktk 10 x 10 tablet', 118),
(21, 0x416d62726f786f6c207369727570203135206d672f6d6c, 'btl 60 ml ', 5),
(22, 0x416d62726f786f6c207369727570203330206d67, 'ktk 10 x 10 tablet', 21),
(23, 0x416d696c6f72696461207461626c65742035206d67, 'ktk 10 x 10 tablet', 12),
(24, 0x416d696e6f66696c696e20696e6a656b7369203234206d672f6d6c, 'ktk 30 ampul @ 10 ml', 118),
(25, 0x416d6f6b736973696c696e207369727570206b6572696e6720313235206d672f2035206d6c, 'btl 60 ml', 5),
(26, 0x416d706973696c696e206b61706c657420353030206d67, 'ktk 10 x 10 kaplet', 62400);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `alamat`, `no_hp`) VALUES
(17, 'Dina Etikasari', 'semarang', '12567'),
(18, 'anisa', 'jakarta', '12345679');

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dokter` int(10) UNSIGNED NOT NULL,
  `id_pasien` int(10) UNSIGNED NOT NULL,
  `tgl_periksa` datetime NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `id_dokter`, `id_pasien`, `tgl_periksa`, `catatan`) VALUES
(30, 20, 17, '2023-12-29 22:26:00', 'batuk pilek'),
(31, 21, 18, '2023-12-29 23:36:00', 'flu parah'),
(32, 21, 18, '2023-12-29 23:36:00', 'pusing'),
(34, 21, 18, '2023-12-29 23:42:00', 'demam'),
(35, 21, 17, '2023-12-29 23:50:00', 'flu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(8, 'widhi', '$2y$10$mqre7RsdobimUrbw4wtug.zXbAIt7Bz9q2oC9ylyE1Tv6ah2m1GLy'),
(9, 'widhibn', '$2y$10$L0HTMOrCGh1joa2084.cv.8SR/TOOgqokBBRTyWqE4JucWYf7I8ga'),
(10, 'widhi_bagus', '$2y$10$uCEON1Yx0ItabJDJwETDpeJNKmaFpMgB/lHwUMPtRSYvLlWRvtBeO'),
(12, 'bagus', '$2y$10$hFUwPLvvDKrR4LXTw6ov7.IJrrNT2655bOa3QKAwu8qNUUv7/adAG'),
(13, 'dina', '$2y$10$AGF3g8gpFBhMEIT3njImWeVof4EvkzRqnZtfu01aW8aXMCr2tOvAi'),
(14, 'diana', '$2y$10$/coK3UO4IGzRqdBLonPgW.bmBIICP25qobuDMx4rip03av1o8CAtu'),
(15, 'dimas', '$2y$10$e5IsvO4FGqMNowfMc7v6WePvw845C8aNfJ3swplv4/ZbqDvS0a3Ei'),
(16, 'rian', '$2y$10$M1FfYFBehc9KVXdmyXkQLuz6lhUMO5jYcwl5mfHyDqjsRpSoA4x8e'),
(17, 'sari', '$2y$10$g/7WSl1BEh8744QPchdT.uMfvJiQZLDKHcA1hn6Ff/pJjk/Ptzfpm'),
(18, 'sandi', '$2y$10$uyR1PV8I8qlQ.EEFSDYX1.seSlW9SksG9su5hIFIZV9vuLCJKnT.G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
