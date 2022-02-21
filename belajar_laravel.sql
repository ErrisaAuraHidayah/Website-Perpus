-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2022 pada 05.37
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `nama_buku`, `pengarang`, `deskripsi`, `foto`) VALUES
(1, 'Seni Budaya', 'Edi Arjuno', 'ini buku seni budaya', 'buku5.jpg'),
(2, 'Matematika', 'Sulastri', 'ini buku matematika', 'buku6.jpg'),
(3, 'Matematika', 'udin', 'ini adalah buku matematika', 'buku2.jpg'),
(4, 'IPA', 'Sugeng', 'ini buku ilmu pengetahuan alam', 'buku7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman_buku`
--

CREATE TABLE `detail_peminjaman_buku` (
  `id_detail_peminjaman_buku` int(11) NOT NULL,
  `id_peminjaman_buku` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_peminjaman_buku`
--

INSERT INTO `detail_peminjaman_buku` (`id_detail_peminjaman_buku`, `id_peminjaman_buku`, `id_buku`, `qty`) VALUES
(2, 2, 3, 2),
(3, 2, 4, 4),
(4, 3, 3, 2),
(5, 3, 4, 4),
(6, 4, 1, 1),
(7, 5, 4, 2),
(8, 5, 3, 1),
(9, 6, 1, 3),
(10, 7, 1, 1),
(11, 8, 1, 1),
(12, 9, 3, 1),
(13, 10, 1, 1),
(14, 11, 2, 1),
(15, 12, 4, 1),
(16, 13, 3, 2),
(17, 0, 2, 1),
(18, 0, 2, 1),
(19, 0, 2, 1),
(20, 0, 2, 1),
(21, 0, 2, 1),
(22, 0, 4, 1),
(23, 0, 1, 5),
(39, 29, 4, 1),
(40, 30, 1, 2),
(41, 31, 2, 1),
(42, 32, 1, 1),
(43, 33, 1, 1),
(44, 33, 2, 1),
(45, 34, 4, 1),
(46, 35, 1, 1),
(47, 35, 2, 1),
(48, 36, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `kelompok` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kelompok`) VALUES
(1, 'XI RPL 1', 'RPL'),
(2, 'XIIR1', 'XII RPL 1'),
(3, 'XIIR2', 'XII RPL 2'),
(4, 'XII', 'RPL6'),
(5, 'XII', 'RPL6'),
(6, 'X', 'RPL 1'),
(7, 'XII RPL 7', 'RPL 7'),
(8, 'XIIRPL8', 'RPL 8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_buku`
--

CREATE TABLE `peminjaman_buku` (
  `id_peminjaman_buku` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman_buku`
--

INSERT INTO `peminjaman_buku` (`id_peminjaman_buku`, `id_siswa`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(2, 36, '2021-05-18', '2021-05-20'),
(3, 36, '2021-05-18', '2021-06-20'),
(4, 36, '2021-05-18', '2021-08-10'),
(5, 36, '2021-05-23', '2021-10-11'),
(6, 36, '2021-05-23', '2021-09-23'),
(7, 36, '2021-05-23', '2021-11-20'),
(8, 36, '2021-05-23', '2021-05-28'),
(9, 36, '2021-05-23', '2021-05-28'),
(10, 36, '2021-06-03', '2021-06-08'),
(11, 36, '2021-06-06', '2021-06-11'),
(12, 36, '2021-06-06', '2021-06-11'),
(13, 36, '2021-06-06', '2021-06-11'),
(14, 1, '2021-10-14', '2021-10-19'),
(15, 1, '2021-10-14', '2021-10-19'),
(16, 1, '2021-10-14', '2021-10-19'),
(29, 1, '2021-10-14', '2021-10-19'),
(30, 1, '2021-10-14', '2021-10-19'),
(31, 1, '2021-10-14', '2021-10-19'),
(32, 1, '2021-10-18', '2021-10-23'),
(33, 1, '2021-10-18', '2021-10-23'),
(34, 1, '2021-10-18', '2021-10-23'),
(35, 1, '2021-11-02', '2021-11-07'),
(36, 1, '2021-11-02', '2021-11-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian_buku`
--

CREATE TABLE `pengembalian_buku` (
  `id_pengembalian_buku` int(11) NOT NULL,
  `id_peminjaman_buku` int(11) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian_buku`
--

INSERT INTO `pengembalian_buku` (`id_pengembalian_buku`, `id_peminjaman_buku`, `tanggal_pengembalian`, `denda`) VALUES
(12, 2, '2021-05-23', 15000),
(13, 3, '2021-05-23', 115000),
(14, 4, '2021-05-23', 115000),
(15, 5, '2021-05-23', 115000),
(16, 6, '2021-05-23', 115000),
(17, 7, '2021-05-24', 120000),
(18, 10, '2021-06-03', 0),
(19, 8, '2021-06-06', 45000),
(20, 13, '2021-06-06', 0),
(0, 9, '2021-10-14', 85000),
(0, 12, '2021-10-14', 15000),
(0, 11, '2021-10-14', 15000),
(0, 16, '2021-10-14', 0),
(0, 15, '2021-10-14', 0),
(0, 14, '2021-10-14', 0),
(0, 31, '2021-10-14', 0),
(0, 32, '2021-10-18', 0),
(0, 30, '2021-10-18', 0),
(0, 33, '2021-10-18', 0),
(0, 34, '2021-10-18', 0),
(0, 35, '2021-11-02', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `tanggal_lahir`, `alamat`, `username`, `password`, `id_kelas`, `gender`) VALUES
(1, 'Errisa Aura Hidayah', '2021-10-01', 'Jember', 'errisa', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'P'),
(2, 'Errisa Aura Hidayah', '2021-10-22', 'jember', 'Errisa ', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'P'),
(3, 'Errisa Aura Hidayah', '2021-10-01', 'Malang', 'errisa', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'P'),
(9, 'Errisa', '0000-00-00', 'jember', 'aura', '12345', 3, 'P'),
(10, 'Avinka Zumrotun', '2022-01-13', 'jember', 'avinka', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'P');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_peminjaman_buku`
--
ALTER TABLE `detail_peminjaman_buku`
  ADD PRIMARY KEY (`id_detail_peminjaman_buku`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  ADD PRIMARY KEY (`id_peminjaman_buku`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman_buku`
--
ALTER TABLE `detail_peminjaman_buku`
  MODIFY `id_detail_peminjaman_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  MODIFY `id_peminjaman_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
