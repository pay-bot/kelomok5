-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2021 at 03:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_odp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `angka` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id`, `nama`, `angka`) VALUES
(1, 'Tidak', '0.0'),
(2, 'Sesekali', '0.5'),
(3, 'Sedikit', '0.5'),
(4, 'Tidak Terlalu', '0.5'),
(5, 'Ya', '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `indikator`
--

CREATE TABLE `indikator` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `angka` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `indikator`
--

INSERT INTO `indikator` (`id`, `nama`, `angka`) VALUES
(1, 'traveler', '0.30'),
(2, 'fever', '0.80'),
(3, 'fatigue', '0.10'),
(4, 'dry cough', '0.80'),
(5, 'flu', '0.50'),
(6, 'anorexia', '0.01'),
(7, 'myalgia', '0.83'),
(8, 'dyspnea', '0.11'),
(9, 'pharyngalgia', '0.30'),
(10, 'diarrhea', '0.20'),
(11, 'dizziness', '0.07'),
(12, 'headache', '0.40'),
(13, 'vomiting', '0.13'),
(14, 'abdominal pain', '0.02'),
(15, 'cheast pain', '0.02'),
(16, 'heamoptysis', '0.05'),
(17, 'heamoptysis', '0.05'),
(18, 'heamoptysis', '0.05'),
(19, 'heamoptysis', '0.05'),
(20, 'heamoptysis', '0.05'),
(21, 'heamoptysis', '0.05'),
(22, 'heamoptysis', '0.05'),
(23, 'heamoptysis', '0.05');


-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `jawaban_id` bigint(15) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pertanyaan_id` int(11) DEFAULT NULL,
  `bobot_jawab_id` int(11) DEFAULT NULL,
  `cf_user` decimal(10,2) DEFAULT NULL,
  `cf_value` decimal(10,2) DEFAULT NULL,
  `cf_combine` decimal(10,4) DEFAULT NULL,
  `jawaban_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jawaban_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`jawaban_id`, `user_id`, `pertanyaan_id`, `bobot_jawab_id`, `cf_user`, `cf_value`, `cf_combine`, `jawaban_created`, `jawaban_updated`) VALUES
(1, 3, 1, 1, '0.00', '0.00', '0.0000', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(2, 3, 2, 1, '0.00', '0.00', '0.0000', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(3, 3, 3, 1, '0.00', '0.00', '0.0000', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(4, 3, 4, 1, '0.00', '0.00', '0.0000', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(5, 3, 5, 1, '0.00', '0.00', '0.8300', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(6, 3, 6, 1, '0.00', '0.00', '0.8402', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(7, 3, 7, 5, '1.00', '0.83', '0.8402', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(8, 3, 8, 3, '0.50', '0.06', '0.8402', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(9, 3, 9, 1, '0.00', '0.00', '0.8402', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(10, 3, 10, 1, '0.00', '0.00', '0.9041', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(11, 3, 11, 1, '0.00', '0.00', '0.9041', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(12, 3, 12, 5, '1.00', '0.40', '0.9060', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(13, 3, 13, 1, '0.00', '0.00', '0.9079', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(14, 3, 14, 5, '1.00', '0.02', '0.9079', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(15, 3, 15, 5, '1.00', '0.02', '0.9079', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(16, 3, 16, 1, '0.00', '0.00', '0.9079', '2020-04-16 09:15:35', '2020-04-16 02:15:35'),
(17, 4, 1, 5, '1.00', '0.30', '0.8600', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(18, 4, 2, 5, '1.00', '0.80', '0.9720', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(19, 4, 3, 3, '0.50', '0.05', '0.9790', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(20, 4, 4, 5, '1.00', '0.80', '0.9792', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(21, 4, 5, 3, '0.50', '0.25', '0.9879', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(22, 4, 6, 3, '0.50', '0.01', '0.9879', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(23, 4, 7, 3, '0.50', '0.42', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(24, 4, 8, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(25, 4, 9, 3, '0.50', '0.15', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(26, 4, 10, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(27, 4, 11, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(28, 4, 12, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(29, 4, 13, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(30, 4, 14, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(31, 4, 15, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08'),
(32, 4, 16, 1, '0.00', '0.00', '0.9898', '2021-02-09 22:36:08', '2021-02-09 15:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `penyakit` text,
  `jawaban` text,
  `persentase` decimal(10,3) DEFAULT NULL,
  `uuid` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`) VALUES
(1, 'Cardiovascular disease'),
(2, 'Diabetes'),
(3, 'Chronic respiratory disease'),
(4, 'Hypertension'),
(5, 'Cancer');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `pertanyaan_id` int(11) NOT NULL,
  `pil_jawaban` varchar(100) DEFAULT NULL,
  `indikator_id` int(11) DEFAULT NULL,
  `pertanyaan_konten` varchar(100) DEFAULT NULL,
  `pertanyaan_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pertanyaan_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`pertanyaan_id`, `pil_jawaban`, `indikator_id`, `pertanyaan_konten`, `pertanyaan_created`, `pertanyaan_updated`) VALUES
(1, '[\"1\",\"3\",\"5\"]', 1, 'Apakah anda mengalami Nyeri pada daerah lambung?', '2020-04-15 09:51:39', '2020-04-15 02:51:39'),
(2, '[\"1\",\"3\",\"5\"]', 2, 'Apakah anda mengalami rasa perih pada daerah lambung?', '2020-04-15 09:51:39', '2020-04-15 02:51:39'),
(3, '[\"1\",\"3\",\"5\"]', 3, 'Apakah anda merasa kembung pada lambung?', '2020-04-15 09:52:36', '2020-04-15 02:52:36'),
(4, '[\"1\",\"3\",\"5\"]', 4, 'Apakah anda merasa kurang nafsu makan?', '2020-04-15 09:52:36', '2020-04-15 02:52:36'),
(5, '[\"1\",\"3\",\"5\"]', 5, 'Apakah anda mengalami mual atau muntah?', '2020-04-15 09:53:18', '2020-04-15 02:53:18'),
(6, '[\"1\",\"3\",\"5\"]', 6, 'Apakah anda mengalami nyeri pada perut?', '2020-04-15 09:53:18', '2020-04-15 02:53:18'),
(7, '[\"1\",\"3\",\"5\"]', 7, 'Apakah anda mengalami nyeri pada dada?', '2020-04-15 09:53:56', '2020-04-15 02:53:56'),
(8, '[\"1\",\"3\",\"5\"]', 8, 'Apakah anda sering sendawa?', '2020-04-15 09:53:56', '2020-04-15 02:53:56'),
(9, '[\"1\",\"3\",\"5\"]', 9, 'Apakah anda mengalami diare?', '2020-04-15 10:07:47', '2020-04-15 03:07:47'),
(10, '[\"1\",\"3\",\"5\"]', 10, 'Apakah anda merasa ada penurunan berat badan?', '2020-04-15 10:07:47', '2020-04-15 03:07:47'),
(11, '[\"1\",\"3\",\"5\"]', 11, ' Apakah fases anda berwarna hitam?', '2020-04-15 10:08:47', '2020-04-15 03:08:47'),
(12, '[\"1\",\"3\",\"5\"]', 12, 'Apakah anda merasa nyeri terbakar pada tulang dada?', '2020-04-15 10:08:47', '2020-04-15 03:08:47'),
(13, '[\"1\",\"3\",\"5\"]', 13, 'Apakah mulut anda terasa asam dan pahit?', '2020-04-15 10:09:30', '2020-04-15 03:09:30'),
(14, '[\"1\",\"3\",\"5\"]', 14, 'Apakah anda merasa ada maknan atau minuman balik kemulut?', '2020-04-15 10:09:30', '2020-04-15 03:09:30'),
(15, '[\"1\",\"3\",\"5\"]', 15, 'Apakah anda mengalami batuk menahun?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(16, '[\"1\",\"3\",\"5\"]', 16, 'Apakah anda mengalami serak?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(17, '[\"1\",\"3\",\"5\"]', 17, 'Apakah anda mengalami sakit tenggorokan?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(18, '[\"1\",\"3\",\"5\"]', 18, 'Apakah anda mengalami asma?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(19, '[\"1\",\"3\",\"5\"]', 19, 'Apakah anda mengalami demam?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(20, '[\"1\",\"3\",\"5\"]', 20, 'Apakah anda mengalami kejang perut?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(21, '[\"1\",\"3\",\"5\"]', 21, 'Apakah anda mengalami nyeri pada ulu hati?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(22, '[\"1\",\"3\",\"5\"]', 22, 'Apakah anda sering dehidrasi?', '2020-04-15 10:10:02', '2020-04-15 03:10:02'),
(23, '[\"1\",\"3\",\"5\"]', 23, 'Apakah anda merasa kembung pada perut?', '2020-04-15 10:10:02', '2020-04-15 03:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(200) DEFAULT NULL,
  `upass_hid` varchar(255) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `telepon` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `alamat` text,
  `darah` char(5) DEFAULT NULL COMMENT 'config_item(''darah'')',
  `agama` char(5) DEFAULT NULL COMMENT 'config_item(''agama'')',
  `status_kawin` char(1) DEFAULT NULL COMMENT '1 => ''Belum Menikah'',\r\n2 => ''Menikah'',\r\n3 => ''Janda/Duda''',
  `pekerjaan` varchar(200) DEFAULT NULL,
  `tempat_lahir` varchar(200) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `uuid` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `upass`, `upass_hid`, `nama`, `level`, `telepon`, `email`, `alamat`, `darah`, `agama`, `status_kawin`, `pekerjaan`, `tempat_lahir`, `tanggal_lahir`, `uuid`, `created`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Administrator', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-14 17:56:01'),
(3, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user1', 'Siti Darojah', 'user', '085277131810', 'darojah07@gmail.com', 'Jakarta', 'B', '1', '2', 'Staf Programmer', 'Jakarta', '1990-02-13', '1d54d5fe-ae8f-5703-881a-264e98e3a97a', '2020-04-13 02:14:18'),
(4, 'mpi', '37dc018a7f069ec130d0be0a75c32ffb', 'mpi', 'Luthfi Mufidah', 'user', '8986334500', 'luthfi@gmail.com', 'Jatinegara', 'A', '1', '1', 'mahasiswa', 'Jakarta', '1998-05-03', 'e981af43-43d7-5c3f-b666-5f2111de1542', '2021-02-09 22:35:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`jawaban_id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`pertanyaan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `indikator`
--
ALTER TABLE `indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `jawaban_id` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `pertanyaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
