-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Set-2018 às 22:06
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
-- Estrutura da tabela `paginasgecal_historicogecal`
--

CREATE TABLE `paginasgecal_historicogecal` (
  `id` int(11) NOT NULL,
  `textoJumbotron` longtext NOT NULL,
  `textoHistorico` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_historicogecal`
--

INSERT INTO `paginasgecal_historicogecal` (`id`, `textoJumbotron`, `textoHistorico`) VALUES
(1, 'Gênero, Educação e Cidadania na América Latina: aproximações e desafios (GECAL) Líder: Mareli Eliane Graupe – UNIPLAC Vice-Líder: Josilaine Antunes Pereira', 'O grupo de pesquisa foi criado no ano de 2013. Reúne pesquisadoras/es de diferentes países e Instituições de Ensino  Superior na América do Sul em torno das temáticas Educação, Estudos de Gênero e Cidadania. Esse grupo possui como finalidade aumentar o impacto de suas pesquisas e com isso maior repercussão local, nacional e internacional atendendo as demandas de nossa sociedade. Com a realização de pesquisas busca-se articular o tripé Pesquisa, Ensino e Extensão na perspectiva da construção de uma universidade comprometida com a qualidade na formação de pesquisadoras/es e com a luta de enfrentamento de injustiças sociais. O GECAL apresenta um caráter inter e transdisciplinar, proporcionando aos integrantes das linhas de pesquisa a capacidade de gerar conhecimentos de fronteira, com destaque a temas relevantes da atualidade, que permitam associar pesquisador@s com diferentes competências em propostas bem definidas e focadas, e levando em conta as atividades científicas que podem ser geradas como fruto dessa associação: publicações em revistas científicas, livros, formação de novas equipes, de recursos humanos nas próprias instituições envolvidas e geração de conhecimentos fundamentais para políticas públicas no campo da educação.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginasgecal_historicogecal`
--
ALTER TABLE `paginasgecal_historicogecal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginasgecal_historicogecal`
--
ALTER TABLE `paginasgecal_historicogecal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
