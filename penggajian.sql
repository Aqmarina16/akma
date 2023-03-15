-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Mar 2023 pada 04.48
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nopen` int(50) NOT NULL,
  `nama_pensiun` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `hadir` int(11) NOT NULL,
  `tidak_hadir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pensiun`
--

CREATE TABLE `data_pensiun` (
  `id_pensiun` int(11) NOT NULL,
  `nopen` int(15) NOT NULL,
  `nama_pensiun` varchar(100) NOT NULL,
  `no_rekening` int(50) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `jenis_pensiunan` varchar(125) NOT NULL,
  `photo` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pensiun`
--

INSERT INTO `data_pensiun` (`id_pensiun`, `nopen`, `nama_pensiun`, `no_rekening`, `jenis_kelamin`, `jenis_pensiunan`, `photo`) VALUES
(1, 123456789, 'Hj.Doni', 0, 'L', 'TNI AD', 'doni.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pensiunan`
--

CREATE TABLE `data_pensiunan` (
  `id_pensiunan` int(11) NOT NULL,
  `nama_pensiunan` varchar(150) NOT NULL,
  `gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pensiunan`
--

INSERT INTO `data_pensiunan` (`id_pensiunan`, `nama_pensiunan`, `gaji`) VALUES
(2, 'TNI AU', '4500000'),
(3, 'TNI AD', '4350000'),
(4, 'TNI AL', '5000000'),
(5, 'TNI AD', '5000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'akmarina', 'falahia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `data_pensiun`
--
ALTER TABLE `data_pensiun`
  ADD PRIMARY KEY (`id_pensiun`);

--
-- Indeks untuk tabel `data_pensiunan`
--
ALTER TABLE `data_pensiunan`
  ADD PRIMARY KEY (`id_pensiunan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_pensiun`
--
ALTER TABLE `data_pensiun`
  MODIFY `id_pensiun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_pensiunan`
--
ALTER TABLE `data_pensiunan`
  MODIFY `id_pensiunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
