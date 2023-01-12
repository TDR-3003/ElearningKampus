-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 10:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `Id` int(11) NOT NULL,
  `NIP` varchar(15) DEFAULT NULL,
  `Nama` varchar(30) NOT NULL,
  `Kode_Dosen` varchar(10) NOT NULL,
  `Course_View` int(5) NOT NULL,
  `Resouce` varchar(50) NOT NULL,
  `Activity` varchar(100) NOT NULL,
  `Sum_Resource_Activity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`Id`, `NIP`, `Nama`, `Kode_Dosen`, `Course_View`, `Resouce`, `Activity`, `Sum_Resource_Activity`) VALUES
(1, '06830027-1', 'ANGELINA PRIMA KURNIATI', 'APK', 35, 'Label(0)Page(3)File(2)URL(0)', 'Assigement(0)Quiz(7)Forum(31)H5P(0)Active Quiz(0)Wiki(0)Chat(0)Feedback(0)VPL(0)', 44),
(2, '19580825-6', 'AHMAN SUTARDI', 'AST', 13, 'Label(0)Page(0)File(0)URL(0)', 'Assigement(0)Quiz(6)Forum(12)H5P(0)Active Quiz(0)Wiki(0)Chat(0)Feedback(0)VPL(0)', 18),
(3, '218985994-6', 'AMARILIS PUTRI YANUARIFIANI', 'APY', 80, 'Label(0)Page(0)File(9)URL(0)', 'Assigement(21)Quiz(24)Forum(20)H5P(0)Active Quiz(0)Wiki(0)Chat(0)Feedback(0)VPL(0)', 74),
(4, '21950003-3', 'ADITYA FIRMAN IHSAN', 'FMH', 69, 'Label(0)Page(0)File(17)URL(0)', 'Assigement(91)Quiz(158)Forum(27)H5P(286)Active Quiz(0)Wiki(0)Chat(0)Feedback(0)VPL(0)', 579);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `title`, `start_event`, `end_event`) VALUES
(1, 'Meeting With Dedi', '2022-10-08 12:00:00', '2022-10-08 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(126) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(24) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `description`, `color`, `start_date`, `end_date`, `create_at`, `create_by`, `modified_at`, `modified_by`) VALUES
(74, 'Jangan Nunggu Deadline ya :)', '', '#FF0000', '2022-12-22', '2022-12-23', '2022-12-22 08:01:46', NULL, '2022-12-22 08:04:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_soal_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_detail` text NOT NULL,
  `jawaban_benar` tinyint(1) NOT NULL DEFAULT 0,
  `jawaban_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`jawaban_id`, `jawaban_soal_id`, `jawaban_detail`, `jawaban_benar`, `jawaban_aktif`) VALUES
(186, 57, '<p>13 September</p>\r\n', 1, 1),
(187, 57, '<p>1 Agustus</p>\r\n', 0, 1),
(188, 57, '<p>1 Januari</p>', 0, 1),
(189, 57, '<p>1 Desember</p>', 0, 1),
(190, 57, '<p>14 Februari</p>', 0, 1),
(191, 56, '<p>Programmer</p>\r\n', 1, 1),
(192, 56, '<p>Designer</p>\r\n', 0, 1),
(193, 56, '<p>Creator</p>\r\n', 0, 1),
(194, 56, '<p>Actor</p>\r\n', 0, 1),
(195, 56, '<p>Monitor</p>\r\n', 0, 1),
(196, 55, '<p>Soekarno</p>', 1, 1),
(197, 55, '<p>Soeharto</p>\r\n', 0, 1),
(198, 55, '<p>Susilo Bambang Yudhoyono</p>\r\n', 0, 1),
(199, 55, '<p>BJ. Habibie</p>\r\n', 0, 1),
(200, 55, '<p>Joko Widodo</p>\r\n', 0, 1),
(201, 54, '<p>Lovelace</p>\r\n', 1, 1),
(202, 54, '<p>Jaya</p>\r\n', 0, 1),
(203, 54, '<p>Joko</p>\r\n', 0, 1),
(204, 54, '<p>Dedi</p>\r\n', 0, 1),
(205, 54, '<p>Queen</p>\r\n', 0, 1),
(206, 53, '<p><strong>Standart Query Leanguage</strong></p>\r\n', 1, 1),
(207, 53, '<p>Query Leanguange Standart</p>\r\n', 0, 1),
(208, 53, '<p>Leanguage Standart Query</p>\r\n', 0, 1),
(209, 53, '<p>Standart Leanguage Query</p>\r\n', 0, 1),
(210, 53, '<p>Standart Query Leanguage Standart</p>\r\n', 0, 1),
(211, 64, 'Akhirnya aku menemukanmu', 1, 1),
(212, 64, 'Akhir dirimu', 0, 1),
(213, 64, 'Susahnya jadi dia', 0, 1),
(214, 64, 'Jones', 0, 1),
(215, 64, 'Josan - Jomblo Pas Pasan', 0, 1),
(621, 161, '<p>Aksi bela Jomblo</p>\r\n', 1, 1),
(622, 161, '<p>Aksi bela cewek</p>\r\n', 0, 1),
(623, 161, '<p>14 Februari</p>\r\n', 0, 1),
(624, 161, '<p>Hari Valentine</p>\r\n', 0, 1),
(625, 161, '<p>Turun ke jalan</p>\r\n', 0, 1),
(626, 216, 'Cisco Packet Tracer', 1, 1),
(627, 216, 'Microsoft Word', 0, 1),
(628, 216, 'Microsoft Excel', 0, 1),
(629, 216, 'Google Chome', 0, 1),
(630, 216, 'Mozilla Firefox', 0, 1),
(631, 217, 'benar', 1, 1),
(632, 217, 'Salah', 0, 1),
(633, 217, 'salah', 0, 1),
(634, 217, 'salah', 0, 1),
(635, 217, 'salah', 0, 1),
(636, 218, 'ping', 0, 1),
(637, 218, 'ipconfig', 0, 1),
(638, 218, 'cek ip', 0, 1),
(639, 218, 'show ip', 1, 1),
(640, 218, 'list', 0, 1),
(641, 219, 'Host tujuan berjalan normal', 0, 1),
(642, 219, 'Host tujuan tidak bisa dihubungi', 1, 1),
(643, 219, 'Host tujuan mengalami gangguan monitor', 0, 1),
(644, 219, 'Host tujuan terinfeksi virus', 0, 1),
(645, 219, 'Host tujuan hidup', 0, 1),
(646, 220, '32bit', 0, 1),
(647, 220, '64bit', 0, 1),
(648, 220, '96bit', 0, 1),
(649, 220, '128bit', 1, 1),
(650, 220, '256bit', 0, 1),
(651, 221, '32bit', 0, 1),
(652, 221, '64bit', 0, 1),
(653, 221, '96bit', 0, 1),
(654, 221, '128bit', 1, 1),
(655, 221, '256bit', 0, 1),
(656, 222, 'Datalink', 0, 1),
(657, 222, 'Network', 1, 1),
(658, 222, 'Transport', 0, 1),
(659, 222, 'Application', 0, 1),
(660, 222, 'Presentation', 0, 1),
(661, 223, 'IP Address', 0, 1),
(662, 223, 'Source Address', 0, 1),
(663, 223, 'Mac Address', 1, 1),
(664, 223, 'Device IP', 0, 1),
(665, 223, 'Hard IP', 0, 1),
(666, 224, 'ping', 1, 1),
(667, 224, 'ipconfig', 0, 1),
(668, 224, 'ipconfig /all', 0, 1),
(669, 224, 'route', 0, 1),
(670, 224, 'netsh', 0, 1),
(671, 225, '255.255.0.0', 0, 1),
(672, 225, '255.255.255.0', 0, 1),
(673, 225, '255.0.0.0', 1, 1),
(674, 225, '255.0.255.0', 0, 1),
(675, 225, '255.255.0.255', 0, 1),
(676, 226, '255.255.0.0', 0, 1),
(677, 226, '255.255.255.0', 1, 1),
(678, 226, '255.0.0.0', 0, 1),
(679, 226, '255.0.255.0', 0, 1),
(680, 226, '255.255.0.255', 0, 1),
(681, 227, 'A', 1, 1),
(682, 227, 'B', 0, 1),
(683, 227, 'C', 0, 1),
(684, 227, 'D', 0, 1),
(685, 227, 'E', 0, 1),
(686, 228, 'samba', 1, 1),
(687, 228, 'proftpd', 0, 1),
(688, 228, 'smb', 0, 1),
(689, 228, 'bind9', 0, 1),
(690, 228, 'iptables', 0, 1),
(691, 229, 'tcp', 1, 1),
(692, 229, 'udp', 0, 1),
(693, 229, 'icmp', 0, 1),
(694, 229, 'ipx', 0, 1),
(695, 229, 'ip transport', 0, 1),
(696, 230, 'tcp', 0, 1),
(697, 230, 'udp', 0, 1),
(698, 230, 'icmp', 1, 1),
(699, 230, 'ipx', 0, 1),
(700, 230, 'ip transport', 0, 1),
(701, 231, 'Komputer tujuan mati', 0, 1),
(702, 231, 'Komputer asal mengalami gangguan', 0, 1),
(703, 231, 'Kabel lan pada computer tujuanterputus ', 0, 1),
(704, 231, 'Terdapat virus yang mengganggu', 0, 1),
(705, 231, 'Firewall Komputer tujuan memblok icmp', 1, 1),
(706, 232, 'Komputer mengalami gangguan virus', 0, 1),
(707, 232, 'Terjadi kerusakan system operasi client', 0, 1),
(708, 232, 'Firewall computer memblok akses', 1, 1),
(709, 232, 'Terjadi kegagalan system operasi', 0, 1),
(710, 232, 'Kabel Lan terputus', 0, 1),
(711, 233, '/etc/samba/smb.conf', 1, 1),
(712, 233, '/etc/smb/smb.conf', 0, 1),
(713, 233, '/etc/smb.conf', 0, 1),
(714, 233, 'etc/samba/smb.conf', 0, 1),
(715, 233, 'etc/samba/smb', 0, 1),
(716, 234, 'Sharing data tanpa menggunakan password', 1, 1),
(717, 234, 'Sharing data dimatikan', 0, 1),
(718, 234, 'Sharing data diaktifkan untuk beberapa orang', 0, 1),
(719, 234, 'Sharing data menggunakan username dan password', 0, 1),
(720, 234, 'Sharing data lebih mudah', 0, 1),
(721, 235, 'Firewall akan memblok protocol ICMP', 1, 1),
(722, 235, 'Firewall akan dimatikan', 0, 1),
(723, 235, 'Firewall mudah untuk digunakan', 0, 1),
(724, 235, 'Membuka peluang kegagalan system operasi', 0, 1),
(725, 235, 'Mematikan fasilitas printer', 0, 1),
(726, 236, '/etc/password', 0, 1),
(727, 236, '/etc/shadow', 1, 1),
(728, 236, '/etc/group', 0, 1),
(729, 236, '/etc/user', 0, 1),
(730, 236, '/etc/encrypt', 0, 1),
(731, 237, 'nmap', 1, 1),
(732, 237, 'dns', 0, 1),
(733, 237, 'stealt', 0, 1),
(734, 237, 'show ip', 0, 1),
(735, 237, 'iptables', 0, 1),
(736, 238, 'Sniffing', 1, 1),
(737, 238, 'Spoofing', 0, 1),
(738, 238, 'Scanning', 0, 1),
(739, 238, 'Hijacking', 0, 1),
(740, 238, 'Shadowing', 0, 1),
(741, 239, 'Wireshark', 1, 1),
(742, 239, 'Hijacking', 0, 1),
(743, 239, 'Nmap', 0, 1),
(744, 239, 'ISC Sniff', 0, 1),
(745, 239, 'Netcut', 0, 1),
(746, 240, 'IP Spoofing', 0, 1),
(747, 240, 'ARP Spoofing', 1, 1),
(748, 240, 'Address Spoofing', 0, 1),
(749, 240, 'Hardware Spoofing', 0, 1),
(750, 240, 'File Spoofing', 0, 1),
(751, 241, 'Microsoft Spoofing 2018', 0, 1),
(752, 241, 'Netcut', 1, 1),
(753, 241, 'Tuxcut', 0, 1),
(754, 241, 'Linecut', 0, 1),
(755, 241, 'Wireshark', 0, 1),
(756, 242, 'Mengaktifkan mac filtering', 0, 1),
(757, 242, 'Mengaktifkan enkripsi pada akses point', 0, 1),
(758, 242, 'Mengaktifkan Client Isolation', 1, 1),
(759, 242, 'Mengaktifkan DHCP', 0, 1),
(760, 242, 'Mengubak password Akses Point', 0, 1),
(761, 243, 'menentukan apakah sharing dapat ditulis atau tidak', 1, 1),
(762, 243, 'menentukan siapa yang berhak mengakses', 0, 1),
(763, 243, 'menentukan lokasi folder yang dishare', 0, 1),
(764, 243, 'menentukan jam aktif sharing', 0, 1),
(765, 243, 'membuka folder sharing', 0, 1),
(766, 244, 'menentukan apakah sharing dapat ditulis atau tidak', 0, 1),
(767, 244, 'menentukan siapa yang berhak mengakses', 1, 1),
(768, 244, 'menentukan lokasi folder yang dishare', 0, 1),
(769, 244, 'menentukan jam aktif sharing', 0, 1),
(770, 244, 'membuka folder sharing', 0, 1),
(771, 245, 'menentukan apakah sharing dapat ditulis atau tidak', 0, 1),
(772, 245, 'menentukan siapa yang berhak mengakses', 0, 1),
(773, 245, 'menentukan lokasi folder yang dishare', 1, 1),
(774, 245, 'menentukan jam aktif sharing', 0, 1),
(775, 245, 'membuka folder sharing', 0, 1),
(776, 246, '139 dan 445', 1, 1),
(777, 246, '139 dan 80', 0, 1),
(778, 246, '139 dan 21', 0, 1),
(779, 246, '139 dan 229', 0, 1),
(780, 246, '139 dan 443', 0, 1),
(781, 247, '\\\\192.168.103.2\\E', 1, 1),
(782, 247, '\\\\Server\\E', 0, 1),
(783, 247, '//192.168.103.2/E', 0, 1),
(784, 247, '//SMKN JMTN/E', 0, 1),
(785, 247, '\\\\192.168.103.2/E', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_konfigurasi`
--

CREATE TABLE `cbt_konfigurasi` (
  `konfigurasi_id` int(11) NOT NULL,
  `konfigurasi_kode` varchar(50) NOT NULL,
  `konfigurasi_isi` varchar(500) NOT NULL,
  `konfigurasi_keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cbt_konfigurasi`
--

INSERT INTO `cbt_konfigurasi` (`konfigurasi_id`, `konfigurasi_kode`, `konfigurasi_isi`, `konfigurasi_keterangan`) VALUES
(1, 'link_login_operator', 'ya', 'Menampilkan Link Login Operator'),
(2, 'cbt_nama', 'LMS', 'Nama Penyelenggara E-Learning\r\n'),
(3, 'cbt_keterangan', 'E-Learning', 'Keterangan Penyelenggara E-Learning\r\n'),
(4, 'cbt_mobile_lock_xambro', 'tidak', 'Melakukan Lock pada browser mobile agar menggunakan Xambro Saja'),
(5, 'cbt_informasi', '<p>Silahkan pilih Tes yang diikuti dari daftar tes yang tersedia dibawah ini. Apabila tes tidak muncul, silahkan menghubungi Operator yang bertugas.</p>\r\n', 'Informasi yang diberika di Dashboard peserta tes\'');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_modul`
--

CREATE TABLE `cbt_modul` (
  `modul_id` bigint(20) UNSIGNED NOT NULL,
  `modul_nama` varchar(255) NOT NULL,
  `modul_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_modul`
--

INSERT INTO `cbt_modul` (`modul_id`, `modul_nama`, `modul_aktif`) VALUES
(9, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_sessions`
--

CREATE TABLE `cbt_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cbt_sessions`
--

INSERT INTO `cbt_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1qpmqtusg9hqnfv7phdkh6svnpf4pld2', '::1', 1673427911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432373931313b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('4ci5b44d3s4g6j90b3qvfp39v6pciknj', '::1', 1673412605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431323630353b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('5blrrb0ml4qumcpaekr0n8rpld3gngmt', '::1', 1673425448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432353434383b6362745f7465735f757365725f69647c733a343a226a6f6b6f223b6362745f7465735f6e616d617c733a31323a224a6f6b6f20537573616e746f223b6362745f7465735f67726f75707c733a353a2246494b2d41223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('6fvle9f9vjhruae4g86ouf1k8cthjml6', '::1', 1673411622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431313632323b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('6o9i54or7dl3mrsjhphjt085lfkedp1k', '::1', 1673419347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431393334373b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('6psoi0harss7duihdtld8r72rrsaveka', '::1', 1673410131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431303133313b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('8mjfc07kr56ljvl61uvv9h38h0sst6cn', '::1', 1673426637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432363633373b6362745f7465735f757365725f69647c733a343a226a6f6b6f223b6362745f7465735f6e616d617c733a31323a224a6f6b6f20537573616e746f223b6362745f7465735f67726f75707c733a353a2246494b2d41223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('90i2s810pa6174q7f48l5e5d194049gi', '::1', 1673413292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431333239323b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('966gaiet84mb9bri38gl94upra952f7h', '::1', 1673420703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432303730333b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('a7m4dmmt5luiqipda3t7iatilghqj4i9', '::1', 1673410470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431303437303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('a9nqoakca1t9qqfcc0adgr9suvjb7cdc', '::1', 1673409804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333430393830343b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('b2r5ts8o6tugff3tr2n24baepvsnqckd', '::1', 1673426939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432363933393b6362745f7465735f757365725f69647c733a343a226a6f6b6f223b6362745f7465735f6e616d617c733a31323a224a6f6b6f20537573616e746f223b6362745f7465735f67726f75707c733a353a2246494b2d41223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('c7l0r0jp1b1ne0qo4goqlmpmh8p6ikrp', '::1', 1673425800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432353830303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('cvr1r2tqk276533au3dp1cn29hdi33du', '::1', 1673412293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431323239333b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('dav223placmij36nob6holaatddjp0tt', '::1', 1673426136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432363133363b6362745f7465735f757365725f69647c733a343a226a6f6b6f223b6362745f7465735f6e616d617c733a31323a224a6f6b6f20537573616e746f223b6362745f7465735f67726f75707c733a353a2246494b2d41223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('efmb330i3fu8c8d64051v00ajhi9gqqh', '::1', 1673420103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432303130333b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('f757nj1r1rji3jtojabfdb2ae8u6et3p', '::1', 1673428152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432373931313b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('g2lae545tv89c73vvkg7uh7ig93qcanq', '::1', 1673427251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432373235313b6362745f7465735f757365725f69647c733a343a226a6f6b6f223b6362745f7465735f6e616d617c733a31323a224a6f6b6f20537573616e746f223b6362745f7465735f67726f75707c733a353a2246494b2d41223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('nkpv0n7colvq40otdm0mr3kt5bvsj3an', '::1', 1673427575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432373537353b6362745f7465735f757365725f69647c733a343a226a6f6b6f223b6362745f7465735f6e616d617c733a31323a224a6f6b6f20537573616e746f223b6362745f7465735f67726f75707c733a353a2246494b2d41223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('oao9o17g31fafp3r1sl34nij45pj5udu', '::1', 1673410893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431303839333b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('tkd7uau5umbflgbhpuntg1upa96eu9fb', '::1', 1673425143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333432353134333b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('u3fpts5o34ll541bqhv32er1ald8jtag', '::1', 1673411194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431313139343b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('u43jgolm6ejec9tknahi66bqi7linn4c', '::1', 1673412964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431323936343b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('u4j05o58a3cc2m2hr239jfamtampnegp', '::1', 1673414244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637333431343234343b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31313a224465646920526f73616469223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `soal_topik_id` bigint(20) UNSIGNED NOT NULL,
  `soal_detail` text NOT NULL,
  `soal_tipe` smallint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=Pilihan ganda, 2=essay, 3=jawaban singkat',
  `soal_kunci` text DEFAULT NULL COMMENT 'Kunci untuk soal jawaban singkat',
  `soal_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `soal_aktif` tinyint(1) NOT NULL DEFAULT 0,
  `soal_audio` varchar(200) DEFAULT NULL,
  `soal_audio_play` int(11) NOT NULL DEFAULT 0,
  `soal_timer` smallint(10) DEFAULT NULL,
  `soal_inline_answers` tinyint(1) NOT NULL DEFAULT 0,
  `soal_auto_next` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`soal_id`, `soal_topik_id`, `soal_detail`, `soal_tipe`, `soal_kunci`, `soal_difficulty`, `soal_aktif`, `soal_audio`, `soal_audio_play`, `soal_timer`, `soal_inline_answers`, `soal_auto_next`) VALUES
(53, 7, '<p>Apakah kepanjangan dari SQL?</p>\r\n', 1, '', 1, 1, NULL, 1, NULL, 0, 0),
(54, 7, '<p>Nama Programmer Pertama adalah...</p>\r\n', 1, '', 1, 1, NULL, 1, NULL, 0, 0),
(55, 7, '<p>Siapakah nama tokoh berikut ?</p><p><img src=\"[base_url]uploads/topik_7/soekarno.jpg\" style=\"max-width: 600px;\"><br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(56, 7, '<p>Apakah nama profesi dari pekerjaan yang berkaitan dengan coding...</p>\r\n', 1, '', 1, 1, NULL, 1, NULL, 0, 0),
(57, 7, '<p>Tanggal Berapakah Hari Programmer sedunia?</p>\r\n', 1, '', 1, 1, NULL, 1, NULL, 0, 0),
(61, 7, 'Jelaskan apa yang dimaksud dengan Jomblo ?', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(62, 7, '<p>Siapakah Pendiri Facebook?</p>\r\n', 2, '', 1, 1, NULL, 1, NULL, 0, 0),
(63, 7, '<p>Jelaskan kenapa pada saat kemarin Prancis kalah oleh Argentina?</p>\r\n', 2, '', 1, 1, NULL, 1, NULL, 0, 0),
(64, 7, '<p>Apakah judul lagu berikut ini?</p>', 1, NULL, 1, 1, 'naff_-_akhirnya_ku_menemukanmu.mp3', 1, NULL, 0, 0),
(161, 7, '<p>Jelaskan arti poster dibawah ini ?</p>\r\n\r\n<p><img src=\"[base_url]uploads/topik_7/5a49b252e7aea.jpeg\" style=\"height:283px; width:300px\" /></p>\r\n', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(214, 7, '<p>Berapakah 5x10 ?</p>\r\n', 3, '50', 1, 1, NULL, 0, NULL, 0, 0),
(215, 8, '<p>Tes Soal</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(216, 7, 'Salah satu aplikasi simulator jaringan adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(217, 7, 'Simbol switch pada Cisco Packet Tracer adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(218, 7, 'Perintah pada cmd yang digunakan untuk mengecek konfigurasi IP Address adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(219, 7, 'Perhatikan Gambar berikut !<br /><br /><br />Apa yang terjadi pada host tujuan proses ping diatas ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(220, 7, 'Panjang bit IPv4 adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(221, 7, 'Panjang bit IPv6 adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(222, 7, 'Layer pada lapisan OSI yang menangani IP Address adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(223, 7, 'Sebuah alamat jaringan yang diimplementasikan pada lapisan data-link adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(224, 7, 'Perintah yang digunakan untuk mengecek apakah Host tujuan dapat dihubungi atau tidak adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(225, 7, 'Subnet mask default untuk IP Address kelas A adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(226, 7, 'Subnet mask default untuk IP Address kelas C adalah ....', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(227, 7, 'Kelas pada IPv4 yang memiliki jumlah Host ID terbanyak adalah ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(228, 9, 'Aplikasi yang digunakan untuk melakukan sharing data dengan system operasi linux adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(229, 9, 'Berjalan menggunakan protocol transport apakah aplikasi samba di system operasi linux ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(230, 9, 'Protokol transport yang digunakan aplikasi ping pada system operasi windows adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(231, 9, 'Jika dua buah computer terhubung dan dapat berkomunikasi dengan baik, akan tetapi waktu dilakukan ping muncul pesan Request Time Out. Apa kemungkinan yang terjadi pada jaringan tersebut ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(232, 9, 'Sharing data pada system operasi windows sudah dikonfigurasi dengan baik dan benar, computer juga sudah terkoneksi dengan baik. Akan tetapi sharing data tidak dapat diakses dari computer lain dalam satu jaringan.<br />Apa kemungkinan yang terjadi pada computer diatas ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(233, 9, 'Lokasi konfigurasi samba pada system operasi debian 9 adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(234, 9, 'Perhatikan gambar dibawah ini !<br /><br />Apa yang terjadi setelah konfigurasi diatas diterapkan ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(235, 9, 'Perhatikan gambar dibawah ini !<br /><br />Apa yang terjadi jika centang file and printer sharing dihilangkan ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(236, 9, 'Lokasi file password yang telah di enkripsi pada system operasi linux adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(237, 9, 'Aplikasi yang dapat digunakan untuk melakukan diagnose terhadap system service dan port adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(238, 9, 'Kegiatan menyadap dan/atau menginspeksi paket data menggunakan sniffer software atau hardware di jaringan local atau internet disebut dengan ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(239, 9, 'Aplikasi yang dapat digunakan untuk kegiatan sniffing adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(240, 9, 'Teknik spoofing yang bekerja dalam satu jaringan dan berusaha menggantikan MAC address yang sebenarnya dengan MAC address penyerang sehingga ketika si target berkomunikasi dengan orang lain, maka harus melewati penyerang adalah Teknik ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(241, 9, 'Aplikasi pada system operasi windows yang dapat digunakan untuk melakukan spoofing adalah….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(242, 9, 'Cara yang digunakan untuk mengamankan Akses Point dari kegiatan spoofing adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(243, 9, 'Opsi writeable pada konfigurasi samba berfungsi untuk ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(244, 9, 'Opsi valid users pada konfigurasi samba berfungsi untuk ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(245, 9, 'Opsi path pada konfigurasi samba berfungsi untuk ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(246, 9, 'Port yang digunakan oleh aplikasi samba pada system operasi linux adalah ….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(247, 9, 'Untuk mengakses CDROM yang ada didrive E dengan Ip address 192.168.103.2 dari komputer orang lain yang sudah disharing menggunakan menu RUN adalah….', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `tes_id` bigint(20) UNSIGNED NOT NULL,
  `tes_nama` varchar(255) NOT NULL,
  `tes_detail` text NOT NULL,
  `tes_begin_time` datetime DEFAULT NULL,
  `tes_end_time` datetime DEFAULT NULL,
  `tes_duration_time` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `tes_ip_range` varchar(255) NOT NULL DEFAULT '*.*.*.*',
  `tes_results_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `tes_detail_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `tes_score_right` decimal(10,2) DEFAULT 1.00,
  `tes_score_wrong` decimal(10,2) DEFAULT 0.00,
  `tes_score_unanswered` decimal(10,2) DEFAULT 0.00,
  `tes_max_score` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tes_token` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`tes_id`, `tes_nama`, `tes_detail`, `tes_begin_time`, `tes_end_time`, `tes_duration_time`, `tes_ip_range`, `tes_results_to_users`, `tes_detail_to_users`, `tes_score_right`, `tes_score_wrong`, `tes_score_unanswered`, `tes_max_score`, `tes_token`) VALUES
(5, 'Tes Uji Coba', 'Tes Uji Coba', '2023-01-06 13:43:00', '2023-01-07 13:43:00', 30, '*.*.*.*', 1, 0, '1.00', '0.00', '0.00', '10.00', 0),
(6, 'Uji Tes Senin', 'Ujian', '2023-01-09 10:25:00', '2023-01-10 10:25:00', 30, '*.*.*.*', 1, 0, '1.00', '0.00', '0.00', '11.00', 0),
(7, 'System Informasi', 'UAS', '2023-01-09 10:35:00', '2023-01-10 10:35:00', 30, '*.*.*.*', 0, 0, '1.00', '0.00', '0.00', '20.00', 1),
(8, 'Tes Beta Senin', 'Soal Tes', '2023-01-11 15:50:00', '2023-01-12 15:50:00', 30, '*.*.*.*', 1, 0, '10.00', '0.00', '0.00', '100.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tesgrup`
--

CREATE TABLE `cbt_tesgrup` (
  `tstgrp_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tstgrp_grup_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tesgrup`
--

INSERT INTO `cbt_tesgrup` (`tstgrp_tes_id`, `tstgrp_grup_id`) VALUES
(5, 5),
(6, 5),
(7, 5),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal`
--

CREATE TABLE `cbt_tes_soal` (
  `tessoal_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_tesuser_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_user_ip` varchar(39) DEFAULT NULL,
  `tessoal_soal_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_jawaban_text` text DEFAULT NULL,
  `tessoal_nilai` decimal(10,2) DEFAULT NULL,
  `tessoal_creation_time` datetime DEFAULT NULL,
  `tessoal_display_time` datetime DEFAULT NULL,
  `tessoal_change_time` datetime DEFAULT NULL,
  `tessoal_reaction_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tessoal_ragu` int(1) NOT NULL DEFAULT 0 COMMENT '1=ragu, 0=tidak ragu',
  `tessoal_order` smallint(6) NOT NULL DEFAULT 1,
  `tessoal_num_answers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tessoal_comment` text DEFAULT NULL,
  `tessoal_audio_play` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal`
--

INSERT INTO `cbt_tes_soal` (`tessoal_id`, `tessoal_tesuser_id`, `tessoal_user_ip`, `tessoal_soal_id`, `tessoal_jawaban_text`, `tessoal_nilai`, `tessoal_creation_time`, `tessoal_display_time`, `tessoal_change_time`, `tessoal_reaction_time`, `tessoal_ragu`, `tessoal_order`, `tessoal_num_answers`, `tessoal_comment`, `tessoal_audio_play`) VALUES
(41, 5, NULL, 54, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:44:24', '2023-01-06 13:44:29', 0, 0, 1, 0, NULL, 0),
(42, 5, NULL, 56, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:44:31', '2023-01-06 13:44:39', 0, 0, 2, 0, NULL, 0),
(43, 5, NULL, 62, 'Mark Zuckeberg', '1.00', '2023-01-06 13:44:24', '2023-01-06 13:44:40', '2023-01-06 13:44:48', 0, 0, 3, 0, 'Sudah di koreksi admin', 0),
(44, 5, NULL, 53, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:44:50', '2023-01-06 13:44:51', 0, 0, 4, 0, NULL, 0),
(45, 5, NULL, 57, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:44:52', '2023-01-06 13:44:57', 0, 0, 5, 0, NULL, 0),
(46, 5, NULL, 64, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:44:57', '2023-01-06 13:45:39', 0, 0, 6, 0, NULL, 1),
(47, 5, NULL, 63, 'karena mbape kalah', '0.50', '2023-01-06 13:44:24', '2023-01-06 13:45:42', '2023-01-06 13:45:50', 0, 0, 7, 0, 'Sudah di koreksi admin', 0),
(48, 5, NULL, 161, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:45:51', '2023-01-06 13:45:58', 0, 0, 8, 0, NULL, 0),
(49, 5, NULL, 55, NULL, '1.00', '2023-01-06 13:44:24', '2023-01-06 13:46:04', '2023-01-06 13:46:06', 0, 0, 9, 0, NULL, 0),
(50, 5, NULL, 214, '50', '1.00', '2023-01-06 13:44:24', '2023-01-06 13:46:07', '2023-01-06 13:46:21', 0, 0, 10, 0, NULL, 0),
(51, 6, NULL, 214, '50', '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:24', '2023-01-09 10:27:28', 0, 0, 1, 0, NULL, 0),
(52, 6, NULL, 57, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:28', '2023-01-09 10:27:36', 0, 0, 2, 0, NULL, 0),
(53, 6, NULL, 53, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:38', '2023-01-09 10:27:41', 0, 0, 3, 0, NULL, 0),
(54, 6, NULL, 54, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:41', '2023-01-09 10:27:44', 0, 0, 4, 0, NULL, 0),
(55, 6, NULL, 56, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:45', '2023-01-09 10:27:46', 0, 0, 5, 0, NULL, 0),
(56, 6, NULL, 61, 'Sendiri', '0.00', '2023-01-09 10:27:14', '2023-01-09 10:27:47', '2023-01-09 10:27:54', 0, 0, 6, 0, NULL, 0),
(57, 6, NULL, 55, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:55', '2023-01-09 10:27:58', 0, 0, 7, 0, NULL, 0),
(58, 6, NULL, 161, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:27:59', '2023-01-09 10:28:06', 0, 0, 8, 0, NULL, 0),
(59, 6, NULL, 62, 'Mark Zuckeberg', '0.00', '2023-01-09 10:27:14', '2023-01-09 10:28:07', '2023-01-09 10:28:15', 0, 0, 9, 0, NULL, 0),
(60, 6, NULL, 63, 'Karena messi lebih jago', '0.00', '2023-01-09 10:27:14', '2023-01-09 10:28:15', '2023-01-09 10:28:27', 0, 0, 10, 0, NULL, 0),
(61, 6, NULL, 64, NULL, '1.00', '2023-01-09 10:27:14', '2023-01-09 10:28:27', '2023-01-09 10:28:35', 0, 0, 11, 0, NULL, 1),
(62, 7, NULL, 238, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:37:27', '2023-01-09 10:37:36', 0, 0, 1, 0, NULL, 0),
(63, 7, NULL, 247, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:37:40', '2023-01-09 10:37:45', 0, 0, 2, 0, NULL, 0),
(64, 7, NULL, 241, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:37:54', '2023-01-09 10:37:54', 0, 0, 3, 0, NULL, 0),
(65, 7, NULL, 244, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:37:55', '2023-01-09 10:38:02', 0, 0, 4, 0, NULL, 0),
(66, 7, NULL, 242, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:03', '2023-01-09 10:38:05', 0, 0, 5, 0, NULL, 0),
(67, 7, NULL, 237, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:06', '2023-01-09 10:38:07', 0, 0, 6, 0, NULL, 0),
(68, 7, NULL, 228, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:08', '2023-01-09 10:38:09', 0, 0, 7, 0, NULL, 0),
(69, 7, NULL, 231, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:38:10', '2023-01-09 10:38:10', 0, 0, 8, 0, NULL, 0),
(70, 7, NULL, 229, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:12', '2023-01-09 10:38:13', 0, 0, 9, 0, NULL, 0),
(71, 7, NULL, 236, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:13', '2023-01-09 10:38:14', 0, 0, 10, 0, NULL, 0),
(72, 7, NULL, 235, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:15', '2023-01-09 10:38:15', 0, 0, 11, 0, NULL, 0),
(73, 7, NULL, 232, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:16', '2023-01-09 10:38:17', 0, 0, 12, 0, NULL, 0),
(74, 7, NULL, 233, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:18', '2023-01-09 10:38:19', 0, 0, 13, 0, NULL, 0),
(75, 7, NULL, 243, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:19', '2023-01-09 10:38:20', 0, 0, 14, 0, NULL, 0),
(76, 7, NULL, 239, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:38:21', '2023-01-09 10:38:25', 0, 0, 15, 0, NULL, 0),
(77, 7, NULL, 230, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:26', '2023-01-09 10:38:28', 0, 0, 16, 0, NULL, 0),
(78, 7, NULL, 246, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:38:29', '2023-01-09 10:38:30', 0, 0, 17, 0, NULL, 0),
(79, 7, NULL, 240, NULL, '0.00', '2023-01-09 10:37:27', '2023-01-09 10:38:31', '2023-01-09 10:38:32', 0, 0, 18, 0, NULL, 0),
(80, 7, NULL, 234, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:38:32', '2023-01-09 10:38:33', 0, 0, 19, 0, NULL, 0),
(81, 7, NULL, 245, NULL, '1.00', '2023-01-09 10:37:27', '2023-01-09 10:38:34', '2023-01-09 10:38:35', 0, 0, 20, 0, NULL, 0),
(82, 8, NULL, 237, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:59:35', '2023-01-11 15:55:19', 0, 0, 1, 0, NULL, 0),
(83, 8, NULL, 233, NULL, '10.00', '2023-01-11 15:55:18', '2023-01-11 15:55:20', '2023-01-11 15:55:21', 0, 0, 2, 0, NULL, 0),
(84, 8, NULL, 241, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:55:22', '2023-01-11 15:55:23', 0, 0, 3, 0, NULL, 0),
(85, 8, NULL, 228, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:55:24', '2023-01-11 15:55:24', 0, 0, 4, 0, NULL, 0),
(86, 8, NULL, 242, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:55:25', '2023-01-11 15:55:26', 0, 0, 5, 0, NULL, 0),
(87, 8, NULL, 246, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:55:27', '2023-01-11 15:55:28', 0, 0, 6, 0, NULL, 0),
(88, 8, NULL, 247, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:55:28', '2023-01-11 15:55:29', 0, 0, 7, 0, NULL, 0),
(89, 8, NULL, 240, NULL, '10.00', '2023-01-11 15:55:18', '2023-01-11 15:55:29', '2023-01-11 15:55:30', 0, 0, 8, 0, NULL, 0),
(90, 8, NULL, 234, NULL, '10.00', '2023-01-11 15:55:18', '2023-01-11 15:55:30', '2023-01-11 15:55:31', 0, 0, 9, 0, NULL, 0),
(91, 8, NULL, 244, NULL, '0.00', '2023-01-11 15:55:18', '2023-01-11 15:55:32', '2023-01-11 15:55:33', 0, 0, 10, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal_jawaban`
--

CREATE TABLE `cbt_tes_soal_jawaban` (
  `soaljawaban_tessoal_id` bigint(20) UNSIGNED NOT NULL,
  `soaljawaban_jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `soaljawaban_selected` smallint(6) NOT NULL DEFAULT -1,
  `soaljawaban_order` smallint(6) NOT NULL DEFAULT 1,
  `soaljawaban_position` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal_jawaban`
--

INSERT INTO `cbt_tes_soal_jawaban` (`soaljawaban_tessoal_id`, `soaljawaban_jawaban_id`, `soaljawaban_selected`, `soaljawaban_order`, `soaljawaban_position`) VALUES
(41, 201, 1, 2, NULL),
(41, 202, 0, 5, NULL),
(41, 203, 0, 3, NULL),
(41, 204, 0, 4, NULL),
(41, 205, 0, 1, NULL),
(42, 191, 1, 4, NULL),
(42, 192, 0, 5, NULL),
(42, 193, 0, 1, NULL),
(42, 194, 0, 3, NULL),
(42, 195, 0, 2, NULL),
(44, 206, 1, 1, NULL),
(44, 207, 0, 5, NULL),
(44, 208, 0, 4, NULL),
(44, 209, 0, 2, NULL),
(44, 210, 0, 3, NULL),
(45, 186, 1, 3, NULL),
(45, 187, 0, 2, NULL),
(45, 188, 0, 1, NULL),
(45, 189, 0, 5, NULL),
(45, 190, 0, 4, NULL),
(46, 211, 1, 2, NULL),
(46, 212, 0, 1, NULL),
(46, 213, 0, 3, NULL),
(46, 214, 0, 4, NULL),
(46, 215, 0, 5, NULL),
(48, 621, 1, 1, NULL),
(48, 622, 0, 2, NULL),
(48, 623, 0, 5, NULL),
(48, 624, 0, 3, NULL),
(48, 625, 0, 4, NULL),
(49, 196, 1, 4, NULL),
(49, 197, 0, 3, NULL),
(49, 198, 0, 2, NULL),
(49, 199, 0, 1, NULL),
(49, 200, 0, 5, NULL),
(52, 186, 1, 3, NULL),
(52, 187, 0, 2, NULL),
(52, 188, 0, 1, NULL),
(53, 206, 1, 2, NULL),
(53, 207, 0, 1, NULL),
(53, 208, 0, 3, NULL),
(54, 201, 1, 1, NULL),
(54, 202, 0, 3, NULL),
(54, 203, 0, 2, NULL),
(55, 191, 1, 2, NULL),
(55, 192, 0, 1, NULL),
(55, 193, 0, 3, NULL),
(57, 196, 1, 2, NULL),
(57, 197, 0, 1, NULL),
(57, 198, 0, 3, NULL),
(58, 621, 1, 3, NULL),
(58, 622, 0, 2, NULL),
(58, 623, 0, 1, NULL),
(61, 211, 1, 2, NULL),
(61, 212, 0, 1, NULL),
(61, 213, 0, 3, NULL),
(62, 736, 1, 3, NULL),
(62, 737, 0, 1, NULL),
(62, 738, 0, 4, NULL),
(62, 739, 0, 2, NULL),
(63, 781, 0, 2, NULL),
(63, 782, 1, 1, NULL),
(63, 783, 0, 3, NULL),
(63, 784, 0, 4, NULL),
(64, 751, 1, 3, NULL),
(64, 752, 0, 2, NULL),
(64, 753, 0, 4, NULL),
(64, 754, 0, 1, NULL),
(65, 766, 0, 4, NULL),
(65, 767, 1, 3, NULL),
(65, 768, 0, 1, NULL),
(65, 769, 0, 2, NULL),
(66, 756, 0, 4, NULL),
(66, 757, 1, 1, NULL),
(66, 758, 0, 2, NULL),
(66, 759, 0, 3, NULL),
(67, 731, 0, 4, NULL),
(67, 732, 0, 3, NULL),
(67, 733, 0, 2, NULL),
(67, 734, 1, 1, NULL),
(68, 686, 0, 2, NULL),
(68, 687, 1, 3, NULL),
(68, 688, 0, 1, NULL),
(68, 689, 0, 4, NULL),
(69, 701, 0, 4, NULL),
(69, 702, 0, 2, NULL),
(69, 703, 0, 1, NULL),
(69, 705, 1, 3, NULL),
(70, 691, 0, 1, NULL),
(70, 692, 0, 2, NULL),
(70, 693, 0, 3, NULL),
(70, 694, 1, 4, NULL),
(71, 726, 0, 1, NULL),
(71, 727, 0, 2, NULL),
(71, 728, 1, 4, NULL),
(71, 729, 0, 3, NULL),
(72, 721, 0, 2, NULL),
(72, 722, 0, 4, NULL),
(72, 723, 0, 3, NULL),
(72, 724, 1, 1, NULL),
(73, 706, 0, 4, NULL),
(73, 707, 0, 2, NULL),
(73, 708, 0, 1, NULL),
(73, 709, 1, 3, NULL),
(74, 711, 0, 2, NULL),
(74, 712, 1, 3, NULL),
(74, 713, 0, 4, NULL),
(74, 714, 0, 1, NULL),
(75, 761, 0, 4, NULL),
(75, 762, 0, 3, NULL),
(75, 763, 1, 2, NULL),
(75, 764, 0, 1, NULL),
(76, 741, 1, 4, NULL),
(76, 742, 0, 1, NULL),
(76, 743, 0, 2, NULL),
(76, 744, 0, 3, NULL),
(77, 696, 1, 2, NULL),
(77, 697, 0, 1, NULL),
(77, 698, 0, 3, NULL),
(77, 699, 0, 4, NULL),
(78, 776, 1, 2, NULL),
(78, 777, 0, 4, NULL),
(78, 778, 0, 3, NULL),
(78, 779, 0, 1, NULL),
(79, 746, 1, 2, NULL),
(79, 747, 0, 4, NULL),
(79, 748, 0, 3, NULL),
(79, 749, 0, 1, NULL),
(80, 716, 1, 2, NULL),
(80, 717, 0, 1, NULL),
(80, 718, 0, 4, NULL),
(80, 719, 0, 3, NULL),
(81, 771, 0, 2, NULL),
(81, 772, 0, 3, NULL),
(81, 773, 1, 4, NULL),
(81, 774, 0, 1, NULL),
(82, 731, 0, 3, NULL),
(82, 732, 1, 1, NULL),
(82, 733, 0, 2, NULL),
(82, 734, 0, 4, NULL),
(83, 711, 1, 4, NULL),
(83, 712, 0, 3, NULL),
(83, 713, 0, 1, NULL),
(83, 714, 0, 2, NULL),
(84, 751, 0, 1, NULL),
(84, 752, 0, 2, NULL),
(84, 753, 0, 4, NULL),
(84, 754, 1, 3, NULL),
(85, 686, 0, 2, NULL),
(85, 687, 1, 3, NULL),
(85, 688, 0, 1, NULL),
(85, 689, 0, 4, NULL),
(86, 756, 1, 3, NULL),
(86, 757, 0, 2, NULL),
(86, 758, 0, 4, NULL),
(86, 759, 0, 1, NULL),
(87, 776, 0, 2, NULL),
(87, 777, 0, 3, NULL),
(87, 778, 0, 1, NULL),
(87, 779, 1, 4, NULL),
(88, 781, 0, 4, NULL),
(88, 782, 0, 2, NULL),
(88, 783, 1, 3, NULL),
(88, 784, 0, 1, NULL),
(89, 746, 0, 2, NULL),
(89, 747, 1, 3, NULL),
(89, 748, 0, 4, NULL),
(89, 749, 0, 1, NULL),
(90, 716, 1, 3, NULL),
(90, 717, 0, 1, NULL),
(90, 718, 0, 4, NULL),
(90, 719, 0, 2, NULL),
(91, 766, 0, 3, NULL),
(91, 767, 0, 1, NULL),
(91, 768, 0, 2, NULL),
(91, 769, 1, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_token`
--

CREATE TABLE `cbt_tes_token` (
  `token_id` int(11) NOT NULL,
  `token_isi` varchar(20) NOT NULL,
  `token_user_id` int(11) NOT NULL,
  `token_ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_aktif` int(11) NOT NULL DEFAULT 1 COMMENT 'Umur Token dalam menit, 1 = 1 hari penuh',
  `token_tes_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cbt_tes_token`
--

INSERT INTO `cbt_tes_token` (`token_id`, `token_isi`, `token_user_id`, `token_ts`, `token_aktif`, `token_tes_id`) VALUES
(16, 'DE46E2', 6, '2023-01-09 03:23:41', 15, 0),
(19, '93E1FE', 1, '2023-01-11 08:20:09', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_topik_set`
--

CREATE TABLE `cbt_tes_topik_set` (
  `tset_id` bigint(20) UNSIGNED NOT NULL,
  `tset_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tset_topik_id` bigint(20) UNSIGNED NOT NULL,
  `tset_tipe` smallint(6) NOT NULL DEFAULT 1,
  `tset_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `tset_jumlah` smallint(6) NOT NULL DEFAULT 1,
  `tset_jawaban` smallint(6) NOT NULL DEFAULT 0,
  `tset_acak_jawaban` int(11) NOT NULL DEFAULT 1,
  `tset_acak_soal` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_topik_set`
--

INSERT INTO `cbt_tes_topik_set` (`tset_id`, `tset_tes_id`, `tset_topik_id`, `tset_tipe`, `tset_difficulty`, `tset_jumlah`, `tset_jawaban`, `tset_acak_jawaban`, `tset_acak_soal`) VALUES
(5, 5, 7, 0, 1, 10, 5, 1, 1),
(6, 6, 7, 0, 1, 11, 3, 1, 1),
(7, 7, 9, 0, 1, 20, 4, 1, 1),
(8, 8, 9, 0, 1, 10, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_user`
--

CREATE TABLE `cbt_tes_user` (
  `tesuser_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_user_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_status` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tesuser_creation_time` datetime NOT NULL,
  `tesuser_comment` text DEFAULT NULL,
  `tesuser_token` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_user`
--

INSERT INTO `cbt_tes_user` (`tesuser_id`, `tesuser_tes_id`, `tesuser_user_id`, `tesuser_status`, `tesuser_creation_time`, `tesuser_comment`, `tesuser_token`) VALUES
(5, 5, 2, 4, '2023-01-06 13:44:24', NULL, NULL),
(6, 6, 2, 4, '2023-01-09 10:27:14', NULL, NULL),
(7, 7, 2, 4, '2023-01-09 10:37:27', NULL, 'A71657'),
(8, 8, 2, 4, '2023-01-11 15:55:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_topik`
--

CREATE TABLE `cbt_topik` (
  `topik_id` bigint(20) UNSIGNED NOT NULL,
  `topik_modul_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `topik_nama` varchar(255) NOT NULL,
  `topik_detail` text DEFAULT NULL,
  `topik_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_topik`
--

INSERT INTO `cbt_topik` (`topik_id`, `topik_modul_id`, `topik_nama`, `topik_detail`, `topik_aktif`) VALUES
(7, 9, 'Tes Soal', 'Kumpulan Soal untuk Uji Coba ', 1),
(8, 9, 'Testing', 'testing', 1),
(9, 9, 'Soal Sistem Informasi', 'Soal Jaringan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_grup_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_ip` varchar(39) DEFAULT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_birthplace` varchar(255) DEFAULT NULL,
  `user_level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `user_detail` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`user_id`, `user_grup_id`, `user_name`, `user_password`, `user_email`, `user_regdate`, `user_ip`, `user_firstname`, `user_birthdate`, `user_birthplace`, `user_level`, `user_detail`) VALUES
(1, 5, 'lutfi', 'lutfi', '', '2018-01-10 21:38:27', NULL, 'Muhammad Lutfial Hakim', NULL, NULL, 1, 'Ruang 1, Sesi 1'),
(2, 5, 'joko', 'joko', '', '2018-08-10 20:49:25', NULL, 'Joko Susanto', NULL, NULL, 1, 'Ruang 1, Sesi 2');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_grup`
--

CREATE TABLE `cbt_user_grup` (
  `grup_id` bigint(20) UNSIGNED NOT NULL,
  `grup_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_user_grup`
--

INSERT INTO `cbt_user_grup` (`grup_id`, `grup_nama`) VALUES
(5, 'FIK-A'),
(6, 'SI-A');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `status`) VALUES
(1, 'Java ', 1),
(2, 'PHP ', 1),
(3, 'HTML', 1),
(4, 'Kotlin', 1),
(5, 'Spring Boot', 0),
(6, 'Codeigniter Framework', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_id` varchar(10) NOT NULL,
  `program_id` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `total_activity` varchar(50) NOT NULL DEFAULT '''''',
  `class` varchar(50) NOT NULL DEFAULT '',
  `activity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `faculty_id`, `program_id`, `course_id`, `total_activity`, `class`, `activity`) VALUES
(1, 'AYT-1', 'PRG-1', 'CRS-1', '1', 'IF-1', 'Activity-1'),
(123, 'AYT-2', 'PRG-2', 'CRS-2', '1', 'IF-2', 'Activity-3'),
(124, 'AYT-3', 'PRG-3', 'CRS-3', '1', 'IF-3', 'Activity-5'),
(125, 'AYT-4', 'PRG-4', 'CRS-4', '1', 'IF-4', 'Activity-1'),
(126, 'AYT-5', 'PRG-5', 'CRS-5', '1', 'IF-5', 'Activity-1'),
(127, 'BYT-1', 'BRG-1', 'BRS-1', '1', 'SI-1', 'Activity-4'),
(128, 'BYT-2', 'BRG-2', 'BRS-2', '1', 'SI-2', 'Activity-1'),
(129, 'BYT-3', 'BRG-3', 'BRS-3', '1', 'SI-3', 'Activity-2'),
(130, 'BYT-4', 'BRG-4', 'BRS-4', '1', 'SI-4', 'Activity-1'),
(131, 'BYT-5', 'BRG-5', 'BRS-5', '1', 'SI-5', 'Activity-4'),
(132, 'CYT-1', 'CRG-1', 'CRA-1', '1', 'TKJ-1', 'Activity-1'),
(133, 'CYT-2', 'CRG-2', 'CRA-2', '1', 'TKJ-2', 'Activity-2'),
(134, 'CYT-3', 'CRG-3', 'CRA-3', '1', 'TKJ-3', 'Activity-3'),
(135, 'CYT-4', 'CRG-4', 'CRA-4', '1', 'TKJ-4', 'Activity-1'),
(136, 'CYT-5', 'CRG-5', 'CRA-5', '1', 'TKJ-5', 'Activity-5');

-- --------------------------------------------------------

--
-- Table structure for table `db_absensi`
--

CREATE TABLE `db_absensi` (
  `id_absen` bigint(20) NOT NULL,
  `kode_absen` varchar(100) NOT NULL,
  `nama_pegawai` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `tgl_absen` varchar(125) NOT NULL,
  `jam_masuk` varchar(13) NOT NULL,
  `jam_pulang` varchar(13) NOT NULL,
  `status_pegawai` int(1) NOT NULL,
  `keterangan_absen` varchar(100) NOT NULL,
  `maps_absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `db_absensi`
--

INSERT INTO `db_absensi` (`id_absen`, `kode_absen`, `nama_pegawai`, `kode_pegawai`, `tgl_absen`, `jam_masuk`, `jam_pulang`, `status_pegawai`, `keterangan_absen`, `maps_absen`) VALUES
(3, 'absen_20221214445', 'Dedi Rosadi', '20552011053', 'Selasa, 13 Desember 2022', '10:43:10', '19:36:31', 2, 'Belajar Di Kampus', '-6.9244532, 107.6622627');

-- --------------------------------------------------------

--
-- Table structure for table `db_rememberme`
--

CREATE TABLE `db_rememberme` (
  `id_session` int(11) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_agent` varchar(35) NOT NULL,
  `agent_string` varchar(255) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `user_ip` varchar(35) NOT NULL,
  `cookie_hash` varchar(255) NOT NULL,
  `expired` int(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_setting`
--

CREATE TABLE `db_setting` (
  `status_setting` int(1) NOT NULL DEFAULT 0,
  `nama_instansi` varchar(255) NOT NULL,
  `jumbotron_lead_set` varchar(125) NOT NULL,
  `nama_app_absensi` varchar(20) NOT NULL DEFAULT 'Absensi Online',
  `logo_instansi` varchar(255) NOT NULL,
  `timezone` varchar(35) NOT NULL,
  `absen_mulai` varchar(13) NOT NULL,
  `absen_mulai_to` varchar(13) NOT NULL,
  `absen_pulang` varchar(13) NOT NULL,
  `maps_use` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `db_setting`
--

INSERT INTO `db_setting` (`status_setting`, `nama_instansi`, `jumbotron_lead_set`, `nama_app_absensi`, `logo_instansi`, `timezone`, `absen_mulai`, `absen_mulai_to`, `absen_pulang`, `maps_use`) VALUES
(1, 'TELKOM UNIVERSITY', 'Jl. Telekomunikasi. 1, Terusan Buahbatu - Bojongsoang, Telkom University, Sukapura, Kec. Dayeuhkolot, Kabupaten Bandung, Jawa', 'LMS TEL-U', 'c29a01e7627dba16a8d05b7c6eb3fcad.png', 'Asia/Jakarta', '06:30:00', '08:00:00', '16:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idGuru` int(10) NOT NULL,
  `idMapel` varchar(10) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `namaGuru` varchar(35) NOT NULL,
  `password` varchar(40) NOT NULL,
  `noHP` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idGuru`, `idMapel`, `NIP`, `namaGuru`, `password`, `noHP`, `alamat`) VALUES
(2, 'FIK-01', '836458394', 'Guru1', 'Guru123', '087829743123', 'Jl. Cihampelas No.160'),
(5, 'FIK-02', 'guru', 'Guru2', 'guru', '094758456745', 'Jl.Antapani No.18'),
(6, 'FIK-03', '834745487', 'Guru3', 'mU42ter8', '094568745675', 'Jl.Seokarno-Hatta No.187'),
(7, 'FIK-04', '563246722', 'Guru4', 'Tfkn8QtZ', '028495734745', 'Jl.Kiaracondong No.11');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idKelas` int(10) NOT NULL,
  `namaKelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idKelas`, `namaKelas`) VALUES
(1, 'FIK-1A'),
(2, 'FIK-1B'),
(3, 'FIK-2A'),
(4, 'FIK-2B'),
(5, 'FIK-3A'),
(6, 'FIK-3B'),
(7, 'FIK-4A'),
(8, 'FIK-4B');

-- --------------------------------------------------------

--
-- Table structure for table `kontrak`
--

CREATE TABLE `kontrak` (
  `idKontrak` int(10) NOT NULL,
  `idKelas` int(10) NOT NULL,
  `idMapel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kontrak`
--

INSERT INTO `kontrak` (`idKontrak`, `idKelas`, `idMapel`) VALUES
(9, 1, 'FIK-01'),
(10, 1, 'FIK-02'),
(11, 1, 'FIK-03'),
(12, 1, 'FIK-04'),
(13, 1, 'FIK-05'),
(14, 1, 'FIK-07');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `idMapel` varchar(10) NOT NULL,
  `namaMapel` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`idMapel`, `namaMapel`) VALUES
('FIK-01', 'Keamanan Informasi'),
('FIK-02', 'Keamanan Jaringan'),
('FIK-03', 'Algoritma'),
('FIK-04', 'Object Oriented Programming'),
('FIK-05', 'Pemrograman Web1'),
('FIK-06', 'Pemrograman Web2'),
('FIK-07', 'Pemrograman Mobile1'),
('FIK-08', 'Pemrograman Mobile2'),
('FIK-10', 'FCNS');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `idMateri` int(10) NOT NULL,
  `idGuru` int(10) NOT NULL,
  `judulFile` text NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `lokasiFile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `idNilai` int(10) NOT NULL,
  `idSiswa` int(10) NOT NULL,
  `idGuru` int(10) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idSiswa` int(10) NOT NULL,
  `idKelas` int(10) NOT NULL,
  `NIS` varchar(30) NOT NULL,
  `namaSiswa` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamatSiswa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idSiswa`, `idKelas`, `NIS`, `namaSiswa`, `password`, `alamatSiswa`) VALUES
(1, 1, '205520110001', 'Siswa1', 'Siswa123', 'Bojongsoang 11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_activity`
--

CREATE TABLE `tb_activity` (
  `activity` varchar(20) NOT NULL,
  `activity_1` int(50) NOT NULL,
  `activity_2` int(50) NOT NULL,
  `activity_3` int(50) NOT NULL,
  `activity_4` int(50) NOT NULL,
  `activity_5` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_activity`
--

INSERT INTO `tb_activity` (`activity`, `activity_1`, `activity_2`, `activity_3`, `activity_4`, `activity_5`) VALUES
('1', 10, 5, 3, 9, 2),
('2', 8, 3, 0, 3, 1),
('3', 5, 7, 3, 8, 8),
('4', 1, 3, 6, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_faculty`
--

CREATE TABLE `tb_faculty` (
  `faculty_id` varchar(20) NOT NULL,
  `nama_faculty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_faculty`
--

INSERT INTO `tb_faculty` (`faculty_id`, `nama_faculty`) VALUES
('CS', 'CYBER SECURITY'),
('IF', 'FAKULTAS INFORMATIKA'),
('MI', 'MANAGEMENT INFORMATIKA'),
('SI', 'SISTEM INFROMASI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(1, 'Tugas', '2022-10-19', '2022-10-19 11:13:13', '2022-10-19 11:13:13', 1),
(3, 'Jadwal', '2022-10-21', '2022-10-21 19:49:02', '2022-10-21 19:49:02', 1),
(4, 'Tugas RPL', '2022-10-22', '2022-10-22 20:19:48', '2022-10-22 20:19:48', 1),
(5, 'Tugas', '2022-10-22', '2022-10-22 18:29:51', '2022-10-22 18:29:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `program_id` varchar(20) NOT NULL,
  `semester_id` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `faculty_id`, `program_id`, `semester_id`, `nama`, `kelas`, `activity`, `total`) VALUES
(27, 'IF', 'PR2', 'S1', 'DEDI ROSADI', '1-IF-B', '4', '40'),
(28, 'SI', 'PR1', 'S3', 'ANNISA ADITSANIA', '1-IF-C', '10', '30'),
(29, 'CS', 'PR4', 'S4', 'ANAK AGUNG GEDE', '4-IF-D', '60', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `IdMhsw` int(11) NOT NULL,
  `Nama` varchar(150) DEFAULT NULL,
  `UTS` varchar(20) DEFAULT NULL,
  `UAS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`IdMhsw`, `Nama`, `UTS`, `UAS`) VALUES
(16, 'Keamanan Jaringan', '97', '0'),
(17, 'System Mikroprocessor', '98', '0'),
(18, 'System Mikrokontroller', '96', '0'),
(0, 'Keamanan Informasi', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `program_id` varchar(20) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`program_id`, `faculty_id`, `nama`, `kelas`) VALUES
('PR1', 'IF', 'DEDI ROSADI', '1-IF-A'),
('PR2', 'SI', 'ANNISA ADITSANIA', '1-IF-B'),
('PR3', 'CS', 'ANAK AGUNG GEDE', '1-IF-C'),
('PR4', 'MI', 'SITI NURJUBAEDAH', '4-IF-D');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `semester_id` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`semester_id`, `nama`) VALUES
('S1', 'SEMESTER 1'),
('S2', 'SEMESTER 2'),
('S3', 'SEMESTER 3'),
('S4', 'SEMESTER 4'),
('S5', 'SEMESTER 5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `kode_dosen` varchar(200) DEFAULT NULL,
  `course_view` int(100) DEFAULT NULL,
  `resource` varchar(20) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `sra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nip`, `nama`, `kode_dosen`, `course_view`, `resource`, `activity`, `sra`) VALUES
(5, '06830027-1', 'ANGELINA PRIMA KURNI', 'APK', 35, 'page 3', 'Assigement', 44),
(6, '19580825-6', 'AHMAN SUTARDI', 'AST', 20, 'Label 0', 'Quiz', 18),
(7, '218985994-6', 'AMARILIS PUTRI YANUA', 'APY', 50, 'File 9', 'Assigement 21', 72),
(8, '21950003-3', 'ADITYA FIRMAN IHSAN', 'FMH', 69, 'File62', 'Assigement11', 579),
(11, '15900046-1', 'ANNISA ADITSANIA', 'TSA', 310, 'Label 24', 'Quiz 723', 123),
(12, '07820019-1', 'ANAK AGUNG GDE AGUNG', 'AAG', 294, 'File 9', 'Assigement 21', 77),
(13, '19895877-6', 'A INUN MUFLIKA', 'NMF', 636, 'Label 0', 'Quiz', 72),
(14, '16706040-6', 'AGUNG AGUSTRIANTO', 'GTO', 456, 'page 2', 'Assigement', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_pegawai` int(11) NOT NULL,
  `nama_lengkap` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `umur` int(11) NOT NULL,
  `image` varchar(125) NOT NULL,
  `qr_code_image` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `instansi` varchar(125) NOT NULL,
  `jabatan` varchar(125) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `bagian_shift` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `qr_code_use` int(2) NOT NULL,
  `last_login` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_pegawai`, `nama_lengkap`, `username`, `password`, `role_id`, `umur`, `image`, `qr_code_image`, `kode_pegawai`, `instansi`, `jabatan`, `npwp`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `bagian_shift`, `is_active`, `qr_code_use`, `last_login`, `date_created`) VALUES
(12, 'Dedi Rosadi', 'admin', '$2y$10$nzEbq607iLUzhvlKWSmDOOLU7r8Y0GDnWxYxA45bF9ExcP.lvRykG', 1, 22, '3a402057537e1ea49401790aaf34d1d3.jpg', 'qr_code_20552011053.png', '973829271834', 'TELKOM UNIVERSITY', '20552011053', '2017', '2001-04-04', 'Subang', 'Laki - Laki', 1, 1, 1, 1672979613, 1670857167),
(47, 'Dedi Rosadi', 'dedi', '$2y$10$XRXong6z3evF2IG41qanPud4..ii8C/0rO/Ypr9f4MAGzS1qbNe6.', 2, 21, '24eba96bab2559d9b4fea156554f1bb1.png', 'qr_code_148296679305713.png', '148296679305713', 'TELKOM UNIVERSITY', '21552011076', '2020', '2001-04-04', 'Subang', 'Laki - Laki', 1, 1, 1, 1672192169, 1671366109);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `program_id` varchar(20) NOT NULL,
  `semester_id` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_akses`
--

CREATE TABLE `user_akses` (
  `id` int(11) NOT NULL,
  `level` varchar(75) NOT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `add` int(2) NOT NULL DEFAULT 1 COMMENT '0=false, 1=true',
  `edit` int(2) NOT NULL DEFAULT 1 COMMENT '0=false, 1=true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_akses`
--

INSERT INTO `user_akses` (`id`, `level`, `kode_menu`, `add`, `edit`) VALUES
(254, 'operator-soal', 'modul-daftar', 1, 1),
(255, 'operator-soal', 'modul-filemanager', 1, 1),
(256, 'operator-soal', 'modul-import', 1, 1),
(257, 'operator-soal', 'modul-soal', 1, 1),
(258, 'operator-soal', 'modul-topik', 1, 1),
(259, 'operator-tes', 'tes-hasil-operator', 1, 1),
(260, 'operator-tes', 'tes-token', 1, 1),
(481, 'admin', 'laporan-analisis-butir-soal', 1, 1),
(482, 'admin', 'peserta-kartu', 1, 1),
(483, 'admin', 'peserta-group', 1, 1),
(484, 'admin', 'peserta-daftar', 1, 1),
(485, 'admin', 'modul-daftar', 1, 1),
(486, 'admin', 'tes-daftar', 1, 1),
(487, 'admin', 'tool-backup', 1, 1),
(488, 'admin', 'tes-evaluasi', 1, 1),
(489, 'admin', 'tool-exportimport-soal', 1, 1),
(490, 'admin', 'modul-filemanager', 1, 1),
(491, 'admin', 'tes-hasil', 1, 1),
(492, 'admin', 'peserta-import', 1, 1),
(493, 'admin', 'modul-import', 1, 1),
(494, 'admin', 'modul-import-word', 1, 1),
(496, 'admin', 'user_level', 1, 1),
(497, 'admin', 'user_menu', 1, 1),
(498, 'admin', 'user_atur', 1, 1),
(499, 'admin', 'user-zyacbt', 1, 1),
(500, 'admin', 'laporan-rekap', 1, 1),
(501, 'admin', 'modul-soal', 1, 1),
(502, 'admin', 'tes-tambah', 1, 1),
(503, 'admin', 'tes-token', 1, 1),
(504, 'admin', 'modul-topik', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_learning`
--

CREATE TABLE `user_learning` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `opsi1` varchar(75) NOT NULL,
  `opsi2` varchar(75) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_learning`
--

INSERT INTO `user_learning` (`id`, `username`, `password`, `nama`, `opsi1`, `opsi2`, `keterangan`, `level`, `ts`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Dedi Rosadi', '', '', '', 'admin', '2015-07-29 11:12:03'),
(4, 'operator', 'fe96dd39756ac41b74283a9292652d366d73931f', 'Operator', '', '', 'Operator', 'operator-soal', '2018-03-30 05:58:55'),
(5, 'joko', '97c358728f7f947c9a279ba9be88308395c7cc3a', 'Joko', '', '', 'Haloo', 'admin', '2019-12-11 19:53:12'),
(6, 'dedi', '9118e35f5b466aa2773fbe6dc1434c5605c6dec3', 'Dedi Rosadi', '', '', 'Pengelola Soal', 'operator-tes', '2023-01-09 03:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `keterangan`) VALUES
(1, 'admin', 'Administrator'),
(7, 'operator-soal', 'Operator Soal'),
(8, 'operator-tes', 'Operator Tes');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `log` varchar(250) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `tipe` int(11) NOT NULL DEFAULT 1 COMMENT '0=parent, 1=child',
  `parent` varchar(50) DEFAULT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '#',
  `icon` varchar(75) NOT NULL DEFAULT 'fa fa-circle-o',
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `tipe`, `parent`, `kode_menu`, `nama_menu`, `url`, `icon`, `urutan`) VALUES
(1, 0, '', 'user', 'Pengaturan', '#', 'fa fa-user', 20),
(3, 1, 'user', 'user_atur', 'Pengaturan User', 'manager/useratur', 'fa fa-circle-o', 5),
(4, 1, 'user', 'user_level', 'Pengaturan Level', 'manager/userlevel', 'fa fa-circle-o', 6),
(5, 1, 'user', 'user_menu', 'Pengaturan Menu', 'manager/usermenu', 'fa fa-circle-o', 7),
(6, 0, '', 'modul', 'Data Modul', '#', 'fa fa-book', 2),
(7, 1, 'modul', 'modul-daftar', 'Daftar Soal', 'manager/modul_daftar', 'fa fa-circle-o', 5),
(8, 1, 'modul', 'modul-topik', 'Topik', 'manager/modul_topik', 'fa fa-circle-o', 2),
(10, 0, '', 'peserta', 'Data Peserta', '#', 'fa fa-users', 3),
(11, 1, 'peserta', 'peserta-daftar', 'Daftar Peserta', 'manager/peserta_daftar', 'fa fa-circle-o', 2),
(12, 1, 'peserta', 'peserta-group', 'Daftar Group', 'manager/peserta_group', 'fa fa-circle-o', 1),
(13, 1, 'peserta', 'peserta-import', 'Import Data Peserta', 'manager/peserta_import', 'fa fa-circle-o', 3),
(14, 0, '', 'tes', 'Data Tes', '#', 'fa fa-tasks', 4),
(15, 1, 'tes', 'tes-tambah', 'Tambah Tes', 'manager/tes_tambah', 'fa fa-circle-o', 1),
(16, 1, 'tes', 'tes-daftar', 'Daftar Tes', 'manager/tes_daftar', 'fa fa-circle-o', 2),
(17, 1, 'tes', 'tes-hasil', 'Hasil Tes', 'manager/tes_hasil', 'fa fa-circle-o', 6),
(18, 1, 'modul', 'modul-soal', 'Soal', 'manager/modul_soal', 'fa fa-circle-o', 3),
(19, 1, 'tes', 'tes-token', 'Token', 'manager/tes_token', 'fa fa-circle-o', 8),
(22, 1, 'modul', 'modul-filemanager', 'File Manager', 'manager/modul_filemanager', 'fa fa-circle-o', 6),
(24, 1, 'modul', 'modul-import', 'Import Soal Spreadsheet', 'manager/modul_import', 'fa fa-circle-o', 4),
(25, 1, 'tes', 'tes-evaluasi', 'Evaluasi Tes', 'manager/tes_evaluasi', 'fa fa-circle-o', 5),
(28, 1, 'tes', 'tes-hasil-operator', 'Hasil Tes Operator', 'manager/tes_hasil_operator', 'fa fa-circle-o', 10),
(30, 0, '', 'tool', 'Tool', '#', 'fa fa-wrench', 6),
(31, 1, 'tool', 'tool-backup', 'Database', 'manager/tool_backup', 'fa fa-database', 1),
(32, 1, 'tes-laporan', 'laporan-rekap', 'Rekap Hasil Tes', 'manager/laporan_rekap_hasil', 'fa fa-circle-o', 7),
(33, 1, 'tool', 'tool-exportimport-soal', 'Export / Import Soal', 'manager/tool_exportimport_soal', 'fa fa-circle-o', 2),
(34, 1, 'user', 'user-zyacbt', 'Pengaturan ZYACBT', 'manager/pengaturan_zyacbt', 'fa fa-circle-o', 1),
(37, 1, 'peserta', 'peserta-kartu', 'Cetak Kartu', 'manager/peserta_kartu', 'fa fa-circle-o', 5),
(38, 0, '', 'tes-laporan', 'Laporan', '#', 'fa fa-print', 5),
(41, 1, 'tes-laporan', 'laporan-analisis-butir-soal', 'Analisis Butir Soal', 'manager/laporan_analisis_butir_soal', 'fa fa-circle-o', 1),
(42, 1, 'tes-laporan', 'laporan-analisis-soal', 'Analisis Soal', 'manager/laporan_analisis_soal', 'fa fa-circle-o', 2),
(43, 1, 'modul', 'modul-import-word', 'Import Soal Word', 'manager/modul_import_word', 'fa fa-circle-o', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`jawaban_id`),
  ADD KEY `p_answer_question_id` (`jawaban_soal_id`);

--
-- Indexes for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  ADD PRIMARY KEY (`konfigurasi_id`),
  ADD UNIQUE KEY `konfigurasi_kode` (`konfigurasi_kode`);

--
-- Indexes for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  ADD PRIMARY KEY (`modul_id`),
  ADD UNIQUE KEY `ak_module_name` (`modul_nama`);

--
-- Indexes for table `cbt_sessions`
--
ALTER TABLE `cbt_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `p_question_subject_id` (`soal_topik_id`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`tes_id`),
  ADD UNIQUE KEY `ak_test_name` (`tes_nama`);

--
-- Indexes for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD PRIMARY KEY (`tstgrp_tes_id`,`tstgrp_grup_id`),
  ADD KEY `p_tstgrp_test_id` (`tstgrp_tes_id`),
  ADD KEY `p_tstgrp_group_id` (`tstgrp_grup_id`);

--
-- Indexes for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD PRIMARY KEY (`tessoal_id`),
  ADD UNIQUE KEY `ak_testuser_question` (`tessoal_tesuser_id`,`tessoal_soal_id`),
  ADD KEY `p_testlog_question_id` (`tessoal_soal_id`),
  ADD KEY `p_testlog_testuser_id` (`tessoal_tesuser_id`);

--
-- Indexes for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD PRIMARY KEY (`soaljawaban_tessoal_id`,`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_answer_id` (`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_testlog_id` (`soaljawaban_tessoal_id`);

--
-- Indexes for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `token_user_id` (`token_user_id`);

--
-- Indexes for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD PRIMARY KEY (`tset_id`),
  ADD KEY `p_tsubset_test_id` (`tset_tes_id`),
  ADD KEY `tsubset_subject_id` (`tset_topik_id`);

--
-- Indexes for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD PRIMARY KEY (`tesuser_id`),
  ADD UNIQUE KEY `ak_testuser` (`tesuser_tes_id`,`tesuser_user_id`,`tesuser_status`),
  ADD KEY `p_testuser_user_id` (`tesuser_user_id`),
  ADD KEY `p_testuser_test_id` (`tesuser_tes_id`);

--
-- Indexes for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD PRIMARY KEY (`topik_id`),
  ADD UNIQUE KEY `ak_subject_name` (`topik_modul_id`,`topik_nama`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ak_user_name` (`user_name`),
  ADD KEY `user_groups_id` (`user_grup_id`),
  ADD KEY `user_detail` (`user_detail`);

--
-- Indexes for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  ADD PRIMARY KEY (`grup_id`),
  ADD UNIQUE KEY `group_name` (`grup_nama`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idGuru`),
  ADD KEY `fk_idMapel` (`idMapel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idKelas`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`idKontrak`),
  ADD KEY `fk_idKelas` (`idKelas`),
  ADD KEY `fk_idMapel1` (`idMapel`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`idMapel`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`idMateri`),
  ADD KEY `fk_idGuru` (`idGuru`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`idNilai`),
  ADD KEY `fk_idSiswa` (`idSiswa`),
  ADD KEY `fk_idGuru1` (`idGuru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idSiswa`),
  ADD KEY `fk_idKelas1` (`idKelas`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akses_kode_menu` (`kode_menu`),
  ADD KEY `akses_level` (`level`);

--
-- Indexes for table `user_learning`
--
ALTER TABLE `user_learning`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `level` (`level`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_menu` (`kode_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `jawaban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;

--
-- AUTO_INCREMENT for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  MODIFY `konfigurasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  MODIFY `modul_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `soal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `tes_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  MODIFY `tessoal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  MODIFY `tset_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  MODIFY `tesuser_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  MODIFY `topik_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  MODIFY `grup_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idGuru` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idKelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `idKontrak` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `idMateri` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `idNilai` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idSiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_akses`
--
ALTER TABLE `user_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `user_learning`
--
ALTER TABLE `user_learning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD CONSTRAINT `cbt_jawaban_ibfk_1` FOREIGN KEY (`jawaban_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD CONSTRAINT `cbt_soal_ibfk_1` FOREIGN KEY (`soal_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD CONSTRAINT `cbt_tesgrup_ibfk_1` FOREIGN KEY (`tstgrp_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tesgrup_ibfk_2` FOREIGN KEY (`tstgrp_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD CONSTRAINT `cbt_tes_soal_ibfk_1` FOREIGN KEY (`tessoal_tesuser_id`) REFERENCES `cbt_tes_user` (`tesuser_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_ibfk_2` FOREIGN KEY (`tessoal_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_1` FOREIGN KEY (`soaljawaban_tessoal_id`) REFERENCES `cbt_tes_soal` (`tessoal_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_2` FOREIGN KEY (`soaljawaban_jawaban_id`) REFERENCES `cbt_jawaban` (`jawaban_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD CONSTRAINT `cbt_tes_token_ibfk_1` FOREIGN KEY (`token_user_id`) REFERENCES `user_learning` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_1` FOREIGN KEY (`tset_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_2` FOREIGN KEY (`tset_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD CONSTRAINT `cbt_tes_user_ibfk_1` FOREIGN KEY (`tesuser_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_user_ibfk_2` FOREIGN KEY (`tesuser_user_id`) REFERENCES `cbt_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD CONSTRAINT `cbt_topik_ibfk_1` FOREIGN KEY (`topik_modul_id`) REFERENCES `cbt_modul` (`modul_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD CONSTRAINT `cbt_user_ibfk_1` FOREIGN KEY (`user_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `fk_idMapel` FOREIGN KEY (`idMapel`) REFERENCES `mapel` (`idMapel`) ON DELETE CASCADE;

--
-- Constraints for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD CONSTRAINT `fk_idKelas` FOREIGN KEY (`idKelas`) REFERENCES `kelas` (`idKelas`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_idMapel1` FOREIGN KEY (`idMapel`) REFERENCES `mapel` (`idMapel`) ON DELETE CASCADE;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_idGuru` FOREIGN KEY (`idGuru`) REFERENCES `guru` (`idGuru`) ON DELETE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_idGuru1` FOREIGN KEY (`idGuru`) REFERENCES `guru` (`idGuru`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_idSiswa` FOREIGN KEY (`idSiswa`) REFERENCES `siswa` (`idSiswa`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_idKelas1` FOREIGN KEY (`idKelas`) REFERENCES `kelas` (`idKelas`) ON DELETE CASCADE;

--
-- Constraints for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD CONSTRAINT `user_akses_ibfk_2` FOREIGN KEY (`kode_menu`) REFERENCES `user_menu` (`kode_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_akses_ibfk_3` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_learning`
--
ALTER TABLE `user_learning`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
