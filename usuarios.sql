-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2023 a las 01:45:05
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `sexo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `telefono`, `edad`, `fecha_de_nacimiento`, `sexo`) VALUES
(1, 'Paulet', 'paupau@gmail.com', '6654478925', 16, '2006-03-24', 0),
(2, 'Carol', 'carolll@gmail.com', '66544751232', 17, '2006-02-21', 0),
(3, 'Rene', 'renenaso@gmail.com', '6674658521', 16, '2006-10-06', 1),
(4, 'JuanitaMccalen', 'juaniita@gmail.com', '66548512', 45, '2023-02-13', 0),
(5, 'Leonardo', 'loegay@gmail.com', '6625841257', 69, '2006-02-24', 1),
(6, 'Bonafont', 'bonafont@gmail.com', '66584756', 85, '2023-05-30', 1),
(7, 'Lupita', 'mcdonald@gmail.com', '66544751232', 54, '2023-04-21', 0),
(8, 'Hasly', 'haslyta', '6674658521', 16, '2006-05-18', 0),
(9, 'Daniela', 'gusanito@gmail.com', '6654825691', 16, '2006-11-21', 0),
(10, 'Eveleynn', 'eve@gmail.com', '66745896', 16, '2006-03-02', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
