-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 15-Jun-2018 às 22:32
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id5504268_dbcombufacil`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbCliente`
--

CREATE TABLE `tbCliente` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idPoliticaAcesso` int(10) UNSIGNED DEFAULT NULL,
  `usuNome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuSobrenome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usuCpf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usuSenha` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbCombustivelDisponivel`
--

CREATE TABLE `tbCombustivelDisponivel` (
  `idCombustivelDisponivel` int(10) UNSIGNED NOT NULL,
  `idOpcaoCombustivel` int(10) UNSIGNED NOT NULL,
  `idPosto` int(10) UNSIGNED NOT NULL,
  `cdPrecoCombustivel` double(8,2) NOT NULL,
  `cdAvaliacao` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbOpcaoCombustivel`
--

CREATE TABLE `tbOpcaoCombustivel` (
  `idCombustivel` int(10) UNSIGNED NOT NULL,
  `comOpcaoCombustivel` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbPoliticaAcesso`
--

CREATE TABLE `tbPoliticaAcesso` (
  `idPoliticaAcesso` int(10) UNSIGNED NOT NULL,
  `paTipoUsuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbPostoAbastecimento`
--

CREATE TABLE `tbPostoAbastecimento` (
  `idPostoAbastecimento` int(10) UNSIGNED NOT NULL,
  `posCnpj` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `posEndereco` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `posBairro` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `posNumero` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `posCep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idLocalMaps` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idPoliticaAcesso` int(10) UNSIGNED DEFAULT NULL,
  `posRazaoSocial` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posNomeFantasia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posSenha` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbPremiacao`
--

CREATE TABLE `tbPremiacao` (
  `idParticipante` int(10) UNSIGNED DEFAULT NULL,
  `idPromocao` int(10) UNSIGNED DEFAULT NULL,
  `preCodigoValidacao` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `preDisponibilidade` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbPromocao`
--

CREATE TABLE `tbPromocao` (
  `idPromocao` int(10) UNSIGNED NOT NULL,
  `idPostoAbastecimento` int(10) UNSIGNED DEFAULT NULL,
  `proDescricaoPremio` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `proLitrosASeremBatidos` double NOT NULL,
  `proDataValidade` datetime NOT NULL,
  `proDisponibilidade` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbVenda`
--

CREATE TABLE `tbVenda` (
  `idVenda` int(10) UNSIGNED NOT NULL,
  `idPosto` int(10) UNSIGNED NOT NULL,
  `idCliente` int(10) UNSIGNED NOT NULL,
  `venDataHora` datetime DEFAULT NULL,
  `venLitrosComprados` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbCliente`
--
ALTER TABLE `tbCliente`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idPoliticaAcesso` (`idPoliticaAcesso`);

--
-- Indexes for table `tbCombustivelDisponivel`
--
ALTER TABLE `tbCombustivelDisponivel`
  ADD PRIMARY KEY (`idCombustivelDisponivel`),
  ADD KEY `idOpcaoCombustivel` (`idOpcaoCombustivel`),
  ADD KEY `idPosto` (`idPosto`);

--
-- Indexes for table `tbOpcaoCombustivel`
--
ALTER TABLE `tbOpcaoCombustivel`
  ADD PRIMARY KEY (`idCombustivel`);

--
-- Indexes for table `tbPoliticaAcesso`
--
ALTER TABLE `tbPoliticaAcesso`
  ADD PRIMARY KEY (`idPoliticaAcesso`);

--
-- Indexes for table `tbPostoAbastecimento`
--
ALTER TABLE `tbPostoAbastecimento`
  ADD PRIMARY KEY (`idPostoAbastecimento`),
  ADD KEY `idPoliticaAcesso` (`idPoliticaAcesso`);

--
-- Indexes for table `tbPremiacao`
--
ALTER TABLE `tbPremiacao`
  ADD KEY `idParticipante` (`idParticipante`),
  ADD KEY `idPromocao` (`idPromocao`);

--
-- Indexes for table `tbPromocao`
--
ALTER TABLE `tbPromocao`
  ADD PRIMARY KEY (`idPromocao`),
  ADD KEY `idPostoAbastecimento` (`idPostoAbastecimento`);

--
-- Indexes for table `tbVenda`
--
ALTER TABLE `tbVenda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `idPosto` (`idPosto`),
  ADD KEY `idCliente` (`idCliente`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbCliente`
--
ALTER TABLE `tbCliente`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbCombustivelDisponivel`
--
ALTER TABLE `tbCombustivelDisponivel`
  MODIFY `idCombustivelDisponivel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbOpcaoCombustivel`
--
ALTER TABLE `tbOpcaoCombustivel`
  MODIFY `idCombustivel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbPoliticaAcesso`
--
ALTER TABLE `tbPoliticaAcesso`
  MODIFY `idPoliticaAcesso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbPostoAbastecimento`
--
ALTER TABLE `tbPostoAbastecimento`
  MODIFY `idPostoAbastecimento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbPromocao`
--
ALTER TABLE `tbPromocao`
  MODIFY `idPromocao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbVenda`
--
ALTER TABLE `tbVenda`
  MODIFY `idVenda` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbCliente`
--
ALTER TABLE `tbCliente`
  ADD CONSTRAINT `tbCliente_ibfk_1` FOREIGN KEY (`idPoliticaAcesso`) REFERENCES `tbPoliticaAcesso` (`idPoliticaAcesso`);

--
-- Limitadores para a tabela `tbCombustivelDisponivel`
--
ALTER TABLE `tbCombustivelDisponivel`
  ADD CONSTRAINT `tbCombustivelDisponivel_ibfk_1` FOREIGN KEY (`idOpcaoCombustivel`) REFERENCES `tbOpcaoCombustivel` (`idCombustivel`),
  ADD CONSTRAINT `tbCombustivelDisponivel_ibfk_2` FOREIGN KEY (`idPosto`) REFERENCES `tbPostoAbastecimento` (`idPostoAbastecimento`);

--
-- Limitadores para a tabela `tbPostoAbastecimento`
--
ALTER TABLE `tbPostoAbastecimento`
  ADD CONSTRAINT `tbPostoAbastecimento_ibfk_1` FOREIGN KEY (`idPoliticaAcesso`) REFERENCES `tbPoliticaAcesso` (`idPoliticaAcesso`);

--
-- Limitadores para a tabela `tbPremiacao`
--
ALTER TABLE `tbPremiacao`
  ADD CONSTRAINT `tbPremiacao_ibfk_1` FOREIGN KEY (`idParticipante`) REFERENCES `tbCliente` (`idUsuario`),
  ADD CONSTRAINT `tbPremiacao_ibfk_2` FOREIGN KEY (`idPromocao`) REFERENCES `tbPromocao` (`idPromocao`);

--
-- Limitadores para a tabela `tbPromocao`
--
ALTER TABLE `tbPromocao`
  ADD CONSTRAINT `tbPromocao_ibfk_1` FOREIGN KEY (`idPostoAbastecimento`) REFERENCES `tbPostoAbastecimento` (`idPostoAbastecimento`);

--
-- Limitadores para a tabela `tbVenda`
--
ALTER TABLE `tbVenda`
  ADD CONSTRAINT `tbVenda_ibfk_1` FOREIGN KEY (`idPosto`) REFERENCES `tbPostoAbastecimento` (`idPostoAbastecimento`),
  ADD CONSTRAINT `tbVenda_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `tbCliente` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
