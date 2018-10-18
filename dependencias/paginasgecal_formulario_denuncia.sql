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
-- Estrutura da tabela `paginasgecal_formulario_denuncia`
--

CREATE TABLE `paginasgecal_formulario_denuncia` (
  `id` int(11) NOT NULL,
  `nome_denunciante` longtext NOT NULL,
  `email_denunciante` varchar(254) NOT NULL,
  `telefone_denunciante` longtext NOT NULL,
  `tipo_de_experiencia` varchar(1) NOT NULL,
  `violencia_fisica` tinyint(1) NOT NULL,
  `violencia_psicologica` tinyint(1) NOT NULL,
  `assedio_sexual` tinyint(1) NOT NULL,
  `assedio_moral` tinyint(1) NOT NULL,
  `violencia_patrimonial` tinyint(1) NOT NULL,
  `homofobia` tinyint(1) NOT NULL,
  `lesbofobia` tinyint(1) NOT NULL,
  `transfobia` tinyint(1) NOT NULL,
  `ameaca_verbal` tinyint(1) NOT NULL,
  `outros` tinyint(1) NOT NULL,
  `txt_outros` longtext NOT NULL,
  `txt_relato` longtext NOT NULL,
  `data_relato` datetime(6) NOT NULL,
  `estupro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_formulario_denuncia`
--

INSERT INTO `paginasgecal_formulario_denuncia` (`id`, `nome_denunciante`, `email_denunciante`, `telefone_denunciante`, `tipo_de_experiencia`, `violencia_fisica`, `violencia_psicologica`, `assedio_sexual`, `assedio_moral`, `violencia_patrimonial`, `homofobia`, `lesbofobia`, `transfobia`, `ameaca_verbal`, `outros`, `txt_outros`, `txt_relato`, `data_relato`, `estupro`) VALUES
(1, 'Adriel Werlich', 'adrielwerlich@gmail.com', '+5551991294579', 'v', 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, '', 'Insira aqui o relato!', '2018-10-01 00:00:00.000000', 1),
(2, 'Adriel Werlich', 'adrielwerlich@gmail.com', '+5551991294579', 'v', 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, '', 'sdasdInsira aqui o relato!', '2018-10-01 00:00:00.000000', 0),
(3, 'joejoeeoejeoe', 'asdofiadsjf@oijojo', '32094823049823049', 'v', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'outrotipo', 'aodijadsçfoasijdfçoasdijInsira aqui o relato!', '2018-10-01 13:40:44.497703', 1),
(4, 'qwoeriuqwpeor', 'poweuirqw@eiwweoiru', '20394820394823', 'v', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'outouroutorutoruo', 'apdofisadpofInsira aqui o relato!', '2018-10-01 13:47:04.040454', 1),
(5, 'qwoeriuqwpeor', 'poweuirqw@eiwweoiru', '20394820394823', 'v', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'outouroutorutoruo', 'apdofisadpofInsira aqui o relato!', '2018-10-01 13:52:23.319747', 1),
(6, '122d3d', '32d2322@f2323f', '322342323dd2d23', 'p', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'outrotorutroturoturout', 'asdfassadflkInsira aqui o relato!', '2018-10-01 13:53:41.238939', 1),
(7, '122d3d', '32d2322@f2323f', '322342323dd2d23', 'p', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'outrotorutroturoturout', 'asdfassadflkInsira aqui o relato!', '2018-10-01 14:02:49.630014', 1),
(8, '122d3d', '32d2322@f2323f', '322342323dd2d23', 'p', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'outrotorutroturoturout', 'asdfassadflkInsira aqui o relato!', '2018-10-01 15:56:37.728017', 1),
(9, '122d3d', '32d2322@f2323f', '322342323dd2d23', 'p', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'outrotorutroturoturout', 'asdfassadflkInsira aqui o relato!', '2018-10-01 15:59:10.720821', 1),
(10, 'fweiofjweoifj', 'adrielwerlich@gmail.com', '12123123', 'v', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, '09i09i', '90i09i90i', '2018-10-03 15:51:26.547000', 0),
(11, 'fweiofjweoifj', 'adrielwerlich@gmail.com', '12123123', 'v', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, '09i09i', '90i09i90i', '2018-10-03 15:56:20.881356', 0),
(12, 'fweiofjweoifj', 'adrielwerlich@gmail.com', '12123123', 'v', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, '09i09i', '90i09i90i', '2018-10-03 15:58:06.831761', 0),
(13, 'fsdf', 'wpefokew@pokafposd.com', '12312', 'v', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'wpefokwep', 'qpwokqwpeo', '2018-10-03 15:58:27.928054', 0),
(14, 'oiewjrrewoi', 'oijoifj@oijoij.com', '21313', 'v', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'nkjn', '2018-10-03 17:26:14.317810', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginasgecal_formulario_denuncia`
--
ALTER TABLE `paginasgecal_formulario_denuncia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginasgecal_formulario_denuncia`
--
ALTER TABLE `paginasgecal_formulario_denuncia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
