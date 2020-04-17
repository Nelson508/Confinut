-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2020 a las 21:30:55
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `confinut`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfnalmacen`
--

CREATE TABLE `cfnalmacen` (
  `IDAlmacen` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfncarritocompras`
--

CREATE TABLE `cfncarritocompras` (
  `ID_CarritoCompras` int(11) NOT NULL,
  `IDPedido` int(11) NOT NULL,
  `IDProducto` int(11) NOT NULL,
  `PrecuiUnitario` int(20) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Detalle` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfncarritocompras`
--

INSERT INTO `cfncarritocompras` (`ID_CarritoCompras`, `IDPedido`, `IDProducto`, `PrecuiUnitario`, `Cantidad`, `Detalle`) VALUES
(1, 2, 1, 500, 2, NULL),
(2, 5, 1, 5600, 1, NULL),
(3, 5, 1, 2768, 1, NULL),
(4, 6, 1, 5600, 1, NULL),
(5, 6, 1, 2768, 1, NULL),
(6, 7, 1, 5600, 1, NULL),
(7, 7, 1, 2768, 1, NULL),
(8, 8, 1, 5600, 1, NULL),
(9, 8, 1, 2768, 1, NULL),
(10, 9, 1, 5600, 1, NULL),
(11, 9, 1, 2768, 1, NULL),
(12, 10, 1, 2768, 1, NULL),
(13, 10, 1, 5600, 1, NULL),
(14, 11, 1, 2768, 1, NULL),
(15, 11, 1, 5600, 1, NULL),
(16, 11, 1, 19600, 1, NULL),
(17, 11, 1, 6446, 1, NULL),
(18, 12, 1, 6446, 1, NULL),
(19, 12, 1, 19600, 1, NULL),
(20, 13, 1, 2768, 1, NULL),
(21, 13, 1, 5600, 1, NULL),
(22, 13, 1, 19600, 1, NULL),
(23, 13, 1, 6446, 1, NULL),
(24, 14, 1, 2768, 1, NULL),
(25, 14, 1, 5600, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfnpedido`
--

CREATE TABLE `cfnpedido` (
  `IDordendecompras` int(11) NOT NULL,
  `ClavePedido` varchar(250) NOT NULL,
  `Correo` varchar(250) NOT NULL,
  `Totalfinal` int(11) NOT NULL,
  `Comentario` varchar(100) DEFAULT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pendiente','Completada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfnpedido`
--

INSERT INTO `cfnpedido` (`IDordendecompras`, `ClavePedido`, `Correo`, `Totalfinal`, `Comentario`, `Fecha`, `status`) VALUES
(2, '4455', 'aasdad', 500, NULL, '2020-03-04 18:36:03', 'Pendiente'),
(3, '4455', 'aasdad', 500, NULL, '2020-03-04 18:36:03', 'Completada'),
(4, 'd433uqf9aqkusov0q9e43u031u', 'asdasdad@gmail.com', 8368, '', '2020-03-22 18:46:59', 'Pendiente'),
(5, 'fk5h8qcmdi5oh8pl2c6fanncrg', 'asdasdad@gmail.com', 8368, '', '2020-04-02 04:08:58', 'Pendiente'),
(6, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 8368, '', '2020-04-02 18:57:19', 'Pendiente'),
(7, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 8368, '', '2020-04-02 18:58:34', 'Pendiente'),
(8, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 8368, '', '2020-04-02 18:59:31', 'Completada'),
(9, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 8368, '', '2020-04-02 19:08:43', 'Pendiente'),
(10, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 8368, '', '2020-04-02 19:08:57', 'Completada'),
(11, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 34414, '', '2020-04-02 22:03:48', 'Pendiente'),
(12, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 26046, '', '2020-04-02 22:06:36', 'Pendiente'),
(13, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 34414, '', '2020-04-02 22:08:00', 'Pendiente'),
(14, 't8ocirghgmgjo6rs3l96jo06ug', 'asdasdad@gmail.com', 8368, '', '2020-04-03 03:40:26', 'Completada'),
(15, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 27968, '', '2020-04-14 22:54:27', 'Pendiente'),
(16, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 0, '', '2020-04-14 22:54:46', 'Pendiente'),
(17, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 31646, '', '2020-04-14 22:55:04', 'Pendiente'),
(18, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 22368, '', '2020-04-14 22:55:53', 'Pendiente'),
(19, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 9739, '', '2020-04-14 23:02:23', 'Pendiente'),
(20, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 10629, '', '2020-04-14 23:04:09', 'Pendiente'),
(21, 'gi2vicrnapvf4g1kr9uvsbcvin', 'nelson.dominguez1601@alumnos.ubiobio.cl', 6446, '', '2020-04-14 23:04:34', 'Pendiente'),
(22, 'gi2vicrnapvf4g1kr9uvsbcvin', 'asdasdad@gmail.com', 11900, '', '2020-04-14 23:05:11', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfnpedidodespacho`
--

CREATE TABLE `cfnpedidodespacho` (
  `FechaEntrega` date DEFAULT NULL,
  `Direccion` varchar(300) DEFAULT NULL,
  `FK_IDordendecompras` int(11) NOT NULL,
  `FK_tipodespacho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfnproducto`
--

CREATE TABLE `cfnproducto` (
  `IDproducto` int(11) NOT NULL,
  `PrecioNetoKG` int(11) NOT NULL,
  `PrecioNetoFormato` int(11) NOT NULL,
  `TipoEnvase` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `imagen` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfnproducto`
--

INSERT INTO `cfnproducto` (`IDproducto`, `PrecioNetoKG`, `PrecioNetoFormato`, `TipoEnvase`, `Descripcion`, `imagen`) VALUES
(1, 2768, 0, 'kg', 'Información nutricional\r\n\r\nCantidad por 100 gramos\r\nCalorías 331\r\nGrasas totales 0,7 g	\r\nÁcidos grasos saturados 0,2 g	\r\nÁcidos grasos poliinsaturados 0,2 g	\r\nÁcidos grasos monoinsaturados 0,1 g	\r\nÁcidos grasos trans 0 g	\r\nColesterol 0 mg	\r\nSodio 60 mg	\r\nPotasio 1.193 mg	\r\nCarbohidratos 73 g	\r\nFibra alimentaria 9 g	\r\nAzúcares 2,4 g	\r\nProteínas 17 g	', 'aliños_y_salado/alino01.jpg'),
(2, 5600, 0, 'kg', 'Informacion Nutricional\r\n\r\nNUTRIENTES\r\nColesterol	0 mg	0 %\r\nSodio	16 mg	1 %\r\nAgua	9,54 mg	9 %', 'aliños_y_salado/alino02.jpg'),
(3, 19600, 0, 'kg', NULL, 'aliños_y_salado/alino03.jpg'),
(4, 6446, 0, 'kg', NULL, 'aliños_y_salado/alino04.jpg'),
(5, 15270, 0, 'kg', NULL, 'colorantes_y_esencias/esencia01.jpg'),
(6, 1903, 0, 'unidad', NULL, 'colorantes_y_esencias/esencia02.jpg'),
(7, 7154, 71540, 'caja', NULL, 'frutos_secos/frutos01.jpg'),
(8, 11900, 0, 'kg', NULL, 'frutos_secos/frutos02.jpg'),
(9, 890, 0, 'kg', NULL, 'reposteria/reposteria01.jpg'),
(10, 1371, 0, 'kg', NULL, 'reposteria/reposteria02.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfnproductocarrito`
--

CREATE TABLE `cfnproductocarrito` (
  `FK_CarritoCompras` int(11) NOT NULL,
  `FK_Producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfntipodespacho`
--

CREATE TABLE `cfntipodespacho` (
  `ID_TipoDespacho` int(11) NOT NULL,
  `NombreTipo` varchar(20) NOT NULL,
  `Descripcion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfntipoproducto`
--

CREATE TABLE `cfntipoproducto` (
  `IDtipoproducto` int(11) NOT NULL,
  `NombreProducto` varchar(20) NOT NULL,
  `Categoria` enum('aliños_y_salado','colorantes_y_esencias','frutos_secos','reposteria') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfntipoproducto`
--

INSERT INTO `cfntipoproducto` (`IDtipoproducto`, `NombreProducto`, `Categoria`) VALUES
(1, 'ajo en polvo', 'aliños_y_salado'),
(2, 'anis en polvo', 'aliños_y_salado'),
(3, 'canela entera', 'aliños_y_salado'),
(4, 'canela molida', 'aliños_y_salado'),
(5, 'esencia de naranja', 'colorantes_y_esencias'),
(6, 'vainilla gourmet', 'colorantes_y_esencias'),
(7, 'almendra entera', 'frutos_secos'),
(8, 'caju', 'frutos_secos'),
(9, 'almidon maiz', 'reposteria'),
(10, 'cacao dulce', 'reposteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfntipousuario`
--

CREATE TABLE `cfntipousuario` (
  `ID_TipoUsuario` int(11) NOT NULL,
  `NombreTipo` varchar(20) NOT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `Descuento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfnusuario`
--

CREATE TABLE `cfnusuario` (
  `IDUsuario` int(11) NOT NULL,
  `Tipo_Usuario` enum('Administrador','Empresa','Persona') NOT NULL,
  `Nombres` varchar(1000) NOT NULL,
  `Apellidos` varchar(2000) NOT NULL,
  `Telefono` varchar(1000) NOT NULL,
  `Email` varchar(2000) NOT NULL,
  `Password` varchar(2500) NOT NULL,
  `Foto` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfnusuario`
--

INSERT INTO `cfnusuario` (`IDUsuario`, `Tipo_Usuario`, `Nombres`, `Apellidos`, `Telefono`, `Email`, `Password`, `Foto`) VALUES
(1, 'Administrador', 'Nelson', 'Dominguez', '+56981304024', 'Nelson@gmail.com', '12345', 'foto.jpg'),
(2, 'Persona', 'Jesus', 'Riveras', '+5699999999', 'Jesus@gmail.com', 'qwer', 'foto2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoalmacen`
--

CREATE TABLE `productoalmacen` (
  `Cantidad` int(11) NOT NULL,
  `Fecha` date DEFAULT curdate(),
  `FK_IDProducto` int(11) NOT NULL,
  `FK_IDAlmacen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cfnalmacen`
--
ALTER TABLE `cfnalmacen`
  ADD PRIMARY KEY (`IDAlmacen`);

--
-- Indices de la tabla `cfncarritocompras`
--
ALTER TABLE `cfncarritocompras`
  ADD PRIMARY KEY (`ID_CarritoCompras`),
  ADD KEY `pedido` (`IDPedido`),
  ADD KEY `producto` (`IDProducto`);

--
-- Indices de la tabla `cfnpedido`
--
ALTER TABLE `cfnpedido`
  ADD PRIMARY KEY (`IDordendecompras`);

--
-- Indices de la tabla `cfnpedidodespacho`
--
ALTER TABLE `cfnpedidodespacho`
  ADD PRIMARY KEY (`FK_IDordendecompras`,`FK_tipodespacho`),
  ADD KEY `fk_IDtipodespacho` (`FK_tipodespacho`);

--
-- Indices de la tabla `cfnproducto`
--
ALTER TABLE `cfnproducto`
  ADD PRIMARY KEY (`IDproducto`);

--
-- Indices de la tabla `cfnproductocarrito`
--
ALTER TABLE `cfnproductocarrito`
  ADD PRIMARY KEY (`FK_CarritoCompras`,`FK_Producto`),
  ADD KEY `fk_producto` (`FK_Producto`);

--
-- Indices de la tabla `cfntipodespacho`
--
ALTER TABLE `cfntipodespacho`
  ADD PRIMARY KEY (`ID_TipoDespacho`);

--
-- Indices de la tabla `cfntipoproducto`
--
ALTER TABLE `cfntipoproducto`
  ADD PRIMARY KEY (`IDtipoproducto`);

--
-- Indices de la tabla `cfntipousuario`
--
ALTER TABLE `cfntipousuario`
  ADD PRIMARY KEY (`ID_TipoUsuario`);

--
-- Indices de la tabla `cfnusuario`
--
ALTER TABLE `cfnusuario`
  ADD PRIMARY KEY (`IDUsuario`);

--
-- Indices de la tabla `productoalmacen`
--
ALTER TABLE `productoalmacen`
  ADD PRIMARY KEY (`FK_IDProducto`,`FK_IDAlmacen`),
  ADD KEY `fk_IDAlmacen` (`FK_IDAlmacen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cfnalmacen`
--
ALTER TABLE `cfnalmacen`
  MODIFY `IDAlmacen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cfncarritocompras`
--
ALTER TABLE `cfncarritocompras`
  MODIFY `ID_CarritoCompras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `cfnpedido`
--
ALTER TABLE `cfnpedido`
  MODIFY `IDordendecompras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cfnproducto`
--
ALTER TABLE `cfnproducto`
  MODIFY `IDproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cfntipodespacho`
--
ALTER TABLE `cfntipodespacho`
  MODIFY `ID_TipoDespacho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cfntipoproducto`
--
ALTER TABLE `cfntipoproducto`
  MODIFY `IDtipoproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cfntipousuario`
--
ALTER TABLE `cfntipousuario`
  MODIFY `ID_TipoUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cfnusuario`
--
ALTER TABLE `cfnusuario`
  MODIFY `IDUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cfncarritocompras`
--
ALTER TABLE `cfncarritocompras`
  ADD CONSTRAINT `pedido` FOREIGN KEY (`IDPedido`) REFERENCES `cfnpedido` (`IDordendecompras`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto` FOREIGN KEY (`IDProducto`) REFERENCES `cfnproducto` (`IDproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cfnpedidodespacho`
--
ALTER TABLE `cfnpedidodespacho`
  ADD CONSTRAINT `fk_IDordendecompras` FOREIGN KEY (`FK_IDordendecompras`) REFERENCES `cfnpedido` (`IDordendecompras`),
  ADD CONSTRAINT `fk_IDtipodespacho` FOREIGN KEY (`FK_tipodespacho`) REFERENCES `cfntipodespacho` (`ID_TipoDespacho`);

--
-- Filtros para la tabla `cfnproducto`
--
ALTER TABLE `cfnproducto`
  ADD CONSTRAINT `A` FOREIGN KEY (`IDproducto`) REFERENCES `cfntipoproducto` (`IDtipoproducto`);

--
-- Filtros para la tabla `cfnproductocarrito`
--
ALTER TABLE `cfnproductocarrito`
  ADD CONSTRAINT `fk_CarritoCompras` FOREIGN KEY (`FK_CarritoCompras`) REFERENCES `cfncarritocompras` (`ID_CarritoCompras`),
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`FK_Producto`) REFERENCES `cfnproducto` (`IDproducto`);

--
-- Filtros para la tabla `productoalmacen`
--
ALTER TABLE `productoalmacen`
  ADD CONSTRAINT `fk_IDAlmacen` FOREIGN KEY (`FK_IDAlmacen`) REFERENCES `cfnalmacen` (`IDAlmacen`),
  ADD CONSTRAINT `fk_IDProducto` FOREIGN KEY (`FK_IDProducto`) REFERENCES `cfnproducto` (`IDproducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
