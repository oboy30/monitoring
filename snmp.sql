-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Feb 2024 pada 08.16
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snmp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blok`
--

CREATE TABLE `blok` (
  `id_blok` int(50) NOT NULL,
  `name_blok` varchar(255) NOT NULL,
  `telp_blok` varchar(100) NOT NULL,
  `add_blok` longtext NOT NULL,
  `sum_client` int(100) NOT NULL,
  `pusat_client` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `blok`
--

INSERT INTO `blok` (`id_blok`, `name_blok`, `telp_blok`, `add_blok`, `sum_client`, `pusat_client`) VALUES
(11, 'DEPO KALAYANG', '(100) 009-9992', 'TOD M1', 0, '0'),
(12, 'GEDUNG 601', '(111) 111-1111', 'GEDUNG 601', 0, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `id_client` int(50) NOT NULL,
  `id_blok` int(50) NOT NULL,
  `ip_client` varchar(50) NOT NULL,
  `name_client` varchar(255) NOT NULL,
  `status_client` enum('Connected','Disconnected','Destination net unreachable','Destination host unreachable','Request timed out') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id_client`, `id_blok`, `ip_client`, `name_client`, `status_client`) VALUES
(31, 12, '172.17.195.101', 'FINGER 1', 'Disconnected'),
(32, 12, '172.17.195.30', 'SERVER PALANG PARKIR', 'Disconnected'),
(33, 12, '171.17.195.61', 'PALANG PARKIR 1', 'Disconnected'),
(34, 12, '172.17.195.32', 'PALANG PARKIR 2', 'Disconnected'),
(35, 12, '172.17.195.33', 'PALANG PARKIR 3', 'Disconnected'),
(36, 12, '172.17.195.34', 'PALANG PARKIR 4', 'Disconnected'),
(37, 12, '172.17.195.36', 'PALANG PARKIR 5', 'Disconnected'),
(38, 12, '172.17.195.38', 'PALANG PARKIR 6', 'Disconnected'),
(39, 12, '172.17.195.39', 'PALANG PARKIR 7', 'Disconnected'),
(40, 12, '172.17.195.41', 'PALANG PARKIR 8', 'Disconnected'),
(41, 12, '172.17.195.42', 'PALANG PARKIR 9', 'Disconnected'),
(47, 11, '10.10.103.164', 'LAPTOP ABDY', 'Disconnected'),
(48, 11, '10.10.103.251', 'LAPTOP', 'Disconnected'),
(51, 11, '192.168.137.1', 'GATEWAY', 'Disconnected');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(10) NOT NULL,
  `id_client` varchar(100) NOT NULL,
  `date_log` varchar(25) NOT NULL,
  `hour_log` varchar(25) NOT NULL,
  `status_log` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  `name_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`, `name_user`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`id_blok`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`,`ip_client`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`email_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blok`
--
ALTER TABLE `blok`
  MODIFY `id_blok` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
