-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jul-2020 às 04:31
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oldlove`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `diario`
--

CREATE TABLE `diario` (
  `id_diario` int(11) NOT NULL,
  `tipo_ref` varchar(30) DEFAULT NULL,
  `tipo_acom` varchar(30) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `medicacao` varchar(50) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `dosagem` varchar(30) DEFAULT NULL,
  `intervalo` varchar(30) DEFAULT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  `criado` datetime DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `diario`
--

INSERT INTO `diario` (`id_diario`, `tipo_ref`, `tipo_acom`, `descricao`, `medicacao`, `hora`, `dosagem`, `intervalo`, `observacao`, `criado`, `id_paciente`) VALUES
(8, 'AlmoÃ§o', 'RefeiÃ§Ã£o', 'picanha', 'Rivotril', '20:30:00', '1 comprimido', '1 por dia ', 'Tarja Preta', '2020-07-08 23:30:47', NULL),
(12, 'Eventual', 'Bebida', 'MaÃ§a', 'Dorflex', '23:43:00', '1 comprimido', '6 horas', 'tomou', '2020-07-08 23:43:10', NULL),
(13, 'CafÃ© da manhÃ£', 'RefeiÃ§Ã£o', 'picanha', 'Dorflex', '22:51:00', '1 comprimido', '6 horas', 'tomou', '2020-07-08 23:51:46', NULL),
(14, 'CafÃ© da manhÃ£', 'RefeiÃ§Ã£o', 'Pao com manteiga', 'Dorflex', '20:20:00', '1 comprimido', '6 horas', 'Paciente com dor de cabeÃ§a', '2020-07-09 22:10:14', NULL),
(15, 'CafÃ© da manhÃ£', 'RefeiÃ§Ã£o', 'PÃ£o com manteiga', 'Dorflex', '20:30:00', '1 comprimido', '6 horas', 'Paciente com dor de cabeÃ§a', '2020-07-10 23:14:52', NULL),
(16, 'CafÃ© da manhÃ£', 'RefeiÃ§Ã£o', 'PÃ£o com manteiga', 'Ritalina', '20:16:00', '1 comprimido', '6 horas', 'Tomou', '2020-07-10 23:17:49', 0),
(17, 'AlmoÃ§o', 'Bebida', 'Sprite', 'Paracetamol', '03:24:00', '3 cx', '1 hora', 'morreu', '2020-07-10 23:20:47', 0),
(18, 'AlmoÃ§o', 'RefeiÃ§Ã£o', 'Strogonoff', 'Xanax', '20:25:00', '1 cx', '6 horas', 'morreuu', '2020-07-10 23:23:49', 0),
(19, 'Jantar', 'Sobremesa', 'Casquinha', 'Sei la', '03:28:00', '1 caixa', 'toda hora', 'morrreu dnv', '2020-07-10 23:28:44', 171);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diario`
--
ALTER TABLE `diario`
  ADD PRIMARY KEY (`id_diario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diario`
--
ALTER TABLE `diario`
  MODIFY `id_diario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `diario`
--
ALTER TABLE `diario`
  ADD CONSTRAINT `fk_DiaPac` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
