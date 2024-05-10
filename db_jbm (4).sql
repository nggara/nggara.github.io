-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 03:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jbm`
--
CREATE DATABASE IF NOT EXISTS `db_jbm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_jbm`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(35) NOT NULL,
  `admin_pass` varchar(35) NOT NULL,
  `admin_nama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_nama`) VALUES
(1, 'admin', 'admin', 'admin'),
(4, 'adis', 'adis', 'adis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) NOT NULL,
  `kategori_satuan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`kategori_id`, `kategori_nama`, `kategori_satuan`) VALUES
(1, 'SUV', 'Unit'),
(2, 'Sedan', 'Unit'),
(3, 'Mini Bus', 'Unit'),
(4, 'Pick Up', 'Unit'),
(8, 'Blind Van', 'Unit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keuangan`
--

CREATE TABLE `tb_keuangan` (
  `id_keuangan` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `debit` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_keuangan`
--

INSERT INTO `tb_keuangan` (`id_keuangan`, `keterangan`, `debit`, `kredit`, `tgl_transaksi`) VALUES
(2, 'Civic FD', 0, 122000000, '2023-02-28'),
(3, 'Grand', 0, 110000000, '2023-05-10'),
(4, 'Inova Reborn', 0, 268000000, '2023-02-21'),
(5, 'Avanza', 0, 135000000, '2023-09-13'),
(6, 'Carry', 0, 81000000, '2024-01-08'),
(7, 'Xenia 2021 X', 0, 158500000, '2023-11-10'),
(8, 'Mobilio', 0, 137500000, '2024-01-05'),
(9, 'Civic FD (HPP+Beban)', 112876000, 0, '2023-01-17'),
(10, 'Grand (HPP+Beban)', 94233000, 0, '2023-02-07'),
(11, 'Inova Reborn (HPP+Beban)', 237744000, 0, '2022-12-27'),
(12, 'Avanza (HPP+Beban)', 116138000, 0, '2023-03-25'),
(13, 'Carry (HPP+Beban)', 68966000, 0, '2023-08-24'),
(14, 'Xenia 2021 X (HPP+Beban)', 135685000, 0, '2023-09-11'),
(15, 'Mobilio (HPP+Beban)', 124415000, 0, '2023-11-23'),
(16, 'Biaya Sosial Seluruhnya', 3286000, 0, '2023-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_user` varchar(35) NOT NULL,
  `pelanggan_pass` varchar(35) NOT NULL,
  `pelanggan_nama` varchar(35) NOT NULL,
  `pelanggan_jk` varchar(35) NOT NULL,
  `pelanggan_tgl_lahir` date NOT NULL,
  `pelanggan_alamat` text NOT NULL,
  `pelanggan_nohp` varchar(35) NOT NULL,
  `pelanggan_nik` varchar(30) NOT NULL,
  `pelanggan_pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`pelanggan_id`, `pelanggan_user`, `pelanggan_pass`, `pelanggan_nama`, `pelanggan_jk`, `pelanggan_tgl_lahir`, `pelanggan_alamat`, `pelanggan_nohp`, `pelanggan_nik`, `pelanggan_pekerjaan`) VALUES
(17, 'yuza72', 'yuza123', 'Yuza Ilzam', 'laki-laki', '1972-06-10', 'Perumahan Nuansa Indah 3 Blok H 6 RT 003 RW 009 Kelurahan Koto Panjang Ikua Koto, Kecamatan Koto Tangah', '087869987622', '1372021606720001', 'Karyawan Swasta'),
(18, 'rori22', 'rahmadayat', 'Rori Rahmadayat', 'laki-laki', '1991-02-06', 'Koto Berapak, RT 000 RW 000, Kelurahan Koto Berapak , Kecamatan Bayang', '08136389023891', '1301062606890002', 'Petani/Pekebun'),
(19, 'adisti', '060728', 'Mutiara Adisti', 'Perempuan', '2001-11-28', 'Perumahan Nuansa Indah 3 Blok H 6, RT 003 RW 009 Kelurahan Koto Panjang Ikua Koto', '082381942128', '13720226811010001', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `pembelian_id` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `pembelian_tgl` date NOT NULL,
  `pembelian_status` varchar(35) NOT NULL DEFAULT 'Belum di Konfirmasi',
  `pembelian_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`pembelian_id`, `pelanggan_id`, `pembelian_tgl`, `pembelian_status`, `pembelian_total`) VALUES
(1047, 17, '2024-01-29', 'Selesai', 118000000),
(1049, 18, '2023-12-11', 'Belum di Konfirmasi', 87000000),
(1050, 19, '2024-02-14', 'Belum di Konfirmasi', 143000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian_produk`
--

CREATE TABLE `tb_pembelian_produk` (
  `pembelian_produk_id` int(11) NOT NULL,
  `pembelian_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `pembelian_produk_jumlah` int(11) NOT NULL,
  `pembelian_produk_harga` int(11) NOT NULL,
  `pembelian_sub_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pembelian_produk`
--

INSERT INTO `tb_pembelian_produk` (`pembelian_produk_id`, `pembelian_id`, `produk_id`, `pembelian_produk_jumlah`, `pembelian_produk_harga`, `pembelian_sub_harga`) VALUES
(40, 1047, 59, 1, 118000000, 118000000),
(41, 1048, 54, 1, 104000000, 104000000),
(42, 1049, 49, 1, 87000000, 87000000),
(43, 1050, 51, 1, 143000000, 143000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `produk_nama` varchar(35) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_stok` int(11) NOT NULL,
  `produk_deskripsi` varchar(255) NOT NULL,
  `produk_foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `kategori_id`, `produk_nama`, `produk_harga`, `produk_stok`, `produk_deskripsi`, `produk_foto`) VALUES
(49, 4, 'SUZUKI CARRY PU FD 1.5', 87000000, 1, 'Tahun 2018,  Pajak baru bulan 05/24, KM 50 rb-an, Warna Hitam Nopol BA, Kondisi Sangat Bagus Siap Pakai', '1.jpg'),
(50, 3, 'TOYOTA AVANZA G 1.3 MANUAL', 108000000, 1, 'Tahun 2010, Pajak bulan 4/24, KM 101 rb-an, Warna Hitam, Nopol B', '2 (1).jpg'),
(51, 3, 'TOYOTA AVANZA E 1.3 AUTOMATIC', 143000000, 1, 'Tahun 2017, Pajak baru bulan 12/24, JM 100rb-an, Warna Merah, Nopol BA, Kondisi Sangat Bagus Siap Pakai', '3.jpg'),
(52, 3, 'DAIHATSU SIGRA R 1.2 MANUAL', 143000000, 1, 'Tahun 2022, Pajak baru bulan 07/24, KM 20rb-an, Warna Merah, Nopol BA, Kondisi Sangat Bagus Siap Pakai', '4 (1).jpg'),
(53, 1, 'HONDA CR-V 2.0 AUTOMATIC', 118000000, 1, 'DP mulai 20jt dengan angs 3,2an 4th ', '5.jpg'),
(54, 3, 'SUZUKI KARIMUN GL MANUAL', 104000000, 1, 'DP 10jtan aja', '6.jpg'),
(55, 3, 'DAIHATSU NEW AYLA X DELUXE 1.0L MAN', 114000000, 1, 'DP 10jt angs 2,9an 5th', '7.jpg'),
(56, 3, 'TOYOTA NEW AGYA S TRD AUTOMATIC', 133000000, 1, 'DP 7jtan aja dengan angs 3,7an 5th', '8.jpg'),
(57, 8, 'DAIHATSU GRANMAX BLINVAN 1.3 AC AIR', 94000000, 1, 'Tahun 2015, Pajak bulan 11/22, KM 90rb-an, Warna Putih, Nopol BA, Kondisi Sangat Bagus Siap Pakai ', '9.jpg'),
(58, 1, 'TOYOTA RUSH S TRD MANUAL ', 239000000, 1, 'DP 30jtan aja!!!', '10.jpg'),
(59, 4, 'SUZUKI NEW CARRY PU FD 1.5 STD', 118000000, 1, 'DP 12jt dengan angs 3,5jt-an 4th', '11.jpg'),
(60, 4, 'DAIHATSU GRANMAX PU FD 1.5 STD', 119000000, 1, 'DP 15jt dengan angs 3,5jt-an 4th', '12.jpg'),
(61, 1, 'HONDA CR-V TYPE 2.0 MT', 145000000, 1, 'Tahun 2010, Manual transmisi, Kondisi OK, Nopol BA, SIAP PAKAI!!', '13.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tb_keuangan`
--
ALTER TABLE `tb_keuangan`
  ADD PRIMARY KEY (`id_keuangan`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `tb_pembelian_produk`
--
ALTER TABLE `tb_pembelian_produk`
  ADD PRIMARY KEY (`pembelian_produk_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_keuangan`
--
ALTER TABLE `tb_keuangan`
  MODIFY `id_keuangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1051;

--
-- AUTO_INCREMENT for table `tb_pembelian_produk`
--
ALTER TABLE `tb_pembelian_produk`
  MODIFY `pembelian_produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
