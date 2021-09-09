-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 01:39 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewa_buku_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jmlh_halaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISBNs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kode_buku`, `judul_buku`, `jmlh_halaman`, `ISBNs`, `pengarang`, `tahun_terbit`, `created_at`, `updated_at`) VALUES
(2, 'B001', 'Neo Zone', '127', '21314', 'nyai soman', 2020, NULL, NULL),
(3, 'B002', 'Hot Sauce', '342', '436433', 'siwon', 2021, NULL, NULL),
(4, 'B003', 'Resonance pt.1', '2323', '3232313', 'yunsuk', 2020, NULL, NULL),
(5, 'B004', 'Resonanace pt.2', '321', '31435251', 'yesung', 2021, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_peminjam`
--

CREATE TABLE `jenis_peminjam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jenis_peminjam` bigint(20) UNSIGNED NOT NULL,
  `nama_jenis_peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_peminjam`
--

INSERT INTO `jenis_peminjam` (`id`, `id_jenis_peminjam`, `nama_jenis_peminjam`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mahasiswa', 'mahasiswa', NULL, NULL),
(2, 2, 'karyawan', 'karyawan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_07_04_153522_create_jenis_peminjam', 2),
(4, '2021_07_04_162737_create_buku', 3);

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_peminjam` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `foto_peminjam` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`id`, `kode_peminjam`, `nama_peminjam`, `tgl_lahir`, `alamat`, `id_jenis_peminjam`, `user_id`, `foto_peminjam`, `created_at`, `updated_at`) VALUES
(1, 'KP005', 'Jung Jaehyun', '2000-06-25', 'Jakarta', 1, 0, '1626583527.jpeg', '2021-07-04 09:38:06', '2021-07-17 21:45:27'),
(2, 'KP006', 'Kim Doyoung', '2000-02-01', 'bandung', 1, 0, '1626583505.jpg', NULL, '2021-07-17 21:45:05'),
(3, 'KP007', 'Seo Johnny', '1997-05-22', 'medan', 2, 0, '1626583544.jpg', NULL, '2021-07-17 21:45:44'),
(4, 'KP008', 'Park Jisung', '2002-06-21', 'Semarang', 1, 0, '1626583581.jpeg', '2021-07-11 04:52:58', '2021-07-17 21:46:21'),
(5, 'KP009', 'Lee Haechan', '2000-06-06', 'Solo', 1, 0, '1626583614.jpeg', '2021-07-11 05:10:02', '2021-07-17 21:46:54'),
(6, 'KP002', 'Moon Taeil', '1997-06-15', 'Jogja', 2, 0, '0', '2021-07-11 05:13:22', '2021-07-11 05:13:22'),
(7, 'KP003', 'Mark Lee', '2000-08-09', 'canada', 1, 0, '0', '2021-07-11 05:16:37', '2021-07-11 05:16:37'),
(8, 'KP004', 'Lee Jeno', '2000-03-22', 'Bandung', 1, 0, '0', '2021-07-11 05:18:53', '2021-07-11 05:18:53'),
(11, 'KP010', 'Na Yuta', '1995-09-11', 'osaka', 2, 0, '1626582114.jpg', '2021-07-17 21:21:54', '2021-07-17 21:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id_peminjam` bigint(20) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id_peminjam`, `nomor_telepon`, `created_at`, `updated_at`) VALUES
(1, '09982373232', '2021-07-04 09:38:06', '2021-07-04 09:38:06'),
(2, '085727641327', '2021-07-11 05:26:51', '2021-07-11 05:26:51'),
(3, '0897864343424', '2021-07-04 21:14:46', '2021-07-04 21:14:46'),
(4, '08988766252', '2021-07-11 04:52:58', '2021-07-11 04:52:58'),
(5, '08927386273', '2021-07-11 05:10:02', '2021-07-11 05:10:02'),
(6, '083923662', '2021-07-11 05:13:22', '2021-07-11 05:13:22'),
(7, '08986513212', '2021-07-11 05:16:37', '2021-07-11 05:16:37'),
(8, '084927467423', '2021-07-11 05:18:53', '2021-07-11 05:18:53'),
(9, '088775454567', '2021-07-11 05:21:33', '2021-07-11 05:21:33'),
(10, '08897867564', '2021-07-11 05:41:59', '2021-07-11 05:41:59'),
(11, '087865524545', '2021-07-17 21:21:54', '2021-07-17 21:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_peminjam`
--

CREATE TABLE `transaksi_peminjam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_peminjam` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_peminjam`
--

INSERT INTO `transaksi_peminjam` (`id`, `kode_transaksi`, `id_peminjam`, `id_buku`, `tgl_peminjaman`, `tgl_pengembalian`, `created_at`, `updated_at`) VALUES
(4, 'T0001', 3, 5, '2021-07-05', '2021-07-20', '2021-07-04 21:14:11', '2021-07-04 21:14:11'),
(5, 'T0009', 2, 2, '2021-07-05', '2021-07-20', '2021-07-04 21:15:04', '2021-07-04 21:15:04'),
(6, 'T0005', 1, 3, '2021-07-05', '2021-07-20', '2021-07-04 21:16:25', '2021-07-04 21:16:25'),
(7, 'T0007', 2, 5, '2021-07-05', '2021-07-20', '2021-07-04 21:17:21', '2021-07-04 21:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','peminjam') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ainii', 'aini127@gmail.com', NULL, 'Doyoung127', 'admin', NULL, '2021-08-07 07:23:05', '2021-08-07 07:23:05'),
(2, 'doyoung', 'fromdoy@gmail.com', NULL, '$2y$10$kz6CfELsy4z2Nh2ot7WGL.h8YQ5.4jz/bc/CzV4QtdIzSjggz5FT6', 'peminjam', NULL, '2021-08-08 00:34:16', '2021-08-08 00:34:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buku_kode_buku_unique` (`kode_buku`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_peminjam`
--
ALTER TABLE `jenis_peminjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `transaksi_peminjam`
--
ALTER TABLE `transaksi_peminjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_peminjam`
--
ALTER TABLE `jenis_peminjam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id_peminjam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksi_peminjam`
--
ALTER TABLE `transaksi_peminjam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
