-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Out-2018 às 19:36
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
(48, 'Can view relatante', 12, 'view_relatante'),
(49, 'Can add formulario_denuncia', 13, 'add_formulario_denuncia'),
(50, 'Can change formulario_denuncia', 13, 'change_formulario_denuncia'),
(51, 'Can delete formulario_denuncia', 13, 'delete_formulario_denuncia'),
(52, 'Can view formulario_denuncia', 13, 'view_formulario_denuncia'),
(53, 'Can add fotos_e_ destaques', 14, 'add_fotos_e_destaques'),
(54, 'Can change fotos_e_ destaques', 14, 'change_fotos_e_destaques'),
(55, 'Can delete fotos_e_ destaques', 14, 'delete_fotos_e_destaques'),
(56, 'Can view fotos_e_ destaques', 14, 'view_fotos_e_destaques');

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
(1, 'pbkdf2_sha256$120000$NoW7BAylT02D$IGIqI3uL2tJfBgpvvuo9ubPIyuRamTV7rS96wssEc5U=', '2018-10-10 02:48:33.869755', 1, 'adriel', '', '', 'adrielwerlich@gmail.com', 1, 1, '2018-09-21 02:26:29.978189');

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
(4, '2018-09-21 04:26:50.284140', '4', '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 2, '[{\"changed\": {\"fields\": [\"concluido\"]}}]', 9, 1),
(5, '2018-09-21 05:04:16.371916', '1', '1.1.1 Gênero, diversidade e sexualidade no campo da educação', 2, '[{\"changed\": {\"fields\": [\"estagio_da_pesquisa\", \"data_inicio\", \"data_conclusao\"]}}]', 9, 1),
(6, '2018-09-21 05:04:24.821633', '2', '1.1.2 Estudos epistemológicos em  politica públicas: gênero e educação', 2, '[{\"changed\": {\"fields\": [\"estagio_da_pesquisa\", \"data_inicio\", \"data_conclusao\"]}}]', 9, 1),
(7, '2018-09-21 05:04:37.857896', '3', '1.1.3 Políticas Públicas De Gênero: Uma Análise Dos Currículos De Graduação E Pós-Graduação No Estado De Santa Catarina', 2, '[{\"changed\": {\"fields\": [\"estagio_da_pesquisa\", \"data_inicio\", \"data_conclusao\"]}}]', 9, 1),
(8, '2018-09-21 05:05:04.831606', '4', '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 2, '[]', 9, 1),
(9, '2018-09-21 12:23:08.821927', '3', 'pesquisador 1', 1, '[{\"added\": {}}]', 10, 1),
(10, '2018-09-21 13:57:03.504063', '4', 'pesquisador2', 1, '[{\"added\": {}}]', 10, 1),
(11, '2018-09-21 18:24:12.849441', '1', 'Bolsista object (1)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2018-09-21 18:24:23.029192', '2', 'Bolsista object (2)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2018-09-21 18:24:30.424992', '3', 'Bolsista object (3)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2018-09-21 18:24:42.973265', '4', 'Bolsista object (4)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2018-09-29 11:11:14.829036', '3', '1.1.3 Políticas Públicas De Gênero: Uma Análise Dos Currículos De Graduação E Pós-Graduação No Estado De Santa Catarina', 2, '[]', 9, 1),
(16, '2018-09-29 14:17:25.141703', '5', 'exemplo1 projeto de extensão', 1, '[{\"added\": {}}]', 9, 1),
(17, '2018-09-29 14:18:04.239509', '6', 'exemplo2 projeto de extensão', 1, '[{\"added\": {}}]', 9, 1),
(18, '2018-09-29 14:24:41.623149', '7', 'exemplo3 projeto de extensão', 1, '[{\"added\": {}}]', 9, 1),
(19, '2018-09-29 16:30:55.411226', '5', 'exemplo1 projeto de extensão', 2, '[{\"changed\": {\"fields\": [\"ementa\"]}}]', 9, 1),
(20, '2018-09-29 16:31:17.033923', '6', 'exemplo2 projeto de extensão', 2, '[{\"changed\": {\"fields\": [\"ementa\"]}}]', 9, 1),
(21, '2018-09-29 16:31:40.282241', '7', 'exemplo3 projeto de extensão em andamento', 2, '[{\"changed\": {\"fields\": [\"titulo\", \"ementa\"]}}]', 9, 1),
(22, '2018-09-29 16:31:52.236168', '6', 'exemplo2 projeto de extensão concluido', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 9, 1),
(23, '2018-09-29 16:32:02.620506', '5', 'exemplo1 projeto de extensão concluido', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 9, 1),
(24, '2018-09-29 16:32:43.248754', '8', 'exemplo4 projeto de extensão em andamento', 1, '[{\"added\": {}}]', 9, 1),
(25, '2018-09-29 16:33:21.498264', '9', 'exemplo5 projeto de extensão concluido', 1, '[{\"added\": {}}]', 9, 1),
(26, '2018-09-29 16:34:00.829934', '10', 'exemplo5 projeto de extensão concluido', 1, '[{\"added\": {}}]', 9, 1),
(27, '2018-09-29 16:34:24.993880', '10', 'exemplo6 projeto de extensão concluido', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 9, 1),
(28, '2018-09-29 16:45:58.598112', '5', 'exemplo1 projeto de extensão concluido', 2, '[{\"changed\": {\"fields\": [\"estagio_do_projeto\"]}}]', 9, 1),
(29, '2018-09-29 16:46:14.125482', '6', 'exemplo2 projeto de extensão concluido', 2, '[]', 9, 1),
(30, '2018-09-29 16:46:24.932921', '7', 'exemplo3 projeto de extensão em andamento', 2, '[]', 9, 1),
(31, '2018-09-29 16:46:37.060676', '8', 'exemplo4 projeto de extensão em andamento', 2, '[]', 9, 1),
(32, '2018-09-29 16:46:49.976861', '9', 'exemplo5 projeto de extensão concluido', 2, '[{\"changed\": {\"fields\": [\"estagio_do_projeto\"]}}]', 9, 1),
(33, '2018-09-29 16:47:01.351250', '10', 'exemplo6 projeto de extensão concluido', 2, '[]', 9, 1),
(34, '2018-09-29 16:47:21.792067', '11', 'projeto 7 extensão concluido', 1, '[{\"added\": {}}]', 9, 1),
(35, '2018-09-29 16:48:45.769743', '12', 'proj 8 extensao andamento', 1, '[{\"added\": {}}]', 9, 1),
(36, '2018-09-29 16:49:09.765692', '13', 'proj 9 extensao andamento', 1, '[{\"added\": {}}]', 9, 1),
(37, '2018-09-29 17:10:03.098802', '4', '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 2, '[{\"changed\": {\"fields\": [\"ementa\"]}}]', 9, 1),
(38, '2018-10-06 02:42:23.920267', '1', 'Gabriela Feldhaus de Souza', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 7, 1),
(39, '2018-10-06 02:42:39.081421', '2', 'Iara Guardalara Menegazzo', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 7, 1),
(40, '2018-10-06 02:46:07.449185', '3', 'Natielle Machado Santos', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 7, 1),
(41, '2018-10-06 02:46:19.109965', '4', 'Luan Alves Couto', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 7, 1),
(42, '2018-10-06 02:46:37.802281', '5', 'Adriel Werlich', 1, '[{\"added\": {}}]', 7, 1),
(43, '2018-10-06 02:48:53.799915', '1', 'Mareli Eliane Graupe', 2, '[{\"changed\": {\"fields\": [\"nome\", \"cpf\"]}}]', 10, 1),
(44, '2018-10-06 02:55:38.320066', '2', 'Cezar Augusto Galvão Brandt Filho', 2, '[{\"changed\": {\"fields\": [\"nome\", \"email\"]}}]', 10, 1),
(45, '2018-10-06 02:55:54.754445', '3', 'Bernadete Aparecida Casa Liston', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 10, 1),
(46, '2018-10-06 02:56:06.520346', '4', 'Josilaine Antunes Pereira', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 10, 1),
(47, '2018-10-06 02:57:01.831012', '6', 'Maiara Cardoso Soares', 1, '[{\"added\": {}}]', 10, 1),
(48, '2018-10-06 02:57:25.593043', '7', 'Suzane Faita', 1, '[{\"added\": {}}]', 10, 1),
(49, '2018-10-06 02:57:39.105845', '8', 'Veronica Bem dos Santos', 1, '[{\"added\": {}}]', 10, 1),
(50, '2018-10-06 02:57:53.354789', '9', 'Yuri Lourenço do Amaral', 1, '[{\"added\": {}}]', 10, 1),
(51, '2018-10-09 18:50:24.988022', '2', 'Iara Menegazzo Guarda', 2, '[{\"changed\": {\"fields\": [\"nome\"]}}]', 7, 1),
(52, '2018-10-09 21:56:28.063096', '1', 'Fotos_e_Destaques object (1)', 1, '[{\"added\": {}}]', 14, 1),
(53, '2018-10-09 22:01:04.272090', '2', 'Fotos_e_Destaques object (2)', 1, '[{\"added\": {}}]', 14, 1),
(54, '2018-10-09 22:02:10.359558', '1', 'Fotos_e_Destaques object (1)', 3, '', 14, 1),
(55, '2018-10-09 23:01:43.811458', '3', 'Fotos_e_Destaques object (3)', 1, '[{\"added\": {}}]', 14, 1),
(56, '2018-10-09 23:26:25.635958', '4', 'Fotos_e_Destaques object (4)', 1, '[{\"added\": {}}]', 14, 1),
(57, '2018-10-09 23:30:54.947266', '5', 'Fotos_e_Destaques object (5)', 1, '[{\"added\": {}}]', 14, 1),
(58, '2018-10-09 23:48:31.537641', '5', 'Fotos_e_Destaques object (5)', 2, '[{\"changed\": {\"fields\": [\"foto\", \"comentarios\"]}}]', 14, 1),
(59, '2018-10-09 23:52:51.262392', '6', 'Fotos_e_Destaques object (6)', 1, '[{\"added\": {}}]', 14, 1),
(60, '2018-10-09 23:58:24.107970', '7', 'Fotos_e_Destaques object (7)', 1, '[{\"added\": {}}]', 14, 1),
(61, '2018-10-10 00:01:25.888484', '8', 'Fotos_e_Destaques object (8)', 1, '[{\"added\": {}}]', 14, 1),
(62, '2018-10-10 02:51:23.056901', '9', 'Fotos_e_Destaques object (9)', 1, '[{\"added\": {}}]', 14, 1),
(63, '2018-10-10 03:25:16.684050', '5', 'Fotos_e_Destaques object (5)', 3, '', 14, 1),
(64, '2018-10-10 03:25:30.012778', '7', 'Fotos_e_Destaques object (7)', 3, '', 14, 1),
(65, '2018-10-10 03:25:44.261522', '8', 'Fotos_e_Destaques object (8)', 3, '', 14, 1),
(66, '2018-10-10 04:15:04.867106', '3', 'Fotos_e_Destaques object (3)', 3, '', 14, 1),
(67, '2018-10-10 04:15:10.306217', '4', 'Fotos_e_Destaques object (4)', 3, '', 14, 1),
(68, '2018-10-10 04:15:14.799609', '6', 'Fotos_e_Destaques object (6)', 3, '', 14, 1),
(69, '2018-10-10 04:15:19.217765', '9', 'Fotos_e_Destaques object (9)', 3, '', 14, 1),
(70, '2018-10-10 04:21:43.310011', '10', 'Fotos_e_Destaques object (10)', 1, '[{\"added\": {}}]', 14, 1),
(71, '2018-10-10 04:22:00.710337', '11', 'Fotos_e_Destaques object (11)', 1, '[{\"added\": {}}]', 14, 1),
(72, '2018-10-10 04:22:12.607726', '12', 'Fotos_e_Destaques object (12)', 1, '[{\"added\": {}}]', 14, 1),
(73, '2018-10-10 13:20:15.632070', '16', 'Fotos_e_Destaques object (16)', 1, '[{\"added\": {}}]', 14, 1),
(74, '2018-10-10 13:21:28.573884', '17', 'Fotos_e_Destaques object (17)', 1, '[{\"added\": {}}]', 14, 1),
(75, '2018-10-10 13:57:59.411419', '2', 'Fotos_e_Destaques object (2)', 3, '', 14, 1),
(76, '2018-10-10 13:58:11.384109', '11', 'Fotos_e_Destaques object (11)', 3, '', 14, 1),
(77, '2018-10-10 13:59:40.538166', '18', 'Fotos_e_Destaques object (18)', 1, '[{\"added\": {}}]', 14, 1),
(78, '2018-10-10 13:59:51.910378', '19', 'Fotos_e_Destaques object (19)', 1, '[{\"added\": {}}]', 14, 1),
(79, '2018-10-10 14:00:03.493111', '20', 'Fotos_e_Destaques object (20)', 1, '[{\"added\": {}}]', 14, 1),
(80, '2018-10-10 14:00:25.367648', '21', 'Fotos_e_Destaques object (21)', 1, '[{\"added\": {}}]', 14, 1),
(81, '2018-10-10 14:00:40.649378', '21', 'Fotos_e_Destaques object (21)', 2, '[{\"changed\": {\"fields\": [\"foto\"]}}]', 14, 1),
(82, '2018-10-10 14:00:55.884424', '22', 'Fotos_e_Destaques object (22)', 1, '[{\"added\": {}}]', 14, 1),
(83, '2018-10-10 14:01:30.107143', '23', 'Fotos_e_Destaques object (23)', 1, '[{\"added\": {}}]', 14, 1),
(84, '2018-10-10 14:01:42.508246', '24', 'Fotos_e_Destaques object (24)', 1, '[{\"added\": {}}]', 14, 1),
(85, '2018-10-10 14:01:54.856897', '25', 'Fotos_e_Destaques object (25)', 1, '[{\"added\": {}}]', 14, 1),
(86, '2018-10-10 14:02:08.221117', '26', 'Fotos_e_Destaques object (26)', 1, '[{\"added\": {}}]', 14, 1);

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
(13, 'paginasGecal', 'formulario_denuncia'),
(14, 'paginasGecal', 'fotos_e_destaques'),
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
(19, 'paginasGecal', '0003_auto_20180921_0142', '2018-09-21 04:42:54.993583'),
(20, 'paginasGecal', '0004_auto_20180929_0806', '2018-09-29 11:06:41.657447'),
(21, 'paginasGecal', '0005_auto_20180929_1219', '2018-09-29 15:19:55.501330'),
(22, 'paginasGecal', '0006_auto_20180930_1540', '2018-09-30 18:40:25.896396'),
(23, 'paginasGecal', '0007_formulario_denuncia_estupro', '2018-10-01 15:59:00.367616'),
(24, 'paginasGecal', '0008_auto_20181001_1503', '2018-10-01 18:03:32.392831'),
(25, 'paginasGecal', '0009_remove_pesquisador_cpf', '2018-10-06 02:58:44.823124'),
(26, 'paginasGecal', '0010_fotos_e_destaques', '2018-10-09 21:54:19.191223'),
(27, 'paginasGecal', '0011_auto_20181010_0118', '2018-10-10 04:18:51.299969');

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
('32cl8mi77l7bqqx4ishnasn0jvnwr4nu', 'ZDQ3MDQ3MmRjYzhlZjRiMjQ3MjQ2M2VhNTJkYTgyZjJhNjAzNTMzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTg4OTBmODMyYWQ4NWY1NDQ2YjNjNzQ2YTk5MWRhMGRiZWRkMTExIn0=', '2018-10-24 02:48:33.876799'),
('dr8bwm2i6igr3qykr0t9zfv7whg1n4ff', 'ZDQ3MDQ3MmRjYzhlZjRiMjQ3MjQ2M2VhNTJkYTgyZjJhNjAzNTMzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTg4OTBmODMyYWQ4NWY1NDQ2YjNjNzQ2YTk5MWRhMGRiZWRkMTExIn0=', '2018-10-05 02:26:50.712501'),
('ky6hcia4md1eggp1mj1c2xrvvowbdkds', 'ZDQ3MDQ3MmRjYzhlZjRiMjQ3MjQ2M2VhNTJkYTgyZjJhNjAzNTMzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTg4OTBmODMyYWQ4NWY1NDQ2YjNjNzQ2YTk5MWRhMGRiZWRkMTExIn0=', '2018-10-09 16:05:28.630375'),
('narwy1mpv2ux9e7pzs00y28ls9i1pf6e', 'ZDQ3MDQ3MmRjYzhlZjRiMjQ3MjQ2M2VhNTJkYTgyZjJhNjAzNTMzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTg4OTBmODMyYWQ4NWY1NDQ2YjNjNzQ2YTk5MWRhMGRiZWRkMTExIn0=', '2018-10-23 18:46:54.878812');

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
  `estagio_do_projeto` varchar(1) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_conclusao` date NOT NULL,
  `lider_id` int(11) DEFAULT NULL,
  `comentarios_adicionais` longtext,
  `tipo_de_projeto` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_linhadepesquisa`
--

INSERT INTO `paginasgecal_linhadepesquisa` (`id`, `titulo`, `ementa`, `estagio_do_projeto`, `data_inicio`, `data_conclusao`, `lider_id`, `comentarios_adicionais`, `tipo_de_projeto`) VALUES
(1, '1.1.1 Gênero, diversidade e sexualidade no campo da educação', 'Os estudos sobre gênero, diversidade e sexualidade têm se revelado uma área de pesquisa profícua no campo das Ciências Humanas. Os conceitos de diversidade e sexualidade analisados juntamente com a construção das identidades, numa perspectiva relacional de gênero tornam-se importantes instrumentos epistemológicos, necessário para se compreender e discutir possíveis transformações na educação. Sabemos que os currículos, procedimentos de ensino, as normas, teorias, a linguagem, os materiais didáticos e processos de avaliação são o lócus da construção das desigualdades de gênero, sexualidade, raça, etnia e classe no contexto escolar. Além disso, objetiva-se discutir não apenas o que é ensinado na escola, mas o modo como é ensinado, problematizando também as teorias que orientam o trabalho do profissional da educação e atentos, sobretudo, para a linguagem, procurando perceber o sexismo, o racismo, o etnocentrismo, a homofobia que ela muitas vezes carrega e institui.', 'a', '2018-09-21', '2018-09-21', 1, '', 'p'),
(2, '1.1.2 Estudos epistemológicos em  politica públicas: gênero e educação', 'Esta linha objetiva analisar e discutir as políticas públicas de gênero no campo da educação implementadas em países do continente da América Latina no final do século XX e inicio do século XXI. As políticas públicas para as mulheres ocupam as agendas governamentais na América Latina em contextos de reformas neoliberais e de globalização da economia dos anos 1990. Contextos também demarcados por processos de redemocratização política e pela intensificação dos investimentos feministas na busca pela equidade entre homens e mulheres. Investigaremos a relevância da ação política protagonizada pelas mulheres e/ou para mulheres enquanto possibilidade de intervenção cidadã e de transformação do espaço público brasileiro e Latino Americano. Também, analisaremos políticas de gênero voltadas para áreas específicas, tais como saúde, renda, trabalho e violências.', 'a', '2018-09-21', '2018-09-21', 2, '', 'p'),
(3, '1.1.3 Políticas Públicas De Gênero: Uma Análise Dos Currículos De Graduação E Pós-Graduação No Estado De Santa Catarina', 'Esta pesquisa possui como objetivo identificar se as temáticas de gênero e sexualidades estão contempladas nos Programas de Pós-Graduação em Educação e Graduação no Estado de Santa Catarina. É um estudo qualitativo em que será empregado o método de análise documental. Esta pesquisa possui como aporte teórico-metodológico autores/as que escrevem sobre gênero, sexualidades, políticas públicas de gênero, formação de professoras/es, buscando compreender os impactos e as contribuições da inserção dessas temáticas na estrutura curricular na perspectiva da construção de uma educação justa e igualitária para todas/os. Na Conferência Nacional da Educação Básica (CONEB) ocorrida em 2008, foi aprovada a incorporação dos estudos de gênero e diversidade nos currículos das licenciaturas, configurando-se como um passo fundamental para a concretização da inclusão dessas temáticas nas IES. Considerando a existência de políticas públicas de gênero e que a implementação dessas na estrutura curricular dos cursos de licenciatura e pós-graduação pode contribuir no enfrentamento de violências de gênero, preconceitos e discriminação no campo da educação, justifica-se a importância de mapear quais são as IES que oferecem disciplinas sobre estas temática em seus Programas de Pós-Graduação em Educação e em seus Cursos de Licenciatura e identificar o perfil destes cursos. Palavras-chave: Políticas públicas de gênero, Sexualidades, Instituições de Ensino Superior, Currículo.', 'a', '2018-09-21', '2018-09-21', 1, '', 'p'),
(4, '1.PROJETO INTERINSTITUCIONAL ANTROPOLOGIA, 							GÊNERO E EDUCAÇÃO EM SANTA CATARINA 2013-2015', 'conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio conteúdo vazio', 'c', '2018-09-21', '2018-09-21', 1, '', 'p'),
(5, 'exemplo1 projeto de extensão concluido', 'conteúdo vazio exemplo1 em andamento', 'c', '2018-09-29', '2018-09-29', 2, 'sem comentarios', 'e'),
(6, 'exemplo2 projeto de extensão concluido', 'conteúdo vazio projeto de extensão concluido', 'c', '2018-09-29', '2018-09-29', 3, 'coments', 'e'),
(7, 'exemplo3 projeto de extensão em andamento', 'conteúdo vazio projeto de extensão em andamento', 'a', '2018-09-29', '2018-09-29', 4, '\'', 'e'),
(8, 'exemplo4 projeto de extensão em andamento', 'conteúdo vazio', 'a', '2018-09-29', '2018-09-29', 2, 'no comments', 'e'),
(9, 'exemplo5 projeto de extensão concluido', 'conteúdo vazio', 'c', '2018-09-29', '2018-09-29', 3, 'no comments', 'e'),
(10, 'exemplo6 projeto de extensão concluido', 'conteúdo vazio', 'c', '2018-09-29', '2018-09-29', 4, '', 'e'),
(11, 'projeto 7 extensão concluido', 'conteúdo vazio', 'c', '2018-09-29', '2018-09-29', NULL, '', 'e'),
(12, 'proj 8 extensao andamento', 'conteúdo vazio', 'a', '2018-09-29', '2018-09-29', 3, '', 'e'),
(13, 'proj 9 extensao andamento', 'conteúdo vazio', 'a', '2018-09-29', '2018-09-29', 4, '', 'e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginasgecal_pesquisador`
--

CREATE TABLE `paginasgecal_pesquisador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `dtNascimento` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `universidade` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paginasgecal_pesquisador`
--

INSERT INTO `paginasgecal_pesquisador` (`id`, `nome`, `dtNascimento`, `email`, `universidade`) VALUES
(1, 'Mareli Eliane Graupe', '2018-09-20', '', 'uniplac'),
(2, 'Cezar Augusto Galvão Brandt Filho', '2018-09-20', '', 'uniplac'),
(3, 'Bernadete Aparecida Casa Liston', '2018-09-21', '', 'tal universidade'),
(4, 'Josilaine Antunes Pereira', '2018-09-21', '', 'ufsc'),
(6, 'Maiara Cardoso Soares', '2018-10-05', '', ''),
(7, 'Suzane Faita', '2018-10-05', '', ''),
(8, 'Veronica Bem dos Santos', '2018-10-05', '', ''),
(9, 'Yuri Lourenço do Amaral', '2018-10-05', '', '');

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
-- Indexes for table `paginasgecal_formulario_denuncia`
--
ALTER TABLE `paginasgecal_formulario_denuncia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginasgecal_fotos_e_destaques`
--
ALTER TABLE `paginasgecal_fotos_e_destaques`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `paginasgecal_bolsista`
--
ALTER TABLE `paginasgecal_bolsista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paginasgecal_formulario_denuncia`
--
ALTER TABLE `paginasgecal_formulario_denuncia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `paginasgecal_fotos_e_destaques`
--
ALTER TABLE `paginasgecal_fotos_e_destaques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `paginasgecal_historicogecal`
--
ALTER TABLE `paginasgecal_historicogecal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paginasgecal_linhadepesquisa`
--
ALTER TABLE `paginasgecal_linhadepesquisa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paginasgecal_pesquisador`
--
ALTER TABLE `paginasgecal_pesquisador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
