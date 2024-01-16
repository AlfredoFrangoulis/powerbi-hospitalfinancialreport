-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 02:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `35200101_admin`
--

CREATE TABLE `35200101_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` enum('Super Admin','Kasir','Manajer') NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_admin`
--

INSERT INTO `35200101_admin` (`id_admin`, `nama_admin`, `username`, `role`, `password`) VALUES
(1, 'Joko', 'joko123', 'Kasir', '9ba0009aa81e794e628a04b51eaf7d7f'),
(2, 'Nina', 'nina123', 'Kasir', 'f2ceea1536ac1b8fed1a167a9c8bf04d'),
(3, 'Judy', 'judy123', 'Super Admin', '9c72fc30ed1cdf36e3b1f95708a97bc8');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_booking`
--

CREATE TABLE `35200101_booking` (
  `id_booking` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tanggal_booking` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_booking`
--

INSERT INTO `35200101_booking` (`id_booking`, `id_pasien`, `id_admin`, `id_dokter`, `tanggal_booking`) VALUES
(1, 1, 1, 1, '2023-01-15 08:30:00'),
(2, 2, 1, 2, '2023-01-20 09:45:00'),
(3, 3, 1, 3, '2023-02-05 10:15:00'),
(4, 4, 1, 4, '2023-02-10 11:30:00'),
(5, 5, 1, 5, '2023-02-25 12:45:00'),
(6, 6, 1, 6, '2023-03-05 14:00:00'),
(7, 7, 1, 7, '2023-03-15 15:30:00'),
(8, 8, 1, 8, '2023-03-25 16:45:00'),
(9, 9, 1, 9, '2023-04-05 17:00:00'),
(10, 10, 1, 10, '2023-04-15 08:30:00'),
(11, 11, 2, 1, '2023-01-17 09:45:00'),
(12, 12, 2, 2, '2023-01-22 10:15:00'),
(13, 13, 2, 3, '2023-02-07 11:30:00'),
(14, 14, 2, 4, '2023-02-12 12:45:00'),
(15, 15, 2, 5, '2023-02-27 14:00:00'),
(16, 16, 2, 6, '2023-03-07 15:30:00'),
(17, 17, 2, 7, '2023-03-17 16:45:00'),
(18, 18, 2, 8, '2023-03-27 17:00:00'),
(19, 19, 2, 9, '2023-04-07 08:30:00'),
(20, 20, 2, 10, '2023-04-17 09:45:00'),
(21, 21, 3, 1, '2023-01-19 10:15:00'),
(22, 22, 3, 2, '2023-01-24 11:30:00'),
(23, 23, 3, 3, '2023-02-09 12:45:00'),
(24, 24, 3, 4, '2023-02-14 14:00:00'),
(25, 25, 3, 5, '2023-03-01 15:30:00'),
(26, 26, 3, 6, '2023-03-09 16:45:00'),
(27, 27, 3, 7, '2023-03-19 17:00:00'),
(28, 28, 3, 8, '2023-03-29 08:30:00'),
(29, 29, 3, 9, '2023-04-09 09:45:00'),
(30, 30, 3, 10, '2023-04-19 10:15:00'),
(31, 31, 4, 1, '2023-01-21 11:30:00'),
(32, 32, 4, 2, '2023-01-26 12:45:00'),
(33, 33, 4, 3, '2023-02-11 14:00:00'),
(34, 34, 4, 4, '2023-02-16 15:30:00'),
(35, 35, 4, 5, '2023-03-03 16:45:00'),
(36, 36, 4, 6, '2023-03-11 17:00:00'),
(37, 37, 4, 7, '2023-03-21 08:30:00'),
(38, 38, 4, 8, '2023-03-31 09:45:00'),
(39, 39, 4, 9, '2023-04-11 10:15:00'),
(40, 40, 4, 10, '2023-04-21 11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_catatan_medis`
--

CREATE TABLE `35200101_catatan_medis` (
  `id_catatan` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `no_catatan` varchar(100) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_catatan_medis`
--

INSERT INTO `35200101_catatan_medis` (`id_catatan`, `id_transaksi`, `no_catatan`, `catatan`) VALUES
(1, 1, 'CTM001', 'Flu'),
(2, 2, 'CTM002', 'Hypertension'),
(3, 3, 'CTM003', 'Diabetes'),
(4, 4, 'CTM004', 'Asthma'),
(5, 5, 'CTM005', 'Migraine'),
(6, 6, 'CTM006', 'Gastroenteritis'),
(7, 7, 'CTM007', 'Bronchitis'),
(8, 8, 'CTM008', 'Allergic Rhinitis'),
(9, 9, 'CTM009', 'Osteoarthritis'),
(10, 10, 'CTM010', 'Pneumonia'),
(11, 11, 'CTM011', 'Eczema'),
(12, 12, 'CTM012', 'Gastritis'),
(13, 13, 'CTM013', 'Urinary Tract Infection'),
(14, 14, 'CTM014', 'Anxiety Disorder'),
(15, 15, 'CTM015', 'Rheumatoid Arthritis'),
(16, 16, 'CTM016', 'Sinusitis'),
(17, 17, 'CTM017', 'Chronic Obstructive Pulmonary Disease (COPD)'),
(18, 18, 'CTM018', 'Peptic Ulcer'),
(19, 19, 'CTM019', 'Depression'),
(20, 20, 'CTM020', 'Osteoporosis'),
(21, 21, 'CTM021', 'Coronary Artery Disease'),
(22, 22, 'CTM022', 'Gout'),
(23, 23, 'CTM023', 'Stroke'),
(24, 24, 'CTM024', 'Hepatitis'),
(25, 25, 'CTM025', 'Hyperthyroidism'),
(26, 26, 'CTM026', 'Hypothyroidism'),
(27, 27, 'CTM027', 'Lupus'),
(28, 28, 'CTM028', 'Multiple Sclerosis'),
(29, 29, 'CTM029', 'Parkinson\'s Disease'),
(30, 30, 'CTM030', 'Schizophrenia'),
(31, 31, 'CTM031', 'Obsessive-Compulsive Disorder (OCD)'),
(32, 32, 'CTM032', 'Attention Deficit Hyperactivity Disorder (ADHD)'),
(33, 33, 'CTM033', 'Bipolar Disorder'),
(34, 34, 'CTM034', 'Post-Traumatic Stress Disorder (PTSD)'),
(35, 35, 'CTM035', 'Alzheimer\'s Disease'),
(36, 36, 'CTM036', 'Cancer'),
(37, 37, 'CTM037', 'Chronic Kidney Disease'),
(38, 38, 'CTM038', 'HIV/AIDS'),
(39, 39, 'CTM039', 'Epilepsy'),
(40, 40, 'CTM040', 'Mental Retardation');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_detail_transaksi`
--

CREATE TABLE `35200101_detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_kategori_obat` int(11) NOT NULL,
  `qty_obat` int(11) NOT NULL,
  `total_pemeriksaan` int(11) NOT NULL,
  `total_obat` int(11) NOT NULL,
  `total_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_detail_transaksi`
--

INSERT INTO `35200101_detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_obat`, `id_kategori_obat`, `qty_obat`, `total_pemeriksaan`, `total_obat`, `total_pembayaran`) VALUES
(1, 1, 1, 1, 8, 300000, 800000, 1100000),
(2, 2, 2, 2, 4, 300000, 800000, 1100000),
(3, 3, 3, 3, 8, 300000, 2400000, 2700000),
(4, 4, 4, 4, 3, 300000, 1200000, 1500000),
(5, 5, 5, 5, 6, 300000, 3000000, 3300000),
(6, 6, 6, 6, 3, 300000, 300000, 600000),
(7, 7, 7, 7, 5, 300000, 1000000, 1300000),
(8, 8, 8, 1, 1, 300000, 300000, 600000),
(9, 9, 9, 2, 4, 300000, 1600000, 1900000),
(10, 10, 10, 3, 6, 300000, 3000000, 3300000),
(11, 11, 1, 4, 6, 300000, 600000, 900000),
(12, 12, 2, 5, 7, 300000, 1400000, 1700000),
(13, 13, 3, 6, 2, 300000, 600000, 900000),
(14, 14, 4, 7, 10, 300000, 4000000, 4300000),
(15, 15, 5, 1, 6, 300000, 3000000, 3300000),
(16, 16, 6, 2, 10, 300000, 1000000, 1300000),
(17, 17, 7, 3, 6, 300000, 1200000, 1500000),
(18, 18, 8, 4, 8, 300000, 2400000, 2700000),
(19, 19, 9, 5, 3, 300000, 1200000, 1500000),
(20, 20, 10, 6, 1, 300000, 500000, 800000),
(21, 21, 1, 7, 3, 300000, 300000, 600000),
(22, 22, 2, 1, 8, 300000, 1600000, 1900000),
(23, 23, 3, 2, 5, 300000, 1500000, 1800000),
(24, 24, 4, 3, 9, 300000, 3600000, 3900000),
(25, 25, 5, 4, 9, 300000, 4500000, 4800000),
(26, 26, 6, 5, 2, 300000, 200000, 500000),
(27, 27, 7, 6, 3, 300000, 600000, 900000),
(28, 28, 8, 7, 2, 300000, 600000, 900000),
(29, 29, 9, 1, 7, 300000, 2800000, 3100000),
(30, 30, 10, 2, 7, 300000, 3500000, 3800000),
(31, 31, 1, 3, 9, 300000, 900000, 1200000),
(32, 32, 2, 4, 8, 300000, 1600000, 1900000),
(33, 33, 3, 5, 8, 300000, 2400000, 2700000),
(34, 34, 4, 6, 4, 300000, 1600000, 1900000),
(35, 35, 5, 7, 2, 300000, 1000000, 1300000),
(36, 36, 6, 1, 3, 300000, 300000, 600000),
(37, 37, 7, 2, 2, 300000, 400000, 700000),
(38, 38, 8, 3, 5, 300000, 1500000, 1800000),
(39, 39, 9, 4, 2, 300000, 800000, 1100000),
(40, 40, 10, 5, 5, 300000, 2500000, 2800000);

-- --------------------------------------------------------

--
-- Table structure for table `35200101_dokter`
--

CREATE TABLE `35200101_dokter` (
  `id_dokter` int(11) NOT NULL,
  `id_spesialis_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_dokter`
--

INSERT INTO `35200101_dokter` (`id_dokter`, `id_spesialis_dokter`, `nama_dokter`, `address`, `email`, `phone`) VALUES
(1, 1, 'Dr. John Smith', '123 Main Street', 'john.smith@email.com', '123-456-7890'),
(2, 2, 'Dr. Jane Doe', '456 Oak Avenue', 'jane.doe@email.com', '987-654-3210'),
(3, 3, 'Dr. Robert Johnson', '789 Pine Lane', 'robert.johnson@email.com', '555-123-4567'),
(4, 4, 'Dr. Alice Brown', '101 Cedar Road', 'alice.brown@email.com', '111-222-3333'),
(5, 5, 'Dr. Charlie Wilson', '202 Elm Street', 'charlie.wilson@email.com', '444-555-6666'),
(6, 6, 'Dr. Diana Miller', '303 Birch Boulevard', 'diana.miller@email.com', '777-888-9999'),
(7, 7, 'Dr. Evan Davis', '404 Maple Drive', 'evan.davis@email.com', '999-888-7777'),
(8, 8, 'Dr. Fiona White', '505 Walnut Circle', 'fiona.white@email.com', '666-555-4444'),
(9, 9, 'Dr. George Lee', '606 Pineapple Avenue', 'george.lee@email.com', '222-333-4444'),
(10, 10, 'Dr. Helen Taylor', '707 Strawberry Lane', 'helen.taylor@email.com', '888-777-6666');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_jadwal_praktek`
--

CREATE TABLE `35200101_jadwal_praktek` (
  `id_jadwal` int(11) NOT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_jadwal_praktek`
--

INSERT INTO `35200101_jadwal_praktek` (`id_jadwal`, `id_dokter`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 1, 'Saturday', '11:30:00', '11:30:00'),
(2, 1, 'Sunday', '08:30:00', '08:30:00'),
(3, 1, 'Tuesday', '15:30:00', '15:30:00'),
(4, 2, 'Friday', '09:45:00', '16:45:00'),
(5, 2, 'Thursday', '12:45:00', '12:45:00'),
(6, 3, 'Monday', '17:00:00', '17:00:00'),
(7, 3, 'Saturday', '14:00:00', '14:00:00'),
(8, 3, 'Sunday', '10:15:00', '10:15:00'),
(9, 4, 'Friday', '08:30:00', '11:30:00'),
(10, 4, 'Thursday', '15:30:00', '15:30:00'),
(11, 5, 'Friday', '16:45:00', '16:45:00'),
(12, 5, 'Monday', '09:45:00', '09:45:00'),
(13, 5, 'Saturday', '12:45:00', '12:45:00'),
(14, 6, 'Saturday', '17:00:00', '17:00:00'),
(15, 6, 'Sunday', '14:00:00', '14:00:00'),
(16, 6, 'Thursday', '10:15:00', '10:15:00'),
(17, 7, 'Tuesday', '08:30:00', '11:30:00'),
(18, 7, 'Wednesday', '15:30:00', '15:30:00'),
(19, 8, 'Friday', '09:45:00', '09:45:00'),
(20, 8, 'Saturday', '16:45:00', '16:45:00'),
(21, 8, 'Thursday', '12:45:00', '12:45:00'),
(22, 9, 'Tuesday', '10:15:00', '14:00:00'),
(23, 9, 'Wednesday', '17:00:00', '17:00:00'),
(24, 10, 'Friday', '11:30:00', '11:30:00'),
(25, 10, 'Saturday', '08:30:00', '08:30:00'),
(26, 10, 'Wednesday', '15:30:00', '15:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_kategori_obat`
--

CREATE TABLE `35200101_kategori_obat` (
  `id_kategori_obat` int(11) NOT NULL,
  `nama_kategori_obat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_kategori_obat`
--

INSERT INTO `35200101_kategori_obat` (`id_kategori_obat`, `nama_kategori_obat`) VALUES
(1, 'Obat Bebas'),
(2, 'Obat Bebas Terbatas'),
(3, 'Obat Keras'),
(4, 'Obat Golongan Narkotika'),
(5, 'Obat Fitofarmaka'),
(6, 'Obat Herbal Terstandar'),
(7, 'Obat Herbal');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_obat`
--

CREATE TABLE `35200101_obat` (
  `id_obat` int(11) NOT NULL,
  `id_kategori_obat` int(11) NOT NULL,
  `kode_obat` varchar(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_obat`
--

INSERT INTO `35200101_obat` (`id_obat`, `id_kategori_obat`, `kode_obat`, `nama_obat`, `description`, `qty`, `harga_obat`) VALUES
(1, 1, 'OBT001', 'Parasetamol', 'parasetamol123', 100, 100000),
(2, 2, 'OBT002', 'Theophylline', 'theophylline123', 100, 200000),
(3, 3, 'OBT003', 'Amoksisilin', 'amoksislin123', 100, 300000),
(4, 4, 'OBT004', 'Lexotan', 'lexotan123', 100, 400000),
(5, 5, 'OBT005', 'Stimuno', 'stimuno123', 100, 500000),
(6, 6, 'OBT006', 'Tolak Angin', 'tolakangin123', 100, 100000),
(7, 7, 'OBT007', 'Ambeven', 'ambeven123', 100, 200000),
(8, 1, 'OBT008', 'Ferrosulfat', 'ferrosulfat123', 100, 300000),
(9, 2, 'OBT009', 'Tremenza', 'tremenza123', 100, 400000),
(10, 3, 'OBT010', 'Mefinal', 'mefinal123', 100, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `35200101_pasien`
--

CREATE TABLE `35200101_pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `poin` int(11) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_pasien`
--

INSERT INTO `35200101_pasien` (`id_pasien`, `nama_pasien`, `address`, `email`, `phone`, `poin`) VALUES
(1, 'John Doe', '123 Main Street', 'john.doe@email.com', '123-456-7890', 50),
(2, 'Jane Smith', '456 Oak Avenue', 'jane.smith@email.com', '987-654-3210', 30),
(3, 'Bob Johnson', '789 Pine Lane', 'bob.johnson@email.com', '555-123-4567', 20),
(4, 'Alice Brown', '101 Cedar Road', 'alice.brown@email.com', '111-222-3333', 10),
(5, 'Charlie Wilson', '202 Elm Street', 'charlie.wilson@email.com', '444-555-6666', 40),
(6, 'Diana Miller', '303 Birch Boulevard', 'diana.miller@email.com', '777-888-9999', 25),
(7, 'Evan Davis', '404 Maple Drive', 'evan.davis@email.com', '999-888-7777', 15),
(8, 'Fiona White', '505 Walnut Circle', 'fiona.white@email.com', '666-555-4444', 35),
(9, 'George Lee', '606 Pineapple Avenue', 'george.lee@email.com', '222-333-4444', 45),
(10, 'Helen Taylor', '707 Strawberry Lane', 'helen.taylor@email.com', '888-777-6666', 5),
(11, 'Isaac Green', '808 Raspberry Road', 'isaac.green@email.com', '444-333-2222', 60),
(12, 'Jessica Black', '909 Blueberry Boulevard', 'jessica.black@email.com', '777-666-5555', 15),
(13, 'Kevin Gray', '111 Cherry Drive', 'kevin.gray@email.com', '333-222-1111', 25),
(14, 'Laura Adams', '222 Grape Lane', 'laura.adams@email.com', '555-666-7777', 40),
(15, 'Michael Turner', '333 Lemon Road', 'michael.turner@email.com', '999-888-7777', 10);

-- --------------------------------------------------------

--
-- Table structure for table `35200101_perawat`
--

CREATE TABLE `35200101_perawat` (
  `id_perawat` int(11) NOT NULL,
  `nama_perawat` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_perawat`
--

INSERT INTO `35200101_perawat` (`id_perawat`, `nama_perawat`, `address`, `email`, `phone`) VALUES
(1, 'Nina Johnson', '123 Main Street', 'nina.johnson@email.com', '123-456-7890'),
(2, 'Mike Davis', '456 Oak Avenue', 'mike.davis@email.com', '987-654-3210'),
(3, 'Sara White', '789 Pine Lane', 'sara.white@email.com', '555-123-4567'),
(4, 'Tom Brown', '101 Cedar Road', 'tom.brown@email.com', '111-222-3333'),
(5, 'Emily Wilson', '202 Elm Street', 'emily.wilson@email.com', '444-555-6666'),
(6, 'Alex Miller', '303 Birch Boulevard', 'alex.miller@email.com', '777-888-9999'),
(7, 'Rachel Davis', '404 Maple Drive', 'rachel.davis@email.com', '999-888-7777'),
(8, 'Chris Lee', '505 Walnut Circle', 'chris.lee@email.com', '666-555-4444'),
(9, 'Lily Taylor', '606 Pineapple Avenue', 'lily.taylor@email.com', '222-333-4444'),
(10, 'Mark Johnson', '707 Strawberry Lane', 'mark.johnson@email.com', '888-777-6666');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_spesialis_dokter`
--

CREATE TABLE `35200101_spesialis_dokter` (
  `id_spesialis_dokter` int(11) NOT NULL,
  `nama_spesialis_dokter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_spesialis_dokter`
--

INSERT INTO `35200101_spesialis_dokter` (`id_spesialis_dokter`, `nama_spesialis_dokter`) VALUES
(1, 'Dokter Spesialis Penyakit Dalam'),
(2, 'Dokter Spesialis Anak'),
(3, 'Dokter Spesialis Saraf'),
(4, 'Dokter Spesialis Kandungan'),
(5, 'Dokter Spesialis Bedah'),
(6, 'Dokter Spesialis Kulit'),
(7, 'Dokter Spesialis THT'),
(8, 'Dokter Spesialis Mata'),
(9, 'Psikater'),
(10, 'Dokter Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `35200101_transaksi`
--

CREATE TABLE `35200101_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_perawat` int(11) NOT NULL,
  `no_catatan` varchar(100) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `poin` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35200101_transaksi`
--

INSERT INTO `35200101_transaksi` (`id_transaksi`, `id_pasien`, `id_dokter`, `id_admin`, `id_perawat`, `no_catatan`, `tanggal`, `poin`) VALUES
(1, 1, 1, 2, 1, 'CTM001', '2023-01-15 08:30:00', 1),
(2, 2, 2, 2, 2, 'CTM002', '2023-01-20 09:45:00', 1),
(3, 3, 3, 2, 3, 'CTM003', '2023-02-05 10:15:00', 1),
(4, 4, 4, 2, 4, 'CTM004', '2023-02-10 11:30:00', 1),
(5, 5, 5, 2, 5, 'CTM005', '2023-02-25 12:45:00', 1),
(6, 6, 6, 2, 6, 'CTM006', '2023-03-05 14:00:00', 1),
(7, 7, 7, 2, 7, 'CTM007', '2023-03-15 15:30:00', 1),
(8, 8, 8, 2, 8, 'CTM008', '2023-03-25 16:45:00', 1),
(9, 9, 9, 2, 9, 'CTM009', '2023-04-05 17:00:00', 1),
(10, 10, 10, 2, 10, 'CTM010', '2023-04-15 08:30:00', 1),
(11, 11, 11, 2, 1, 'CTM011', '2023-01-17 09:45:00', 1),
(12, 12, 12, 2, 2, 'CTM012', '2023-01-22 10:15:00', 1),
(13, 13, 13, 2, 3, 'CTM013', '2023-02-07 11:30:00', 1),
(14, 14, 14, 2, 4, 'CTM014', '2023-02-12 12:45:00', 1),
(15, 15, 15, 2, 5, 'CTM015', '2023-02-27 14:00:00', 1),
(16, 1, 1, 2, 6, 'CTM016', '2023-03-07 15:30:00', 1),
(17, 2, 2, 2, 7, 'CTM017', '2023-03-17 16:45:00', 1),
(18, 3, 3, 2, 8, 'CTM018', '2023-03-27 17:00:00', 1),
(19, 4, 4, 2, 9, 'CTM019', '2023-04-07 08:30:00', 1),
(20, 5, 5, 2, 10, 'CTM020', '2023-04-17 09:45:00', 1),
(21, 6, 6, 2, 1, 'CTM021', '2023-01-19 10:15:00', 1),
(22, 7, 7, 2, 2, 'CTM022', '2023-01-24 11:30:00', 1),
(23, 8, 8, 2, 3, 'CTM023', '2023-02-09 12:45:00', 1),
(24, 9, 9, 2, 4, 'CTM024', '2023-02-14 14:00:00', 1),
(25, 10, 10, 2, 5, 'CTM025', '2023-03-01 15:30:00', 1),
(26, 11, 11, 2, 6, 'CTM026', '2023-03-09 16:45:00', 1),
(27, 12, 12, 2, 7, 'CTM027', '2023-03-19 17:00:00', 1),
(28, 13, 13, 2, 8, 'CTM028', '2023-03-29 08:30:00', 1),
(29, 14, 14, 2, 9, 'CTM029', '2023-04-09 09:45:00', 1),
(30, 15, 15, 2, 10, 'CTM030', '2023-04-19 10:15:00', 1),
(31, 1, 1, 2, 1, 'CTM031', '2023-01-21 11:30:00', 1),
(32, 2, 2, 2, 2, 'CTM032', '2023-01-26 12:45:00', 1),
(33, 3, 3, 2, 3, 'CTM033', '2023-02-11 14:00:00', 1),
(34, 4, 4, 2, 4, 'CTM034', '2023-02-16 15:30:00', 1),
(35, 5, 5, 2, 5, 'CTM035', '2023-03-03 16:45:00', 1),
(36, 6, 6, 2, 6, 'CTM036', '2023-03-11 17:00:00', 1),
(37, 7, 7, 2, 7, 'CTM037', '2023-03-21 08:30:00', 1),
(38, 8, 8, 2, 8, 'CTM038', '2023-03-31 09:45:00', 1),
(39, 9, 9, 2, 9, 'CTM039', '2023-04-11 10:15:00', 1),
(40, 10, 10, 2, 10, 'CTM040', '2023-04-21 11:30:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `35200101_admin`
--
ALTER TABLE `35200101_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `35200101_booking`
--
ALTER TABLE `35200101_booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `35200101_catatan_medis`
--
ALTER TABLE `35200101_catatan_medis`
  ADD PRIMARY KEY (`id_catatan`);

--
-- Indexes for table `35200101_detail_transaksi`
--
ALTER TABLE `35200101_detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `35200101_dokter`
--
ALTER TABLE `35200101_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `35200101_jadwal_praktek`
--
ALTER TABLE `35200101_jadwal_praktek`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `35200101_kategori_obat`
--
ALTER TABLE `35200101_kategori_obat`
  ADD PRIMARY KEY (`id_kategori_obat`);

--
-- Indexes for table `35200101_obat`
--
ALTER TABLE `35200101_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `35200101_pasien`
--
ALTER TABLE `35200101_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `35200101_perawat`
--
ALTER TABLE `35200101_perawat`
  ADD PRIMARY KEY (`id_perawat`);

--
-- Indexes for table `35200101_spesialis_dokter`
--
ALTER TABLE `35200101_spesialis_dokter`
  ADD PRIMARY KEY (`id_spesialis_dokter`);

--
-- Indexes for table `35200101_transaksi`
--
ALTER TABLE `35200101_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `35200101_admin`
--
ALTER TABLE `35200101_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `35200101_booking`
--
ALTER TABLE `35200101_booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `35200101_catatan_medis`
--
ALTER TABLE `35200101_catatan_medis`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `35200101_detail_transaksi`
--
ALTER TABLE `35200101_detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `35200101_dokter`
--
ALTER TABLE `35200101_dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `35200101_jadwal_praktek`
--
ALTER TABLE `35200101_jadwal_praktek`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `35200101_kategori_obat`
--
ALTER TABLE `35200101_kategori_obat`
  MODIFY `id_kategori_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `35200101_obat`
--
ALTER TABLE `35200101_obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `35200101_pasien`
--
ALTER TABLE `35200101_pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `35200101_perawat`
--
ALTER TABLE `35200101_perawat`
  MODIFY `id_perawat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `35200101_spesialis_dokter`
--
ALTER TABLE `35200101_spesialis_dokter`
  MODIFY `id_spesialis_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `35200101_transaksi`
--
ALTER TABLE `35200101_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `35200101_jadwal_praktek`
--
ALTER TABLE `35200101_jadwal_praktek`
  ADD CONSTRAINT `35200101_jadwal_praktek_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `35200101_dokter` (`id_dokter`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
