-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 02:39:47
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
-- Base de datos: `basesitanuclear`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productitos`
--

CREATE TABLE `productitos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `color` varchar(50) NOT NULL,
  `existencia` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `medida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productitos`
--

INSERT INTO `productitos` (`id`, `nombre`, `precio`, `descripcion`, `color`, `existencia`, `marca`, `medida`) VALUES
(1, 'Audifonos', 599, 'Audífonos para gaming – Cómodas almohadillas de memory foam, Micrófono con cancelación de ruido que al girar se pone en modo mudo, Compatible con PC, Xbox One, PS4, Nintendo Switch y dispositivos móviles', 'Negro', 57, 'HyperX Cloud Stinger', 'PC, XBOX, PS5'),
(2, 'Cosmetiquera', 287, 'Portátil Bolsa de Maquillaje Impermeable Multifuncional con Cremallera de Oro Organizador Estuche Maquillaje', 'Rosa', 8, ' MAANGE ', 'Chico, mediano, grande'),
(3, 'Samsung Freestyle', 10399, ' Proyector de estilo libre, colócalo, inclínalo y míralo donde quiera: este versátil teatro inteligente para llevar lo hace simple; con un soporte de cuna que gira casi 180 grados, coloca tu imagen donde quieras de suelo a techo; el Freestyle te da la flexibilidad para ver tu camino', 'Blanca', 15, 'Samsung', '1920 x 1080'),
(4, 'Super Smash Bros. Ultimate - Standard Edition', 999, 'Combates rápidos, nuevos elementos, nuevos ataques, nuevas opciones defensivas y más mantendrán la batalla en rabia, ya sea que estés en casa o en movimiento', 'Multicolor', 17, 'Nintendo Switch', ''),
(5, 'Set De Plumones Con Punta Doble', 299, 'Rotuladores Para Colorear, Marcadores Con 60 Colores', 'Multicolor', 60, 'Berry Hip', 'Grande'),
(6, 'Lampara Luna Nocturna', 259, 'Lampara Luna control táctil Brillo con puerto de carga USB ', 'Multicolor', 87, 'Sebami', '8D x 8W x 8H centimetros'),
(7, 'Ratón para juegos de PC', 742.05, 'ratón ergonómico súper ligero, con cable, iluminación RGB, rueda de desplazamiento ', 'Negro', 15, '	Roccat', ''),
(8, 'Pantalla Toshiba Full HD', 5499, 'Pantalla 43\" Pulgadas Full HD LED Smart,  Alexa Voice Remote incluido para administrar la potencia, el volumen, la navegación, la reproducción y el cambio de entrada del televisor', 'Multicolor', 74, 'Toshiba', ' 43 Pulgadas'),
(9, 'Horno Freidora de Aire', 1980, ': cambia automáticamente entre los ajustes preestablecidos de cocción para cocinar con precisión sus comidas favoritas, simplemente configúrelo y olvídese. Disfrute de su comida frita favorita sin necesidad de aceite adicional. Los ventiladores de convección de alta velocidad aceleran el horneado y ', 'Acero', 20, 'Chefman', '40.1D x 42.2W x 14H centimetro'),
(10, 'NutriBullet Pro ', 2582.62, 'Motor ultra potente de 1200 vatios y cuchillas de extracción de nutrientes refinadas mezclan los alimentos enteros más duros en batidos nutritivos, batidos y mantequilla de nueces. Cuenta con un botón de control de pulso para hacer salsas gruesas, salsas y aperitivos.', 'Negro', 84, 'Nutri Bullet', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productitos`
--
ALTER TABLE `productitos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productitos`
--
ALTER TABLE `productitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
