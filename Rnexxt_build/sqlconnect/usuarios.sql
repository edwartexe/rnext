-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 09-02-2020 a las 06:55:55
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rnext`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `hash`, `salt`) VALUES
(1, 'test', '$5$rounds=5000$battlebeasttest$5KAz1P0aGucKA3unk1j5wAyZ2V1Vhqpex3X1ZRDCU22', '$5$rounds=5000$battlebeasttest$'),
(6, 'eee', '$5$rounds=5000$battlebeasteee$hTSbebzLVU7SDMGXAaqCb/Z9z32JcCC91xd/G9wvGm9', '$5$rounds=5000$battlebeasteee$'),
(7, 'ray', '$5$rounds=5000$battlebeastray$0/uHGXdMDqb8bLNn1jXLiAAHfIQ9RVUxsJXPc5SU3m.', '$5$rounds=5000$battlebeastray$'),
(8, 'jee', '$5$rounds=5000$battlebeastjee$S9SXyZymQEbHrnLLR6xThV3sl2QvUnM4949Sjk.e3e8', '$5$rounds=5000$battlebeastjee$'),
(9, 'newtry', '$5$rounds=5000$battlebeastnewtr$AeItm/yB9wdp/AzNttVpNaoNFWNMaOWmv.iO1gFuar3', '$5$rounds=5000$battlebeastnewtry$'),
(10, 'jjj', '$5$rounds=5000$battlebeastjjj$5LlQSk6psJMBJxca9o9RTAIFTox51orHpctZRHyzzO7', '$5$rounds=5000$battlebeastjjj$'),
(11, 'jjjj', '$5$rounds=5000$battlebeastjjjj$.71s0C1TgpJpwOxZQgVv1W5EMbhjiJgTXxxN.0FjbXD', '$5$rounds=5000$battlebeastjjjj$'),
(12, 'playmaker', '$5$rounds=5000$battlebeastplaym$V6SJO5RoFTQQDhly7c2gDA4ndpzDprN3uP07EBWkke1', '$5$rounds=5000$battlebeastplaymaker$'),
(13, 'gest', '$5$rounds=5000$battlebeastgest$CyD.ZW95qekHQYM9y6WKVcJGhq8dxj8Gh6pQex6nrO4', '$5$rounds=5000$battlebeastgest$'),
(14, 'seiba', '$5$rounds=5000$battlebeastseiba$/8GBm4FMH1qkiJMf00muls5bOhsjrT.tXTsqXdtKNx7', '$5$rounds=5000$battlebeastseiba$'),
(15, 'zapp', '$5$rounds=5000$battlebeastzapp$otK1GjYmYw/MHUOctaT4M9yBrxfISoA8rCEhYkctHm2', '$5$rounds=5000$battlebeastzapp$'),
(16, 'jp', '$5$rounds=5000$battlebeastjp$RoL3bHaI7Ps.tzDR63AUklWjz9RGMK9eE4qEbjbnxm8', '$5$rounds=5000$battlebeastjp$');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
