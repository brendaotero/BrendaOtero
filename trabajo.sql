-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2020 a las 14:51:52
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombres` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombres`) VALUES
(1, 'argentina'),
(2, 'uruguay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `nombre`) VALUES
(1, 'buenos aires'),
(2, 'canelones'),
(1, 'corrientes'),
(1, 'catamarca'),
(1, 'salta'),
(1, 'jujuy'),
(1, 'cordoba'),
(1, 'formosa'),
(1, 'santa cruz'),
(1, 'chubut'),
(1, 'tierra del fuego'),
(1, 'la pampa'),
(1, 'san juan'),
(1, 'san luis'),
(1, 'santa fe'),
(1, 'misiones'),
(1, 'mendoza'),
(1, 'la rioja'),
(1, 'entre rios'),
(1, 'rio negro'),
(1, 'tucuman'),
(1, 'neuquen'),
(1, 'santiago del estero'),
(2, 'artigas'),
(2, 'salto'),
(2, 'rivera'),
(2, 'paysandu'),
(2, 'rio negro'),
(2, 'durazno'),
(2, 'tacuarembo'),
(2, 'cerro largo'),
(2, 'soriano'),
(2, 'flores'),
(2, 'florida'),
(2, 'treinta y tres'),
(2, 'lavalleja'),
(2, 'colonia'),
(2, 'san jose'),
(2, 'rocha'),
(2, 'maldonado'),
(2, 'montevideo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id`) REFERENCES `paises` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
