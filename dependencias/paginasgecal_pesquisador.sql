-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Set-2018 às 04:29
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
-- Estrutura da tabela `paginasgecal_pesquisador`
--

CREATE TABLE `paginasgecal_pesquisador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `dtNascimento` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `universidade` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_pesquisador`
--

INSERT INTO `paginasgecal_pesquisador` (`id`, `nome`, `cpf`, `dtNascimento`, `email`, `universidade`) VALUES
(1, 'Mareli', '13123123123123', '2018-09-20', '', 'uniplac'),
(2, 'Cesar', '23423423482739', '2018-09-20', 'asdf@asfdj.com', 'uniplac');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginasgecal_pesquisador`
--
ALTER TABLE `paginasgecal_pesquisador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginasgecal_pesquisador`
--
ALTER TABLE `paginasgecal_pesquisador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
