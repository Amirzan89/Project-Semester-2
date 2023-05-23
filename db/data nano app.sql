-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 05:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umkm`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` enum('SNACK','MAKANAN','MINUMAN','ATK') NOT NULL,
  `stok` int(5) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `barcode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `jenis_barang`, `stok`, `harga_beli`, `harga_jual`, `barcode`) VALUES
('BG00006', 'Indomilk', 'MINUMAN', 255, 2000, 2500, 'BAR00001'),
('BG00007', 'Kertas Folio', 'ATK', 417, 400, 500, 'BAR00002'),
('BG00008', 'Kertas Hvs', 'ATK', 397, 100, 250, ''),
('BG00009', 'Pulpen Snowman', 'ATK', 98, 1000, 2000, ''),
('BG00010', 'Spidol Hitam', 'ATK', 811, 2000, 2500, ''),
('BG00011', 'Spidol Merah', 'ATK', 56, 2000, 2500, 'BAR00003'),
('BG00012', 'Spidol Biru', 'ATK', 27, 2000, 2500, ''),
('BG00013', 'Yupi Candy', 'SNACK', 48, 400, 1000, ''),
('BG00014', 'Roti', 'SNACK', 42, 1500, 2000, ''),
('BG00015', 'Wafer', 'SNACK', 8, 500, 1000, ''),
('BG00017', 'Indomie Goreng', 'MAKANAN', 45, 2500, 3500, ''),
('BG00018', 'Fitbar Tiramisu Snack', 'SNACK', 88, 3000, 4000, ''),
('BG00019', 'Lays  ', 'SNACK', 98, 4000, 5000, ''),
('BG00020', 'Slai Olai', 'SNACK', 136, 6000, 8000, ''),
('BG00021', 'Cadbury Chocolate', 'SNACK', 138, 8000, 10000, ''),
('BG00022', 'Beng Beng', 'SNACK', 72, 3000, 4000, ''),
('BG00023', 'Nabati Richocho Wafer', 'SNACK', 104, 2000, 3000, ''),
('BG00024', 'Choki Choki Cashnew', 'SNACK', 46, 3000, 5000, ''),
('BG00025', 'Sari Gandum', 'SNACK', 67, 4000, 5500, ''),
('BG00026', 'Nissin Crackers', 'SNACK', 58, 4000, 6000, ''),
('BG00027', 'Nabati Richeese Wafer', 'SNACK', 71, 2000, 3500, ''),
('BG00028', 'Tango Drink Berry', 'SNACK', 43, 4000, 5000, ''),
('BG00029', 'Hexos Candy', 'SNACK', 61, 5000, 6500, ''),
('BG00030', 'Pop Mie Mi Instan', 'MAKANAN', 61, 4560, 5200, ''),
('BG00031', 'Sedaap Mie Instan', 'MAKANAN', 140, 2500, 3500, ''),
('BG00032', 'Meiji Biscuit Hello Panda', 'SNACK', 29, 3000, 4500, ''),
('BG00033', 'Good Time Cookies', 'SNACK', 33, 5000, 7500, ''),
('BG00034', 'Aice Ice Cream Cookies', 'MINUMAN', 27, 5000, 6000, ''),
('BG00035', 'Madu Tj', 'MINUMAN', 15, 6000, 8000, ''),
('BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 25, 2700, 3600, ''),
('BG00037', 'Energen Cereal', 'MINUMAN', 11, 4000, 5500, ''),
('BG00038', 'Gery Crackers Malkist', 'SNACK', 34, 2600, 3500, ''),
('BG00039', 'Kraft Sandwich Mini Oreo', 'SNACK', 51, 4000, 5000, ''),
('BG00040', 'Hollanda Gery Butter Cokkies', 'SNACK', 20, 21700, 25000, ''),
('BG00041', 'Minute Maid Juice', 'MINUMAN', 17, 4000, 5000, ''),
('BG00042', 'Mister Potato Snack', 'SNACK', 42, 4500, 6000, ''),
('BG00043', 'Kin A2 Yogurt', 'MINUMAN', 27, 4000, 5000, ''),
('BG00044', 'Qtela', 'SNACK', 13, 12000, 15000, ''),
('BG00045', 'Chitato', 'SNACK', 17, 24000, 27000, ''),
('BG00046', 'Piattos', 'SNACK', 47, 7000, 9500, ''),
('BG00047', 'Potabee', 'SNACK', 26, 8800, 10000, ''),
('BG00048', 'Kusuka', 'SNACK', 40, 13250, 14500, ''),
('BG00049', 'Tic Tac', 'SNACK', 33, 4250, 6500, ''),
('BG00050', 'Frech Fries', 'SNACK', 197, 6100, 7500, ''),
('BG00051', 'Dairy Milk', 'SNACK', 32, 7000, 9000, ''),
('BG00052', 'Silver Queen', 'SNACK', 69, 8500, 10500, ''),
('BG00054', 'Kacang Garuda Atom Pedas', 'SNACK', 35, 18800, 21000, ''),
('BG00055', 'Mister Potato Snack Crips', 'SNACK', 43, 10900, 12500, ''),
('BG00056', 'Roma Biscuit Sandwitch', 'SNACK', 61, 8000, 10000, ''),
('BG00057', 'Nextar Nastar Cookies', 'SNACK', 34, 1300, 2600, ''),
('BG00058', 'Mentos Candy', 'SNACK', 21, 3000, 4500, ''),
('BG00059', 'You C Healt Drink', 'MINUMAN', 114, 6000, 8200, ''),
('BG00060', 'Buavita Juice Jambu', 'MINUMAN', 38, 8900, 11500, ''),
('BG00061', 'Buavita Juice Orange', 'MINUMAN', 22, 8900, 11500, ''),
('BG00062', 'Buavita Juice Manggo', 'MINUMAN', 17, 8900, 11500, ''),
('BG00063', 'Minute Maid Juice Pulpy', 'MINUMAN', 108, 4000, 5000, ''),
('BG00064', 'Indomie Goreng Rasa Sate', 'MAKANAN', 15, 2900, 4000, ''),
('BG00065', 'Indomie Goreng Rasa Rendang', 'MAKANAN', 43, 3000, 4100, ''),
('BG00067', 'Indomie Rasa Soto Spesial', 'MAKANAN', 41, 2850, 3600, ''),
('BG00068', 'Indomie Rasa Ayam Bawang', 'MAKANAN', 42, 2900, 4000, ''),
('BG00069', 'Indomie Kuliner Soto Padang', 'MAKANAN', 500, 3000, 4500, ''),
('BG00070', 'Indomie Kuliner Cakalang', 'MAKANAN', 51, 3000, 4500, ''),
('BG00071', 'Indomie Kuliner Ayam Medan', 'MAKANAN', 80, 3000, 4000, ''),
('BG00072', 'Sariroti ', 'MAKANAN', 62, 4000, 5000, ''),
('BG00073', 'Chitato', 'MAKANAN', 50, 4000, 5000, ''),
('BG00075', 'Malkist Coklat', 'MAKANAN', 70, 2000, 3000, '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_beli`
--

CREATE TABLE `detail_transaksi_beli` (
  `id_tr_beli` varchar(7) NOT NULL,
  `id_supplier` varchar(5) DEFAULT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `id_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` enum('SNACK','MAKANAN','MINUMAN','ATK') NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total_harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi_beli`
--

INSERT INTO `detail_transaksi_beli` (`id_tr_beli`, `id_supplier`, `nama_supplier`, `id_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `jumlah`, `total_harga`) VALUES
('TRB0001', 'SP002', 'Syafrizal Wd Mahendra', 'BG00006', 'Indomilk', 'MINUMAN', 2000, 10, 20000),
('TRB0001', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00006', 'Indomilk', 'MINUMAN', 2000, 5, 10000),
('TRB0001', 'SP003', 'Syamaidzar Adani Syah', 'BG00073', 'Chitato', 'MAKANAN', 4000, 5, 20000),
('TRB0002', 'SP003', 'Syamaidzar Adani Syah', 'BG00007', 'Kertas Folio', 'ATK', 400, 5, 2000),
('TRB0002', 'SP003', 'Syamaidzar Adani Syah', 'BG00045', 'Chitato', 'SNACK', 24000, 5, 120000),
('TRB0002', 'SP003', 'Syamaidzar Adani Syah', 'BG00067', 'Indomie Rasa Soto Spesial', 'MAKANAN', 2850, 10, 28500),
('TRB0003', 'SP003', 'Syamaidzar Adani Syah', 'BG00073', 'Chitato', 'MAKANAN', 4000, 10, 40000),
('TRB0003', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00075', 'Malkist Coklat', 'MAKANAN', 2000, 10, 20000),
('TRB0003', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00060', 'Buavita Juice Jambu', 'MINUMAN', 8900, 10, 89000),
('TRB0004', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00073', 'Chitato', 'MAKANAN', 4000, 10, 40000),
('TRB0004', 'SP002', 'Syafrizal Wd Mahendra', 'BG00061', 'Buavita Juice Orange', 'MINUMAN', 8900, 10, 89000),
('TRB0004', 'SP002', 'Syafrizal Wd Mahendra', 'BG00058', 'Mentos Candy', 'SNACK', 3000, 10, 30000),
('TRB0005', 'SP002', 'Syafrizal Wd Mahendra', 'BG00007', 'Kertas Folio', 'ATK', 400, 10, 4000),
('TRB0005', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00007', 'Kertas Folio', 'ATK', 400, 10, 4000),
('TRB0005', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00037', 'Energen Cereal', 'MINUMAN', 4000, 5, 20000),
('TRB0005', 'SP005', 'Septian Yoga Pamungkas', 'BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 2700, 10, 27000),
('TRB0005', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00075', 'Malkist Coklat', 'MAKANAN', 2000, 10, 20000),
('TRB0006', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00009', 'Pulpen Snowman', 'ATK', 1000, 100, 100000),
('TRB0006', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00023', 'Nabati Richocho Wafer', 'SNACK', 2000, 20, 40000),
('TRB0006', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00041', 'Minute Maid Juice', 'MINUMAN', 4000, 10, 40000),
('TRB0006', 'SP003', 'Syamaidzar Adani Syah', 'BG00043', 'Kin A2 Yogurt', 'MINUMAN', 4000, 10, 40000),
('TRB0006', 'SP003', 'Syamaidzar Adani Syah', 'BG00056', 'Roma Biscuit Sandwitch', 'SNACK', 8000, 10, 80000),
('TRB0007', 'SP005', 'Septian Yoga Pamungkas', 'BG00023', 'Nabati Richocho Wafer', 'SNACK', 2000, 10, 20000),
('TRB0007', 'SP006', 'Atilah Lazuardi Azra', 'BG00023', 'Nabati Richocho Wafer', 'SNACK', 2000, 10, 20000),
('TRB0007', 'SP005', 'Septian Yoga Pamungkas', 'BG00031', 'Sedaap Mie Instan', 'MAKANAN', 2500, 10, 25000),
('TRB0007', 'SP005', 'Septian Yoga Pamungkas', 'BG00030', 'Pop Mie Mi Instan', 'MAKANAN', 4560, 10, 45600),
('TRB0007', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00030', 'Pop Mie Mi Instan', 'MAKANAN', 4560, 10, 45600),
('TRB0007', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00043', 'Kin A2 Yogurt', 'MINUMAN', 4000, 10, 40000),
('TRB0008', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00008', 'Kertas Hvs', 'ATK', 100, 10, 1000),
('TRB0008', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00017', 'Indomie Goreng', 'MAKANAN', 2500, 20, 50000),
('TRB0008', 'SP003', 'Syamaidzar Adani Syah', 'BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 2700, 20, 54000),
('TRB0008', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 2700, 10, 27000),
('TRB0008', 'SP008', 'Muhamad Sugeng Cahyono', 'BG00047', 'Potabee', 'SNACK', 8800, 10, 88000),
('TRB0009', 'SP003', 'Syamaidzar Adani Syah', 'BG00017', 'Indomie Goreng', 'MAKANAN', 2500, 20, 50000),
('TRB0009', 'SP006', 'Atilah Lazuardi Azra', 'BG00017', 'Indomie Goreng', 'MAKANAN', 2500, 10, 25000),
('TRB0009', 'SP006', 'Atilah Lazuardi Azra', 'BG00027', 'Nabati Richeese Wafer', 'SNACK', 2000, 10, 20000),
('TRB0009', 'SP006', 'Atilah Lazuardi Azra', 'BG00034', 'Aice Ice Cream Cookies', 'MINUMAN', 5000, 10, 50000),
('TRB0009', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00034', 'Aice Ice Cream Cookies', 'MINUMAN', 5000, 10, 50000),
('TRB0009', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00032', 'Meiji Biscuit Hello Panda', 'SNACK', 3000, 10, 30000),
('TRB0009', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00044', 'Qtela', 'SNACK', 12000, 10, 120000),
('TRB0009', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00045', 'Chitato', 'SNACK', 24000, 10, 240000),
('TRB0010', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00006', 'Indomilk', 'MINUMAN', 2000, 10, 20000),
('TRB0010', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00068', 'Indomie Rasa Ayam Bawang', 'MAKANAN', 2900, 10, 29000),
('TRB0010', 'SP002', 'Syafrizal Wd Mahendra', 'BG00073', 'Chitato', 'MAKANAN', 4000, 10, 40000),
('TRB0010', 'SP002', 'Syafrizal Wd Mahendra', 'BG00070', 'Indomie Kuliner Cakalang', 'MAKANAN', 3000, 20, 60000),
('TRB0010', 'SP006', 'Atilah Lazuardi Azra', 'BG00069', 'Indomie Kuliner Soto Padang', 'MAKANAN', 3000, 10, 30000),
('TRB0011', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00039', 'Kraft Sandwich Mini Oreo', 'SNACK', 4000, 40, 160000),
('TRB0011', 'SP004', 'Moch. Rifaul Ardiyanto', 'BG00038', 'Gery Crackers Malkist', 'SNACK', 2600, 10, 26000),
('TRB0012', 'SP002', 'Syafrizal Wd Mahendra', 'BG00056', 'Roma Biscuit Sandwitch', 'SNACK', 8000, 10, 80000),
('TRB0012', 'SP002', 'Syafrizal Wd Mahendra', 'BG00073', 'Chitato', 'MAKANAN', 4000, 10, 40000),
('TRB0012', 'SP006', 'Atilah Lazuardi Azra', 'BG00075', 'Malkist Coklat', 'MAKANAN', 2000, 10, 20000);

--
-- Triggers `detail_transaksi_beli`
--
DELIMITER $$
CREATE TRIGGER `insert_stok_beli` AFTER INSERT ON `detail_transaksi_beli` FOR EACH ROW BEGIN
	SELECT id_barang INTO @id_barang FROM detail_transaksi_beli ORDER BY id_tr_beli DESC LIMIT 0,1;
SELECT jumlah INTO @total_barang FROM detail_transaksi_beli ORDER BY id_tr_beli DESC LIMIT 0,1;
SELECT stok INTO @stok FROM barang WHERE id_barang = @id_barang;
UPDATE barang SET stok = (@stok + @total_barang) WHERE id_barang = @id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_jual`
--

CREATE TABLE `detail_transaksi_jual` (
  `id_tr_jual` varchar(7) NOT NULL,
  `id_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` enum('SNACK','MAKANAN','MINUMAN','ATK') NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total_harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi_jual`
--

INSERT INTO `detail_transaksi_jual` (`id_tr_jual`, `id_barang`, `nama_barang`, `jenis_barang`, `harga`, `jumlah`, `total_harga`) VALUES
('TRJ0001', 'BG00007', 'Kertas Folio', 'ATK', 500, 100, 50000),
('TRJ0002', 'BG00007', 'Kertas Folio', 'ATK', 500, 100, 50000),
('TRJ0002', 'BG00022', 'Beng Beng', 'SNACK', 4000, 8, 32000),
('TRJ0002', 'BG00021', 'Cadbury Chocolate', 'SNACK', 10000, 1, 10000),
('TRJ0002', 'BG00027', 'Nabati Richeese Wafer', 'SNACK', 3500, 10, 35000),
('TRJ0002', 'BG00032', 'Meiji Biscuit Hello Panda', 'SNACK', 4500, 4, 18000),
('TRJ0003', 'BG00007', 'Kertas Folio', 'ATK', 500, 400, 200000),
('TRJ0003', 'BG00037', 'Energen Cereal', 'MINUMAN', 5500, 4, 22000),
('TRJ0003', 'BG00033', 'Good Time Cookies', 'SNACK', 7500, 4, 30000),
('TRJ0003', 'BG00064', 'Indomie Goreng Rasa Sate', 'MAKANAN', 4000, 4, 16000),
('TRJ0003', 'BG00073', 'Chitato', 'MAKANAN', 5000, 4, 20000),
('TRJ0003', 'BG00045', 'Chitato', 'SNACK', 27000, 1, 27000),
('TRJ0004', 'BG00040', 'Hollanda Gery Butter Cokkies', 'SNACK', 25000, 11, 275000),
('TRJ0004', 'BG00039', 'Kraft Sandwich Mini Oreo', 'SNACK', 5000, 10, 50000),
('TRJ0004', 'BG00071', 'Indomie Kuliner Ayam Medan', 'MAKANAN', 4000, 20, 80000),
('TRJ0004', 'BG00058', 'Mentos Candy', 'SNACK', 4500, 4, 18000),
('TRJ0004', 'BG00042', 'Mister Potato Snack', 'SNACK', 6000, 4, 24000),
('TRJ0005', 'BG00009', 'Pulpen Snowman', 'ATK', 2000, 20, 40000),
('TRJ0005', 'BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 3600, 10, 36000),
('TRJ0005', 'BG00037', 'Energen Cereal', 'MINUMAN', 5500, 1, 5500),
('TRJ0006', 'BG00068', 'Indomie Rasa Ayam Bawang', 'MAKANAN', 4000, 10, 40000),
('TRJ0006', 'BG00075', 'Malkist Coklat', 'MAKANAN', 3000, 4, 12000),
('TRJ0006', 'BG00034', 'Aice Ice Cream Cookies', 'MINUMAN', 6000, 5, 30000),
('TRJ0006', 'BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 3600, 5, 18000),
('TRJ0007', 'BG00035', 'Madu Tj', 'MINUMAN', 8000, 10, 80000),
('TRJ0007', 'BG00026', 'Nissin Crackers', 'SNACK', 6000, 5, 30000),
('TRJ0008', 'BG00011', 'Spidol Merah', 'ATK', 2500, 10, 25000),
('TRJ0008', 'BG00026', 'Nissin Crackers', 'SNACK', 6000, 5, 30000),
('TRJ0008', 'BG00056', 'Roma Biscuit Sandwitch', 'SNACK', 10000, 1, 10000),
('TRJ0008', 'BG00072', 'Sariroti ', 'MAKANAN', 5000, 6, 30000),
('TRJ0008', 'BG00064', 'Indomie Goreng Rasa Sate', 'MAKANAN', 4000, 5, 20000),
('TRJ0008', 'BG00075', 'Malkist Coklat', 'MAKANAN', 3000, 5, 15000),
('TRJ0008', 'BG00073', 'Chitato', 'MAKANAN', 5000, 5, 25000),
('TRJ0009', 'BG00075', 'Malkist Coklat', 'MAKANAN', 3000, 10, 30000),
('TRJ0010', 'BG00011', 'Spidol Merah', 'ATK', 2500, 10, 25000),
('TRJ0010', 'BG00051', 'Dairy Milk', 'SNACK', 9000, 4, 36000),
('TRJ0010', 'BG00050', 'Frech Fries', 'SNACK', 7500, 10, 75000),
('TRJ0010', 'BG00060', 'Buavita Juice Jambu', 'MINUMAN', 11500, 1, 11500),
('TRJ0010', 'BG00063', 'Minute Maid Juice Pulpy', 'MINUMAN', 5000, 4, 20000),
('TRJ0010', 'BG00072', 'Sariroti ', 'MAKANAN', 5000, 10, 50000),
('TRJ0011', 'BG00036', 'Sedaap Mie Instant Cup', 'MAKANAN', 3600, 10, 36000),
('TRJ0011', 'BG00056', 'Roma Biscuit Sandwitch', 'SNACK', 10000, 10, 100000),
('TRJ0011', 'BG00058', 'Mentos Candy', 'SNACK', 4500, 10, 45000),
('TRJ0011', 'BG00075', 'Malkist Coklat', 'MAKANAN', 3000, 3, 9000),
('TRJ0011', 'BG00060', 'Buavita Juice Jambu', 'MINUMAN', 11500, 2, 23000),
('TRJ0011', 'BG00059', 'You C Healt Drink', 'MINUMAN', 8200, 5, 41000),
('TRJ0012', 'BG00009', 'Pulpen Snowman', 'ATK', 2000, 10, 20000),
('TRJ0012', 'BG00046', 'Piattos', 'SNACK', 9500, 5, 47500),
('TRJ0012', 'BG00072', 'Sariroti ', 'MAKANAN', 5000, 4, 20000),
('TRJ0012', 'BG00075', 'Malkist Coklat', 'MAKANAN', 3000, 5, 15000),
('TRJ0012', 'BG00007', 'Kertas Folio', 'ATK', 500, 100, 50000),
('TRJ0012', 'BG00015', 'Wafer', 'SNACK', 1000, 4, 4000),
('TRJ0012', 'BG00017', 'Indomie Goreng', 'MAKANAN', 3500, 5, 17500);

--
-- Triggers `detail_transaksi_jual`
--
DELIMITER $$
CREATE TRIGGER `insert_stok_jual` AFTER INSERT ON `detail_transaksi_jual` FOR EACH ROW BEGIN
	SELECT id_barang INTO @id_barang FROM detail_transaksi_jual ORDER BY id_tr_jual DESC LIMIT 0,1;
	SELECT jumlah INTO @total_barang FROM detail_transaksi_jual ORDER BY id_tr_jual DESC LIMIT 0,1;
	SELECT stok INTO @stok FROM barang WHERE id_barang = @id_barang;
UPDATE barang SET stok = (@stok - @total_barang) WHERE id_barang = @id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id_diskon` varchar(7) NOT NULL,
  `nama_diskon` varchar(40) NOT NULL,
  `jumlah_diskon` int(7) NOT NULL,
  `minimal_harga` int(7) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id_diskon`, `nama_diskon`, `jumlah_diskon`, `minimal_harga`, `tanggal_awal`, `tanggal_akhir`) VALUES
('D00001', 'diskon bulan mei', 10000, 100000, '2023-05-04', '2023-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` varchar(10) NOT NULL,
  `jumlah_saldo` bigint(20) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `id_tr_beli` varchar(7) DEFAULT NULL,
  `id_tr_jual` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `jumlah_saldo`, `deskripsi`, `id_tr_beli`, `id_tr_jual`) VALUES
('S000000001', 10000000, '', NULL, NULL),
('S000000002', 9980000, 'tambah transaksi beli', 'TRB0001', NULL),
('S000000003', 10030000, 'tambah transaksi jual', NULL, 'TRJ0001'),
('S000000004', 10001500, 'tambah transaksi beli', 'TRB0002', NULL),
('S000000005', 9912500, 'tambah transaksi beli', 'TRB0003', NULL),
('S000000006', 9882500, 'tambah transaksi beli', 'TRB0004', NULL),
('S000000007', 10017500, 'tambah transaksi jual', NULL, 'TRJ0002'),
('S000000008', 10322500, 'tambah transaksi jual', NULL, 'TRJ0003'),
('S000000009', 10302500, 'tambah transaksi beli', 'TRB0005', NULL),
('S000000010', 10739500, 'tambah transaksi jual', NULL, 'TRJ0004'),
('S000000011', 10659500, 'tambah transaksi beli', 'TRB0006', NULL),
('S000000012', 10619500, 'tambah transaksi beli', 'TRB0007', NULL),
('S000000013', 10531500, 'tambah transaksi beli', 'TRB0008', NULL),
('S000000014', 10291500, 'tambah transaksi beli', 'TRB0009', NULL),
('S000000015', 10261500, 'tambah transaksi beli', 'TRB0010', NULL),
('S000000016', 10343000, 'tambah transaksi jual', NULL, 'TRJ0005'),
('S000000017', 10433000, 'tambah transaksi jual', NULL, 'TRJ0006'),
('S000000018', 10533000, 'tambah transaksi jual', NULL, 'TRJ0007'),
('S000000019', 10678000, 'tambah transaksi jual', NULL, 'TRJ0008'),
('S000000020', 10698000, 'tambah transaksi jual', NULL, 'TRJ0009'),
('S000000021', 10905500, 'tambah transaksi jual', NULL, 'TRJ0010'),
('S000000022', 11149500, 'tambah transaksi jual', NULL, 'TRJ0011'),
('S000000023', 11123500, 'tambah transaksi beli', 'TRB0011', NULL),
('S000000024', 11103500, 'tambah transaksi beli', 'TRB0012', NULL),
('S000000025', 11267500, 'tambah transaksi jual', NULL, 'TRJ0012');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(5) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
('SP002', 'Syafrizal Wd Mahendra', '0895807400305', 'Nganjuk, Jawa Timur, Indonesia'),
('SP003', 'Syamaidzar Adani Syah', '082229657300', 'Nganjuk, Jawa Timur, Indonesia'),
('SP004', 'Moch. Rifaul Ardiyanto', '085855348099', 'Nganjuk, Jawa Timur, Indonesia'),
('SP005', 'Septian Yoga Pamungkas', '085806531609', 'Nganjuk, Jawa Timur, Indonesia'),
('SP006', 'Atilah Lazuardi Azra', '081335315751', 'Nganjuk, Jawa Timur, Indonesia'),
('SP008', 'Muhamad Sugeng Cahyono', '085812455631', 'Kediri, Jawa Timur, Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_beli`
--

CREATE TABLE `transaksi_beli` (
  `id_tr_beli` varchar(7) NOT NULL,
  `id_karyawan` varchar(5) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `total_hrg` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_beli`
--

INSERT INTO `transaksi_beli` (`id_tr_beli`, `id_karyawan`, `nama_karyawan`, `total_hrg`, `tanggal`) VALUES
('TRB0001', 'KY001', 'Admin', 50000, '2023-02-10 16:58:17'),
('TRB0002', 'KY001', 'Admin', 150500, '2023-02-15 17:58:36'),
('TRB0003', 'KY001', 'Admin', 149000, '2023-02-20 17:58:54'),
('TRB0004', 'KY001', 'Admin', 159000, '2023-03-04 17:59:07'),
('TRB0005', 'KY001', 'Admin', 75000, '2023-03-05 20:34:04'),
('TRB0006', 'KY001', 'Admin', 300000, '2023-03-10 21:23:02'),
('TRB0007', 'KY001', 'Admin', 196200, '2023-03-23 21:23:47'),
('TRB0008', 'KY001', 'Admin', 220000, '2023-03-24 21:24:44'),
('TRB0009', 'KY001', 'Admin', 585000, '2023-03-23 21:25:42'),
('TRB0010', 'KY001', 'Admin', 179000, '2023-03-20 21:26:11'),
('TRB0011', 'KY001', 'Admin', 186000, '2023-05-23 22:17:36'),
('TRB0012', 'KY001', 'Admin', 140000, '2023-05-23 22:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_jual`
--

CREATE TABLE `transaksi_jual` (
  `id_tr_jual` varchar(7) NOT NULL,
  `id_karyawan` varchar(5) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `total_hrg` int(7) NOT NULL,
  `keuntungan` int(7) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `id_diskon` varchar(7) DEFAULT NULL,
  `jumlah_diskon` int(7) DEFAULT NULL,
  `total_sebelum` int(7) NOT NULL,
  `total_brg` int(3) NOT NULL,
  `total_bayar` int(7) NOT NULL,
  `total_kembalian` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_jual`
--

INSERT INTO `transaksi_jual` (`id_tr_jual`, `id_karyawan`, `nama_karyawan`, `total_hrg`, `keuntungan`, `tanggal`, `id_diskon`, `jumlah_diskon`, `total_sebelum`, `total_brg`, `total_bayar`, `total_kembalian`) VALUES
('TRJ0001', 'KY001', 'Admin', 50000, 10000, '2023-02-20 17:04:09', NULL, 0, 50000, 100, 50000, 0),
('TRJ0002', 'KY001', 'Admin', 135000, 31000, '2023-02-22 18:10:09', 'D00001', 10000, 145000, 123, 135000, 0),
('TRJ0003', 'KY001', 'Admin', 305000, 57400, '2023-02-24 20:30:19', 'D00001', 10000, 315000, 417, 310000, 5000),
('TRJ0004', 'KY001', 'Admin', 437000, 68300, '2023-03-05 21:11:35', 'D00001', 10000, 447000, 49, 500000, 63000),
('TRJ0005', 'KY001', 'Admin', 81500, 30500, '2023-03-11 21:26:44', NULL, 0, 81500, 31, 100000, 18500),
('TRJ0006', 'KY001', 'Admin', 90000, 14500, '2023-03-16 21:27:08', 'D00001', 10000, 100000, 24, 100000, 10000),
('TRJ0007', 'KY001', 'Admin', 100000, 20000, '2023-03-17 21:27:40', 'D00001', 10000, 110000, 15, 100000, 0),
('TRJ0008', 'KY001', 'Admin', 145000, 28500, '2023-04-05 21:42:12', 'D00001', 10000, 155000, 37, 150000, 5000),
('TRJ0009', 'KY001', 'Admin', 20000, 0, '2023-04-10 21:44:40', NULL, 0, 30000, 10, 100000, 80000),
('TRJ0010', 'KY001', 'Admin', 207500, 33600, '2023-04-20 22:15:39', 'D00001', 10000, 217500, 39, 208000, 500),
('TRJ0011', 'KY001', 'Admin', 244000, 53200, '2023-05-05 22:16:18', 'D00001', 10000, 254000, 40, 250000, 6000),
('TRJ0012', 'KY001', 'Admin', 164000, 38500, '2023-05-23 22:21:03', 'D00001', 10000, 174000, 133, 200000, 36000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_karyawan` varchar(5) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('ADMIN','KARYAWAN') NOT NULL,
  `rfid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_karyawan`, `nama_karyawan`, `no_telp`, `alamat`, `username`, `password`, `level`, `rfid`) VALUES
('KY001', 'Admin', '085105304100', 'Jombang,Jawa Timur,Indonesia', 'Admin', '$2a$15$JYACUxM792fwXX.bUb8L..LKJU3lLB/7N1jXw3SwPDy/BS7sLCdoO', 'ADMIN', '0008487508'),
('KY002', 'Amirzan Fikri Prasetyo', '085105304100', 'Jombang,Jawa Timur,Indonesia', 'Amirzan12', '$2a$15$5NxdhaYqSDf5.et6v3BRjOh1X7ZYVrP.gb25jnVb8IalcKGyHxrIm', 'KARYAWAN', '0008534215');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_transaksi_beli`
--
ALTER TABLE `detail_transaksi_beli`
  ADD KEY `detail_tr_beli3` (`id_tr_beli`),
  ADD KEY `detail_tr_beli1` (`id_supplier`),
  ADD KEY `detail_tr_beli2` (`id_barang`);

--
-- Indexes for table `detail_transaksi_jual`
--
ALTER TABLE `detail_transaksi_jual`
  ADD KEY `detail_tr_jual2` (`id_tr_jual`),
  ADD KEY `detail_tr_jual1` (`id_barang`);

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id_diskon`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`),
  ADD KEY `fk_tr_beli` (`id_tr_beli`),
  ADD KEY `fk_tr_jual` (`id_tr_jual`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD PRIMARY KEY (`id_tr_beli`),
  ADD KEY `transaksi_beli_ibfk_3` (`id_karyawan`);

--
-- Indexes for table `transaksi_jual`
--
ALTER TABLE `transaksi_jual`
  ADD PRIMARY KEY (`id_tr_jual`),
  ADD KEY `diskon` (`id_diskon`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi_beli`
--
ALTER TABLE `detail_transaksi_beli`
  ADD CONSTRAINT `detail_tr_beli1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_tr_beli2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_tr_beli3` FOREIGN KEY (`id_tr_beli`) REFERENCES `transaksi_beli` (`id_tr_beli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail2` FOREIGN KEY (`id_tr_beli`) REFERENCES `transaksi_beli` (`id_tr_beli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_transaksi_jual`
--
ALTER TABLE `detail_transaksi_jual`
  ADD CONSTRAINT `detail_tr_jual1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_tr_jual2` FOREIGN KEY (`id_tr_jual`) REFERENCES `transaksi_jual` (`id_tr_jual`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail1` FOREIGN KEY (`id_tr_jual`) REFERENCES `transaksi_jual` (`id_tr_jual`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saldo`
--
ALTER TABLE `saldo`
  ADD CONSTRAINT `fk_tr_beli` FOREIGN KEY (`id_tr_beli`) REFERENCES `transaksi_beli` (`id_tr_beli`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tr_jual` FOREIGN KEY (`id_tr_jual`) REFERENCES `transaksi_jual` (`id_tr_jual`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi_jual`
--
ALTER TABLE `transaksi_jual`
  ADD CONSTRAINT `diskon` FOREIGN KEY (`id_diskon`) REFERENCES `diskon` (`id_diskon`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
