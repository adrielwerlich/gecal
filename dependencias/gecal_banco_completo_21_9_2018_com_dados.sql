-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Set-2018 às 06:43
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
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bolsista', 7, 'add_bolsista'),
(26, 'Can change bolsista', 7, 'change_bolsista'),
(27, 'Can delete bolsista', 7, 'delete_bolsista'),
(28, 'Can view bolsista', 7, 'view_bolsista'),
(29, 'Can add historico gecal', 8, 'add_historicogecal'),
(30, 'Can change historico gecal', 8, 'change_historicogecal'),
(31, 'Can delete historico gecal', 8, 'delete_historicogecal'),
(32, 'Can view historico gecal', 8, 'view_historicogecal'),
(33, 'Can add linha de pesquisa', 9, 'add_linhadepesquisa'),
(34, 'Can change linha de pesquisa', 9, 'change_linhadepesquisa'),
(35, 'Can delete linha de pesquisa', 9, 'delete_linhadepesquisa'),
(36, 'Can view linha de pesquisa', 9, 'view_linhadepesquisa'),
(37, 'Can add pesquisador', 10, 'add_pesquisador'),
(38, 'Can change pesquisador', 10, 'change_pesquisador'),
(39, 'Can delete pesquisador', 10, 'delete_pesquisador'),
(40, 'Can view pesquisador', 10, 'view_pesquisador'),
(41, 'Can add denuncia', 11, 'add_denuncia'),
(42, 'Can change denuncia', 11, 'change_denuncia'),
(43, 'Can delete denuncia', 11, 'delete_denuncia'),
(44, 'Can view denuncia', 11, 'view_denuncia'),
(45, 'Can add relatante', 12, 'add_relatante'),
(46, 'Can change relatante', 12, 'change_relatante'),
(47, 'Can delete relatante', 12, 'delete_relatante'),
(48, 'Can view relatante', 12, 'view_relatante');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$NoW7BAylT02D$IGIqI3uL2tJfBgpvvuo9ubPIyuRamTV7rS96wssEc5U=', '2018-09-21 02:26:50.706015', 1, 'adriel', '', '', 'adrielwerlich@gmail.com', 1, 1, '2018-09-21 02:26:29.978189');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `denunciar_denuncia`
--

CREATE TABLE `denunciar_denuncia` (
  `id` int(11) NOT NULL,
  `relato` longtext NOT NULL,
  `data` date NOT NULL,
  `relatante_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `denunciar_relatante`
--

CREATE TABLE `denunciar_relatante` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-09-21 02:27:16.202120', '1', 'Mareli', 1, '[{\"added\": {}}]', 10, 1),
(2, '2018-09-21 02:28:27.632465', '2', 'Cesar', 1, '[{\"added\": {}}]', 10, 1),
(3, '2018-09-21 04:26:40.659732', '4', '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 1, '[{\"added\": {}}]', 9, 1),
(4, '2018-09-21 04:26:50.284140', '4', '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 2, '[{\"changed\": {\"fields\": [\"concluido\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'denunciar', 'denuncia'),
(12, 'denunciar', 'relatante'),
(7, 'paginasGecal', 'bolsista'),
(8, 'paginasGecal', 'historicogecal'),
(9, 'paginasGecal', 'linhadepesquisa'),
(10, 'paginasGecal', 'pesquisador'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-20 20:45:50.466223'),
(2, 'auth', '0001_initial', '2018-09-20 20:45:51.528648'),
(3, 'admin', '0001_initial', '2018-09-20 20:45:51.887997'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-20 20:45:51.919248'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-09-20 20:45:51.934871'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-09-20 20:45:52.075486'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-09-20 20:45:52.153605'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-09-20 20:45:52.247349'),
(9, 'auth', '0004_alter_user_username_opts', '2018-09-20 20:45:52.278600'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-09-20 20:45:52.356715'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-09-20 20:45:52.356715'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-09-20 20:45:52.372341'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-09-20 20:45:52.497331'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-09-20 20:45:52.591074'),
(15, 'denunciar', '0001_initial', '2018-09-20 20:45:52.856680'),
(16, 'paginasGecal', '0001_initial', '2018-09-20 20:45:53.325399'),
(17, 'sessions', '0001_initial', '2018-09-20 20:45:53.387913'),
(18, 'paginasGecal', '0002_auto_20180921_0125', '2018-09-21 04:26:00.588152'),
(19, 'paginasGecal', '0003_auto_20180921_0142', '2018-09-21 04:42:54.993583');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dr8bwm2i6igr3qykr0t9zfv7whg1n4ff', 'ZDQ3MDQ3MmRjYzhlZjRiMjQ3MjQ2M2VhNTJkYTgyZjJhNjAzNTMzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTg4OTBmODMyYWQ4NWY1NDQ2YjNjNzQ2YTk5MWRhMGRiZWRkMTExIn0=', '2018-10-05 02:26:50.712501');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginasgecal_bolsista`
--

CREATE TABLE `paginasgecal_bolsista` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `pesquisa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginasgecal_linhadepesquisa`
--

CREATE TABLE `paginasgecal_linhadepesquisa` (
  `id` int(11) NOT NULL,
  `titulo` varchar(800) NOT NULL,
  `ementa` longtext NOT NULL,
  `estagio_da_pesquisa` varchar(1) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_conclusao` date NOT NULL,
  `lider_id` int(11) DEFAULT NULL,
  `comentarios_adicionais` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_linhadepesquisa`
--

INSERT INTO `paginasgecal_linhadepesquisa` (`id`, `titulo`, `ementa`, `estagio_da_pesquisa`, `data_inicio`, `data_conclusao`, `lider_id`, `comentarios_adicionais`) VALUES
(1, '1.1.1 Gênero, diversidade e sexualidade no campo da educação', 'Os estudos sobre gênero, diversidade e sexualidade têm se revelado uma área de pesquisa profícua no campo das Ciências Humanas. Os conceitos de diversidade e sexualidade analisados juntamente com a construção das identidades, numa perspectiva relacional de gênero tornam-se importantes instrumentos epistemológicos, necessário para se compreender e discutir possíveis transformações na educação. Sabemos que os currículos, procedimentos de ensino, as normas, teorias, a linguagem, os materiais didáticos e processos de avaliação são o lócus da construção das desigualdades de gênero, sexualidade, raça, etnia e classe no contexto escolar. Além disso, objetiva-se discutir não apenas o que é ensinado na escola, mas o modo como é ensinado, problematizando também as teorias que orientam o trabalho do profissional da educação e atentos, sobretudo, para a linguagem, procurando perceber o sexismo, o racismo, o etnocentrismo, a homofobia que ela muitas vezes carrega e institui.', '', '0000-00-00', '0000-00-00', 1, ''),
(2, '1.1.2 Estudos epistemológicos em  politica públicas: gênero e educação', 'Esta linha objetiva analisar e discutir as políticas públicas de gênero no campo da educação implementadas em países do continente da América Latina no final do século XX e inicio do século XXI. As políticas públicas para as mulheres ocupam as agendas governamentais na América Latina em contextos de reformas neoliberais e de globalização da economia dos anos 1990. Contextos também demarcados por processos de redemocratização política e pela intensificação dos investimentos feministas na busca pela equidade entre homens e mulheres. Investigaremos a relevância da ação política protagonizada pelas mulheres e/ou para mulheres enquanto possibilidade de intervenção cidadã e de transformação do espaço público brasileiro e Latino Americano. Também, analisaremos políticas de gênero voltadas para áreas específicas, tais como saúde, renda, trabalho e violências.', '', '0000-00-00', '0000-00-00', 2, ''),
(3, '1.1.3 Políticas Públicas De Gênero: Uma Análise Dos Currículos De Graduação E Pós-Graduação No Estado De Santa Catarina', 'Esta pesquisa possui como objetivo identificar se as temáticas de gênero e sexualidades estão contempladas nos Programas de Pós-Graduação em Educação e Graduação no Estado de Santa Catarina. É um estudo qualitativo em que será empregado o método de análise documental. Esta pesquisa possui como aporte teórico-metodológico autores/as que escrevem sobre gênero, sexualidades, políticas públicas de gênero, formação de professoras/es, buscando compreender os impactos e as contribuições da inserção dessas temáticas na estrutura curricular na perspectiva da construção de uma educação justa e igualitária para todas/os. Na Conferência Nacional da Educação Básica (CONEB) ocorrida em 2008, foi aprovada a incorporação dos estudos de gênero e diversidade nos currículos das licenciaturas, configurando-se como um passo fundamental para a concretização da inclusão dessas temáticas nas IES. Considerando a existência de políticas públicas de gênero e que a implementação dessas na estrutura curricular dos cursos de licenciatura e pós-graduação pode contribuir no enfrentamento de violências de gênero, preconceitos e discriminação no campo da educação, justifica-se a importância de mapear quais são as IES que oferecem disciplinas sobre estas temática em seus Programas de Pós-Graduação em Educação e em seus Cursos de Licenciatura e identificar o perfil destes cursos. Palavras-chave: Políticas públicas de gênero, Sexualidades, Instituições de Ensino Superior, Currículo.', '', '0000-00-00', '0000-00-00', 1, ''),
(4, '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 'conteúdo vazio', 'c', '2018-09-21', '2018-09-21', 1, '');

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
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `denunciar_denuncia`
--
ALTER TABLE `denunciar_denuncia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `denunciar_denuncia_relatante_id_0fe2e903_fk_denunciar` (`relatante_id`);

--
-- Indexes for table `denunciar_relatante`
--
ALTER TABLE `denunciar_relatante`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paginasGecal_bolsist_pesquisa_id_3fa4033b_fk_paginasGe` (`pesquisa_id`);

--
-- Indexes for table `paginasgecal_historicogecal`
--
ALTER TABLE `paginasgecal_historicogecal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paginasGecal_linhade_lider_id_2e179fe9_fk_paginasGe` (`lider_id`);

--
-- Indexes for table `paginasgecal_pesquisador`
--
ALTER TABLE `paginasgecal_pesquisador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `denunciar_denuncia`
--
ALTER TABLE `denunciar_denuncia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `denunciar_relatante`
--
ALTER TABLE `denunciar_relatante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paginasgecal_historicogecal`
--
ALTER TABLE `paginasgecal_historicogecal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paginasgecal_pesquisador`
--
ALTER TABLE `paginasgecal_pesquisador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `denunciar_denuncia`
--
ALTER TABLE `denunciar_denuncia`
  ADD CONSTRAINT `denunciar_denuncia_relatante_id_0fe2e903_fk_denunciar` FOREIGN KEY (`relatante_id`) REFERENCES `denunciar_relatante` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  ADD CONSTRAINT `paginasGecal_bolsist_pesquisa_id_3fa4033b_fk_paginasGe` FOREIGN KEY (`pesquisa_id`) REFERENCES `paginasgecal_linhadepesquisa` (`id`);

--
-- Limitadores para a tabela `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  ADD CONSTRAINT `paginasGecal_linhade_lider_id_2e179fe9_fk_paginasGe` FOREIGN KEY (`lider_id`) REFERENCES `paginasgecal_pesquisador` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
