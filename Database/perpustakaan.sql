-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2022 pada 07.21
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` char(10) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_HP` varchar(12) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Tgl_Entry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`ID_Anggota`, `Nama`, `Jenis_Kelamin`, `Alamat`, `No_HP`, `Email`, `Tgl_Entry`) VALUES
('A0001', 'Usep', 'Hybrid', 'Nigeria', '0715247125', 'usep_bobok@gmail.com', '2021-12-09'),
('A0002', 'dawdaw', 'laki', 'Nigeria', '121251261', 'awd12@awdaw.com', '2021-12-08'),
('A0003', 'awddjawi', 'Perempuan', 'awodkawokwaod', '21501829', 'wadawd@gawdawo', '2021-12-09'),
('A0004', 'dawt1w', 'laki', 'aw1215', 'o182951208', '12511w@121as', '2021-12-04'),
('A0005', 'awd12', 'Perempuan', 'waadawdwa', '61212', 'awdawaw@dy23', '2021-12-18'),
('A0006', 'awdy23', 'laki', 'somalia', '12512613', '12@211t.w12', '2021-12-05'),
('A0007', 'adwwt1w', 'Perempuan', 'awd12512asdaw', '612312512', 'dawt13', '2021-12-16'),
('A0008', 'awu23', 'laki', 'Nigeria', '121251261', 'y121612', '2021-12-18'),
('A0009', 'dawy23', 'laki', 'ghana', '61236124', '712awd@agawd', '2021-12-28'),
('A0010', 'iawfdaw', 'laki', 'aowkdoawk', '-196013i908', '1290!@hajdiwaj', '2021-12-30'),
('A0011', 'awdyqsc', 'perempuan', 'adpkwajdawdm', '015918298', '9j1o1jto@gawdjkao', '2021-12-21'),
('A0012', 'dawidjawu', 'laki', 'adwkowka21ijaw', '12940281958', 'wdaoka@gawodawo', '2021-12-15'),
('A0013', 'wdadaw', 'hybrid', 'vawdawdwa', '51212312', 'AWDawd@gawd21', '2021-12-12'),
('A0014', 'aw1512', 'laki', 'awdjaiwjdi@wadkawo', '091271298', 'awidjiawokawo@dwoak', '2021-12-02'),
('A0015', 'dawdawd12', 'laki', 'Nigeria', '121251261', 'd12@fagaw2', '2021-12-30'),
('A0016', '12adytaw', 'laki', 'Nigeria', '5123612612', 'awdawo1k2@gmawdiaw', '2021-12-01'),
('A0017', 'd29189ajkdw', 'aowkd912u512k', 'awdoawyht1oj', '01285912983', 'awjawodowak@oawKoagjw.com', '2021-12-09'),
('A0018', 'dawdawd', 'laki', 'Nigeria', '6123126512', 'dawad@fafa', '2021-12-02'),
('A0019', 'awdadsdw', 'laki', 'Nigeria', '512871287', 'dwadaw@hawawdkaw', '2021-12-02'),
('A0020', 'awdjiawjij', 'laki', 'aowdkawodk', '0187581298', 'adwokawod@gawmdiwaj', '2021-12-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ID_Buku` int(10) NOT NULL,
  `Judul_buku` varchar(50) NOT NULL,
  `ID_Jenis` int(11) NOT NULL,
  `ID_Description` int(11) NOT NULL,
  `ID_Penulis` int(11) NOT NULL,
  `ID_Penerbit` int(11) NOT NULL,
  `ID_Transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `description`
--

CREATE TABLE `description` (
  `ID_Description` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `description`
--

INSERT INTO `description` (`ID_Description`, `Description`) VALUES
(1, 'Buku ini buku '),
(2, 'Buku ini buku ya ges ya'),
(3, 'Buku ini buku baik ga gigit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_buku`
--

CREATE TABLE `jenis_buku` (
  `ID_jenis` int(11) NOT NULL,
  `Jenis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_buku`
--

INSERT INTO `jenis_buku` (`ID_jenis`, `Jenis`) VALUES
(1, 'Paket'),
(2, 'novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_Anggota` char(10) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_HP` varchar(12) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Tgl_Entry` date NOT NULL,
  `ID_Peminjaman` int(11) NOT NULL,
  `ID_Buku` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `ID_Penerbit` int(11) NOT NULL,
  `Penerbit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`ID_Penerbit`, `Penerbit`) VALUES
(1, 'Sitompul'),
(2, 'Sinaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `ID_Penulis` int(11) NOT NULL,
  `Penulis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`ID_Penulis`, `Penulis`) VALUES
(1, 'Robert'),
(2, 'Junior');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tranksaksi`
--

CREATE TABLE `tranksaksi` (
  `ID_transaksi` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tranksaksi`
--

INSERT INTO `tranksaksi` (`ID_transaksi`, `Tanggal`, `Keterangan`) VALUES
(1, '2021-12-08', 'Beli second'),
(2, '2021-12-01', 'Beli baru');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_Buku`),
  ADD KEY `ID_Jenis` (`ID_Jenis`),
  ADD KEY `ID_Description` (`ID_Description`),
  ADD KEY `ID_Penulis` (`ID_Penulis`),
  ADD KEY `ID_Penerbit` (`ID_Penerbit`),
  ADD KEY `ID_Transaksi` (`ID_Transaksi`);

--
-- Indeks untuk tabel `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`ID_Description`);

--
-- Indeks untuk tabel `jenis_buku`
--
ALTER TABLE `jenis_buku`
  ADD PRIMARY KEY (`ID_jenis`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_Peminjaman`),
  ADD KEY `ID_Anggota` (`ID_Anggota`),
  ADD KEY `ID_Buku` (`ID_Buku`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`ID_Penerbit`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`ID_Penulis`);

--
-- Indeks untuk tabel `tranksaksi`
--
ALTER TABLE `tranksaksi`
  ADD PRIMARY KEY (`ID_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `ID_Buku` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `description`
--
ALTER TABLE `description`
  MODIFY `ID_Description` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_buku`
--
ALTER TABLE `jenis_buku`
  MODIFY `ID_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `ID_Penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `ID_Penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tranksaksi`
--
ALTER TABLE `tranksaksi`
  MODIFY `ID_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`ID_Penerbit`) REFERENCES `penerbit` (`ID_Penerbit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`ID_Description`) REFERENCES `description` (`ID_Description`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`ID_Transaksi`) REFERENCES `tranksaksi` (`ID_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_ibfk_4` FOREIGN KEY (`ID_Penulis`) REFERENCES `penulis` (`ID_Penulis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_ibfk_5` FOREIGN KEY (`ID_Jenis`) REFERENCES `jenis_buku` (`ID_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`ID_Anggota`) REFERENCES `anggota` (`ID_Anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`ID_Buku`) REFERENCES `buku` (`ID_Buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
