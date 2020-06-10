-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 04:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `No.Anggota` int(15) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kota` varchar(15) NOT NULL,
  `No.Telp` int(15) NOT NULL,
  `Pekerjaan` varchar(30) NOT NULL,
  `Kode Anggota` int(15) NOT NULL,
  `Nama Anggota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `nomor` int(15) NOT NULL,
  `id_kredit` int(15) NOT NULL,
  `tgl_kredit` int(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` int(15) NOT NULL,
  `jumlah_pinjaman` int(30) NOT NULL,
  `terlambat` int(30) NOT NULL,
  `denda` int(30) NOT NULL,
  `tgl_bayar` int(15) NOT NULL,
  `tgl_jatuh_tempo` int(15) NOT NULL,
  `telah_dibayar` int(15) NOT NULL,
  `angsuran_denda` int(15) NOT NULL,
  `cicilan_ke` int(15) NOT NULL,
  `sisa_pembayaran` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `no_pinjaman` int(15) NOT NULL,
  `tgl_pinjaman` int(10) NOT NULL,
  `no_anggota` int(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `pinjaman_pokok` int(30) NOT NULL,
  `lama_angsuran` int(30) NOT NULL,
  `jumlah` int(30) NOT NULL,
  `total_pinjaman` int(30) NOT NULL,
  `angsuran` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `no_transaksi` int(15) NOT NULL,
  `tgl_transaksi` int(15) NOT NULL,
  `no_anggota` int(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `simpanan` int(30) NOT NULL,
  `penarikan` int(30) NOT NULL,
  `saldo_lama` int(30) NOT NULL,
  `saldo` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`No.Anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
