-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2023 pada 08.50
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tgl_dibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`, `tgl_dibuat`) VALUES
(3, 'rokok', '2022-05-05 18:17:58'),
(5, 'sabun', '2022-05-05 18:19:27'),
(6, 'Susu', '2022-11-21 07:12:57'),
(10, 'minuman kaleng', '2022-11-23 09:08:56'),
(11, 'mainan', '2022-11-23 15:05:15'),
(15, 'kecap', '2023-05-15 11:54:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `idcart` int(11) NOT NULL,
  `no_nota` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `idlaporan` int(11) NOT NULL,
  `no_nota` varchar(50) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `totalbeli` int(11) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl_sub` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`idlaporan`, `no_nota`, `idpelanggan`, `catatan`, `totalbeli`, `pembayaran`, `kembalian`, `tgl_sub`) VALUES
(16, 'AD6522123001', 6, 'Jangan Sampe Salah', 128000, 130000, 2000, '2022-05-05 18:24:29'),
(17, 'AD611221631002', 2, '', 118000, 200000, 82000, '2022-11-06 09:35:41'),
(18, 'AD711221048002', 7, '', 100000, 100000, 0, '2022-11-07 03:49:16'),
(19, 'AD911221021481', 7, '', 10000, 20000, 10000, '2022-11-09 03:22:00'),
(20, 'AD911221025215', 6, '', 25000, 50000, 25000, '2022-11-09 03:25:22'),
(21, 'AD911221030253', 6, '', 40000, 50000, 10000, '2022-11-09 03:30:32'),
(22, 'AD2211221214303', 8, '', 84000, 100000, 16000, '2022-11-22 05:14:28'),
(24, 'AD2311221148303', 0, '', 20000, 30000, 10000, '2022-11-23 04:48:05'),
(25, 'AD2311221149303', 0, '', 5000, 10000, 5000, '2022-11-23 04:49:12'),
(26, 'AD2311221149303', 0, '', 54000, 60000, 6000, '2022-11-23 04:49:58'),
(27, 'AD2311221150303', 7, '', 100000, 100000, 0, '2022-11-23 04:50:53'),
(28, 'AD2311221600303', 9, 'diskon 50%', 54000, 60000, 6000, '2022-11-23 09:02:21'),
(29, 'AD2311222046303', 8, '', 27000, 30000, 3000, '2022-11-23 13:47:09'),
(30, 'AD2311222114303', 7, '', 54000, 60000, 6000, '2022-11-23 14:14:59'),
(33, 'AD114231557303', 0, '', 47000, 50000, 3000, '2023-04-11 08:57:44'),
(37, 'AD304232301303', 0, '', 20000, 20000, 0, '2023-04-30 16:01:32'),
(38, 'AD4523957303', 0, '', 20000, 20000, 0, '2023-05-04 02:57:16'),
(40, 'AD155231443303', 0, '', 5000, 10000, 5000, '2023-05-15 07:43:17'),
(42, 'AD155231552303', 0, '', 32000, 40000, 8000, '2023-05-15 08:53:11'),
(43, 'AD155231557303', 0, '', 27000, 30000, 3000, '2023-05-15 08:58:02'),
(44, 'AD165231315303', 23, '', 145000, 150000, 5000, '2023-05-16 06:15:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_toko` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `nama_toko`, `username`, `password`, `alamat`, `telepon`) VALUES
(1, 'Toko Retail', 'suci', '$2y$10$VGl0HZTavoYcmbzMUqeqHuZ.rR0arJC6CMfRdnDQ5/0lwvPRZxY3e', 'Kp. Lukun Rt.02/01 Ds. Cisoka Kec. Cisoka Kab. Tangerang - Banten', '089635808393'),
(8, 'Toko Retail', 'tasya', '$2y$10$8oQOcbrF.tT0e4s.VopdQ.o9E0T2Jwz8rEE/ZyugNncCpurbHFpAq', 'jalan amplas', '098888888'),
(13, 'Toko retail', 'wahyu', '$2y$10$sSX93ZYfO6FC59P3MpIUCuDUW2egrCqse7jIRCUmGomK8NAjHUL2K', 'jalan pondok kelapa', '023410984');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `telepon_pelanggan` varchar(15) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(6, 'user', '083806368753', 'Medan Amplas 3'),
(7, 'sindy', '098761233442', 'Jalan Durung 3'),
(8, 'arsya', '087533112346', 'jalan sisingamaraja'),
(9, 'jesika', '0862347611', 'jalan pancing'),
(10, 'sinta', '086473822', 'jalan sisingamaraja'),
(11, 'yudi', '0834235', 'jalan mawar'),
(12, 'rani', '08234546577', 'Medan Amplas'),
(13, 'sinta', '', ''),
(14, 'ani', '', ''),
(15, 'nisa', '', ''),
(23, 'aris', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `kode_produk`, `nama_produk`, `harga_modal`, `harga_jual`, `stock`, `tgl_input`) VALUES
(3, 3, 'BRG001', 'sampoerna mild', 25000, 27000, 98, '2022-11-23 14:14:15'),
(4, 3, 'BRG002', 'surya 12', 18000, 20000, 39, '2023-05-04 02:57:08'),
(5, 3, 'BRG003', 'surya 16', 25000, 27000, 31, '2023-05-15 08:57:49'),
(6, 5, 'BRG004', 'sabun batang give', 3000, 5000, 78, '2023-05-15 08:51:06'),
(7, 6, 'BRG005', 'DANCOW VANILLA', 40000, 45000, 45, '2023-05-15 07:52:19'),
(8, 8, 'BRG006', 'Pantine', 45000, 50000, 3, '2023-05-16 06:13:51'),
(9, 6, 'BRG007', 'Frisianflag', 40000, 45000, 48, '2023-05-16 06:13:59'),
(11, 5, 'BRG008', 'Detol', 12000, 15000, 10, '2022-11-23 09:07:57'),
(14, 11, 'BRG009', 'lego', 50000, 60000, 48, '2022-11-23 15:14:07'),
(15, 15, 'BRG010', 'bangau', 12000, 15000, 50, '2023-05-15 11:54:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nota`
--

CREATE TABLE `tb_nota` (
  `idnota` int(11) NOT NULL,
  `no_nota` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nota`
--

INSERT INTO `tb_nota` (`idnota`, `no_nota`, `idproduk`, `quantity`) VALUES
(11, 'AD6522123001', 3, 2),
(12, 'AD6522123001', 4, 1),
(13, 'AD6522123001', 5, 2),
(14, 'AD611221631002', 3, 2),
(15, 'AD611221631002', 5, 2),
(16, 'AD611221631002', 6, 2),
(17, 'AD711221048002', 6, 2),
(18, 'AD711221048002', 7, 2),
(19, 'AD911221021481', 6, 2),
(20, 'AD911221025215', 6, 5),
(21, 'AD911221030253', 4, 2),
(22, 'AD2211221214303', 4, 1),
(23, 'AD2211221214303', 6, 2),
(24, 'AD2211221214303', 5, 2),
(27, 'AD2311221148303', 4, 1),
(28, 'AD2311221149303', 6, 1),
(29, 'AD2311221149303', 5, 2),
(30, 'AD2311221150303', 6, 2),
(31, 'AD2311221150303', 7, 2),
(32, 'AD2311221600303', 3, 2),
(33, 'AD2311222046303', 3, 1),
(34, 'AD2311222114303', 3, 2),
(39, 'AD114231557303', 4, 1),
(40, 'AD114231557303', 5, 1),
(47, 'AD304232301303', 4, 1),
(48, 'AD4523957303', 4, 1),
(52, 'AD155231443303', 6, 1),
(54, 'AD155231552303', 0, 0),
(55, 'AD155231552303', 0, 0),
(56, 'AD155231552303', 6, 1),
(57, 'AD155231552303', 5, 1),
(61, 'AD155231557303', 5, 1),
(62, 'AD165231315303', 8, 2),
(63, 'AD165231315303', 9, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idcart`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`idlaporan`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indeks untuk tabel `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`idnota`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_nota`
--
ALTER TABLE `tb_nota`
  MODIFY `idnota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
