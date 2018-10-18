-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Out-2018 às 19:42
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gecal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginasgecal_fotos_e_destaques`
--

CREATE TABLE `paginasgecal_fotos_e_destaques` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `comentarios` varchar(700) NOT NULL,
  `data_publicacao` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_fotos_e_destaques`
--

INSERT INTO `paginasgecal_fotos_e_destaques` (`id`, `foto`, `comentarios`, `data_publicacao`) VALUES
(10, 'galeria/20151218_162654.jpg', 'comentários comentários comentários comentários contentcomentários comentários content', '2018-10-10 01:21:21.000000'),
(12, 'galeria/20180423_155838.jpg', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 01:22:03.000000'),
(16, 'galeria/20180405_100235_C63DCjR.jpg', 'teste teste teste teste teste teste', '2018-10-10 10:18:26.000000'),
(17, 'galeria/20180307_102221_5QmnQJc.jpg', 'teste2 teste2 teste2 teste2', '2018-10-10 10:21:11.000000'),
(18, 'galeria/20180423_155838_fkWDYQn.jpg', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 10:59:22.000000'),
(19, 'galeria/DSC_0194.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 10:59:42.000000'),
(20, 'galeria/DSC_0202.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 10:59:54.000000'),
(21, 'galeria/DSC_0211.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 11:00:08.000000'),
(22, 'galeria/DSC_0220.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 11:00:47.000000'),
(23, 'galeria/DSC_0222.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 11:01:21.000000'),
(24, 'galeria/DSC_0225.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 11:01:32.000000'),
(25, 'galeria/DSCN4559.JPG', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 11:01:44.000000'),
(26, 'galeria/IMG-20180320-WA0141.jpg', 'comentários comentários content comentários comentários contentcomentários comentários content', '2018-10-10 11:01:57.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginasgecal_fotos_e_destaques`
--
ALTER TABLE `paginasgecal_fotos_e_destaques`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginasgecal_fotos_e_destaques`
--
ALTER TABLE `paginasgecal_fotos_e_destaques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
