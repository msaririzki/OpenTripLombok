-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 05:37 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_opentrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `kode_paket` varchar(255) NOT NULL,
  `nama_fasilitas` varchar(128) NOT NULL,
  `keterangan_fasilitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `kode_paket`, `nama_fasilitas`, `keterangan_fasilitas`) VALUES
(1, 'PKT007', 'transfortasi ', 'transofrtasi dari magelang to basecamp arjuno pulang pergi dengan transfortasi mini bus'),
(3, '', 'makan 3x', '1x saat mau naik\r\n1x saat di gunung (makan malam)\r\n1x saat hendak turun'),
(4, 'PKT001', 'makan 3x', '1x saat mau naik\r\n1x saat di gunung(makan malem)\r\n1x saat mau turun(optional)'),
(8, 'PKT008', 'makan 3x', 'sebelum berangkat 1x\r\ndi gunung 1x\r\nsebelum turun gunung 1x'),
(12, 'PKT011', 'FASILITAS ABAL2', 'ABAL2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `nomer_hp` int(13) NOT NULL,
  `isi_feedback` varchar(255) NOT NULL,
  `status_feedback` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `nama_lengkap`, `nomer_hp`, `isi_feedback`, `status_feedback`) VALUES
(1, 'rizanalfalah@gmail.com', 'muhamad Rizan Alfalah', 83817566, 'pemesanan masih ribet', 1),
(2, 'redeyes199802@gmail.com', 'feisal akbar G', 234234, 'banyak yang harus di tambahkan pada pemesanan paket', 0),
(3, 'rizanalfalah@gmail.com', 'reza', 0, 'dsa', 0),
(4, 'zahraaraa688@gmail.com', 'Zara', 88, 'Contoh kontak', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallerygunung`
--

CREATE TABLE `gallerygunung` (
  `id_gambar` int(11) NOT NULL,
  `gambar_satu` varchar(255) NOT NULL,
  `gambar_dua` varchar(255) NOT NULL,
  `gambar_tiga` varchar(255) NOT NULL,
  `gambar_empat` varchar(255) NOT NULL,
  `gambar_lima` varchar(255) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallerygunung`
--

INSERT INTO `gallerygunung` (`id_gambar`, `gambar_satu`, `gambar_dua`, `gambar_tiga`, `gambar_empat`, `gambar_lima`, `kode_gunung`) VALUES
(18, 'be9f73395d152292365b0f5b031be052.jpg', '6533d9d12bfdc2a3bb108e780b6a239c.jpg', '228daedfce94af3ca0eaaffd714f7aec.jpg', 'e89803d1eaf71ab5158aa8150be3bcf9.jpg', '9d1395947bb79595885d74a67b7348c8.jpg', 'DGN011');

-- --------------------------------------------------------

--
-- Table structure for table `gunung`
--

CREATE TABLE `gunung` (
  `id_gunung` int(11) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL,
  `nama_gunung` varchar(128) NOT NULL,
  `ketinggian` double NOT NULL,
  `rata_rata_suhu` float NOT NULL,
  `kategori_id` varchar(128) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gunung`
--

INSERT INTO `gunung` (`id_gunung`, `kode_gunung`, `nama_gunung`, `ketinggian`, `rata_rata_suhu`, `kategori_id`, `keterangan`, `alamat`) VALUES
(21, 'DGN011', 'Gunung Rinjani', 3, 12, '', 'Nikmati petualangan tak terlupakan di Gunung Rinjani, gunung berapi tertinggi kedua di Indonesia. Dengan pemandangan menakjubkan, danau Segara Anak yang memukau, serta udara pegunungan yang segar — sempurna untuk pendaki dan pencinta alam.\r\nAyo, taklukkan', 'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat.');

-- --------------------------------------------------------

--
-- Table structure for table `jalurpendakian`
--

CREATE TABLE `jalurpendakian` (
  `id_jalur` int(11) NOT NULL,
  `nama_jalur` varchar(128) NOT NULL,
  `jumlah_pos` int(10) NOT NULL,
  `jarak_jalur` int(10) NOT NULL,
  `foto_jalur` varchar(255) NOT NULL,
  `gambar_basecamp` varchar(255) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jalurpendakian`
--

INSERT INTO `jalurpendakian` (`id_jalur`, `nama_jalur`, `jumlah_pos`, `jarak_jalur`, `foto_jalur`, `gambar_basecamp`, `kode_gunung`) VALUES
(24, 'Via Sembalun', 3, 5, '8d2c783a8bcd6462f9ab72f49894892a.jpg', '57377c365e917047441a93c63cae10d6.jpg', 'DGN011');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_gunung`
--

CREATE TABLE `kategori_gunung` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paket_pendakian`
--

CREATE TABLE `paket_pendakian` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `kodepaket` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `titik_kumpul` varchar(255) NOT NULL,
  `kouta_paket` int(50) NOT NULL,
  `perlengkapan_pribadi` varchar(255) NOT NULL,
  `harga_paket` int(10) NOT NULL,
  `no_rekening_admin` int(10) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket_pendakian`
--

INSERT INTO `paket_pendakian` (`id`, `email`, `kodepaket`, `tanggal_mulai`, `tanggal_berakhir`, `titik_kumpul`, `kouta_paket`, `perlengkapan_pribadi`, `harga_paket`, `no_rekening_admin`, `kode_gunung`) VALUES
(12, 'Zara@gmail.com', 'PKT010', '2025-05-14', '2025-05-28', 'Basecamp', 13, 'Bawa obat obat pribadi', 175000, 234567890, 'DGN001'),
(13, 'suthawijaya446@gmail.com', 'PKT011', '2025-05-09', '2025-05-09', 'MATARAM', 0, 'BEEBASSSS', 1000, 2147483647, 'DGN001');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `kode_pembayaran` varchar(225) NOT NULL,
  `nama_pengirim` varchar(128) NOT NULL,
  `bank` varchar(128) NOT NULL,
  `no_rek_pengirim` int(20) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `jumlah_nominal` int(10) NOT NULL,
  `gambar_bukti_pembayaran` varchar(255) NOT NULL,
  `status_pembayaran` varchar(128) NOT NULL,
  `kode_pemesanan` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `kode_pembayaran`, `nama_pengirim`, `bank`, `no_rek_pengirim`, `tanggal_pembayaran`, `jumlah_nominal`, `gambar_bukti_pembayaran`, `status_pembayaran`, `kode_pemesanan`, `email`) VALUES
(13, 'PBN012', 'endah komariyah lestari', 'MANDIRI', 2147483647, '2025-05-09', 350000, 'ed224c438b2a18f1b7b2c28d6c8938d2.png', '1', 'KDP029', 'endahkomarialestari@gmail.com'),
(14, 'PBN013', 'endah komariyah lestari', 'MANDIRI', 123456789, '2025-05-09', 175000, 'd77d4f3192dccd48fa241d1cc390f583.png', '1', 'KDP030', 'endahkomarialestari@gmail.com'),
(15, 'PBN014', 'endah komariyah lestari', 'MANDIRI', 123, '2025-05-09', 1000, '8f71f6093d99c738a1dc5355e6e02386.png', '1', 'KDP031', 'endahkomarialestari@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `kode_pemesanan` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `kode_paket` varchar(255) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `nama_gunung` varchar(123) NOT NULL,
  `harga_paket` varchar(128) NOT NULL,
  `foto_pemesanan` varchar(255) NOT NULL,
  `kouta_paket` int(20) NOT NULL,
  `sts_kirimPembayaran` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `kode_pemesanan`, `email`, `kode_paket`, `tanggal_pemesanan`, `nama_gunung`, `harga_paket`, `foto_pemesanan`, `kouta_paket`, `sts_kirimPembayaran`) VALUES
(34, 'KDP029', 'endahkomarialestari@gmail.com', 'PKT001', '2025-05-09', 'Arjuno', '350000', '21d0135aff8c937fc4ee67126ec7faf2.jpg', 1, 'terverifikasi'),
(35, 'KDP030', 'endahkomarialestari@gmail.com', 'PKT010', '2025-05-09', 'Andong', '175000', '8be287774ceb37441cdadd917ec768ef.jpg', 1, 'terverifikasi'),
(36, 'KDP031', 'endahkomarialestari@gmail.com', 'PKT011', '2025-05-09', 'Andong', '1000', '8be287774ceb37441cdadd917ec768ef.jpg', 1, 'terverifikasi');

--
-- Triggers `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `tambah_pemesanan` AFTER INSERT ON `pemesanan` FOR EACH ROW begin
	update paket_pendakian set kouta_paket = kouta_paket - new.kouta_paket where kodepaket = new.kode_paket;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_akses` int(10) NOT NULL,
  `user_aktif` int(10) NOT NULL,
  `tanggal_registrasi` int(11) NOT NULL,
  `nama_depan` varchar(128) NOT NULL,
  `nama_belakang` varchar(128) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `foto_sampul` varchar(255) NOT NULL,
  `no_telepon` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `level_akses`, `user_aktif`, `tanggal_registrasi`, `nama_depan`, `nama_belakang`, `alamat`, `foto_profil`, `foto_sampul`, `no_telepon`) VALUES
(66, 'endahkomarialestari@gmail.com', '$2y$10$Q/ZseDxYzHyYvXHI1DzWj.rWRbqvfH1aRHI.CkwLzrAsOTxel5Doe', 3, 1, 1746518630, 'endah', 'komariyah lestari', '', 'default.jpg', 'default.jpg', 0),
(67, 'zahraaraa688@gmail.com', '$2y$10$w9lvAG92OZamnINUeBKVSenRAvOMVENKFF5Diqmenjf5FWGe3r1Te', 1, 1, 1746545970, 'Zaraaa', 'Admin', 'kekalik', 'default.jpg', 'default.jpg', 2147483647),
(68, 'pc6zahratusyita@gmail.com', '$2y$10$SMYk/4Flkaa9Y73RNw02Vu8P1Ovh8qZokN0D2XW2x1UNWwPq5pK0i', 3, 1, 1746546187, 'Zara', 'Admin', '', 'default.jpg', 'default.jpg', 0),
(70, 'Alifahrizki05@gmail.com', '$2y$10$o9/rnnUjjegF2hM/oLLl0eFD66lQPBsgK0LN1AwcSyimuaNIDDjbi', 3, 1, 1746579423, 'Cikey', 'Cantik Cekali', '', 'default.jpg', 'default.jpg', 0),
(73, 'msaririzki15@gmail.com', '$2y$10$GStix.AH45Zw5U.Gi9ac.eA0iIk64iSi2bTCXYdOitR4y6Ry8RzDi', 3, 0, 1746762345, 'iky', 'oha', '', 'default.jpg', 'default.jpg', 0),
(74, 'suthawijaya445@gmail.com', '$2y$10$EcKi2rxp7z5OG8i1dg8G/eDKMgNateUerQit0UgmsaMWDD7q7zddK', 1, 1, 1746762407, 'Suhta', 'Dema', '', 'default.jpg', 'default.jpg', 0),
(75, 'suthawijaya446@gmail.com', '$2y$10$OWPouxk9lGasG0KRlplzief4hLmUznHkUUl/4dRKT4eu4KYjAQXSW', 2, 1, 1746765094, 'made', '', '', 'default.jpg', 'default.jpg', 0),
(76, 'msaririzki12@gmail.com', '$2y$10$3eKhRvYOmS/x7L1csflMEOnr1/rC9KrL08D7Qb0p3qZoGPed9CKzO', 1, 1, 1746770600, 'Muhamad', 'Rizki', '', 'default.jpg', 'default.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userakses`
--

CREATE TABLE `userakses` (
  `id` int(11) NOT NULL,
  `user_akses` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usermenu`
--

CREATE TABLE `usermenu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermenu`
--

INSERT INTO `usermenu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Guide'),
(3, 'Calon Pendaki');

-- --------------------------------------------------------

--
-- Table structure for table `usersubmenu`
--

CREATE TABLE `usersubmenu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersubmenu`
--

INSERT INTO `usersubmenu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Admin Dashboard', 'user/dashboardAdmin', 'nc-layout-11', 1),
(2, 1, 'Kelola Data Calon Pendaki', 'KelolaCalonPendaki', 'nc-single-02', 1),
(3, 1, 'Kelola Data Guide', 'KelolaGuide', 'nc-badge', 1),
(4, 1, 'Kelola Data Gunung', 'Gunung', 'nc-world-2', 1),
(5, 1, 'Kelola Pembayaran Paket Pendakian', 'Pembayaran/lihatStatusPembayaran', 'nc-money-coins', 1),
(6, 2, 'Kelola Paket Pendakian', 'PaketPendakian', 'nc-calendar-60', 1),
(7, 2, 'Lihat Status Pembayaran', 'Pembayaran/lihatStatusPembayaranGuide', 'nc-tile-56', 1),
(8, 3, 'Profil Saya', 'User', 'nc-circle-10', 1),
(9, 3, 'Keranjang', 'Pembayaran', 'nc-cart-simple', 1),
(10, 3, 'Paket Saya', 'Pemesanan', 'nc-bag-16', 1),
(11, 1, 'Data Feedback', 'Feedback/lihatDataFeedback', 'nc-paper', 1),
(12, 1, 'Kelola Jalur Pendakian', 'gunung/kelolajalurpendakian', 'nc-compass-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usertoken`
--

CREATE TABLE `usertoken` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tanggal_token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertoken`
--

INSERT INTO `usertoken` (`id`, `email`, `token`, `tanggal_token`) VALUES
(16, 'pc6zahratusyita@gmail.com', 'GuiyqfWW0eGfmgoxlEgtzKdXteoKrxG9Cp1hhU1PwJw=', 1746546187),
(18, 'msaririzki15@gmail.com', '1CnWUECT6168EQD6docX+AvWSAbi3TJv62Aq0vLF/iE=', 1746762345);

-- --------------------------------------------------------

--
-- Table structure for table `user_akses_menu`
--

CREATE TABLE `user_akses_menu` (
  `id` int(11) NOT NULL,
  `userakses` int(11) NOT NULL,
  `menuakses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_akses_menu`
--

INSERT INTO `user_akses_menu` (`id`, `userakses`, `menuakses`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 2, 3),
(6, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerygunung`
--
ALTER TABLE `gallerygunung`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `gunung`
--
ALTER TABLE `gunung`
  ADD PRIMARY KEY (`id_gunung`),
  ADD UNIQUE KEY `kode_gunung` (`kode_gunung`);

--
-- Indexes for table `jalurpendakian`
--
ALTER TABLE `jalurpendakian`
  ADD PRIMARY KEY (`id_jalur`);

--
-- Indexes for table `kategori_gunung`
--
ALTER TABLE `kategori_gunung`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `paket_pendakian`
--
ALTER TABLE `paket_pendakian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kodepaket` (`kodepaket`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userakses`
--
ALTER TABLE `userakses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermenu`
--
ALTER TABLE `usermenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersubmenu`
--
ALTER TABLE `usersubmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertoken`
--
ALTER TABLE `usertoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_akses_menu`
--
ALTER TABLE `user_akses_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallerygunung`
--
ALTER TABLE `gallerygunung`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gunung`
--
ALTER TABLE `gunung`
  MODIFY `id_gunung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jalurpendakian`
--
ALTER TABLE `jalurpendakian`
  MODIFY `id_jalur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kategori_gunung`
--
ALTER TABLE `kategori_gunung`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paket_pendakian`
--
ALTER TABLE `paket_pendakian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `userakses`
--
ALTER TABLE `userakses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usermenu`
--
ALTER TABLE `usermenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usersubmenu`
--
ALTER TABLE `usersubmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usertoken`
--
ALTER TABLE `usertoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_akses_menu`
--
ALTER TABLE `user_akses_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
