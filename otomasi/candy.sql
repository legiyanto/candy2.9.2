-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 17, 2024 at 03:59 PM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `candy`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_mapel`, `sesi`, `ruang`, `jenis`, `ikut`, `susulan`, `no_susulan`, `mulai`, `selesai`, `nama_proktor`, `nip_proktor`, `nama_pengawas`, `nip_pengawas`, `catatan`, `tgl_ujian`) VALUES
(1, 1, '2', 'R1', 'USBK', '10', '-2', 'N;', '09:00', '10:00', 'proktor', '100500.6', 'pengawas', '95596.669', 'tertib dan lancar', '2023-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `file_pendukung`
--

CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `file_pendukung`
--

INSERT INTO `file_pendukung` (`id_file`, `id_mapel`, `nama_file`, `status_file`) VALUES
(161, 1, '16947708742.png', NULL),
(162, 1, 'Kodeopsijawaban=', NULL),
(163, 1, 'Kodekuncijawaban=', NULL),
(164, 1, '16947709304.png', NULL),
(165, 1, '16947709303.jpeg', NULL),
(166, 1, '16947709303.jpeg', NULL),
(167, 1, '16947709303.jpeg', NULL),
(168, 1, '16947709303.jpeg', NULL),
(169, 1, '16947709302.png', NULL),
(170, 1, '16947709301.png', NULL),
(171, 1, '16947709302.png', NULL),
(172, 1, 'Kodeopsijawaban=', NULL),
(173, 1, 'Kodekuncijawaban=', NULL),
(174, 1, '16947710734.png', NULL),
(175, 1, '16947710733.jpeg', NULL),
(176, 1, '16947710733.jpeg', NULL),
(177, 1, '16947710733.jpeg', NULL),
(178, 1, '16947710733.jpeg', NULL),
(179, 1, '16947710732.png', NULL),
(180, 1, '16947710731.png', NULL),
(181, 1, '16947710732.png', NULL),
(182, 1, 'Kodeopsijawaban=', NULL),
(183, 1, 'Kodekuncijawaban=', NULL),
(184, 1, '16947711284.png', NULL),
(185, 1, '16947711283.jpeg', NULL),
(186, 1, '16947711283.jpeg', NULL),
(187, 1, '16947711283.jpeg', NULL),
(188, 1, '16947711282.png', NULL),
(189, 1, '16947711281.png', NULL),
(190, 1, '16947711282.png', NULL),
(191, 1, 'Kodeopsijawaban=', NULL),
(192, 1, 'Kodekuncijawaban=', NULL),
(193, 1, '16947713647.png', NULL),
(194, 1, '16947713645.png', NULL),
(195, 1, '16947713643.jpg', NULL),
(196, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(197, 1, '169477136410.png', NULL),
(198, 1, '16947713648.png', NULL),
(199, 1, '169477136410.png', NULL),
(200, 1, '16947713646.png', NULL),
(201, 1, '16947713644.png', NULL),
(202, 1, '16947713642.png', NULL),
(203, 1, '16947714577.png', NULL),
(204, 1, '16947714575.png', NULL),
(205, 1, '16947714573.jpg', NULL),
(206, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(207, 1, '169477145710.png', NULL),
(208, 1, '16947714578.png', NULL),
(209, 1, '169477145710.png', NULL),
(210, 1, '16947714576.png', NULL),
(211, 1, '16947714574.png', NULL),
(212, 1, '16947714572.png', NULL),
(213, 1, '16947715157.png', NULL),
(214, 1, '16947715155.png', NULL),
(215, 1, '16947715153.jpg', NULL),
(216, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(217, 1, '169477151510.png', NULL),
(218, 1, '16947715158.png', NULL),
(219, 1, '169477151510.png', NULL),
(220, 1, '16947715156.png', NULL),
(221, 1, '16947715154.png', NULL),
(222, 1, '16947715152.png', NULL),
(223, 1, '16947715727.png', NULL),
(224, 1, '16947715725.png', NULL),
(225, 1, '16947715723.jpg', NULL),
(226, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(227, 1, '169477157210.png', NULL),
(228, 1, '16947715728.png', NULL),
(229, 1, '169477157210.png', NULL),
(230, 1, '16947715726.png', NULL),
(231, 1, '16947715724.png', NULL),
(232, 1, '16947715722.png', NULL),
(233, 1, '16947716467.png', NULL),
(234, 1, '16947716465.png', NULL),
(235, 1, '16947716463.jpg', NULL),
(236, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(237, 1, '169477164610.png', NULL),
(238, 1, '16947716468.png', NULL),
(239, 1, '169477164610.png', NULL),
(240, 1, '16947716466.png', NULL),
(241, 1, '16947716464.png', NULL),
(242, 1, '16947716462.png', NULL),
(243, 1, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;pri', NULL),
(244, 1, '16947717297.png', NULL),
(245, 1, '16947717295.png', NULL),
(246, 1, '16947717293.jpg', NULL),
(247, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(248, 1, '169477172910.png', NULL),
(249, 1, '16947717298.png', NULL),
(250, 1, '169477172910.png', NULL),
(251, 1, '16947717296.png', NULL),
(252, 1, '16947717294.png', NULL),
(253, 1, '16947717292.png', NULL),
(254, 1, '16947717789.jpeg', NULL),
(255, 1, '16947717787.png', NULL),
(256, 1, '16947717785.png', NULL),
(257, 1, '16947717783.jpg', NULL),
(258, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(259, 1, '169477177810.png', NULL),
(260, 1, '16947717788.png', NULL),
(261, 1, '169477177810.png', NULL),
(262, 1, '16947717786.png', NULL),
(263, 1, '16947717784.png', NULL),
(264, 1, '16947717782.png', NULL),
(265, 1, '16947718558.jpg', NULL),
(266, 1, '16947718556.png', NULL),
(267, 1, '16947718554.png', NULL),
(268, 1, '16947718558.jpg', NULL),
(269, 1, '&lt;a:blipr:embed=&quot;rId7&quot;cstate=&quot;pri', NULL),
(270, 1, '16947718551.png', NULL),
(271, 1, '16947718559.png', NULL),
(272, 1, '16947718551.png', NULL),
(273, 1, '16947718557.png', NULL),
(274, 1, '16947718555.png', NULL),
(275, 1, '16947718553.png', NULL),
(276, 1, '16947719867.png', NULL),
(277, 1, '16947719865.png', NULL),
(278, 1, '16947719863.jpg', NULL),
(279, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(280, 1, '169477198610.png', NULL),
(281, 1, '16947719868.png', NULL),
(282, 1, '169477198610.png', NULL),
(283, 1, '16947719866.png', NULL),
(284, 1, '16947719864.png', NULL),
(285, 1, '16947719862.png', NULL),
(286, 1, '16947720799.png', NULL),
(287, 1, '16947720797.png', NULL),
(288, 1, '16947720795.png', NULL),
(289, 1, '16947720793.jpg', NULL),
(290, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(291, 1, '169477207910.png', NULL),
(292, 1, '16947720798.png', NULL),
(293, 1, '169477207910.png', NULL),
(294, 1, '16947720796.png', NULL),
(295, 1, '16947720794.png', NULL),
(296, 1, '16947720792.png', NULL),
(297, 1, '16947721389.png', NULL),
(298, 1, '16947721387.png', NULL),
(299, 1, '16947721385.png', NULL),
(300, 1, '16947721383.jpg', NULL),
(301, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(302, 1, '169477213810.png', NULL),
(303, 1, '16947721388.png', NULL),
(304, 1, '169477213810.png', NULL),
(305, 1, '16947721386.png', NULL),
(306, 1, '16947721384.png', NULL),
(307, 1, '16947721382.png', NULL),
(308, 1, '16947721817.png', NULL),
(309, 1, '16947721815.png', NULL),
(310, 1, '16947721813.jpg', NULL),
(311, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(312, 1, '169477218110.png', NULL),
(313, 1, '16947721818.png', NULL),
(314, 1, '169477218110.png', NULL),
(315, 1, '16947721816.png', NULL),
(316, 1, '16947721814.png', NULL),
(317, 1, '16947721812.png', NULL),
(318, 1, '16947722317.png', NULL),
(319, 1, '16947722315.png', NULL),
(320, 1, '16947722313.jpg', NULL),
(321, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(322, 1, '169477223110.png', NULL),
(323, 1, '16947722318.png', NULL),
(324, 1, '169477223110.png', NULL),
(325, 1, '16947722316.png', NULL),
(326, 1, '16947722314.png', NULL),
(327, 1, '16947722312.png', NULL),
(328, 1, '16947722927.png', NULL),
(329, 1, '16947722925.png', NULL),
(330, 1, '16947722923.jpg', NULL),
(331, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(332, 1, '169477229210.png', NULL),
(333, 1, '16947722928.png', NULL),
(334, 1, '169477229210.png', NULL),
(335, 1, '16947722926.png', NULL),
(336, 1, '16947722924.png', NULL),
(337, 1, '16947722922.png', NULL),
(338, 1, '16947723397.png', NULL),
(339, 1, '16947723395.png', NULL),
(340, 1, '16947723393.jpg', NULL),
(341, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(342, 1, '169477233910.png', NULL),
(343, 1, '16947723398.png', NULL),
(344, 1, '169477233910.png', NULL),
(345, 1, '16947723396.png', NULL),
(346, 1, '16947723394.png', NULL),
(347, 1, '16947723392.png', NULL),
(348, 1, '16947723937.png', NULL),
(349, 1, '16947723935.png', NULL),
(350, 1, '16947723933.jpg', NULL),
(351, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(352, 1, '169477239310.png', NULL),
(353, 1, '16947723938.png', NULL),
(354, 1, '169477239310.png', NULL),
(355, 1, '16947723936.png', NULL),
(356, 1, '16947723934.png', NULL),
(357, 1, '16947723932.png', NULL),
(358, 1, '16947724439.png', NULL),
(359, 1, '16947724437.png', NULL),
(360, 1, '16947724435.png', NULL),
(361, 1, '16947724433.jpg', NULL),
(362, 1, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(363, 1, '169477244310.png', NULL),
(364, 1, '16947724438.png', NULL),
(365, 1, '169477244310.png', NULL),
(366, 1, '16947724436.png', NULL),
(367, 1, '16947724434.png', NULL),
(368, 1, '16947724432.png', NULL),
(369, 2, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;pri', NULL),
(370, 2, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;pri', NULL),
(371, 2, '&lt;a:blipr:embed=&quot;rId5&quot;cstate=&quot;pri', NULL),
(372, 2, '&lt;a:blipr:embed=&quot;rId6&quot;cstate=&quot;pri', NULL),
(373, 2, '&lt;a:blipr:embed=&quot;rId7&quot;cstate=&quot;pri', NULL),
(374, 2, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(375, 2, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;pri', NULL),
(376, 2, '&lt;a:blipr:embed=&quot;rId5&quot;cstate=&quot;pri', NULL),
(377, 2, '&lt;a:blipr:embed=&quot;rId6&quot;cstate=&quot;pri', NULL),
(378, 2, '&lt;a:blipr:embed=&quot;rId7&quot;cstate=&quot;pri', NULL),
(379, 2, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(380, 2, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;pri', NULL),
(381, 2, '&lt;a:blipr:embed=&quot;rId5&quot;cstate=&quot;pri', NULL),
(382, 2, '&lt;a:blipr:embed=&quot;rId6&quot;cstate=&quot;pri', NULL),
(383, 2, '&lt;a:blipr:embed=&quot;rId7&quot;cstate=&quot;pri', NULL),
(384, 2, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(385, 2, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;pri', NULL),
(386, 2, '&lt;a:blipr:embed=&quot;rId5&quot;cstate=&quot;pri', NULL),
(387, 2, '&lt;a:blipr:embed=&quot;rId6&quot;cstate=&quot;pri', NULL),
(388, 2, '&lt;a:blipr:embed=&quot;rId7&quot;cstate=&quot;pri', NULL),
(389, 2, '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;pri', NULL),
(390, 1, '17000443331.png', NULL),
(391, 1, '17000443336.png', NULL),
(392, 1, '17000443335.png', NULL),
(393, 1, '17000443334.png', NULL),
(394, 1, '17000443333.png', NULL),
(395, 1, '17000443332.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_temp`
--

CREATE TABLE `jawaban_temp` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama`, `status`) VALUES
('PTS', 'PENILAIAN TENGAH SEMESTER', 'tidak'),
('TO', 'Try_OUT', 'tidak'),
('US', 'UJIAN SEMESTER GANJIL', 'tidak'),
('US2', 'UJIAN SEMESTER GENAP', 'tidak'),
('USBK', 'Ujian Sekolah Berbasis Komputer', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `level`, `nama`, `rombongan_belajar_id`, `semester_id`) VALUES
('XII-IPS', 'XII', 'XII-IPS', NULL, NULL),
('XII-MIPA', 'XII', 'XII-MIPA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`kode_level`, `keterangan`, `rombongan_belajar_id`) VALUES
('XII', 'XII', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode`, `idpk`, `idguru`, `nama`, `jml_soal`, `jml_esai`, `tampil_pg`, `tampil_esai`, `bobot_pg`, `bobot_esai`, `level`, `opsi`, `kelas`, `date`, `status`, `kkm`, `soal_agama`) VALUES
(1, '8prak', 'a:1:{i:0;s:3:\"IPS\";}', '300', 'EKO', 30, 0, 30, 0, 100, 0, 'XII', 4, 'a:1:{i:0;s:7:\"XII-IPS\";}', '2023-05-31 15:07:40', '1', 75, ''),
(2, 'mat2', 'a:1:{i:0;s:5:\"semua\";}', '307', 'MTK', 25, 0, 25, 0, 100, 0, 'XII', 4, 'a:1:{i:0;s:5:\"semua\";}', '2023-09-29 13:04:09', '1', 75, '');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mapel`, `nama_mapel`, `mata_pelajaran_id`) VALUES
('BINDO', 'BAHASA INDONESIA', NULL),
('BING', 'BAHASA INGGRIS', NULL),
('BIOLOGI', 'BIOLOGI', NULL),
('EKO', 'EKONOMI', NULL),
('FISIKA', 'FISIKA', NULL),
('GEO', 'GEOGRAFI', NULL),
('KIMIA', 'KIMIA', NULL),
('MTK', 'MATEMATIKA WAJIB', NULL),
('MTKMINAT', 'MATEMATIKA PEMINATAN', NULL),
('PAI', 'PENDIDIKAN AGAMA DAN BUDI PEKERTI', NULL),
('PJOK', 'PENDIDIKAN JASMANI, OLAHRAGA DAN KESEHATAN', NULL),
('PKN', 'PENDIDIKAN PANCASILA DAN KEWARGANEGARAAN', NULL),
('PKWU', 'PRAKARYA DAN KEWIRAUSAHAAN', NULL),
('SEJINDO', 'SEJARAH INDONESIA', NULL),
('SEJMINAT', 'SEJARAH PEMINATAN', NULL),
('SENBUD', 'SENI BUDAYA', NULL),
('SOS', 'SOSIOLOGI', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `id_guru`, `kelas`, `mapel`, `judul`, `materi`, `file`, `tgl_mulai`, `youtube`, `tgl`, `status`) VALUES
(12, 1, 'a:1:{i:0;s:5:\"semua\";}', 'COVID', 'COVID SUDAH USAI', '<p>CONTOH MATERI</p>', NULL, '2020-07-05 21:00:00', 'https://www.youtube.com/watch?v=0-mwwfaSD44', '2020-07-05 14:10:16', NULL),
(13, 1, 'a:1:{i:0;s:5:\"semua\";}', 'COVID', 'CONTOH LAGI', '<p><iframe src=\"https://www.youtube.com/embed/0-mwwfaSD44\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p><a href=\"https://www.youtube.com/watch?v=0-mwwfaSD44\" target=\"_blank\" rel=\"noopener\">TONTON VIDEO</a></p>', NULL, '2020-07-05 21:00:00', '', '2020-07-05 14:14:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(250) DEFAULT NULL,
  `jml_salah` int(250) DEFAULT NULL,
  `nilai_esai` varchar(250) DEFAULT NULL,
  `skor` varchar(250) DEFAULT NULL,
  `total` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_ujian`, `id_mapel`, `id_siswa`, `kode_ujian`, `ujian_mulai`, `ujian_berlangsung`, `ujian_selesai`, `jml_benar`, `jml_salah`, `nilai_esai`, `skor`, `total`, `status`, `ipaddress`, `hasil`, `jawaban`, `jawaban_esai`, `nilai_esai2`, `online`, `id_soal`, `id_opsi`, `id_esai`, `blok`) VALUES
(2, 1, 1, 26, 'USBK', '2023-05-31 22:32:45', '2023-05-31 22:40:24', '2023-06-03 18:06:42', 0, 30, NULL, '0', '0', NULL, '::1', 1, 'a:30:{i:1;s:1:\"X\";i:2;s:1:\"X\";i:3;s:1:\"X\";i:4;s:1:\"X\";i:5;s:1:\"X\";i:6;s:1:\"X\";i:7;s:1:\"X\";i:8;s:1:\"X\";i:9;s:1:\"X\";i:10;s:1:\"X\";i:11;s:1:\"X\";i:12;s:1:\"X\";i:13;s:1:\"X\";i:14;s:1:\"X\";i:15;s:1:\"X\";i:16;s:1:\"X\";i:17;s:1:\"X\";i:18;s:1:\"X\";i:19;s:1:\"X\";i:20;s:1:\"X\";i:21;s:1:\"X\";i:22;s:1:\"X\";i:23;s:1:\"X\";i:24;s:1:\"X\";i:25;s:1:\"X\";i:26;s:1:\"X\";i:27;s:1:\"X\";i:28;s:1:\"X\";i:29;s:1:\"X\";i:30;s:1:\"X\";}', 'a:0:{}', NULL, 0, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengawas`
--

CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pengawas`
--

INSERT INTO `pengawas` (`id_pengawas`, `nip`, `nama`, `jabatan`, `username`, `password`, `level`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `nuptk`, `bidang_studi`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `sumber_gaji`, `ahli_lab`, `nama_ibu`, `nama_suami`, `nik_suami`, `pekerjaan`, `tmt`, `keahlian_isyarat`, `kewarganegaraan`, `npwp`, `foto`, `ptk_id`, `password2`, `ruang`) VALUES
(1, '-', 'administrator', '', 'admin', '$2y$10$z8xVDKCCx2nAQxskMjYkJOiGpVqRJqvx57n8BLpABuXqIz6fKoEa6', 'admin', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', NULL, NULL, NULL),
(295, '-', 'sman14bandaaceh', NULL, 'sman14bandaaceh', '$2y$10$K.jiW8myhxQ4zw3UicL2iOTX.8l75sRR8hkkl55SDWAjmXZ5bkC3.', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '197708182003122004', 'Cut Ernawati', 'XII-MIPA', 'GURUCE', '$2y$10$guk4m0jyFRdVLqBdZfVaEejTgEErhAH5v7l9dEHVpm.doJnLW4FQm', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '197401171999032004', 'Cut Putri Zulaicha', '', 'GURUCP', '$2y$10$UPhX6j7vNQ8dtB7U2dgkgeiGd80k917IUfoPbsdY15ZUZjHv/aSgm', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '197405092006042014', 'Elta Mustaklima', '', 'GURUEA', '$2y$10$ozyqHRjqD3JCfl9DJkxUueXbrLL1QcalEI89gffUaRP9BncoYiEWK', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '196804271995122001', 'Imadiah', '', 'GURUIM', '$2y$10$izVieDi8Vhf3ZoXH0uRtZuito2AuA9BhKkBKcP5iuZYTlNwvVTIjG', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '197209092005042001', 'Isnani', '', 'GURUIN', '$2y$10$1yJDZwL.v/ekKAjVAStQr.em5awX5D9XMQbDxY/tMs2ru552T7sOW', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '197005142007012003', 'Khairumi', '', 'GURUKR', '$2y$10$yuTlBqB4NOp8xsBvslHKve1r6me4X.pLKogOV4q8u.225guYIZY5a', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '196609122007012001', 'Mustikawati', '', 'GURUMK', '$2y$10$g7gB10BmaKMjH0NqZTDz.eyyQQ1wWe71SP01EeuKLW7Yv9LtBB.xC', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '196609271989022002', 'Nazliah', '', 'GURUNZ', '$2y$10$n0lsM/G6DODxIDwSKPDZTuMmO2QgHus0UsSQ3121eKvq6KetyFovW', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '197712152010032002', 'Nikmah Hayati', '', 'GURUNH', '$2y$10$AyTVoJQPWEdSJVppi69VqeX1j8kyKwJlm0isqtTAWtnc/Y2jeUjqe', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '198808152022212004', 'Suarni', '', 'GURUSU', '$2y$10$cz/hR/MIo/pQBEqLJ2lNDuSoDis4Qh4AAFNqnPsaQEvKJmXefj3Pm', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '198406272009042009', 'Yuni Irawati', 'XII-IPS', 'GURUYI', '$2y$10$8HKDoNpgaw2e3q3LT7DnK.ZZ4O5.uI4DKkf/GUx.7lh3vMx1TsmSC', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '196307161989031013', 'Yunizar', '', 'GURUYZ', '$2y$10$hSfq4dD9uxFSG/fbk/gOx.6VZEkUuPXMGh8Vxfuv.KWgDftIG4Kj.', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '', 'Riski Ramdani', '', 'GURURR', '$2y$10$DgJdgswITyVWG94NXxQpuu9FgelGZd.n.Xg3w9BFAyY50PBn8uruG', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '', 'Santi Marlinda', '', 'GURUSM', '$2y$10$mAx.w/BOq.fpdMcSWVgw1uQx3z2qry2nkPfpF3H7.6BoT12utXnkq', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '', 'Maulia Diah Pitaloka', '', 'GURUMD', '$2y$10$nEWG46l/hVF3Yloy0ATYE./LBvsy146AIY4ak7hWDbklWH8z5c2zK', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '196903102000081001', 'Afwani Ch', '', 'GURUAFWANI', '$2y$10$ove4unNqynj8f6ZW3EZsqOb42SeZPlydqAX8I3Sz0uxnGc1A0OHMC', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `type`, `judul`, `user`, `text`, `date`) VALUES
(10, 'eksternal', 'MOHON PERHATIAN!!', 1, '<p>Bacalah Soal dengan seksama, jangan terburu-buru. Jika ada Soal yang kurang jelas, tanyakan ke guru yang bertugas.</p>', '2022-06-11 12:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `pk`
--

CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pk`
--

INSERT INTO `pk` (`id_pk`, `program_keahlian`, `jurusan_id`) VALUES
('IPS', 'IPS', NULL),
('MIPA', 'MIPA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referensi_jurusan`
--

CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `keterangan`) VALUES
('R1', 'R1'),
('R2', 'R2');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`kode_server`, `nama_server`, `status`) VALUES
('', '', 'aktif'),
('islam', 'islam', 'aktif'),
('SR01', 'SR01', 'aktif'),
('R01', 'R01', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sesi`
--

INSERT INTO `sesi` (`kode_sesi`, `nama_sesi`) VALUES
('1', '1'),
('2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  `bc` varchar(50) NOT NULL,
  `maintenance` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `aplikasi`, `kode_sekolah`, `sekolah`, `jenjang`, `kepsek`, `nip`, `alamat`, `kecamatan`, `kota`, `telp`, `fax`, `web`, `email`, `logo`, `header`, `header_kartu`, `nama_ujian`, `versi`, `ip_server`, `waktu`, `server`, `id_server`, `url_host`, `token_api`, `sekolah_id`, `npsn`, `db_versi`, `bc`, `maintenance`) VALUES
(1, 'USBK', 'SEKMAJU', 'SMA DIGITAL BANGSA', 'SMK', 'Rikawati S.Si', '197303211997022001', 'Jl. Rama Setia No. 47 ', 'Kuta Raja                                         ', 'Kota Banda Aceh', '', '-', 'http://sman13bandaaceh.sch.id', '', 'dist/img/logo36.png', '', 'UJIAN AKHIR SEKOLAH', 'Ujian Sekolah Berbasis Komputer', '2.9', 'http://routerdpr.ddns.net:82/candycbt', 'Asia/Jakarta', 'pusat', 'R01', 'http://pakaicbt.my.id', 'HO3FIrBYcFUMp0', '8cce47df-aae7-4274-83cb-5af3093eab56', '69787351', '2.9.2', 'dist/img/bc.png', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `sinkron`
--

CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sinkron`
--

INSERT INTO `sinkron` (`nama_data`, `data`, `jumlah`, `tanggal`, `status_sinkron`) VALUES
('DATA1', 'siswa', '42', '2023-03-01 03:12:55', 1),
('DATA2', 'bank soal', '18', '2023-03-01 03:12:55', 1),
('DATA3', 'soal', '597', '2023-03-01 03:12:55', 1),
('DATA4', 'jadwal', '1', '2023-03-01 03:12:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'aktif',
  `online` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `idpk`, `nis`, `no_peserta`, `nama`, `level`, `ruang`, `sesi`, `username`, `password`, `foto`, `server`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `hp`, `email`, `skhun`, `no_kps`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nohp_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nohp_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `nisn`, `peserta_didik_id`, `semester_id`, `rombongan_belajar_id`, `status`, `online`) VALUES
(1, 'XII-MIPA', 'MIPA', '0622', '0622-001', 'ALQI JULIAN PRADANA', 'XII', 'R1', 1, 'ALQI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(2, 'XII-MIPA', 'MIPA', '0623', '0623-002', 'ANGGI ULTARI', 'XII', 'R1', 1, 'ANGGI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(3, 'XII-MIPA', 'MIPA', '0625', '0625-003', 'ARI HANSYAH', 'XII', 'R1', 1, 'ARI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(4, 'XII-MIPA', 'MIPA', '0627', '0627-004', 'AULIA RAHMADANI', 'XII', 'R1', 1, 'AULIA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(5, 'XII-MIPA', 'MIPA', '0628', '0628-005', 'BALQIS MAULYA', 'XII', 'R1', 1, 'BALQIS14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(6, 'XII-MIPA', 'MIPA', '0739', '0739-006', 'CHALISA REYQA', 'XII', 'R1', 1, 'CHALISA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(7, 'XII-MIPA', 'MIPA', '0746', '0746-007', 'DANNY HARI SETIAWAN', 'XII', 'R1', 1, 'DANNY14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(8, 'XII-MIPA', 'MIPA', '0631', '0631-008', 'FATHIA AZ-ZAHRAH', 'XII', 'R1', 1, 'FATHIA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(9, 'XII-MIPA', 'MIPA', '0635', '0635-009', 'KANZUL ARSI', 'XII', 'R1', 1, 'KANZUL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(10, 'XII-MIPA', 'MIPA', '0638', '0638-010', 'M IRFAN KAMIL', 'XII', 'R1', 1, 'IRFAN14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(11, 'XII-MIPA', 'MIPA', '0640', '0640-011', 'MAYA YULIANA', 'XII', 'R1', 1, 'MAYA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(12, 'XII-MIPA', 'MIPA', '0641', '0641-012', 'MEILIHAN SARI', 'XII', 'R1', 1, 'MEILIHAN14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(13, 'XII-MIPA', 'MIPA', '0649', '0649-013', 'PAYUNG NAHOMBANG HASIBUAN', 'XII', 'R1', 1, 'PAYUNG14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(14, 'XII-MIPA', 'MIPA', '0584', '0584-014', 'ROHANDA', 'XII', 'R1', 1, 'ROHANDA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(15, 'XII-MIPA', 'MIPA', '0744', '0744-015', 'SIGIT SETIAWAN', 'XII', 'R1', 1, 'SIGIT14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(16, 'XII-MIPA', 'MIPA', '0652', '0652-016', 'SIRATUL HAYAT', 'XII', 'R1', 1, 'SIRATUL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(17, 'XII-MIPA', 'MIPA', '0653', '0653-017', 'SITI FAULA', 'XII', 'R1', 1, 'FAULA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(18, 'XII-MIPA', 'MIPA', '0655', '0655-018', 'SUCI RAHMADANI', 'XII', 'R1', 1, 'SUCI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(19, 'XII-MIPA', 'MIPA', '0837', '0837-019', 'T RAJA AFNAN FAHMI', 'XII', 'R1', 1, 'RAJA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(20, 'XII-MIPA', 'MIPA', '0657', '0657-020', 'TIA MAULIA', 'XII', 'R1', 1, 'TIA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(21, 'XII-MIPA', 'MIPA', '0658', '0658-021', 'TRIAMANDA UTAMI', 'XII', 'R1', 1, 'MANDA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(22, 'XII-MIPA', 'MIPA', '0659', '0659-022', 'WIKA NIFUSI', 'XII', 'R1', 1, 'WIKA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(23, 'XII-MIPA', 'MIPA', '0660', '0660-023', 'YANTI NANDA SARI', 'XII', 'R1', 1, 'YANTI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(24, 'XII-IPS', 'IPS', '0620', '0620-024', 'ABDIZIL IQRAM', 'XII', 'R2', 2, 'ABDIZIL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(25, 'XII-IPS', 'IPS', '0661', '0661-025', 'AHMAD NURMANSYAH', 'XII', 'R2', 2, 'AHMAD14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(26, 'XII-IPS', 'IPS', '0624', '0624-026', 'ANSARUL FAJAR', 'XII', 'R2', 2, 'ANSARUL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(27, 'XII-IPS', 'IPS', '0626', '0626-027', 'ARIFAL', 'XII', 'R2', 2, 'ARIFAL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(28, 'XII-IPS', 'IPS', '0629', '0629-028', 'FADHIL AKBAR', 'XII', 'R2', 2, 'FADHIL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(29, 'XII-IPS', 'IPS', '0639', '0639-029', 'FERI MAULANA', 'XII', 'R2', 2, 'FERI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(30, 'XII-IPS', 'IPS', '0747', '0747-030', 'INDAH FAHIRA', 'XII', 'R2', 2, 'INDAH14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(31, 'XII-IPS', 'IPS', '0634', '0634-031', 'JUWITA NAZZILA', 'XII', 'R2', 2, 'JUWITA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(32, 'XII-IPS', 'IPS', '0636', '0636-032', 'M. FAZIL', 'XII', 'R2', 2, 'FAZIL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(33, 'XII-IPS', 'IPS', '0848', '0848-033', 'MUHAMMAD RASYA', 'XII', 'R2', 2, 'RASYA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(34, 'XII-IPS', 'IPS', '0642', '0642-034', 'MUHAMMAD RISKY ANANDA', 'XII', 'R2', 2, 'RISKY14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(35, 'XII-IPS', 'IPS', '0643', '0643-035', 'MUSAF AL IMAM', 'XII', 'R2', 2, 'MUSAF14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(36, 'XII-IPS', 'IPS', '0644', '0644-036', 'NAISYA PUTRI', 'XII', 'R2', 2, 'NAISYA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(37, 'XII-IPS', 'IPS', '0745', '0745-037', 'NASRUWAL HAKIM', 'XII', 'R2', 2, 'NASRUWAL14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(38, 'XII-IPS', 'IPS', '0646', '0646-038', 'NURLAILA', 'XII', 'R2', 2, 'NURLAILA14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(39, 'XII-IPS', 'IPS', '0648', '0648-039', 'NYAK BAHAGIANA RAMADHANI', 'XII', 'R2', 2, 'NYAK14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(40, 'XII-IPS', 'IPS', '0651', '0651-040', 'RYAN TADAYA', 'XII', 'R2', 2, 'RYAN14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(41, 'XII-IPS', 'IPS', '0654', '0654-041', 'SRI WAHYUNI SAPUTRI NINGSIH', 'XII', 'R2', 2, 'SRI14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0),
(42, 'XII-IPS', 'IPS', '0656', '0656-042', 'TEUKU TAUFIK RINALDI', 'XII', 'R2', 2, 'TAUFIK14', '123456', '', 'R01', NULL, NULL, NULL, 'ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aktif', 0);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pilB` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pilC` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pilD` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pilE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_mapel`, `nomor`, `soal`, `jenis`, `pilA`, `pilB`, `pilC`, `pilD`, `pilE`, `jawaban`, `file`, `file1`, `fileA`, `fileB`, `fileC`, `fileD`, `fileE`) VALUES
(1299, 2, 1, ' Pernyataan berikut ini yang benar adalah . . . .', 1, '-3 &amp;gt; -2', '-1 &amp;lt; -5', '-2 &amp;gt; 0 ', '-7 &amp;lt; -8', '', 'C', NULL, '', '', '', '', '', ''),
(1300, 2, 2, ' Hasil dari -12 &times; 5 &ndash; (-45) = . . . .', 1, '-15', '-30', '-60', '-105', '', 'A', NULL, '', '', '', '', '', ''),
(1301, 2, 3, ' Nilai dari 53+33+1332= . . . .', 1, '15', '16', '17', '19', '', 'C', NULL, '', '', '', '', '', ''),
(1302, 2, 4, ' Nilai dari 62 &times; 65 adalah . . . .', 1, '76', '106', '67', '610', '', 'C', NULL, '', '', '', '', '', ''),
(1303, 2, 5, ' Suhu sebuah ruangan berubah dari 5˚C menjadi -2˚C. Hal ini berarti suhu . . . .', 1, 'Naik 3˚C', 'Naik 7˚C', 'Turun 3˚C', 'Turun 7˚C', '', 'D', NULL, '', '', '', '', '', ''),
(1304, 2, 6, ' Diketahui: K = -8 &times; 3 + (-2) &times; (-6)                             L = (-7  + (-5)) : 4Nilai K : L = . . . .', 1, '-3', '-2', '4', '6', '', 'C', NULL, '', '', '', '', '', ''),
(1305, 2, 7, ' Nilai dari (-5)4 &times; (-4)2 = . . . .', 1, '-10.000', '-1.000', '1.000', '10.000', '', 'D', NULL, '', '', '', '', '', ''),
(1306, 2, 8, ' Arti dari a3 adalah . . . .', 1, '3a', 'a &times; 3', 'a + a + a', 'a &times; a &times; a', '', 'D', NULL, '', '', '', '', '', ''),
(1307, 2, 9, ' Sebuah kuis terdiri atas 20 soal. Aturan penilaian kuis sebagai berikut. Nilai 5 untuk setiap jawaban yang benar dan -2 untuk setiap jawaban yang salah. Jika Candra menjawab 12 soal dengan benar dan soal yang lain salah, nilai Candra adalah . . . .', 1, '40', '41', '43', '44', '', 'D', NULL, '', '', '', '', '', ''),
(1308, 2, 10, ' Daerah arsiran pada gambar di bawah menunjukkan pecahan . . . .', 1, '14', '24', '34', '78', '', 'B', NULL, '&lt;a:blipr:embed=&quot;rId4&quot;cstate=&quot;print&quot;&gt;&lt;/a:blip&gt;', '', '', '', '', ''),
(1309, 2, 11, ' Bentuk desimal dari 1740 adalah . . . .', 1, '0,475', '0,425', '0,375', '0,0425', '', 'B', NULL, '', '', '', '', '', ''),
(1310, 2, 12, ' Hasil 225&times;116 adalah . . . .', 1, '2115', '2315', '2415', '323', '', 'C', NULL, '', '', '', '', '', ''),
(1311, 2, 13, ' Gambar di bawah ini yang menunjukkan pecahan 38 adalah . . . .', 1, '&amp;amp;', '&amp;amp;', '&amp;amp;', '&amp;amp;', '', 'C', NULL, '', '&lt;a:blipr:embed=&quot;rId5&quot;cstate=&quot;print&quot;&gt;&lt;/a:blip&gt;', '&lt;a:blipr:embed=&quot;rId6&quot;cstate=&quot;print&quot;&gt;&lt;/a:blip&gt;', '&lt;a:blipr:embed=&quot;rId7&quot;cstate=&quot;print&quot;&gt;&lt;/a:blip&gt;', '&lt;a:blipr:embed=&quot;rId8&quot;cstate=&quot;print&quot;&gt;&lt;/a:blip&gt;', ''),
(1312, 2, 14, ' Dari 42 siswa dalam sebuah kelas, 18 orang di antaranya laki-laki. Perbandingan jumlah siswa perempuan dengan jumlah siswa laki-laki dalam kelas itu adalah . . . .', 1, '3 : 4', '4 : 3', '2 : 3', '3 : 2', '', 'B', NULL, '', '', '', '', '', ''),
(1313, 2, 15, ' Hasil dari 517 &times;159 adalah . . . .', 1, '712', '75063', '8', '8463', '', 'C', NULL, '', '', '', '', '', ''),
(1314, 2, 16, ' Bentuk sederhana dari 234&times;235: 238 adalah . . . .', 1, '2317', '233', '23', '2313', '', 'C', NULL, '', '', '', '', '', ''),
(1315, 2, 17, ' Bentuk sederhana dari 4052 adalah . . . .', 1, '1013', '56', '23', '58', '', 'A', NULL, '', '', '', '', '', ''),
(1316, 2, 18, ' Wati akan membuat dua macam roti yaitu roti rasa coklat dan roti rasa keju. Untuk membuat 1 kg roti cokelat diperlukan 34 kg tepung terigu dan untuk membuat keju diperlukan 12 kg tepung terigu. Jika wati ingin membuat 20 kg roti cokelat dan 30 kg roti keju, tepung terigu yang diperlukan Wati adalah  . . . .', 1, '15 kg', '20 kg', '25 kg', '30 kg', '', 'D', NULL, '', '', '', '', '', ''),
(1317, 2, 19, ' Koefisien x pada bentuk aljabar 3x2 + 4x + 5 adalah . . . .', 1, '2', '3', '4', '5', '', 'C', NULL, '', '', '', '', '', ''),
(1318, 2, 20, ' Bentuk sederhana dari 3(2x &ndash; y) &ndash; 5(x &ndash; y) adalah . . . .', 1, 'x + 2y', 'x - 2y ', 'x - y', 'x', '', 'B', NULL, '', '', '', '', '', ''),
(1319, 2, 21, ' Hasil dari 2a-39+2-a5 adalah . . . .', 1, 'a+345', 'a+245', 'a-145', '2a+145', '', 'A', NULL, '', '', '', '', '', ''),
(1320, 2, 22, ' Bentuk sederhana dari 3-x4+x6 adalah . . . .', 1, '9-x12', '3-2x12', '-2x-312', '2x-912', '', 'A', NULL, '', '', '', '', '', ''),
(1321, 2, 23, ' Hasil dari (3x + 5)2 adalah . . . .', 1, '9x2 + 11x + 25 ', '9x2 + 15x + 25', '9x2 + 30x + 25', '6x2 + 15x + 25', '', 'C', NULL, '', '', '', '', '', ''),
(1322, 2, 24, ' Pemfaktoran dari 4x2 &ndash; 9y2 adalah . . . .', 1, '(4x- y)(x + 9y)', '(4x + y)(x - 9y)', '(2x- 3y)(2x + 3y)', '(2x- 3y)2', '', 'C', NULL, '', '', '', '', '', ''),
(1323, 2, 25, ' Bentuk sederhana dari 6a2 &ndash; 3ab + 2b2 &ndash; 5a2 + 2ab + b2 adalah . . . .', 1, 'a2- ab + 3b2', 'a2- ab + b2', 'a2- 5ab + 3b2', 'a2- 5ab + b2', '', 'A', NULL, '', '', '', '', '', ''),
(1324, 1, 1, 'Perhatikan deskripsi berikut! <br>Coronavirus memang merupakan keluarga besar virus yang bisa menyebabkan berbagai jenis penyakit pada manusia dan hewan. Pada manusia, virus ini biasanya menyebabkan penyakit infeksi saluran pernapasan. Penyakit ini bisa bervariasi dari flu biasa hingga kondisi yang lebih serius seperti Middle East Respiratory Syndrome (MERS) dan Severe Acute Respiratory Syndrome (SARS). <br><br>Coronavirus jenis baru, yang ditemukan pada manusia sejak kejadian luar biasa muncul di Wuhan, Cina, pada Desember 2019, diberi nama Severe Acute Respiratory Syndrome Coronavirus 2 (SARS-CoV-2). Virus ini menyebabkan penyakit yang kita kenal dengan nama Coronavirus Disease-2019 (COVID-19). <br><br>Penting untuk kita semua menjaga kesehatan dan kebersihan diri, serta mengikuti anjuran pemerintah dan organisasi kesehatan dunia dalam upaya pencegahan penyebaran COVID-19. Tetap sehat ya! <br><br>Manakah peryataan berikut yang paling tepat dalam menjelaskan Coronavirus dan COVID-19?', 1, 'Coronavirus merupakan keluarga besar virus yang menyebabkan penyakit pada manusia dan hewan. Pada manusia biasanya menyebabkan penyakit infeksi saluran pernapasan, mulai flu biasa hingga penyakit yang serius seperti Middle East Respiratory Syndrome (MERS) dan Sindrom Pernafasan Akut Berat/ Severe Acute Respiratory Syndrome (SARS).Coronavirus jenis baru yang ditemukan pada manusia sejak kejadian luar biasa muncul di Wuhan Cina, pada Desember 2019, kemudian diberi nama Severe Acute Respiratory Syndrome Coronavirus 2 (SARS-COV2), dan menyebabkan penyakit Coronavirus Disease-2019 (COVID-19).', 'Coronavirus jenis lama yang ditemukan pada manusia sejak kejadian luar biasa muncul di Wuhan Cina', 'Coronavirus merupakan keluarga besar virus yang menyebabkan penyakit pada manusia dan bukan pada hewan.', 'Pada manusia biasanya menyebabkan penyakit infeksi saluran pernapasan', '', 'A', NULL, '17000443331.png', '', '', '', '', ''),
(1325, 1, 2, 'Apakah COVID-19 sama seperti SARS?', 1, 'COVID-19 disebabkan oleh SARS-COV3 yang termasuk keluarga besar coronavirus', 'COVID-19 disebabkan oleh SARS-COV2 yang termasuk keluarga besar coronavirus yang sama dengan penyebab SARS pada 2003, hanya berbeda jenis virusnya.Gejalanya mirip dengan SARS, namun angka kematian SARS (9,6 persen) lebih tinggi dibanding COVID-19 (kurang dari 5 persen), walau jumlah kasus COVID-19 jauh lebih banyak dibanding SARS. COVID-19 juga memiliki penyebaran yang lebih luas dan cepat ke beberapa negara dibanding SARS.', 'Gejalanya mirip dengan SARS, namun angka kematian SARS (9,6 persen) lebih tinggi dibanding COVID-19 (kurang dari 15 persen)', 'COVID-19 sama seperti SARS.', '', 'B', NULL, '17000443336.png', '', '', '', '', ''),
(1326, 1, 3, 'Apakah COVID-19 dapat ditularkan dari orang yang tidak bergejala?', 1, 'Saat ini WHO menilai risiko penularan dari seseorang yang tidak bergejala COVID-19 sama sekali, sangat besar kemungkinannya', 'Cara penularan utama penyakit ini adalah melalui tetesan kecil (droplet) yang dikeluarkan pada saat seseorang batuk atau bersin. Saat ini WHO menilai risiko penularan dari seseorang yang tidak bergejala COVID-19 sama sekali, sangat kecil kemungkinannya.Namun, banyak orang yang teridentifikasi COVID-19 hanya mengalami gejala ringan seperti batuk ringan atau tidak mengeluh sakit, yang mungkin terjadi pada tahap awal penyakit. Sampai saat ini, para ahli masih terus melakukan penyelidikan untuk menentukan periode penularan atau masa inkubasi COVID-19.', 'Tidak. Covid hanya ditularkan dari orang yang sudah positif.', 'Para ahli masih terus melakukan penyelidikan untuk menentukan periode penularan atau masa inkubasi COVID-19', '', 'B', NULL, '', '', '', '', '', ''),
(1327, 1, 4, 'Manakah berikut ini yang merupakan gambar pesawat terbang?', 1, ' ', ' ', ' ', ' ', '', 'C', NULL, '', '17000443335.png', '17000443334.png', '17000443333.png', '17000443332.png', ''),
(1328, 1, 5, 'Bagaimana cara mencegah penularan virus corona?', 1, 'Menjaga kesehatan dan kebugaran agar stamina tubuh tetap prima dan sistem imunitas / kekebalan tubuh meningkat dan juga Mencuci tangan dengan benar secara teratur menggunakan air dan sabun atau hand-rub berbasis alkohol. Mencuci tangan sampai bersih selain dapat membunuh virus yang mungkin ada di tangan kita, tindakan ini juga merupakan salah satu tindakan yang mudah dan murah. Sekitar 98% penyebaran penyakit bersumber dari tangan. Karena itu, menjaga kebersihan tangan adalah hal yang sangat penting.', 'Hindari kontak dengan orang lain atau bepergian ke tempat umum.', 'Ketika batuk dan bersin, tutup hidung dan mulut Anda dengan tisu atau lengan atas bagian dalam (bukan dengan telapak tangan).', 'Semua benar', '', 'D', NULL, '', '', '', '', '', ''),
(1329, 1, 6, 'Berapa lama virus ini bertahan di permukaan benda?', 1, 'Sampai saat ini belum diketahui dengan pasti berapa lama COVID-19 mampu bertahan di permukaan suatu benda, meski studi awal menunjukkan COVID-19 dapat bertahan hingga beberapa jam, tergantung jenis permukaan, suhu, atau kelembaban lingkungan.Namun, disinfektan sederhana dapat membunuh virus tersebut sehingga tidak mungkin menginfeksi orang lagi. Dan membiasakan cuci tangan dengan air dan sabun, atau hand-rub berbasis alkohol, serta hindari menyentuh mata, mulut atau hidung (segitiga wajah) lebih efektif melindungi diri Anda.', 'Bisa bertahan 20 menit', 'Bisa bertahan selama 2 hari pada permukaan uang kertas', 'Bertahan 2 jam pada handle pintu', '', 'A', NULL, '', '', '', '', '', ''),
(1330, 1, 7, 'Manakah yang lebih rentan terinfeksi coronavirus, apakah orang yang lebih tua, atau orang yang lebih muda?', 1, 'Hanya orang berumur 30 tahun keatas yang bisa terinfeksi.', 'Bayi rentan terpapar coronavirus.', 'Orang desawa lebih rentan terpapar drang tua lebih rentan daripada ', 'Tidak ada batasan usia orang-orang dapat terinfeksi oleh coronavirus ini (COVID-19). Namun, orang yang lebih tua, dan orang-orang dengan kondisi medis yang sudah ada sebelumnya (seperti asma, diabetes, penyakit jantung, atau tekanan darah tinggi) tampaknya lebih rentan untuk menderita sakit parah.', '', 'D', NULL, '', '', '', '', '', ''),
(1331, 1, 8, 'Amankah jika kita menerima paket barang dari China atau dari negara lain yang melaporkan virus ini?', 1, 'Tidak aman. Pembawa paket lebih rentang terpapar COVID-19', 'Ya, aman. Orang yang menerima paket tidak berisiko tertular virus COVID-19. Dari pengalaman dengan coronavirus lain, kita tahu bahwa jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket.', 'Tidak aman. COVID-19 berasal dari China.', 'Tidak aman. Jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket', '', 'B', NULL, '', '', '', '', '', ''),
(1332, 1, 9, 'Apakah sudah ada pembatasan untuk bepergian ke China dan negara terjangkit lainnya?', 1, 'Sampai hari ini belum ada', 'Indonesia belum memberlakukan pembatasan perjalanan ke Negara terjangkit COVID-19', 'Sejak 5 Februari 2020, Indonesia telah memberlakukan pembatasan perjalanan ke China berupa penghentian sementara penerbangan dari dan ke ChinaPada&nbsp;5 Maret 2020, Indonesia juga memberlakukan pelarangan transit atau masuk ke Indonesia bagi pelaku perjalanan yang dalam 14 hari sebelumnya datang dari wilayah berikut:Iran : Tehran, Qom, Gilan, Italia : Wilayah Lombardi, Veneto, Emilia Romagna, Marche, dan Piedmont, Korea Selatan: Kota Daegu dan Provinsi Gyeongsangbuk-do.', 'Pembatasan untuk bepergian ke China dan negara terjangkit lainnya telah dilakukan Indonesia sejak 2019', '', 'C', NULL, '', '', '', '', '', ''),
(1333, 1, 10, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1334, 1, 11, 'Berapa lama virus ini bertahan di permukaan benda?', 1, 'Sampai saat ini belum diketahui dengan pasti berapa lama COVID-19 mampu bertahan di permukaan suatu benda, meski studi awal menunjukkan COVID-19 dapat bertahan hingga beberapa jam, tergantung jenis permukaan, suhu, atau kelembaban lingkungan.Namun, disinfektan sederhana dapat membunuh virus tersebut sehingga tidak mungkin menginfeksi orang lagi. Dan membiasakan cuci tangan dengan air dan sabun, atau hand-rub berbasis alkohol, serta hindari menyentuh mata, mulut atau hidung (segitiga wajah) lebih efektif melindungi diri Anda.', 'Bisa bertahan 20 menit', 'Bisa bertahan selama 2 hari pada permukaan uang kertas', 'Bertahan 2 jam pada handle pintu', '', 'A', NULL, '', '', '', '', '', ''),
(1335, 1, 12, 'Manakah yang lebih rentan terinfeksi coronavirus, apakah orang yang lebih tua, atau orang yang lebih muda?', 1, 'Hanya orang berumur 30 tahun keatas yang bisa terinfeksi.', 'Bayi rentan terpapar coronavirus.', 'Orang desawa lebih rentan terpapar drang tua lebih rentan daripada ', 'Tidak ada batasan usia orang-orang dapat terinfeksi oleh coronavirus ini (COVID-19). Namun, orang yang lebih tua, dan orang-orang dengan kondisi medis yang sudah ada sebelumnya (seperti asma, diabetes, penyakit jantung, atau tekanan darah tinggi) tampaknya lebih rentan untuk menderita sakit parah.', '', 'D', NULL, '', '', '', '', '', ''),
(1336, 1, 13, 'Amankah jika kita menerima paket barang dari China atau dari negara lain yang melaporkan virus ini?', 1, 'Tidak aman. Pembawa paket lebih rentang terpapar COVID-19', 'Ya, aman. Orang yang menerima paket tidak berisiko tertular virus COVID-19. Dari pengalaman dengan coronavirus lain, kita tahu bahwa jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket.', 'Tidak aman. COVID-19 berasal dari China.', 'Tidak aman. Jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket', '', 'B', NULL, '', '', '', '', '', ''),
(1337, 1, 14, 'Apakah sudah ada pembatasan untuk bepergian ke China dan negara terjangkit lainnya?', 1, 'Sampai hari ini belum ada', 'Indonesia belum memberlakukan pembatasan perjalanan ke Negara terjangkit COVID-19', 'Sejak 5 Februari 2020, Indonesia telah memberlakukan pembatasan perjalanan ke China berupa penghentian sementara penerbangan dari dan ke ChinaPada&nbsp;5 Maret 2020, Indonesia juga memberlakukan pelarangan transit atau masuk ke Indonesia bagi pelaku perjalanan yang dalam 14 hari sebelumnya datang dari wilayah berikut:Iran : Tehran, Qom, Gilan, Italia : Wilayah Lombardi, Veneto, Emilia Romagna, Marche, dan Piedmont, Korea Selatan: Kota Daegu dan Provinsi Gyeongsangbuk-do.', 'Pembatasan untuk bepergian ke China dan negara terjangkit lainnya telah dilakukan Indonesia sejak 2019', '', 'C', NULL, '', '', '', '', '', ''),
(1338, 1, 15, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1339, 1, 16, 'Manakah yang lebih rentan terinfeksi coronavirus, apakah orang yang lebih tua, atau orang yang lebih muda?', 1, 'Hanya orang berumur 30 tahun keatas yang bisa terinfeksi.', 'Bayi rentan terpapar coronavirus.', 'Orang desawa lebih rentan terpapar drang tua lebih rentan daripada ', 'Tidak ada batasan usia orang-orang dapat terinfeksi oleh coronavirus ini (COVID-19). Namun, orang yang lebih tua, dan orang-orang dengan kondisi medis yang sudah ada sebelumnya (seperti asma, diabetes, penyakit jantung, atau tekanan darah tinggi) tampaknya lebih rentan untuk menderita sakit parah.', '', 'D', NULL, '', '', '', '', '', ''),
(1340, 1, 17, 'Amankah jika kita menerima paket barang dari China atau dari negara lain yang melaporkan virus ini?', 1, 'Tidak aman. Pembawa paket lebih rentang terpapar COVID-19', 'Ya, aman. Orang yang menerima paket tidak berisiko tertular virus COVID-19. Dari pengalaman dengan coronavirus lain, kita tahu bahwa jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket.', 'Tidak aman. COVID-19 berasal dari China.', 'Tidak aman. Jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket', '', 'B', NULL, '', '', '', '', '', ''),
(1341, 1, 18, 'Apakah sudah ada pembatasan untuk bepergian ke China dan negara terjangkit lainnya?', 1, 'Sampai hari ini belum ada', 'Indonesia belum memberlakukan pembatasan perjalanan ke Negara terjangkit COVID-19', 'Sejak 5 Februari 2020, Indonesia telah memberlakukan pembatasan perjalanan ke China berupa penghentian sementara penerbangan dari dan ke ChinaPada&nbsp;5 Maret 2020, Indonesia juga memberlakukan pelarangan transit atau masuk ke Indonesia bagi pelaku perjalanan yang dalam 14 hari sebelumnya datang dari wilayah berikut:Iran : Tehran, Qom, Gilan, Italia : Wilayah Lombardi, Veneto, Emilia Romagna, Marche, dan Piedmont, Korea Selatan: Kota Daegu dan Provinsi Gyeongsangbuk-do.', 'Pembatasan untuk bepergian ke China dan negara terjangkit lainnya telah dilakukan Indonesia sejak 2019', '', 'C', NULL, '', '', '', '', '', ''),
(1342, 1, 19, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1343, 1, 20, 'Berapa lama virus ini bertahan di permukaan benda?', 1, 'Sampai saat ini belum diketahui dengan pasti berapa lama COVID-19 mampu bertahan di permukaan suatu benda, meski studi awal menunjukkan COVID-19 dapat bertahan hingga beberapa jam, tergantung jenis permukaan, suhu, atau kelembaban lingkungan.Namun, disinfektan sederhana dapat membunuh virus tersebut sehingga tidak mungkin menginfeksi orang lagi. Dan membiasakan cuci tangan dengan air dan sabun, atau hand-rub berbasis alkohol, serta hindari menyentuh mata, mulut atau hidung (segitiga wajah) lebih efektif melindungi diri Anda.', 'Bisa bertahan 20 menit', 'Bisa bertahan selama 2 hari pada permukaan uang kertas', 'Bertahan 2 jam pada handle pintu', '', 'A', NULL, '', '', '', '', '', ''),
(1344, 1, 21, 'Manakah yang lebih rentan terinfeksi coronavirus, apakah orang yang lebih tua, atau orang yang lebih muda?', 1, 'Hanya orang berumur 30 tahun keatas yang bisa terinfeksi.', 'Bayi rentan terpapar coronavirus.', 'Orang desawa lebih rentan terpapar drang tua lebih rentan daripada ', 'Tidak ada batasan usia orang-orang dapat terinfeksi oleh coronavirus ini (COVID-19). Namun, orang yang lebih tua, dan orang-orang dengan kondisi medis yang sudah ada sebelumnya (seperti asma, diabetes, penyakit jantung, atau tekanan darah tinggi) tampaknya lebih rentan untuk menderita sakit parah.', '', 'D', NULL, '', '', '', '', '', ''),
(1345, 1, 22, 'Amankah jika kita menerima paket barang dari China atau dari negara lain yang melaporkan virus ini?', 1, 'Tidak aman. Pembawa paket lebih rentang terpapar COVID-19', 'Ya, aman. Orang yang menerima paket tidak berisiko tertular virus COVID-19. Dari pengalaman dengan coronavirus lain, kita tahu bahwa jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket.', 'Tidak aman. COVID-19 berasal dari China.', 'Tidak aman. Jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket', '', 'B', NULL, '', '', '', '', '', ''),
(1346, 1, 23, 'Apakah sudah ada pembatasan untuk bepergian ke China dan negara terjangkit lainnya?', 1, 'Sampai hari ini belum ada', 'Indonesia belum memberlakukan pembatasan perjalanan ke Negara terjangkit COVID-19', 'Sejak 5 Februari 2020, Indonesia telah memberlakukan pembatasan perjalanan ke China berupa penghentian sementara penerbangan dari dan ke ChinaPada&nbsp;5 Maret 2020, Indonesia juga memberlakukan pelarangan transit atau masuk ke Indonesia bagi pelaku perjalanan yang dalam 14 hari sebelumnya datang dari wilayah berikut:Iran : Tehran, Qom, Gilan, Italia : Wilayah Lombardi, Veneto, Emilia Romagna, Marche, dan Piedmont, Korea Selatan: Kota Daegu dan Provinsi Gyeongsangbuk-do.', 'Pembatasan untuk bepergian ke China dan negara terjangkit lainnya telah dilakukan Indonesia sejak 2019', '', 'C', NULL, '', '', '', '', '', ''),
(1347, 1, 24, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1348, 1, 25, 'Berapa lama virus ini bertahan di permukaan benda?', 1, 'Sampai saat ini belum diketahui dengan pasti berapa lama COVID-19 mampu bertahan di permukaan suatu benda, meski studi awal menunjukkan COVID-19 dapat bertahan hingga beberapa jam, tergantung jenis permukaan, suhu, atau kelembaban lingkungan.Namun, disinfektan sederhana dapat membunuh virus tersebut sehingga tidak mungkin menginfeksi orang lagi. Dan membiasakan cuci tangan dengan air dan sabun, atau hand-rub berbasis alkohol, serta hindari menyentuh mata, mulut atau hidung (segitiga wajah) lebih efektif melindungi diri Anda.', 'Bisa bertahan 20 menit', 'Bisa bertahan selama 2 hari pada permukaan uang kertas', 'Bertahan 2 jam pada handle pintu', '', 'A', NULL, '', '', '', '', '', ''),
(1349, 1, 26, 'Manakah yang lebih rentan terinfeksi coronavirus, apakah orang yang lebih tua, atau orang yang lebih muda?', 1, 'Hanya orang berumur 30 tahun keatas yang bisa terinfeksi.', 'Bayi rentan terpapar coronavirus.', 'Orang desawa lebih rentan terpapar drang tua lebih rentan daripada ', 'Tidak ada batasan usia orang-orang dapat terinfeksi oleh coronavirus ini (COVID-19). Namun, orang yang lebih tua, dan orang-orang dengan kondisi medis yang sudah ada sebelumnya (seperti asma, diabetes, penyakit jantung, atau tekanan darah tinggi) tampaknya lebih rentan untuk menderita sakit parah.', '', 'D', NULL, '', '', '', '', '', ''),
(1350, 1, 27, 'Amankah jika kita menerima paket barang dari China atau dari negara lain yang melaporkan virus ini?', 1, 'Tidak aman. Pembawa paket lebih rentang terpapar COVID-19', 'Ya, aman. Orang yang menerima paket tidak berisiko tertular virus COVID-19. Dari pengalaman dengan coronavirus lain, kita tahu bahwa jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket.', 'Tidak aman. COVID-19 berasal dari China.', 'Tidak aman. Jenis virus ini tidak bertahan lama pada benda mati, seperti surat atau paket', '', 'B', NULL, '', '', '', '', '', ''),
(1351, 1, 28, 'Apakah sudah ada pembatasan untuk bepergian ke China dan negara terjangkit lainnya?', 1, 'Sampai hari ini belum ada', 'Indonesia belum memberlakukan pembatasan perjalanan ke Negara terjangkit COVID-19', 'Sejak 5 Februari 2020, Indonesia telah memberlakukan pembatasan perjalanan ke China berupa penghentian sementara penerbangan dari dan ke ChinaPada&nbsp;5 Maret 2020, Indonesia juga memberlakukan pelarangan transit atau masuk ke Indonesia bagi pelaku perjalanan yang dalam 14 hari sebelumnya datang dari wilayah berikut:Iran : Tehran, Qom, Gilan, Italia : Wilayah Lombardi, Veneto, Emilia Romagna, Marche, dan Piedmont, Korea Selatan: Kota Daegu dan Provinsi Gyeongsangbuk-do.', 'Pembatasan untuk bepergian ke China dan negara terjangkit lainnya telah dilakukan Indonesia sejak 2019', '', 'C', NULL, '', '', '', '', '', ''),
(1352, 1, 29, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1353, 1, 30, 'Apakah sudah ada pembatasan untuk bepergian ke China dan negara terjangkit lainnya?', 1, 'Sampai hari ini belum ada', 'Indonesia belum memberlakukan pembatasan perjalanan ke Negara terjangkit COVID-19', 'Sejak 5 Februari 2020, Indonesia telah memberlakukan pembatasan perjalanan ke China berupa penghentian sementara penerbangan dari dan ke ChinaPada&nbsp;5 Maret 2020, Indonesia juga memberlakukan pelarangan transit atau masuk ke Indonesia bagi pelaku perjalanan yang dalam 14 hari sebelumnya datang dari wilayah berikut:Iran : Tehran, Qom, Gilan, Italia : Wilayah Lombardi, Veneto, Emilia Romagna, Marche, dan Piedmont, Korea Selatan: Kota Daegu dan Provinsi Gyeongsangbuk-do.', 'Pembatasan untuk bepergian ke China dan negara terjangkit lainnya telah dilakukan Indonesia sejak 2019', '', 'C', NULL, '', '', '', '', '', ''),
(1354, 1, 31, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1355, 1, 32, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1356, 1, 33, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1357, 1, 34, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1358, 1, 35, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1359, 1, 36, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1360, 1, 37, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1361, 1, 38, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1362, 1, 39, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', ''),
(1363, 1, 40, 'Informasi tentang update COVID-19 khusus wilayah Jawa Timur bisa dilihat melalui web&hellip;', 1, 'https://radarcovid19.jatengprov.go.id/', 'https://radarcovid19.jatimprov.go.id/', 'https://radarcovid19.jabarprov.go.id/', 'https://radarcovid19.dkiprov.go.id/', '', 'B', NULL, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
(1, 'HXABPX', '2023-09-04 10:34:10', '00:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  `ulang_kkm` int(1) NOT NULL,
  `btn_selesai` int(11) NOT NULL,
  `pelanggaran` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `kode_nama`, `id_pk`, `id_guru`, `id_mapel`, `kode_ujian`, `nama`, `jml_soal`, `jml_esai`, `bobot_pg`, `opsi`, `bobot_esai`, `tampil_pg`, `tampil_esai`, `lama_ujian`, `tgl_ujian`, `tgl_selesai`, `waktu_ujian`, `selesai_ujian`, `level`, `kelas`, `sesi`, `acak`, `token`, `status`, `hasil`, `kkm`, `ulang`, `soal_agama`, `reset`, `ulang_kkm`, `btn_selesai`, `pelanggaran`) VALUES
(1, '8prak', 'a:1:{i:0;s:3:\"IPS\";}', 1, 1, 'USBK', '8prak', 30, 0, 100, 4, 0, 30, 0, 20, '2023-05-31 22:00:00', '2023-05-31 23:00:00', '22:00:00', NULL, 'XII', 'a:1:{i:0;s:7:\"XII-IPS\";}', '2', 0, 0, 1, 1, '75', 0, '', 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `file_pendukung`
--
ALTER TABLE `file_pendukung`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jawaban_temp`
--
ALTER TABLE `jawaban_temp`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`kode_level`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD PRIMARY KEY (`id_pengawas`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pk`
--
ALTER TABLE `pk`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indexes for table `referensi_jurusan`
--
ALTER TABLE `referensi_jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`kode_sesi`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `sinkron`
--
ALTER TABLE `sinkron`
  ADD PRIMARY KEY (`nama_data`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file_pendukung`
--
ALTER TABLE `file_pendukung`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban_temp`
--
ALTER TABLE `jawaban_temp`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengawas`
--
ALTER TABLE `pengawas`
  MODIFY `id_pengawas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1364;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
