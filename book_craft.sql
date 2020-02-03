-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Fev-2020 às 13:38
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `book_craft`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(1, 'Ficção'),
(2, 'Tecnico'),
(3, 'Romance'),
(4, 'Mangá'),
(5, 'Programação'),
(6, 'Terror');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `nome` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome`) VALUES
(1, 'Saraiva'),
(2, 'Cultura'),
(3, 'Draco'),
(4, 'Abril'),
(5, 'Veronesi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(11, '2019_08_21_204027_create_pedido_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 2),
(14, '2019_08_22_013259_create_autor_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `fk_categoria` int(11) NOT NULL,
  `imagem` varchar(500) DEFAULT NULL,
  `fk_editora` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `descricao`, `preco`, `fk_categoria`, `imagem`, `fk_editora`, `updated_at`, `created_at`) VALUES
(2, 'Deserto dos Tartaros', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry really .', 22, 3, '/Images/dino.jpg', 2, '2019-08-22 00:45:15', NULL),
(3, 'Brave New World', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 45, 1, '/Images/huxley.jpg', 3, NULL, NULL),
(4, 'Percy Jackson', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 40, 1, '/Images/percy.jpg', 4, NULL, NULL),
(5, 'A lenda do cavaleiro sem cabeça', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 2, '/Images/cavaleiro.jpg', 2, NULL, NULL),
(6, 'Mysql', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 20, 5, '/Images/mysql.jpg', 3, NULL, NULL),
(7, 'Laravel Ninja', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 15, 5, '/Images/ninjas.jpg', 2, NULL, NULL),
(8, 'Guiness Book 2019', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 2, '/Images/guiness.jpg', 4, NULL, NULL),
(9, 'Php para iniciantes', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 30, 5, '/Images/php.jpg', 2, NULL, NULL),
(10, 'The Murder Book', 'Esse é o melhor livro', 9, 2, '/Images/murder.jpg', 1, NULL, NULL),
(11, 'Dungeons & Dragons', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 8, 2, '/Images/dd.jpg', 3, NULL, NULL),
(12, 'O Hobbit', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 2, '/Images/hebit.jpg', 2, NULL, NULL),
(13, 'O guia do mochileiro das galáxias', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 25, 2, '/Images/galaxia.jpg', 3, NULL, NULL),
(14, 'Boku No hero', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 25, 4, '/Images/cdz.jpg', 4, NULL, NULL),
(15, 'O trono destruido', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 14, 2, '/Images/trono.jpg', 4, NULL, NULL),
(16, 'One Punch Man', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 40, 4, '/Images/saitama.jpg', 4, NULL, NULL),
(17, 'Naruto', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 30, 4, '/Images/naruto.jpg', 4, NULL, NULL),
(18, 'Dragon Ball', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 50, 4, '/Images/dragon.jpg', 4, NULL, NULL),
(19, 'Kahoot: O mal que nos espera', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 25, 2, '/Images/kahot.jpg', 3, NULL, NULL),
(20, 'Aviões', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 1, '/Images/aviao.jpg', 1, NULL, NULL),
(22, 'Melancia', 'Marian Keyssss', 55, 3, '/storage/uploads/poster_melancia.jpg', 5, '2019-08-21 04:26:32', '2019-08-20 19:51:52'),
(28, 'Livro do ressignificados', '120398123', 20, 2, NULL, 1, '2019-08-21 23:20:34', '2019-08-21 23:20:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$HvR/Hn6LZMqX85o8uWsf7uMT4ikUdRb13krizgWZBJoBrkTDhsF8C', 1, NULL, '2019-08-22 00:10:47', '2019-08-22 00:10:47'),
(2, 'ana', 'ana@mail.com', NULL, '$2y$10$rSZoa/qqX95n0Q9d2s2QZuVS5254unoa4fzmKhPVuUyZ/sprXEsoy', 0, NULL, '2019-08-22 04:01:19', '2019-08-22 04:01:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_fk_user_foreign` (`fk_user`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_produto_categoria` (`fk_categoria`),
  ADD KEY `fk_produto_editora1` (`fk_editora`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_fk_user_foreign` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`fk_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_editora1` FOREIGN KEY (`fk_editora`) REFERENCES `editora` (`id_editora`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
