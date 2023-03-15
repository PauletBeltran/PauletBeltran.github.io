-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2023 a las 22:16:17
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`id`, `producto`, `descripcion`, `precio`, `disponibilidad`, `cantidad`) VALUES
(1, 'Osito \"Coffee\"', 'Oso de peluche color café, tamaño mediano', 115, 1, 150),
(2, 'Pack \"Mejores amigos\"', 'Pack de dos peluches color café que tienen velcro en las manos,¡pueden abrazarse!', 374, 1, 60),
(3, 'Peluche \"Ayudame, doctor\"', 'Osito de peluche que incluye un paquete de instrumentos médicos de juguete para sanar su enfermedad.', 267, 1, 50),
(4, 'Chayanne', 'Muñeco caracterizaado del artista, padre de medio México, Chayanne, tamaño pequeño.', 267, 1, 7),
(5, 'MINISO Peluche De Cerdito Sentado', 'Calidad prémium: el juguete niños es ultra suave y tiene u sensación de terciopelo que es duradero, lavable y no se deforma fácilmente.', 269, 1, 55),
(6, 'Peluche \"My Melody\"', 'Juguete de Felpa Suave para niños y niñas (Violeta)', 229, 1, 30),
(7, 'Peluche de dinosaurio', 'Material seguro: animal de peluche súper suave y esponjoso, el dinosaurio de peluche está hecho de algodón PP de felpa, el algodón de felpa natural ecológico y relleno, seguro, suave y agradable para ', 385, 0, 0),
(8, 'Elefante de Peluche', 'Mide aproximadamente 9 \"de largo x 8.5\" de ancho, cuando está sentado', 273, 1, 32),
(9, 'Peluche \"My Pet Alien Pou\"', 'Peluche con forma de Pou del juego \"Pou\"', 90, 1, 25),
(10, 'Juguete de Peluche Conejo', 'Fácil de transportar: con un tamaño liviano y portátil, esta muñeca de peluche es fácil y conveniente de transportar.', 117, 1, 23),
(11, 'Mono de peluche', 'Ojos y boca cosidos con suavidad\r\nInstrucciones de cuidado: lavar a máquina en ciclo suave, secar a temperatura baja y retirar rápidamente', 297, 1, 60),
(12, 'BIMBO Osito Peluche', 'Muñeco del Osito Panadero Bimbo\r\nMedidas: 50x30x22 cm', 350, 1, 15),
(13, 'Miniso Peluche Pingüino Azul', ' Esta confeccionado en felpa suave al tacto y de gran calidad lo que lo hace un peluche resistente.', 129, 1, 44),
(14, 'Vaquita De Peluche', 'Se trata de un lindo peluche en forma de Vaquita, con un lindo color está diseñado con materiales suaves y confortables que sin duda amará abrazar y tener. Este peluche esta fabricado con un relleno e', 77, 1, 70),
(15, 'Tortuga De Peluche', 'Cuenta con los colores que mejor le representan. Tiene un tamaño de 24 cm de alto, perfecto para colocar en la cama o en algún estante.', 94, 1, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `numero_tel` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `correo`, `fecha_nacimiento`, `contraseña`, `sexo`, `numero_tel`) VALUES
(1, 'Frida', 'frida@gmail.com', '2006-07-26', 'simon0006.', 1, 2250953),
(2, 'Sebastián', 'sebas1234@gmail.com', '2006-07-05', 'qwertyuio123', 0, 4153699),
(3, 'Ximena', 'xime0987@hotmail.com', '2006-06-22', 'asdfghjkl45678', 1, 2895792),
(4, 'René', 'rsaulrmunguia@gmail.com', '2006-10-06', 'simon06.', 0, 4627182),
(5, 'Paulet', 'paupau@gmail.com', '2006-03-23', 'papaasada12', 1, 234954312),
(6, 'Jose', 'jose12376@outlook.com', '2006-12-23', 'chuchuluco9', 0, 12023459),
(7, 'Carol', 'esoeveda@hotmail.com', '2006-02-21', 'nopuedeser17', 1, 98354690),
(8, 'Sally', 'caracoles1203@outlook.com', '1985-05-23', 'fasyhefgy12', 1, 43138463),
(9, 'Esau', 'qvivanaruto1203@gmail.com', '2003-08-01', 'pikachu1347', 0, 31759241),
(10, 'Ana', 'ana21barraza@cetis107.edu.mx', '2006-06-05', 'qwertyuiop19', 1, 3044316),
(11, 'Luis', 'luisleon@gmail.com', '2006-04-24', 'asdfghj23', 0, 3779317),
(12, 'Cirenia', 'cirenia21vargas@gmail.com', '2006-03-18', 'poiuytr32', 1, 1898809),
(13, 'Gael Francisco', 'gaeldelapaz12@hotmail.com', '2006-04-12', 'zxcvbn43', 0, 4517558),
(14, 'Papik Millan', 'papik21millan@cetis107.edu.mx', '1977-12-12', 'turtul13479.', 0, 1578941),
(15, 'Diana', 'diana_geo21@gmail.com', '2006-02-21', 'turtul1239.', 1, 3450785);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
