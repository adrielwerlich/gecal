-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Out-2018 às 19:43
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
-- Estrutura da tabela `paginasgecal_bolsista`
--

CREATE TABLE `paginasgecal_bolsista` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pesquisa_id` int(11) DEFAULT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_bolsista`
--

INSERT INTO `paginasgecal_bolsista` (`id`, `nome`, `pesquisa_id`, `email`) VALUES
(1, 'Gabriela Feldhaus de Souza', 2, 'email_exemplo@default.com'),
(2, 'Iara Menegazzo Guarda', 1, 'email_exemplo@default.com'),
(3, 'Natielle Machado Santos', 3, 'email_exemplo@default.com'),
(4, 'Luan Alves Couto', 2, 'email_exemplo@default.com'),
(5, 'Adriel Werlich', NULL, 'email_exemplo@default.comp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paginasGecal_bolsist_pesquisa_id_3fa4033b_fk_paginasGe` (`pesquisa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  ADD CONSTRAINT `paginasGecal_bolsist_pesquisa_id_3fa4033b_fk_paginasGe` FOREIGN KEY (`pesquisa_id`) REFERENCES `paginasgecal_linhadepesquisa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
