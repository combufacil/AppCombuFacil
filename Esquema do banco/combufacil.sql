-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jun-2018 às 23:33
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `combufacil`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nascimento` date NOT NULL,
  `cpf` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `num` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `confirmar_senha` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `nascimento`, `cpf`, `endereco`, `num`, `cep`, `bairro`, `cidade`, `uf`, `telefone`, `celular`, `email`, `senha`, `confirmar_senha`) VALUES
(13, 'renan', '2018-06-20', '34468715863', 'rua', '1011', '08080030', 'são miguel', 'são paulo', 'sp', 'telefone', 'celular', 'j.r.a.l@hotmail.com', 'bd456b91f2328ba56bb653ac217a4d43', ''),
(14, 'renan', '2018-06-20', '34468715863', 'rua', '1011', '08080030', 'são miguel', 'são paulo', 'sp', 'telefone', 'celular', 'j.r.a.l@hotmail.com', 'bd456b91f2328ba56bb653ac217a4d43', 'sony-ps2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `combustivel`
--

CREATE TABLE `combustivel` (
  `gasolina` varchar(200) NOT NULL,
  `alcool` varchar(200) NOT NULL,
  `diesel` varchar(200) NOT NULL,
  `gasolina_aditivada` varchar(200) NOT NULL,
  `gnv` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `combustivel`
--

INSERT INTO `combustivel` (`gasolina`, `alcool`, `diesel`, `gasolina_aditivada`, `gnv`) VALUES
('10', '11', '', '', ''),
('10', '11', '', '13', '14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posto`
--

CREATE TABLE `posto` (
  `id` int(11) NOT NULL,
  `razao_social` varchar(200) NOT NULL,
  `nome_fantasia` varchar(200) NOT NULL,
  `cnpj` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `num` varchar(200) NOT NULL,
  `cep` varchar(200) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `uf` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `celular` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `confirma_senha` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posto`
--

INSERT INTO `posto` (`id`, `razao_social`, `nome_fantasia`, `cnpj`, `endereco`, `num`, `cep`, `bairro`, `cidade`, `uf`, `telefone`, `celular`, `email`, `senha`, `confirma_senha`) VALUES
(1, 'renan', 'nome', '123', 'rua', '1011', '08080030', 'são miguél', 'são paulo', 'sp', '123456789', '987654321', 'j.r.a.L@hotmail.com', 'bd456b91f2328ba56bb653ac217a4d43', 'sony-ps2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posto`
--
ALTER TABLE `posto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posto`
--
ALTER TABLE `posto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
