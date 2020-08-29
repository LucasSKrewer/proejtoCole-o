-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Ago-2020 às 20:44
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `colle_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcollection`
--

CREATE TABLE `tbcollection` (
  `codColle` int(11) NOT NULL,
  `nameColle` varchar(155) NOT NULL,
  `brandColle` varchar(155) NOT NULL,
  `manufactured` varchar(45) NOT NULL,
  `yearColle` varchar(155) NOT NULL,
  `volumeColle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcollection`
--

INSERT INTO `tbcollection` (`codColle`, `nameColle`, `brandColle`, `manufactured`, `yearColle`, `volumeColle`) VALUES
(1, 'Pepsi', 'Pepsi Cola', 'Pepsico', '1932', 300),
(2, 'Fanta', 'Fanta', 'Pepsico', '1996', 290),
(3, 'Guaraná', 'Charrua', 'Pepsico', '1832', 400);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbuser`
--

CREATE TABLE `tbuser` (
  `codUser` int(11) NOT NULL,
  `nameUser` varchar(255) NOT NULL,
  `mailUser` varchar(155) NOT NULL,
  `passUser` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbuser`
--

INSERT INTO `tbuser` (`codUser`, `nameUser`, `mailUser`, `passUser`) VALUES
(1, 'admin', 'admin@mail.com', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbcollection`
--
ALTER TABLE `tbcollection`
  ADD PRIMARY KEY (`codColle`),
  ADD UNIQUE KEY `codColle_UNIQUE` (`codColle`);

--
-- Índices para tabela `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`codUser`),
  ADD UNIQUE KEY `codUser_UNIQUE` (`codUser`),
  ADD UNIQUE KEY `mailUser_UNIQUE` (`mailUser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcollection`
--
ALTER TABLE `tbcollection`
  MODIFY `codColle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `codUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
