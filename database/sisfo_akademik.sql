-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2022 pada 06.05
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl05960`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_krs`
--

CREATE TABLE `detail_krs` (
  `idKrs` int(11) NOT NULL,
  `idKultawar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `npp` char(16) NOT NULL,
  `namadosen` varchar(50) DEFAULT NULL,
  `homebase` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`npp`, `namadosen`, `homebase`) VALUES
(' 0686.11.1993.03', 'Sasono Wibowo, SE, M.Kom', 'A12'),
('0686.11.1997.138', 'Dr. Pujiono, S.Si., M.Kom', 'A12'),
('0686.11.2000.192', 'Setyo Budi M.Kom', 'A12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dummy`
--

CREATE TABLE `dummy` (
  `idkultawar` int(11) NOT NULL,
  `jmlMhs` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `idJadwal` int(11) NOT NULL,
  `idMatkul` char(10) DEFAULT NULL,
  `namaMatkul` varchar(100) DEFAULT NULL,
  `npp` char(16) DEFAULT NULL,
  `thAkd` char(4) DEFAULT NULL,
  `hari1` char(10) DEFAULT NULL,
  `mulai1` char(5) DEFAULT NULL,
  `selesai1` char(5) DEFAULT NULL,
  `ruang1` char(10) DEFAULT NULL,
  `hari2` char(10) DEFAULT NULL,
  `mulai2` char(5) DEFAULT NULL,
  `selesai2` char(5) DEFAULT NULL,
  `ruang2` char(10) DEFAULT NULL,
  `klp` char(10) DEFAULT NULL,
  `sks` char(2) DEFAULT NULL,
  `smt` char(2) DEFAULT NULL,
  `kap` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`idJadwal`, `idMatkul`, `namaMatkul`, `npp`, `thAkd`, `hari1`, `mulai1`, `selesai1`, `ruang1`, `hari2`, `mulai2`, `selesai2`, `ruang2`, `klp`, `sks`, `smt`, `kap`) VALUES
(1, 'A12.56201', 'Algoritma dan Pemrograman I', '0686.11.1997.136', '2019', 'Senin', '07.00', '08.40', 'H.2.1', 'Rabu', '08.40', '10.20', 'H.2.4', 'A12.2302', NULL, NULL, NULL),
(2, 'A12.56401', 'Basis Data', '0686.11.1997.128', '2019', 'Senin', '07.00', '08.40', 'H.2.2', 'Selasa', '10.20', '12.00', 'H.3.1', 'A12.4301', NULL, '0', 40),
(3, 'A12.56201', 'Algoritma dan Pemrograman I', '0686.11.1997.136', '2019', 'Selasa', '10.20', '12.00', 'H.3.1', 'Kamis', '14.10', '16.20', 'H.2.5', 'A12.2201', NULL, '0', 40),
(4, 'A12.56302', 'Algoritma dan Pemrograman II', '0686.11.1991.011', '2019', 'Kamis', '14.10', '16.20', 'H.4.2', 'Jumat', '07.00', '08.40', 'H.4.1', 'A12.3302', NULL, '1', 40),
(5, 'A12.56302', 'Algoritma dan Pemrograman II', '0686.11.1991.011', '2019', 'Jumat', '12.30', '14.10', 'H.3.5', 'Senin', '10.20', '12.00', 'H.4.6', 'A12.3301', NULL, '1', 40),
(6, 'A12.56707', 'Aplikasi e-Bisnis', '0686.11.1997.128', '2019', 'Rabu', '08.40', '10.20', 'H.2.5', 'Selasa', '12.30', '14.10', 'H.2.3', 'A12.7201', NULL, '1', 40),
(7, 'A12.56707', 'Aplikasi e-Bisnis', '0686.11.1997.128', '2019', 'Jumat', '10.20', '12.00', 'H.2.6', 'Rabu', '12.30', '14.10', 'H.2.2', 'A12.7202', NULL, '1', 40),
(8, 'A12.56305', 'Jaringan Komputer', '0686.11.1998.152', '2019', 'Kamis', '08.40', '10.20', 'H.2.4', 'Kamis', '14.10', '16.20', 'H.3.1', 'A12.3501', NULL, '1', 40),
(9, 'A12.56305', 'Jaringan Komputer', '0686.11.1998.152', '2019', 'Senin', '07.00', '08.40', 'H.3.3', 'Selasa', '10.20', '12.00', 'H.2.6', 'A12.3502', NULL, '1', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `idKrs` int(10) NOT NULL,
  `thAkdm` char(15) DEFAULT NULL,
  `nim` char(15) DEFAULT NULL,
  `idMatkul` char(10) DEFAULT NULL,
  `nilai` char(1) DEFAULT NULL,
  `nppDos` char(16) DEFAULT NULL,
  `hari` char(10) DEFAULT NULL,
  `waktu` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kultawar`
--

CREATE TABLE `kultawar` (
  `idkultawar` int(11) NOT NULL,
  `idmatkul` char(10) DEFAULT NULL,
  `npp` char(16) DEFAULT NULL,
  `klp` char(10) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jamkul` char(13) DEFAULT NULL,
  `ruang` char(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kultawar`
--

INSERT INTO `kultawar` (`idkultawar`, `idmatkul`, `npp`, `klp`, `hari`, `jamkul`, `ruang`, `status`) VALUES
(60, 'A12.56201', '0686.11.1997.138', 'A12.6201', 'Senin', '07.00-08.40', 'H.4.1', 1),
(61, 'A12.56707', ' 0686.11.1993.03', 'A12.6701', 'Senin', '07.00-08.40', 'H.4.1', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `idmatkul` char(10) NOT NULL,
  `namamatkul` varchar(50) DEFAULT NULL,
  `sks` int(2) DEFAULT NULL,
  `jns` char(3) DEFAULT NULL,
  `smt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`idmatkul`, `namamatkul`, `sks`, `jns`, `smt`) VALUES
('A12.56201', 'Algoritma dan Pemrograman I', 4, 'T/P', '2'),
('A12.56302', 'Algoritma dan Pemrograman II', 4, 'T/P', '3'),
('A12.56303', 'Pemrograman Web', 4, 'T/P', '3'),
('A12.56305', 'Jaringan Komputer', 4, 'T', '3'),
('A12.56401', 'Basis Data', 3, 'T', '4'),
('A12.56402', 'Pemrograman Berorientasi Obyek', 4, 'T/P', '4'),
('A12.56403', 'Pemrograman Web Lanjut', 2, 'P', '4'),
('A12.56406', 'Konsep e-Bisnis', 4, 'T', '4'),
('A12.56707', 'Aplikasi e-Bisnis', 4, 'T', '7'),
('A12.63333', 'Bahasa', 2, 'T', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `id` int(11) NOT NULL,
  `nim` char(14) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`id`, `nim`, `nama`, `email`, `foto`) VALUES
(12, 'A12.2020.0967', 'Depata Siwa Prasetya', 'depata.prasetya1999@gmail.com', 'mTxB_n0O_400x400.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'mhs', '0357a7592c4734a8b1e12bc48e29e9e9', 'mhs'),
(3, 'dsn', 'da532bf806defa26fdbeee5dd2e0d68f', 'dsn'),
(15, 'depata', 'f1b6f1626696d8923c4c403675a38bb9', 'dep');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`npp`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idJadwal`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`idKrs`);

--
-- Indeks untuk tabel `kultawar`
--
ALTER TABLE `kultawar`
  ADD PRIMARY KEY (`idkultawar`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`idmatkul`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idJadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `idKrs` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kultawar`
--
ALTER TABLE `kultawar`
  MODIFY `idkultawar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
