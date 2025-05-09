CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `kode_paket` varchar(255) NOT NULL,
  `nama_fasilitas` varchar(128) NOT NULL,
  `keterangan_fasilitas` varchar(255) NOT NULL,
)

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `nomer_hp` int(13) NOT NULL,
  `isi_feedback` varchar(255) NOT NULL,
  `status_feedback` int(1) NOT NULL,
)

CREATE TABLE `gallerygunung` (
  `id_gambar` int(11) NOT NULL,
  `gambar_satu` varchar(255) NOT NULL,
  `gambar_dua` varchar(255) NOT NULL,
  `gambar_tiga` varchar(255) NOT NULL,
  `gambar_empat` varchar(255) NOT NULL,
  `gambar_lima` varchar(255) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL,
)

CREATE TABLE `gunung` (
  `id_gunung` int(11) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL,
  `nama_gunung` varchar(128) NOT NULL,
  `ketinggian` double NOT NULL,
  `rata_rata_suhu` float NOT NULL,
  `kategori_id` varchar(128) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
)

CREATE TABLE `jalurpendakian` (
  `id_jalur` int(11) NOT NULL,
  `nama_jalur` varchar(128) NOT NULL,
  `jumlah_pos` int(10) NOT NULL,
  `jarak_jalur` int(10) NOT NULL,
  `foto_jalur` varchar(255) NOT NULL,
  `gambar_basecamp` varchar(255) NOT NULL,
  `kode_gunung` varchar(255) NOT NULL,
)

CREATE TABLE `kategori_gunung` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL,
)

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
  `kode_gunung` varchar(255) NOT NULL,
)

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
  `email` varchar(128) NOT NULL,
)

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
  `sts_kirimPembayaran` varchar(125) NOT NULL,
)

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
  `no_telepon` int(13) NOT NULL,
)

CREATE TABLE `userakses` (
  `id` int(11) NOT NULL,
  `user_akses` int(11) NOT NULL,
)

CREATE TABLE `usermenu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
)

CREATE TABLE `usersubmenu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
)

CREATE TABLE `usertoken` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tanggal_token` int(11) NOT NULL,
)

CREATE TABLE `user_akses_menu` (
  `id` int(11) NOT NULL,
  `userakses` int(11) NOT NULL,
  `menuakses` int(11) NOT NULL,
)

-- Ref: usermenu.id < usersubmenu.menu_id

-- Ref: gunung.kode_gunung < gallerygunung.kode_gunung

-- Ref: gunung.kode_gunung < jalurpendakian.kode_gunung

-- Ref: gunung.kode_gunung < paket_pendakian.kode_gunung

-- Ref: gunung.kategori_id > kategori_gunung.id_kategori

-- Ref: gunung.nama_gunung - pemesanan.nama_gunung

-- Ref: paket_pendakian.kodepaket < fasilitas.kode_paket

-- Ref: paket_pendakian.kodepaket - pemesanan.kode_paket

-- Ref: paket_pendakian.kouta_paket - pemesanan.kouta_paket

-- Ref: userakses.user_akses - user_akses_menu.userakses

-- Ref: feedback.email - user.email

-- Ref: usertoken.email - user.email

ALTER TABLE usersubmenu
ADD CONSTRAINT fk_usersubmenu_menu_id FOREIGN KEY (menu_id)
REFERENCES usermenu(id);

ALTER TABLE gallerygunung
ADD CONSTRAINT fk_gallerygunung_kode_gunung FOREIGN KEY (kode_gunung)
REFERENCES gunung(kode_gunung);

ALTER TABLE jalurpendakian
ADD CONSTRAINT fk_jalurpendakian_kode_gunung FOREIGN KEY (kode_gunung)
REFERENCES gunung(kode_gunung);

ALTER TABLE paket_pendakian
ADD CONSTRAINT fk_paket_pendakian_kode_gunung FOREIGN KEY (kode_gunung)
REFERENCES gunung(kode_gunung);

ALTER TABLE gunung
ADD CONSTRAINT fk_gunung_kategori_id FOREIGN KEY (kategori_id)
REFERENCES kategori_gunung(id_kategori);

ALTER TABLE pemesanan
ADD CONSTRAINT fk_pemesanan_nama_gunung FOREIGN KEY (nama_gunung)
REFERENCES gunung(nama_gunung);

ALTER TABLE fasilitas
ADD CONSTRAINT fk_fasilitas_kode_paket FOREIGN KEY (kode_paket)
REFERENCES paket_pendakian(kodepaket);

ALTER TABLE pemesanan
ADD CONSTRAINT fk_pemesanan_kode_paket FOREIGN KEY (kode_paket)
REFERENCES paket_pendakian(kodepaket);

ALTER TABLE pemesanan
ADD CONSTRAINT fk_pemesanan_kouta_paket FOREIGN KEY (kouta_paket)
REFERENCES paket_pendakian(kouta_paket);

ALTER TABLE user_akses_menu
ADD CONSTRAINT fk_user_akses_menu_userakses FOREIGN KEY (userakses)
REFERENCES userakses(user_akses);

ALTER TABLE feedback
ADD CONSTRAINT fk_feedback_email FOREIGN KEY (email)
REFERENCES user(email);

ALTER TABLE usertoken
ADD CONSTRAINT fk_usertoken_email FOREIGN KEY (email)
REFERENCES user(email);
