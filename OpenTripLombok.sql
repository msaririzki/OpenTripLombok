-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2025 pada 20.55
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opentriplombok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `kode_paket` varchar(255) NOT NULL,
  `nama_fasilitas` varchar(128) NOT NULL,
  `keterangan_fasilitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `kode_paket`, `nama_fasilitas`, `keterangan_fasilitas`) VALUES
(1, 'PKT007', 'transfortasi ', 'transofrtasi dari magelang to basecamp arjuno pulang pergi dengan transfortasi mini bus'),
(3, '', 'makan 3x', '1x saat mau naik\r\n1x saat di gunung (makan malam)\r\n1x saat hendak turun'),
(4, 'PKT001', 'makan 3x', '1x saat mau naik\r\n1x saat di gunung(makan malem)\r\n1x saat mau turun(optional)'),
(8, 'PKT008', 'makan 3x', 'sebelum berangkat 1x\r\ndi gunung 1x\r\nsebelum turun gunung 1x'),
(13, 'PKT001', 'Heling Setelah Uts', 'Ayok kita rayakan Nilai A kita'),
(14, 'PKT002', 'Heling Setelah Uts', 'Merayakan Nilai A'),
(15, 'PKT003', 'Heling Setelah Uts', 'Merayakan Uts'),
(16, 'PKT004', 'Heling Setelah Uts', 'Ingin DI rayakan'),
(17, 'PKT005', 'Puncak RInjani', 'Kepo dah'),
(18, 'PKT006', 'Anak dara tunngu aku', 'Kepu banget dah'),
(19, 'PKT007', 'Ntah lah', 'Cari tau Sendiri ha ha ha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
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
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `nama_lengkap`, `nomer_hp`, `isi_feedback`, `status_feedback`) VALUES
(4, 'zahraaraa688@gmail.com', 'Zara', 88, 'Contoh kontak', 0),
(5, 'msaririzki15@gmail.com', 'Muhamad Sari Rizki', 2147483647, 'Pengen Nilai A Bang', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallerygunung`
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
-- Dumping data untuk tabel `gallerygunung`
--

INSERT INTO `gallerygunung` (`id_gambar`, `gambar_satu`, `gambar_dua`, `gambar_tiga`, `gambar_empat`, `gambar_lima`, `kode_gunung`) VALUES
(18, 'Sunrise_over_Gunung_Rinjani_(now_with_mountain_shadow!)_3840x2399_OC.jpg', 'rinjani4.jpg', 'rinjani5.jpg', 'gunung-rinjani2.jpg', 'rinjani.jpg', 'DGN011'),
(19, 'dara1.jpg', '17d4ce817c8ed9ac1432cff18c2d284e.jpg', '3040ffb06d1a084ee4d02d38812ff46a.JPG', '0c11ec5837a785e359dccc4a47ce2ffb.jpg', 'dara2.jpg', 'DGN012'),
(20, 'f4614b5cb70ddc3d0d5b8caa59e4c5f2.jpg', '20e33ad3bb303e6d22ee2b6110103dbc.jpg', 'ce6a5773911143376ca70f9e1edff796.jpg', '4.jpeg', '0238165a932dc5e4422f2b77f8547d6b.jpg', 'DGN013'),
(21, '6.jpg', '7.jpg', '0c98ebf9bbc51d4d3a1591c3ea494db8.jpg', 'b6d88b3f72d2bcdcaa2eabde95107664.jpg', 'bc78502305cfa91b55b1482c26d74f04.jpg', 'DGN014'),
(22, '51988f1f212a25ced1dd0c17e8166100.jpg', 'bf1c34beafbe0336e647f76a2496ef5f.jpg', '6b9109e5a97437efb391ab78e50b4d12.jpg', '852ab6fcc51bbcb27edb6a362a265681.jpg', '1.jpg', 'DGN015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gunung`
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
-- Dumping data untuk tabel `gunung`
--

INSERT INTO `gunung` (`id_gunung`, `kode_gunung`, `nama_gunung`, `ketinggian`, `rata_rata_suhu`, `kategori_id`, `keterangan`, `alamat`) VALUES
(21, 'DGN011', 'Gunung Rinjani', 3, 12, '', 'Nikmati petualangan tak terlupakan di Gunung Rinjani, gunung berapi tertinggi kedua di Indonesia. Dengan pemandangan menakjubkan, danau Segara Anak yang memukau, serta udara pegunungan yang segar — sempurna untuk pendaki dan pencinta alam.\r\nAyo, taklukkan', 'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat.'),
(22, 'DGN012', 'Anak Dara', 1, 15, '', 'Temukan Keindahan Bukit Anak Dara!\r\nRasakan sensasi sunrise dari ketinggian Bukit Anak Dara, salah satu spot terbaik di Lombok Timur. Pendakian singkat, panorama luar biasa, dan udara sejuk jadi perpaduan sempurna untuk liburan singkat yang tak terlupakan', 'Bukit Anak Dara · Sembalun Lawang, Sembalun, Selong, Nusa Tenggara Bar. 83666, Indonesia'),
(23, 'DGN013', 'Bukit Gedong', 2, 16, '', 'Nikmati Pesona Bukit Gedong!\r\nBukit Gedong menyuguhkan pemandangan alam yang memesona dari ketinggian, cocok untuk spot foto dan santai di akhir pekan. Lokasinya mudah dijangkau, dengan udara segar dan nuansa hijau yang menenangkan.\r\nLiburan singkat? Buki', 'Sembalun Bumbung, Kec. Sembalun, Kabupaten Lombok Timur, Nusa Tenggara Bar.'),
(24, 'DGN014', 'Bukit Kondo', 1, 15, '', 'Nikmati Pesona Bukit Kondo!\r\nBukit Kondo, surga tersembunyi di Lombok Timur, menawarkan panorama alam yang memukau dengan hamparan awan dan pemandangan pegunungan di pagi hari. Cocok untuk camping dan menikmati sunrise yang magis dari atas ketinggian.\r\nYu', 'Sembalun Bumbung, Kec. Sembalun, Kabupaten Lombok Timur, Nusa Tenggara Bar.'),
(25, 'DGN015', 'Sempana', 8, 13, '', 'Jelajahi Keindahan Bukit Sempana!\r\nBukit Sempana, destinasi favorit pendaki di Lombok Timur, menawarkan pemandangan alam hijau yang memanjakan mata dan udara segar khas pegunungan. Cocok untuk pendakian ringan dan spot foto sunrise yang luar biasa.\r\nAyo k', 'Sembalun Bumbung, Kec. Sembalun, Kabupaten Lombok Timur, Nusa Tenggara Bar.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jalurpendakian`
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
-- Dumping data untuk tabel `jalurpendakian`
--

INSERT INTO `jalurpendakian` (`id_jalur`, `nama_jalur`, `jumlah_pos`, `jarak_jalur`, `foto_jalur`, `gambar_basecamp`, `kode_gunung`) VALUES
(24, 'Via Sembalun', 3, 5, '8d2c783a8bcd6462f9ab72f49894892a.jpg', '57377c365e917047441a93c63cae10d6.jpg', 'DGN011'),
(25, 'Tanjakan Cinta', 2, 3, '19d3f4a4e65338b5d4c61a4a29477319.jpg', 'bc.jfif', 'DGN012'),
(26, 'Gedong', 2, 3, 'ba97026c92e78b0fbb78603d51ece5e4.jpg', 'dd99a71c4e3912d4c76cf9de9dfcddf3.jpg', 'DGN013'),
(27, 'Kondo', 2, 3, '2.jpeg', 'ecfbc9f17e6738a5c729d29c6e3d6cbd.jpg', 'DGN014'),
(28, 'Sempana', 3, 3, 'a4fd0bdb0060f77bd1fad2c2ea482a52.jpg', '3dbb35ad1c970ccab5f811c5033a8a0d.jpg', 'DGN015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_gunung`
--

CREATE TABLE `kategori_gunung` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_pendakian`
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
-- Dumping data untuk tabel `paket_pendakian`
--

INSERT INTO `paket_pendakian` (`id`, `email`, `kodepaket`, `tanggal_mulai`, `tanggal_berakhir`, `titik_kumpul`, `kouta_paket`, `perlengkapan_pribadi`, `harga_paket`, `no_rekening_admin`, `kode_gunung`) VALUES
(14, 'oha@gmail.com', 'PKT001', '2025-05-09', '2030-12-09', 'basecamp rinjani', 10, 'Obat Obatan, Gabju Ganti ,Pasangan', 1500000, 2147483647, 'DGN011'),
(15, 'riki1@gmail.com', 'PKT002', '2025-05-10', '2032-12-10', 'Bc Anak Dara', 5, 'Pacar', 350, 2147483647, 'DGN012'),
(16, 'riki1@gmail.com', 'PKT003', '2025-05-10', '2029-12-10', 'Bc Kondo', 5, 'Pacar', 300, 2147483647, 'DGN014'),
(17, 'riki1@gmail.com', 'PKT004', '2025-05-10', '2031-12-10', 'Bc Sempana', 6, 'Pacar', 400, 2147483647, 'DGN015'),
(18, 'al1@gmail.com', 'PKT005', '2025-05-10', '2031-12-10', 'Bc Rinjani', 10, 'Bebas dah', 145000, 46437647, 'DGN011'),
(19, 'al1@gmail.com', 'PKT006', '2025-05-10', '2031-11-10', 'Bc Anak Dara', 249, 'Bebas bang', 300, 3453464, 'DGN012'),
(20, 'al1@gmail.com', 'PKT007', '2025-05-10', '2030-10-23', 'Bc Gedong', 3, 'Niat', 200, 453464, 'DGN013');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
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
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `kode_pembayaran`, `nama_pengirim`, `bank`, `no_rek_pengirim`, `tanggal_pembayaran`, `jumlah_nominal`, `gambar_bukti_pembayaran`, `status_pembayaran`, `kode_pemesanan`, `email`) VALUES
(16, 'PBN001', 'Muhamad Rizki', 'MANDIRI', 454354544, '2025-05-10', 1500000, '1a4f17e5237f133a79ab76bb10facf35.jpg', '1', 'KDP001', 'msaririzki12@gmail.com'),
(17, 'PBN002', 'Muhamad Rizki', 'MANDIRI', 2147483647, '2025-05-10', 1500000, 'f0bfdf2b2504a0fba2dbf2edaaa6071a.jpg', '0', 'KDP002', 'msaririzki15@gmail.com'),
(18, 'PBN003', 'Muhamad Rizki', 'BCA', 436457788, '2025-05-10', 300, '87da093825d7d4e634fc054de00924cf.jpg', '1', 'KDP003', 'msaririzki15@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
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
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `kode_pemesanan`, `email`, `kode_paket`, `tanggal_pemesanan`, `nama_gunung`, `harga_paket`, `foto_pemesanan`, `kouta_paket`, `sts_kirimPembayaran`) VALUES
(37, 'KDP001', 'msaririzki12@gmail.com', 'PKT001', '2025-05-09', 'Gunung Rinjani', '1500000', 'rinjani.jpg', 1, 'terverifikasi'),
(38, 'KDP002', 'msaririzki15@gmail.com', 'PKT001', '2025-05-09', 'Gunung Rinjani', '1500000', 'rinjani.jpg', 1, 'terkirim'),
(39, 'KDP003', 'msaririzki15@gmail.com', 'PKT006', '2025-05-09', 'Anak Dara', '300', 'dara2.jpg', 1, 'terverifikasi');

--
-- Trigger `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `tambah_pemesanan` AFTER INSERT ON `pemesanan` FOR EACH ROW begin
	update paket_pendakian set kouta_paket = kouta_paket - new.kouta_paket where kodepaket = new.kode_paket;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `level_akses`, `user_aktif`, `tanggal_registrasi`, `nama_depan`, `nama_belakang`, `alamat`, `foto_profil`, `foto_sampul`, `no_telepon`) VALUES
(66, 'endahkomarialestari@gmail.com', '$2y$10$Q/ZseDxYzHyYvXHI1DzWj.rWRbqvfH1aRHI.CkwLzrAsOTxel5Doe', 3, 1, 1746518630, 'endah', 'komariyah lestari', '', 'default.jpg', 'default.jpg', 0),
(67, 'zahraaraa688@gmail.com', '$2y$10$w9lvAG92OZamnINUeBKVSenRAvOMVENKFF5Diqmenjf5FWGe3r1Te', 1, 1, 1746545970, 'Zaraaa', 'Admin', 'kekalik', 'default.jpg', 'default.jpg', 2147483647),
(68, 'pc6zahratusyita@gmail.com', '$2y$10$SMYk/4Flkaa9Y73RNw02Vu8P1Ovh8qZokN0D2XW2x1UNWwPq5pK0i', 3, 1, 1746546187, 'Zara', 'Admin', '', 'default.jpg', 'default.jpg', 0),
(70, 'Alifahrizki05@gmail.com', '$2y$10$o9/rnnUjjegF2hM/oLLl0eFD66lQPBsgK0LN1AwcSyimuaNIDDjbi', 3, 1, 1746579423, 'Cikey', 'Cantik Cekali', '', 'default.jpg', 'default.jpg', 0),
(74, 'suthawijaya445@gmail.com', '$2y$10$EcKi2rxp7z5OG8i1dg8G/eDKMgNateUerQit0UgmsaMWDD7q7zddK', 1, 1, 1746762407, 'Suhta', 'Dema', '', 'default.jpg', 'default.jpg', 0),
(76, 'msaririzki12@gmail.com', '$2y$10$3eKhRvYOmS/x7L1csflMEOnr1/rC9KrL08D7Qb0p3qZoGPed9CKzO', 1, 1, 1746770600, 'Muhamad', 'Rizki', '', 'default.jpg', 'default.jpg', 0),
(77, 'oha@gmail.com', '$2y$10$sWJvJAZNH/CGLK/PraN6I.jimq/InfBd3P/SPjaPlLqGuATKhkKwS', 2, 1, 1746805368, 'Muhamad', '', '', 'default.jpg', 'default.jpg', 0),
(78, 'sutha1@gmail.com', '$2y$10$TLXJC0ZVt2ujfTUNTn2UKOIS1WJb3ByD9TxVl8WtcX9vrJ7/ggy9.', 2, 1, 1746808248, 'sutha g', '', '', 'default.jpg', 'default.jpg', 0),
(79, 'riki1@gmail.com', '$2y$10$lYf2K0ztcAl0JJ1lIcirWe5joaHb9DjMSNKXq/zEoIqWYr/YLUNmC', 2, 1, 1746808270, 'riki g', '', '', 'default.jpg', 'default.jpg', 0),
(80, 'al1@gmail.com', '$2y$10$WaIt493P7.1DR/Ch/swqqOoU7hMR2.7yjdXKS6/6pJV/oO7xFUYR.', 2, 1, 1746808287, 'al g', '', '', 'default.jpg', 'default.jpg', 0),
(82, 'msaririzki15@gmail.com', '$2y$10$00fESqYNaMBDlyD1qC9P0Ovj/YrzG.seg9ixxtmkch2vfnnWX4tMW', 3, 1, 1746809854, 'Muhamad', 'Rizki', '', 'default.jpg', 'default.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `userakses`
--

CREATE TABLE `userakses` (
  `id` int(11) NOT NULL,
  `user_akses` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usermenu`
--

CREATE TABLE `usermenu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `usermenu`
--

INSERT INTO `usermenu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Guide'),
(3, 'Calon Pendaki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usersubmenu`
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
-- Dumping data untuk tabel `usersubmenu`
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
-- Struktur dari tabel `usertoken`
--

CREATE TABLE `usertoken` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tanggal_token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `usertoken`
--

INSERT INTO `usertoken` (`id`, `email`, `token`, `tanggal_token`) VALUES
(16, 'pc6zahratusyita@gmail.com', 'GuiyqfWW0eGfmgoxlEgtzKdXteoKrxG9Cp1hhU1PwJw=', 1746546187),
(22, 'msaririzki15@gmail.com', 'Yl+8ATqhPH/zYi0INo+HbYNky/Eb+YtFOQaOehju88s=', 1746809854);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_akses_menu`
--

CREATE TABLE `user_akses_menu` (
  `id` int(11) NOT NULL,
  `userakses` int(11) NOT NULL,
  `menuakses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_akses_menu`
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
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallerygunung`
--
ALTER TABLE `gallerygunung`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `gunung`
--
ALTER TABLE `gunung`
  ADD PRIMARY KEY (`id_gunung`),
  ADD UNIQUE KEY `kode_gunung` (`kode_gunung`);

--
-- Indeks untuk tabel `jalurpendakian`
--
ALTER TABLE `jalurpendakian`
  ADD PRIMARY KEY (`id_jalur`);

--
-- Indeks untuk tabel `kategori_gunung`
--
ALTER TABLE `kategori_gunung`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `paket_pendakian`
--
ALTER TABLE `paket_pendakian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kodepaket` (`kodepaket`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `userakses`
--
ALTER TABLE `userakses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usermenu`
--
ALTER TABLE `usermenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usersubmenu`
--
ALTER TABLE `usersubmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usertoken`
--
ALTER TABLE `usertoken`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_akses_menu`
--
ALTER TABLE `user_akses_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `gallerygunung`
--
ALTER TABLE `gallerygunung`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `gunung`
--
ALTER TABLE `gunung`
  MODIFY `id_gunung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `jalurpendakian`
--
ALTER TABLE `jalurpendakian`
  MODIFY `id_jalur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `kategori_gunung`
--
ALTER TABLE `kategori_gunung`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `paket_pendakian`
--
ALTER TABLE `paket_pendakian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `userakses`
--
ALTER TABLE `userakses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usermenu`
--
ALTER TABLE `usermenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `usersubmenu`
--
ALTER TABLE `usersubmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `usertoken`
--
ALTER TABLE `usertoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user_akses_menu`
--
ALTER TABLE `user_akses_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
