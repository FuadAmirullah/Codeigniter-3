-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2021 pada 07.08
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_prili`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `jk`, `ttl`, `kelas`, `image`) VALUES
('121209', 'Fahira', 'P', '2018-01-02', 'VII', ''),
('121210', 'Panji Asmoro', 'L', '2017-09-18', '07', ''),
('121211', 'Bayu Agung ', 'L', '2017-09-18', '07', ''),
('121212', 'Aji', 'L', '2018-01-03', 'VII', ''),
('121213', 'Hana', 'L', '2018-01-19', 'VII', ''),
('121214', 'Samudera', 'L', '2018-01-26', 'VII', ''),
('121215', 'Fathan', 'L', '2018-01-26', 'VII', ''),
('121216', 'Baim', 'L', '2018-01-26', 'VII', 'user1.jpg'),
('121217', 'Cahyo', 'L', '2018-01-26', 'VII', 'user2.jpg'),
('121218', 'Rian', 'L', '2018-01-26', 'VII', 'user3.jpg'),
('121219', 'Naus', 'L', '2018-01-26', 'VII', 'user4.jpg'),
('121220', 'Tole', 'L', '2018-01-26', 'VII', 'user5.jpg'),
('121221', 'Fadil', 'L', '2018-01-25', 'VII', 'fadil.jpg'),
('121223', 'Sela', 'P', '2018-01-26', 'VII', 'sela.jpg'),
('121224', 'Nova', 'P', '2018-01-26', 'VII', 'nova.jpg'),
('121225', 'Niken', 'P', '2018-01-26', 'VII', ''),
('121226', 'Fatih', 'L', '2018-01-26', 'VII', 'fatih.png'),
('121227', 'Yoga', 'L', '2018-01-26', 'VII', 'yoga.jpg'),
('121228', 'Apri', 'L', '2018-01-26', 'VII', 'apri.jpg'),
('121229', 'Akila', 'L', '2018-01-26', 'VII', 'akila.jpg'),
('121230', 'Bimo', 'L', '2018-01-26', 'VII', 'bimo.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`) VALUES
('0001', 'Panadol', 'Ada', '7500', 'panadol.jpg'),
('0002', 'Panadol Extra', 'Ada', '10000', 'panadol-extra.jpg'),
('0003', 'Ultraflu', 'Ada', '7500', 'ultraflu.jpg'),
('0004', 'betadine', 'Ada', '40000', 'betadine.jpg'),
('0005', 'Vitamin C', 'Ada', '7500', 'vitamin-c.jpg'),
('0006', 'Promag', 'Ada', '7500', 'promag.jpg'),
('0007', 'Paracetamol', 'Ada', '7500', 'paracetamol.jpg'),
('0008', 'Mylanta', 'Ada', '25000', 'mylanta.jpg'),
('0009', 'bodrex', 'Ada', '8000', 'bodrex.jpg'),
('0010', 'mixagrip', 'Ada', '7500', 'mixagrip.jpg'),
('0011', 'Kalpanax K', 'Ada', '35000', 'kalpanax-k.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `full_name`, `password`) VALUES
(8, 'admin', 'Kelompok WEB ', '$2y$05$0RfFGKdD.I9/9SRZd9../.kIQg7pwgDxhICT0t1aPZh29Ia2oRA3u');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp`
--

CREATE TABLE `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
