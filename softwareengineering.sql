-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2018 pada 09.45
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softwareengineering`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id_events` int(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `information` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id_events`, `name`, `contact`, `start_date`, `end_date`, `information`, `username`, `id_users`) VALUES
(6, 'Seminar Hasil Group 1', '082188231639', '2018-07-16', '2018-07-18', '<p>&nbsp;Datangki Nah !!!</p>', '1524133011', 0),
(7, 'Seminar Tutup Group 1', '082188231639', '2018-07-18', '2018-07-19', '<p>Datangki nah !!!</p>', '1524133011', 0),
(8, 'Final Project Singapore', '082188231639', '2018-08-07', '2018-08-08', '<p>Please Come and Join</p>', '1524133011', 0),
(9, 'Seminar Hasil Group II', '08114466540', '2018-07-19', '2018-07-20', '<p>Datangki nah !!</p>', '1524133011', 0),
(10, 'Seminar Tutup Group II', '08114466540', '2018-07-21', '2018-07-22', '<p>Datangki nah !!</p>', '1524133011', 0),
(11, 'Final Project Singapore Group II', '08114466540', '2018-07-23', '2018-07-24', '<p>Come and Join with Us in Vicon&nbsp;3rd floor UNM</p>', '1524133011', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `information`
--

CREATE TABLE `information` (
  `id_info` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `active` enum('Alumni','Student') NOT NULL DEFAULT 'Alumni',
  `class` varchar(100) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ps` varchar(255) NOT NULL,
  `jhs` varchar(255) NOT NULL,
  `shs` varchar(255) NOT NULL,
  `bachelor` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `social_media` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `information`
--

INSERT INTO `information` (`id_info`, `name`, `nim`, `active`, `class`, `dob`, `address`, `number`, `email`, `ps`, `jhs`, `shs`, `bachelor`, `instagram`, `social_media`, `username`, `photo`, `id_users`) VALUES
(12, 'Ahmad Faidi', '1524133011', 'Alumni', '2015', '21 November 1994', '<p>Jalan Terompet H6 No. 75A Blok H Perumnas Antang, Makassar</p>', '082188231639', 'ahmadfaidiunm1994@gmail.com', 'SD Negeri Mangkura 3 Makassar', 'SMP 4 Tulungagung', 'SMA Nasional Makassar', '-', '@ahmadfaidiunm', '-', '1524133011', '20180706201952.jpeg', 0),
(14, 'Mukhlis', '1624133008', 'Student', '2016', '16 November 1997', '<p>Jalan Mappaodang 2 No.32 RT 07 RW 03 Kel. Parang Kec. Mamajang, Kota Makassar</p>', '-', 'mukhlis1302@gmail.com', 'SDN Kapota Yudha 1', 'SMPN 26 Makassar', 'SMAN 3 Makassar', '-', '@mukhlliis', '-', '1624133008', '20180708232745.jpg', 0),
(15, 'Erfiana R.', '1624133006', 'Student', '2016', '29 Maret 1998', '<p>Jalan Veteran Selatan</p>', '081354353818', 'erfianar29@gmail.com', 'SD Inp. 208 Julusiri', 'SMPN 4 Bantimurung', 'SMAN Bantimurung', '-', '@erfianar_', '-', '1624133006', '20180708232642.jpg', 0),
(16, 'Amiruddin', '1624133019', 'Student', '2016', '12 Februari 1997', '<p>Jalan Kesatuan No.18</p>', '-', 'paragascout.ps@gmail.com', 'SDN Maccini', 'SMPN 21 Bulukumba', 'SMAN 13 Bulukumba', '-', 'Amirrr12_', '-', '1624133019', '20180708232854.jpg', 0),
(18, 'Nurhadi Rahmat', '1624133023', 'Student', '2016', '6 September 1998', '<p>Jalan Minasa Upa</p>', '-', 'nurhadierahmat06@gmail.com', 'SDN Minasa Upa', 'SMPN 21 Makassar', 'SMK 1 Sulsel', '-', 'nurhadirahmat6', '-', '1624133023', '20180708232921.jpg', 0),
(19, 'Muh. Fikri Haykal', '1624133001', 'Student', '2016', '29 April 1998', '<p>Jalan BTN Tabaria Dg. Tata 1</p>', '082194769668', 'muhammadhaykal5077@gmail.com', 'SD Kartika', 'MTS Model Makassar', 'SMA 11 Makassar', '-', 'ryanhaykal', '-', '1624133001', '20180708232951.jpg', 0),
(20, 'Sulviawan', '1624133015', 'Student', '2016', '28 Oktober 1996', '<p>Tompoe</p>', '085342910529', 'sulviawan28@gmail.com', 'SDN 220 Tompoe', 'SMPN 1 Mariorowawo', 'SMAN 1 Watansoppeng', '-', '-', '-', '1624133015', '20180708233015.jpg', 0),
(21, 'Nurul Azizah', '1624133004', 'Student', '2016', '16 Mei 1998', '<p>jalan Bontomate\'ne No. 28 Kec. Bontonompo</p>', '-', 'nurulazizaharef@gmail.com', 'SDN Bontonompo', 'SMPN 2 Sungguminasa', 'SMAN 2 Tinggimoncong', '-', '-', 'Facebook : nurul azizah arief', '1624133004', '20180708233034.jpg', 0),
(22, 'Muh. Ardyan Amsyir', '1624133021', 'Student', '2016', '13 Maret 1998', '<p>Jalan BTN Bataria B4/1</p>', '-', 'gilitrawangan1292@gmail.com', 'SD Mallengkeri Bertingkat', 'SMPN 1 Sungguminasa', 'SMAN 9 Makassar', '-', 'Ardyanmunez', '-', '1624133021', '20180708233046.jpg', 0),
(23, 'Apriani Patiung', '1624133018', 'Student', '2016', '11 April 1998', '<p>Jalan Tamalate 5 No.32</p>', '082345111126', 'aprianipatiung998@gmail.com', 'SDN 1 Unamendaa', 'SMPN 1 Wundulako', 'SMAN 1 Wundulako', '-', 'aprianiptng_', '-', '1624133018', '20180708233100.jpg', 0),
(24, 'Nurwahida Ishak', '1624133011', 'Student', '2016', '6 Maret 1998', '<p>jalan BTN Pao-pao permai Blok D.9 No. 8 Gowa</p>', '082293583890', 'nurwahidaishak@gmail.com', 'SDN Pao-pao', 'SMPN 3 Sungguminasa', 'SMAN 2 Sungguminasa', '-', 'nurwahidaishakk', '-', '1624133011', '20180708233115.jpg', 0),
(25, 'Firdaus', '1624133017', 'Student', '2016', '5 September 1999', '<p>Jalan Dg. Tata 5</p>', '-', 'firdaus050999@gmail.com', 'SDN 74 Gerege', 'SMP 4 Rumbia', 'SMAN 1 Kelara', '-', 'Dadangiboo', '-', '1624133017', '20180708233134.jpg', 0),
(26, 'Erni', '1624133020', 'Student', '2016', '10 September 1997', '<p>Jalan Raya Pendidikan</p>', '082348932227', 'ernierr09@gmail.com', 'SDN 10 Kampung Baru', 'SMPN 3 Satap Total', 'SMKN 1 Bungoro', '-', 'ernhyangel', '-', '1624133020', '20180708233152.jpg', 0),
(27, 'Suci Aulia', '1724133013', 'Student', '2017', '6 April 1998', '<p>Jalan Villa Mutiara Hijau Makassar</p>', '085255228102', 'sucikerr06@gmail.com', 'SDN Inp. Bertingkat Pinrang', 'SMPN 2 Pinrang', 'SMKN 5 Makassar', '-', '@sucikerr', '-', '1724133013', '20180708233206.jpg', 0),
(28, 'Muh. Wildan Mauludy', '1724133005', 'Student', '2017', '27 Juni 1999', '<p>Jalan A.P. Pettarani, Bakti 1</p>', '082333338536', 'wildanmauludy27@gmail.com', 'SDRP Negeri 4 Pangsid', 'SMPN 1 Pangsid', 'SMKN 5 SIdenreng', '-', 'Muhammad Wildan Mauludy', '-', '1724133005', '20180708233220.jpg', 0),
(29, 'Andy Korona Bahar', '1724133023', 'Student', '2017', '7 Maret 1998', '<p>Jalan Tinumbu 142</p>', '08999079361', 'andykorona07@gmail.com', 'SD Inp. Bertingkat layang', 'SMP PGRI 4 Makassar', 'SMKN 5 Makassar', '-', 'Andhykorona', 'Facebook : Andhyswkb', '1724133023', '20180708233252.jpg', 0),
(30, 'Andi Mardila Isma', '1724133019', 'Student', '2017', '31 Mei 1999', '<p>Jalan Rutan</p>', '082353049400', 'andimardila11@gmail.com', 'SD 122 Batupannyyu', 'SMPN 28 Bulukumba', 'SMAN 6 Bulukumba', '-', 'Andimardilaisma', '-', '1724133019', '20180708233309.jpg', 0),
(32, 'Achmad Nuryadin S', '1724133016', 'Student', '2017', '5 Juni 1999', '<p>Jalan Manuruki II No.20</p>', '081510597728', 'achmadnuryadin4@gmail.com', 'SD 29 Bontomacinna', 'MTSN 1 Bulukumba ', 'SMKN 1 Bulukumba', '-', 'achmad nuryadin', '-', '1724133016', '20180708233332.jpg', 0),
(34, 'Lahfah Afifah', '1724133011', 'Student', '2017', '30 September 2000', '<p>Jalan Bumi Bosowa Permai A1/19</p>', '085396774818', 'lahfahafifah30@gmail.com', '-', '-', '-', '-', '-', 'Facebook : lahfah Afifah', '1724133011', '20180708233345.jpg', 0),
(35, 'Muh. Aqil Ilham Amrullah', '1724133004', 'Student', '2017', '13 September 1999', '<p>Jalan Sibula dalam 1 No.15</p>', '081288387912', 'aqilamrullah13@gmail.com', 'SDN Pisangan Timur 14 pagi Jak-Tim', 'MTS Al-Hamidiyah, Depok', 'MA Al-Hamidiyah, Depok', '-', 'mhmmdachieel', '-', '1724133004', '20180708233356.jpg', 0),
(36, 'Khairil Wahyu', '1724133015', 'Student', '2017', '2 Juni 1999', '<p>Jalan Monumen Emmy Saelan</p>', '081320080730', 'khairilwahyuu@gmail.com', 'SDN 39 Bontonyeleng', 'SMPN 6 Bulukumba ', 'SMAN 8 Model Bulukumba', '-', 'khairil_wahyu26', '-', '1724133015', '20180708233407.jpg', 0),
(37, 'Ahmad Hidayat Irianto', '1724133020', 'Student', '2017', '24 Mei 1999', '<p>Jalan Dahlia No.9 Gowa</p>', '087817236563', 'yayatkobe3@gmail.com', 'SDN Komp. IKIP 1 Makassar', 'SMPN 8 Makassar', 'SMAN 8 Makassar', '-', 'ahmadhidayat_08', '-', '1724133020', '20180708233428.jpg', 0),
(38, 'Ilham Kabes', '1724133009', 'Student', '2017', '30 Juli 1999', '<p>Jalan Cokonuri</p>', '-', 'ilhamkabes12@gmail.com', 'SD Inp. II Kaimana', 'SMP III Kaimana', 'SMA I Kaimana', '-', 'Ilham_Kabes', '-', '1724133009', '20180708233443.jpg', 0),
(39, 'Nur Islamiah', '1724133012', 'Student', '2017', '15 Juni 1996', '<p>Jalan Rutan</p>', '083898480523', 'nurislamiah0037@gmail.com', 'SD Cakura', 'SMP 5 Takalar', 'SMAN 3 Takalar', '-', 'mhyamiamii5', '-', '1724133012', '20180708233454.jpg', 0),
(40, 'Sri Handayani', '1724133027', 'Student', '2017', '5 Mei 1998', '<p>Jalan Pendidikan 2</p>', '085255861889', 'srihandayanisalam@gmail.com', 'SD 53 PBB', 'SMPN 5 Bulukumba', 'SMAN 2 Bulukumba', '-', '-', '-', '1724133027', '20180708233506.jpg', 0),
(41, 'Nirwana', '1724133025', 'Student', '2017', '20 Mei 1999', '<p>Jalan Mapala Komp. Pemda</p>', '085298628166', 'wnirwana71@gmail.com', 'SD 272 Pinrang', 'SMP 3 Pinrang', 'SMA 8 Pinrang', '-', 'wnirwana21', '-', '1724133025', '20180708233520.jpg', 0),
(42, 'Nurhanna', '1724133001', 'Student', '2017', '6 Oktober 1998', '<p>Jalan Rajawali</p>', '082153912268', 'nurhanna0698@gmail.com', 'SD Inp. Barua', 'SMPN 1 Bontolempangan', 'SMAN 1 Bontolempangan', '-', 'hanna99', '-', '1724133001', '20180708233534.jpg', 0),
(43, 'Riski Awaluddin', '1724133017', 'Student', '2017', '22 Februari 1999', '<p>Jalan Deppasami dalam</p>', '081240552066', 'riskiawaluddi220294@gmail.com', 'SDIT Al-Insyirah', 'SMPIT Al-Insyirah', 'SMA Angkasa', '-', 'ikkiekikukeko', '-', '1724133017', '20180708233549.jpg', 0),
(44, 'Tuti Handayani Usman', '1724133003', 'Student', '2017', '16 Juni 1998', '<p>Jalan Mitra Berdikari Asri Blok B2 No.2</p>', '082300111323', 'tutihandayani913@gmail.com', 'SD Inp. Unhas', 'SMPN 9 Makassar', 'SMAN 6 Makassar', '-', 'tutihandayaniusman', '-', '1724133003', '20180708233601.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `job`
--

CREATE TABLE `job` (
  `id_job` int(200) NOT NULL,
  `company` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `end_date` date NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `job`
--

INSERT INTO `job` (`id_job`, `company`, `contact`, `end_date`, `position`, `description`, `username`, `id_users`) VALUES
(4, 'PT Jasa Teknologi Informasi IBM', '021-29925000', '2019-01-01', 'Regional IT Deskside Manager (Makassar)', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Leading a project team in delivering a solution to the customer.</span></p>\r\n<ul style=\"list-style-type: circle;\">\r\n<li><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Gaya berpakaian : Casual on Friday</span></li>\r\n<li><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Tunjangan : Parkir, Kesehatan</span></li>\r\n<li><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Gaji : Diatas 2 Juta</span></li>\r\n<li><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Situs : <a href=\"http://www.ibm-jti.com/\">http://www.ibm-jti.com/</a></span></li>\r\n</ul>', '1524133011', 0),
(5, 'CV Rabbani Asysa', '022-7234445', '2018-12-01', 'IT Support', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Job Description</span></p>\r\n<ol>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Menangani troubleshooting OS Windows</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Maintenance software dan hardware</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Maintenance LAN, konfigurasi Wifi, TPC/IP</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Paham menggunakan perangkat Hardware Networking</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Mengatasi masalah internet</span></li>\r\n</ol>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Requirements</span></p>\r\n<ol>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Pendidikan min. D3 Komputer (L/P)</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Usia maksimal 40 tahun</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Dapat bekerja secara individu maupun team</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Pengalaman min 1 tahun dibidang yang sama</span></li>\r\n<li><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Bersedia ditempatkan di Kalimantan (Banjarmasin) dan Sulawesi (Makassar)</span></li>\r\n</ol>', '1524133011', 0),
(6, 'PT Transporindo Agung Sejahtera (Makassar)', '4720480', '2018-11-01', 'Staff IT', '<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: 150%;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: 150%;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">JOB DESCRIPTION</span></p>\r\n<ol>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">menerima, memprioritaskan dan menyelesaikan permintaan bantuan IT</span></li>\r\n<li>menyediakan hardware IT, software dan hal-hal lain yang berhubungan dengan hal tersebut.</li>\r\n<li>instalasi, perawatan dan penyediaan dukungan harian baik untuk hardware &amp; software Windows &amp; Macintosh, peralatan termasuk printer, scanner, hard-drives external, dll.</li>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">korespondensi dengan penyedia jasa eksternal termasuk Internet Service Provider, penyedia jasa Email, hardware, dan software supplier, dll.</span></li>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">menyediakan data / informasi yang dibutuhkan untuk pembuatan laporan department regular.</span></li>\r\n</ol>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">Kualifikasi:</span></p>\r\n<ol>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">Maksimal berusia 32 Tahun</span></li>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">Minimal Pendidikan S1 (Bidang IT)</span></li>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">Berpengalaman di bidangnya minimal 2 Tahun (Lebih diutamakan)</span></li>\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; color: black;\">Jujur, Bertanggung Jawab dan Pekerja Keras</span></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '1524133011', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `link`
--

CREATE TABLE `link` (
  `id_link` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `link`
--

INSERT INTO `link` (`id_link`, `name`, `website`) VALUES
(4, 'Universitas Negeri Makassar', 'http://www.unm.ac.id'),
(6, 'Ristekdikti', 'https://ristekdikti.go.id/'),
(7, 'Forlap Dikti', 'https://forlap.ristekdikti.go.id/'),
(8, 'Job Street', 'https://www.jobstreet.co.id/'),
(10, 'Perpustakaan Nasional Republik Indonesia', 'http://www.pnri.go.id/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `information` longtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `date_post` datetime NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id_news`, `username`, `title`, `category`, `information`, `picture`, `date_post`, `id_users`) VALUES
(3, '1524133011', 'Revisi Logo UNM, PR I: Supaya Lebih Mudah Dikenali', 'Akademik', '<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">Logo Universitas Negeri Makassar (<a href=\"http://www.unm.ac.id/\" target=\"_blank\" rel=\"noopener noreferrer\">UNM</a>) yang diciptakan oleh Abdul Kahar Wahid saat ini mengalami sedikit perbaharuan dengan adanya tulisan nama dari kampus orange ini yang dibuat melingkari logo sebelumnya lengkap dengan dua tanda bintang.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">Saat dikonfirmasi, Pembantu Rektor Bidang Akademik Muharram, mengatakan bahwa logo yang saat ini sudah tersebar pada sivitas akademika bukanlah logo baru melainkan hanya sedikit menambahkan tulisan UNM yang tujuannya agar lebih mudah dikenali oleh masyarakat luas.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">&ldquo;Logo itu sebenarnya tidak baru, hanya ditambahkan nama. Kalau logo itu berdiri sendiri tanpa ada nama UNM di samping atau di atas atau di bawahnya, orang tidak tahu.&rdquo; katanya.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">Ia pula menambahkan bahwa dua simbol bintang yang terlihat kian menyempurnakan logo tersebut bukanlah sesuatu yang perlu dimaknai namun hanya sebagai pemisah antara tulisan UNM secara lengkap dan singkatannya.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">&ldquo;Tanda bintang itu tidak ada artinya. Hanya memberi antara nama panjang dan singkatan.&rdquo; tambahnya.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">Revisi logo UNM ini telah digunakan sejak lima bulan yang lalu, sedangkan logo sebelumnya tetap digunakan selama ada identitas lain yang menunjukkan bahwa logo tersebut milik UNM.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; line-height: 22px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">&ldquo;Ini sudah berlaku sejak 31 januari 2018. Tapi misalnya di www.unm.ac.id , itu tidak perlu diubah karena dilaman tersebut sudah ada kata UNM.&rdquo; ujar pria asal Pinrang ini.</p>', '20180706174323.jpg', '2018-07-06 17:43:24', 0),
(4, '1524133011', '190 Mahasiswa FT Ikuti Wisuda Periode 2', 'Akademik', '<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">Universitas Negeri Makassar (<a href=\"http://www.unm.ac.id/\">UNM</a>) menggelar Rapat Senat Terbuka Luar Biasa dalam rangka Wisuda Periode II Tahun Akademik 2017/2018 di Pelataran Menara Pinisi UNM Jl AP Pettarani Makassar, Rabu (11/4/2018).</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">Rapat Senat tersebut dipimpin Rektor UNM, Prof Husain Syam di dampingi wakil Rektor, Dekan, Wakil Dekan, Guru Besar dan Anggota Senat UNM. Acara sidang senat diawali pengukuhan wisudawan setiap fakultas, pembacaan janji alumni, pidato rektor dan pembacaan doa&rsquo;.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">Pada Wisuda Periode II Tahun Akademik 2017/2018 UNM mengukuhkan 1.809 wisudawan dari program Diploma III (D3), Strata Satu (S1), Magister (S2) dan Doktor (S3).&nbsp;Fakultas Teknik, 190 orang, Program pascasarja sebanyak 175 orang, Fakultas Matematika dan Ilmu Pengetahuan Alam, 259 orang, Fakultas Ilmu Keolahragaan 233 orang, Fakultas Ilmu Pendidikan 240 orang, Fakultas Bahasa dan Sastra 199 orang, Fakultas Ilmu Sosial 133 orang, Fakultas Psikologi 38 orang, Fakultas Seni dan Desain 123 orang, Fakultas Ekonomi 219 orang.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">&ldquo;Dari 1.809 orang lulusan yang diwisuda pada hari ini, terdapat 1.376 orang program kependidikan dan 433 orang program Non-kependidikan,&rdquo; jelas Rektor UNM, Prof Husain Syam saat pidato wisuda lulusan.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">Prof Husain juga menyampaikan torehan UNM yang meraih akreditasi A ditahun 2017, dan sejumlah prestasi UNM lainnya.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">&ldquo;Kami mengimbau para wisudawan, jika kelak melangkahkan kaki meninggalkan kampus tercinta ini, ke manapun ayunan langkah diarahkan, serta jalan manapun yang ditempuh dalam perjalanan hidup kelak, kibarkanlah selalu panji-panji almamater Anda, Universitas Negeri Makassar. Ingatlah selalu moto almamater Tetap Jaya dalam Tantangan,&rdquo; tandas Rektor ke IX UNM tersebut.</p>', '20180706175052.PNG', '2018-07-06 17:50:52', 0),
(5, '1524133011', 'Selamat dan Sukses kepada 20 Tim FT UNM Penerima Hibah PKM 5 Bidang', 'Akademik', '<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">Kementrian Riset Teknologi dan Pendidikan Tinggi (Kemenristekdikti) mengumumkan hasil hasil seleksi proposal Program Kreativitas Mahasiswa (PKM) 5 Bidang untuk pendanaan<br style=\"box-sizing: inherit;\" />tahun 2018.<br style=\"box-sizing: inherit;\" />Di tahun 2018, terdapat kurang lebih 47.000 proposal yang terupload di Simbelmawa. Dan FT <a href=\"http://www.unm.ac.id/\">UNM</a> berhasil meloloskan 23 tim yang didanai oleh dikti. diantaranya 12 tim<br style=\"box-sizing: inherit;\" />pada PKM Pengabdian Masyarakt, 6 tim untuk PKM Karsa Cipta, 1 tim PKM Eksakta, dan 4 timuntuk PKM Penerapan Teknologi. Dengan jumlah penerima hibah yang<br style=\"box-sizing: inherit;\" />meningkat dari tahun sebelumnya, tentunya merupakan pencapaian terbaik FT <a href=\"http://www.unm.ac.id/\">UNM</a> pada Program Kreativitas Mahasiswa.</p>\r\n<p style=\"box-sizing: inherit; color: #666666; line-height: 1.5; margin: 0px 0px 15px; font-family: \'Open Sans\', sans-serif;\">Selamat kepada Para Pejuang PKM&hellip;</p>', '20180706175446.PNG', '2018-07-06 17:54:46', 0),
(6, '1524133011', 'Gelar Aksi, Ini Tuntutan BEM FT UNM', 'Mahasiswa', '<div dir=\"auto\" style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">\r\n<p style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; line-height: 22px;\">Badan Eksekutif Mahasiswa (BEM) Fakultas Teknik (FT) Universitas Negeri Makassar (<a href=\"http://www.unm.ac.id/\">UNM</a>) melakukan aksi di depan Gedung Teknol Kampus FT UNM, Rabu (7/2).</p>\r\n</div>\r\n<div dir=\"auto\" style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">Pada aksi ini, BEM FT UNM layangkan tuntutan yang dianggap meresahkan mahasiswa. Tuntutan tersebut yakni, Kuliah Kerja Nyata (KKN) yang berbayar.</div>\r\n<div dir=\"auto\" style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">Jenderal Lapangan, Muhammad As&rsquo;ad Amir mengatakan, Aksi kali ini mengikut dari hasil konsolidasi FT UNM, di mana grand isunya adalah pecat Menristekdikti dan copot Rektor otoriter.</div>\r\n<div dir=\"auto\" style=\"padding: 0px; margin: 0px 0px 24px; outline: none; list-style: none; border: 0px; box-sizing: border-box; vertical-align: baseline; font-size: 15px; color: #222222; font-family: \'Droid Sans\', Arial, Verdana, sans-serif;\">&ldquo;Isu turunannya adalah cabut SK KKN berbayar, cabut undang-undang Dikti, dan libatkan mahasiswa dalam pengambilan kebijakan,&rdquo; jelas As&rsquo;ad. (*)</div>', '20180706175940.PNG', '2018-07-06 17:59:40', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Administrator','Users') NOT NULL DEFAULT 'Administrator',
  `last_login` datetime NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'noavatar.png',
  `active` enum('Student','Alumni') NOT NULL DEFAULT 'Student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `name`, `address`, `phone`, `username`, `password`, `level`, `last_login`, `photo`, `active`) VALUES
(1, 'Ahmad Faidi', 'Jln. Terompet H6 No. 75A Blok 10 Perumnas Antang', '082188231639', '1524133011', '$2y$10$b2ie7UezUzMQZrdeSisVoetpgxEC3SzmxEh1wMLUdX2Os1EuwrlEu', 'Administrator', '2018-08-16 14:37:41', 'Ahmad_Faidi_20180807150556.jpeg', 'Alumni'),
(2, '', '', '', '1524133022', '$2y$10$4SOSKiWTU38JYoc2W4hfYO/2EnLjRg4IuSNzKnqejV9Cxx1fE/xW6', 'Users', '2018-08-16 14:36:43', 'noavatar.png', 'Alumni'),
(3, '', '', '', '1524133002', '$2y$10$g2uzZuAXP2ZRUhW/jM23a.z/you/lqhjf2r5Ie6sKkM1mdt0B9v8O', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(4, '', '', '', '1524133013', '$2y$10$HWtn9P8cBMc6En9oaNkaCufcecMhuNkMkZk/3eJwTyOSgnDi9XurG', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(5, '', '', '', '1524133010', '$2y$10$G9LKLeYRADBUb0UtOgm35.l.P6lsiVPP.Q5SD565ZovY1GVGpxmUu', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(6, '', '', '', '1524133019', '$2y$10$RgOrr5XBnwKeM.meu8ANNubjkylbbeFEPV4hcSqUB6Ml6weCI2Adm', 'Users', '2018-08-13 18:19:57', 'noavatar.png', 'Alumni'),
(7, '', '', '', '1524133009', '$2y$10$MwJP63FybcIGfxNwEdbkS.M256jY3tUvbZJMBwVeHCBsM0V33vbbW', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(8, '', '', '', '1524133027', '$2y$10$PEjJ9GBoJUIkwT4JvFP/Iupf8TSpnRyhScI3GogZbQMJYIziUWWXu', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(9, '', '', '', '1524133008', '$2y$10$VQ8DNYbLAA3T5m1ht3ogOe8fz/6gCL2DJpeqil9RYfuORVGu/kS0K', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(10, '', '', '', '1524133025', '$2y$10$pzL8D6CPWmFAlavQ5C6XUOZyGzqedAgt/u/82QZSoZv7N2Cpgvuk2', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(11, '', '', '', '1524133006', '$2y$10$.28TssPrO4MSPhbbjFQ13OuemE89FSwPFKXz38vy1gJ2TlacwniRe', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(12, '', '', '', '1524133028', '$2y$10$OWMGUf.leyr4MWLAq2DJGeEHlJU0dWCUwH/KMesTt5n4PEDDmSXP2', 'Users', '2018-03-29 09:31:54', 'noavatar.png', 'Alumni'),
(13, '', '', '', '1524133007', '$2y$10$mSz8D.8cnJ4eIX2MyeRiCex4BAnRdhuO4XgrcF6qX5VshgJu0KXXm', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(14, '', '', '', '1524133004', '$2y$10$BVkR5tDkIdbdFccfmckss.nk2.ao/ML/YWC8tCDe1i1uBHFDXrv26', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(15, '', '', '', '1524133050', '$2y$10$Q1BWHFvLKhmER5un/LsShekzYcTA2RtZU/qKRCv9m8Gsg/vMRypQu', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(16, '', '', '', '1524133015', '$2y$10$5.HY831oMB3vQ2Gh1CSdXe8.BofhhmDn2RQMJiMQM5duqvombl3bG', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(17, '', '', '', '1524133001', '$2y$10$QMrc1mv/p8ao4ecOMs7uIOQzyb.Y6wE4Ic2zkuCt/gb/Z9WFfKc9u', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(18, '', '', '', '1524133012', '$2y$10$bhxoNc0.ybJZYKH5nhnl8.uQ3lM1u2kEPABJofNo6SzlO/Nxc/dr6', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(19, '', '', '', '1524133003', '$2y$10$yodXWM./wBJmbO3zD9odL.iqWJM45HsHY0L5R4zsye82rqxvZrPA.', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(20, '', '', '', '1524133016', '$2y$10$LAWZdXtD4Yz6U2TYoZewkeWMrdIC.WUuQv6mcCtwVyGqAVSSxb9Zu', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(21, '', '', '', '1524133020', '$2y$10$18BN1WbI45C8UEGfVlERP.GSB0zxHnFjbnnpb4im7FuwaHZRGm5Oq', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(22, '', '', '', '1524133017', '$2y$10$taz2.GHzfo/WKJtW/X54GefFbY1jmW3tMarCMa0TU1v5.hWSyv1J2', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(23, '', '', '', '1524133021', '$2y$10$uqvTk//d7vHuhBzDZBPd0etrS.LIfxBnDkx.OskWK9/kBBgyw1IEq', 'Users', '0000-00-00 00:00:00', 'noavatar.png', 'Alumni'),
(24, '', '', '', '1624133014', '$2y$10$.IZopJ4VkAdAl7KtR6wxAOVo7RqTxN9.JGzTTtMJ6YpasM7BtReWO', 'Users', '2018-03-29 09:33:53', 'noavatar.png', 'Student'),
(25, '', '', '', '1724133013', '$2y$10$uUClRS65K7Vd0RLGLTyeI.mvbFEGNAiUFTBG/0lhVI9JCnOjadVre', 'Users', '2018-07-31 10:24:50', 'noavatar.png', 'Student'),
(26, '', '', '', '1624133020', '$2y$10$3h/BgT3fbhhmOY0KT4sTbeTSLhSKfJq6nocLT6m6I8OoqOQD5CxLe', 'Users', '2018-07-31 10:45:40', 'noavatar.png', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_events`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_users_2` (`id_users`);

--
-- Indeks untuk tabel `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id_job`);

--
-- Indeks untuk tabel `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id_events` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `information`
--
ALTER TABLE `information`
  MODIFY `id_info` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `job`
--
ALTER TABLE `job`
  MODIFY `id_job` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`id_events`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
