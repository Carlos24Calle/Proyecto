-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2024 a las 05:13:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `project`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `genero` enum('Macho','Hembra') NOT NULL,
  `raza` varchar(50) NOT NULL,
  `id_person` int(11) NOT NULL,
  `id_veterinary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`id`, `nombre`, `tipo`, `genero`, `raza`, `id_person`, `id_veterinary`) VALUES
(1, 'Malboro', 'Gato', 'Macho', 'persa', 1, 2),
(2, 'Loky', 'perro', 'Macho', 'pastor', 3, 3),
(3, 'coffe', 'Conejo', 'Hembra', 'belier', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `last name` varchar(50) DEFAULT NULL,
  `identification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `name`, `last name`, `identification`) VALUES
(1, 'Carlos', 'Calle', 106234567),
(2, 'Andres', 'Hurtado', 1234567),
(3, 'Felipe', 'Castillo', 90876542),
(4, 'Julieta', 'Martinez', 890292731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinary`
--

CREATE TABLE `veterinary` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `veterinary`
--

INSERT INTO `veterinary` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Macostas felices', 'cll 28 6A', '6789056'),
(2, 'Cachorros', 'cll 24 centro', '06456789'),
(3, 'Texa', 'cra 45 n°2', '0987634');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_person` (`id_person`),
  ADD KEY `id_veterinary` (`id_veterinary`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `veterinary`
--
ALTER TABLE `veterinary`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_person`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`id_veterinary`) REFERENCES `veterinary` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
