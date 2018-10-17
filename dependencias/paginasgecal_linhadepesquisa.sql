-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Set-2018 às 21:59
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
-- Estrutura da tabela `paginasgecal_linhadepesquisa`
--

CREATE TABLE `paginasgecal_linhadepesquisa` (
  `id` int(11) NOT NULL,
  `titulo` varchar(800) NOT NULL,
  `ementa` longtext,
  `concluido_id` int(11) DEFAULT NULL,
  `lider_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_linhadepesquisa`
--

INSERT INTO `paginasgecal_linhadepesquisa` (`id`, `titulo`, `ementa`, `concluido_id`, `lider_id`) VALUES
(1, '1.1.1 								Gênero, diversidade e sexualidade no campo da educação', 'Os estudos sobre gênero, diversidade e sexualidade têm se revelado uma área de pesquisa profícua no campo das Ciências Humanas. Os conceitos de diversidade e sexualidade analisados juntamente com a construção das identidades, numa perspectiva relacional de gênero tornam-se importantes instrumentos epistemológicos, necessário para se compreender e discutir possíveis transformações na educação. Sabemos que os currículos, procedimentos de ensino, as normas, teorias, a linguagem, os materiais didáticos e processos de avaliação são o lócus da construção das desigualdades de gênero, sexualidade, raça, etnia e classe no contexto escolar. Além disso, objetiva-se discutir não apenas o que é ensinado na escola, mas o modo como é ensinado, problematizando também as teorias que orientam o trabalho do profissional da educação e atentos, sobretudo, para a linguagem, procurando perceber o sexismo, o racismo, o etnocentrismo, a homofobia que ela muitas vezes carrega e institui.', 1, 1),
(2, '1.1.2 Estudos epistemológicos em  politica públicas: gênero e educação', 'Esta linha objetiva analisar e discutir as políticas públicas de gênero no campo da educação implementadas em países do continente da América Latina no final do século XX e inicio do século XXI. As políticas públicas para as mulheres ocupam as agendas governamentais na América Latina em contextos de reformas neoliberais e de globalização da economia dos anos 1990. Contextos também demarcados por processos de redemocratização política e pela intensificação dos investimentos feministas na busca pela equidade entre homens e mulheres. Investigaremos a relevância da ação política protagonizada pelas mulheres e/ou para mulheres enquanto possibilidade de intervenção cidadã e de transformação do espaço público brasileiro e Latino Americano. Também, analisaremos políticas de gênero voltadas para áreas específicas, tais como saúde, renda, trabalho e violências.', 2, 2),
(3, '1.1.3 Políticas Públicas De Gênero: Uma Análise Dos Currículos De Graduação E Pós-Graduação No Estado De Santa Catarina', 'Esta pesquisa possui como objetivo identificar se as temáticas de gênero e sexualidades estão contempladas nos Programas de Pós-Graduação em Educação e Graduação no Estado de Santa Catarina. É um estudo qualitativo em que será empregado o método de análise documental. Esta pesquisa possui como aporte teórico-metodológico autores/as que escrevem sobre gênero, sexualidades, políticas públicas de gênero, formação de professoras/es, buscando compreender os impactos e as contribuições da inserção dessas temáticas na estrutura curricular na perspectiva da construção de uma educação justa e igualitária para todas/os. Na Conferência Nacional da Educação Básica (CONEB) ocorrida em 2008, foi aprovada a incorporação dos estudos de gênero e diversidade nos currículos das licenciaturas, configurando-se como um passo fundamental para a concretização da inclusão dessas temáticas nas IES. Considerando a existência de políticas públicas de gênero e que a implementação dessas na estrutura curricular dos cursos de licenciatura e pós-graduação pode contribuir no enfrentamento de violências de gênero, preconceitos e discriminação no campo da educação, justifica-se a importância de mapear quais são as IES que oferecem disciplinas sobre estas temática em seus Programas de Pós-Graduação em Educação e em seus Cursos de Licenciatura e identificar o perfil destes cursos. Palavras-chave: Políticas públicas de gênero, Sexualidades, Instituições de Ensino Superior, Currículo.', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paginasGecal_linhade_concluido_id_462fd464_fk_paginasGe` (`concluido_id`),
  ADD KEY `paginasGecal_linhade_lider_id_2e179fe9_fk_paginasGe` (`lider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  ADD CONSTRAINT `paginasGecal_linhade_concluido_id_462fd464_fk_paginasGe` FOREIGN KEY (`concluido_id`) REFERENCES `paginasgecal_estagiodapesquisa` (`id`),
  ADD CONSTRAINT `paginasGecal_linhade_lider_id_2e179fe9_fk_paginasGe` FOREIGN KEY (`lider_id`) REFERENCES `paginasgecal_pesquisador` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
