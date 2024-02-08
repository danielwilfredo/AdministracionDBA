-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2024 a las 04:23:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coffeeshop`
--
CREATE DATABASE IF NOT EXISTS `coffeeshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `coffeeshop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(10) UNSIGNED NOT NULL,
  `nombre_administrador` varchar(50) NOT NULL,
  `apellido_administrador` varchar(50) NOT NULL,
  `correo_administrador` varchar(100) NOT NULL,
  `alias_administrador` varchar(25) NOT NULL,
  `clave_administrador` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombre_administrador`, `apellido_administrador`, `correo_administrador`, `alias_administrador`, `clave_administrador`, `fecha_registro`) VALUES
(1, 'Wilfredo', 'Granados', 'daniel_granados@ricaldone.edu.sv', 'wilfredo', '$2y$10$JxUo8Ni6qvu/EKFAirI8e.eRHRjaeoVWGQVeI49PjJqQPwCyYVYkS', '2024-02-06 20:24:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion_categoria` varchar(250) DEFAULT NULL,
  `imagen_categoria` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `imagen_categoria`) VALUES
(1, 'Electrónica', 'Productos electrónicos para el hogar y la oficina.', 'default.png'),
(2, 'Ropa', 'Moda para todas las edades y estilos.', 'default.png'),
(3, 'Deportes', 'Equipos y accesorios para diferentes deportes.', 'default.png'),
(4, 'Hogar y Jardín', 'Artículos para la decoración del hogar y el jardín.', 'default.png'),
(5, 'Juguetes', 'Juguetes para niños de todas las edades.', 'default.png'),
(6, 'Libros', 'Libros de diversos géneros y autores.', 'default.png'),
(7, 'Salud y Belleza', 'Productos para el cuidado personal y la belleza.', 'default.png'),
(8, 'Música', 'CDs y vinilos de artistas de diferentes géneros.', 'default.png'),
(9, 'Automotriz', 'Accesorios y repuestos para vehículos.', 'default.png'),
(10, 'Electrodomésticos', 'Electrodomésticos para el hogar.', 'default.png'),
(11, 'Bebés y Niños', 'Productos para bebés y niños pequeños.', 'default.png'),
(12, 'Instrumentos Musicales', 'Instrumentos para músicos amateurs y profesionales.', 'default.png'),
(13, 'Fotografía', 'Cámaras y accesorios para amantes de la fotografía.', 'default.png'),
(14, 'Computadoras', 'Hardware y software para computadoras.', 'default.png'),
(15, 'Cocina', 'Utensilios y electrodomésticos para la cocina.', 'default.png'),
(16, 'Viajes', 'Productos relacionados con viajes y aventuras.', 'default.png'),
(17, 'Arte y Manualidades', 'Materiales para artistas y aficionados a las manualidades.', 'default.png'),
(18, 'Televisores', 'Televisores de alta definición y accesorios.', 'default.png'),
(19, 'Mascotas', 'Productos para el cuidado y entretenimiento de mascotas.', 'default.png'),
(20, 'Joyería', 'Joyas y accesorios elegantes.', 'default.png'),
(21, 'Camping', 'Equipos para acampar y actividades al aire libre.', 'default.png'),
(22, 'Videojuegos', 'Videojuegos y consolas de última generación.', 'default.png'),
(23, 'Relojes', 'Relojes de diferentes estilos y marcas.', 'default.png'),
(24, 'Aseo Personal', 'Productos para el cuidado personal e higiene.', 'default.png'),
(25, 'Regalos', 'Ideas de regalos para ocasiones especiales.', 'default.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(50) NOT NULL,
  `dui_cliente` varchar(10) NOT NULL,
  `correo_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(9) NOT NULL,
  `direccion_cliente` varchar(250) NOT NULL,
  `nacimiento_cliente` date NOT NULL,
  `clave_cliente` varchar(100) NOT NULL,
  `estado_cliente` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `dui_cliente`, `correo_cliente`, `telefono_cliente`, `direccion_cliente`, `nacimiento_cliente`, `clave_cliente`, `estado_cliente`, `fecha_registro`) VALUES
(1, 'Juan', 'Pérez', '12345678-9', 'juan@example.com', '123456789', 'Calle Principal #123', '1990-01-01', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, '2024-02-06'),
(2, 'María', 'González', '87654321-0', 'maria@example.com', '987654321', 'Avenida Central #456', '1995-05-15', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 1, '2024-02-06'),
(3, 'Pedro', 'Martínez', '13579246-7', 'pedro@example.com', '987654321', 'Calle Secundaria #789', '1988-11-30', '6cf615d5bcaac778352a8f1f3360d23f02f34ec182e259897fd6ce485d7870d4', 1, '2024-02-06'),
(4, 'Ana', 'López', '24681357-8', 'ana@example.com', '123456789', 'Avenida Principal #1011', '1987-07-20', '5906ac361a137e2d286465cd6588ebb5ac3f5ae955001100bc41577c3d751764', 1, '2024-02-06'),
(5, 'Luis', 'Hernández', '98765432-1', 'luis@example.com', '987654321', 'Calle Lateral #1213', '1992-03-10', 'b97873a40f73abedd8d685a7cd5e5f85e4a9cfb83eac26886640a0813850122b', 1, '2024-02-06'),
(6, 'Sofía', 'Sánchez', '11223344-5', 'sofia@example.com', '123456789', 'Calle Trasera #1415', '1997-09-25', '8b2c86ea9cf2ea4eb517fd1e06b74f399e7fec0fef92e3b482a6cf2e2b092023', 1, '2024-02-06'),
(7, 'Carlos', 'Díaz', '55443322-1', 'carlos@example.com', '987654321', 'Avenida Trasera #1617', '1993-12-05', '598a1a400c1dfdf36974e69d7e1bc98593f2e15015eed8e9b7e47a83b31693d5', 1, '2024-02-06'),
(8, 'Laura', 'Ramírez', '33445566-3', 'laura@example.com', '123456789', 'Calle Central #1819', '1985-08-15', '5860836e8f13fc9837539a597d4086bfc0299e54ad92148d54538b5c3feefb7c', 1, '2024-02-06'),
(9, 'Miguel', 'Gómez', '77889900-2', 'miguel@example.com', '987654321', 'Avenida Lateral #2021', '1994-06-20', '57f3ebab63f156fd8f776ba645a55d96360a15eeffc8b0e4afe4c05fa88219aa', 1, '2024-02-06'),
(10, 'Elena', 'Castro', '00112233-4', 'elena@example.com', '123456789', 'Calle Secundaria #2223', '1998-02-12', '9323dd6786ebcbf3ac87357cc78ba1abfda6cf5e55cd01097b90d4a286cac90e', 1, '2024-02-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle` int(10) UNSIGNED NOT NULL,
  `id_producto` int(10) UNSIGNED NOT NULL,
  `cantidad_producto` smallint(6) UNSIGNED NOT NULL,
  `precio_producto` decimal(5,2) UNSIGNED NOT NULL,
  `id_pedido` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `id_producto`, `cantidad_producto`, `precio_producto`, `id_pedido`) VALUES
(1, 1, 3, 15.00, 1),
(2, 2, 2, 20.00, 1),
(3, 3, 1, 10.50, 2),
(4, 4, 4, 8.75, 2),
(5, 5, 2, 12.80, 3),
(6, 6, 1, 25.50, 3),
(7, 7, 5, 6.25, 4),
(8, 8, 3, 18.75, 4),
(9, 9, 2, 9.99, 5),
(10, 10, 1, 30.00, 5),
(11, 1, 4, 15.00, 6),
(12, 2, 3, 20.00, 6),
(13, 3, 2, 10.50, 7),
(14, 4, 5, 8.75, 7),
(15, 5, 3, 12.80, 8),
(16, 6, 2, 25.50, 8),
(17, 7, 6, 6.25, 9),
(18, 8, 4, 18.75, 9),
(19, 9, 3, 9.99, 10),
(20, 10, 2, 30.00, 10),
(21, 1, 5, 15.00, 11),
(22, 2, 4, 20.00, 11),
(23, 3, 3, 10.50, 12),
(24, 4, 6, 8.75, 12),
(25, 5, 4, 12.80, 13),
(26, 6, 3, 25.50, 13),
(27, 7, 7, 6.25, 14),
(28, 8, 5, 18.75, 14),
(29, 9, 4, 9.99, 15),
(30, 10, 3, 30.00, 15),
(31, 1, 3, 15.00, 16),
(32, 2, 2, 20.00, 17),
(33, 3, 1, 10.50, 18),
(34, 4, 4, 8.75, 19),
(35, 5, 2, 12.80, 20),
(36, 6, 1, 25.50, 20),
(37, 7, 5, 6.25, 20),
(38, 8, 3, 18.75, 20),
(39, 9, 2, 9.99, 14),
(40, 10, 1, 30.00, 15),
(41, 11, 3, 15.00, 16),
(42, 12, 2, 20.00, 17),
(43, 13, 1, 10.50, 18),
(44, 14, 4, 8.75, 19),
(45, 15, 2, 12.80, 20),
(46, 16, 1, 25.50, 11),
(47, 17, 5, 6.25, 12),
(48, 18, 3, 18.75, 13),
(49, 19, 2, 9.99, 14),
(50, 20, 1, 30.00, 15),
(51, 21, 3, 15.00, 1),
(52, 22, 2, 20.00, 2),
(53, 23, 1, 10.50, 3),
(54, 24, 4, 8.75, 4),
(55, 25, 2, 12.80, 5),
(56, 1, 1, 15.00, 6),
(57, 2, 5, 20.00, 7),
(58, 3, 3, 10.50, 8),
(59, 4, 2, 8.75, 9),
(60, 5, 4, 12.80, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(10) UNSIGNED NOT NULL,
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `direccion_pedido` varchar(250) NOT NULL,
  `estado_pedido` enum('Pendiente','Finalizado','Entregado','Anulado') NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `direccion_pedido`, `estado_pedido`, `fecha_registro`) VALUES
(1, 1, 'Calle Principal #123', 'Pendiente', '2024-02-07'),
(2, 5, 'Avenida Central #456', 'Finalizado', '2024-01-01'),
(3, 10, 'Calle Secundaria #789', 'Entregado', '2024-09-12'),
(4, 1, 'Avenida Principal #1011', 'Anulado', '2024-02-06'),
(5, 7, 'Calle Lateral #1213', 'Pendiente', '2024-02-06'),
(6, 3, 'Calle Trasera #1415', 'Finalizado', '2024-03-09'),
(7, 8, 'Avenida Trasera #1617', 'Entregado', '2024-02-06'),
(8, 4, 'Calle Central #1819', 'Anulado', '2024-02-27'),
(9, 9, 'Avenida Lateral #2021', 'Pendiente', '2024-02-06'),
(10, 2, 'Calle Secundaria #2223', 'Finalizado', '2024-02-06'),
(11, 6, 'Calle Principal #2425', 'Entregado', '2024-04-23'),
(12, 10, 'Avenida Central #2627', 'Anulado', '2024-02-06'),
(13, 1, 'Calle Secundaria #2829', 'Pendiente', '2024-04-10'),
(14, 5, 'Avenida Principal #3031', 'Finalizado', '2024-02-06'),
(15, 8, 'Calle Lateral #3233', 'Entregado', '2024-05-01'),
(16, 3, 'Calle Trasera #3435', 'Anulado', '2024-02-06'),
(17, 9, 'Avenida Trasera #3637', 'Pendiente', '2024-03-21'),
(18, 2, 'Calle Central #3839', 'Finalizado', '2024-02-06'),
(19, 7, 'Avenida Lateral #4041', 'Entregado', '2024-02-08'),
(20, 4, 'Calle Secundaria #4243', 'Anulado', '2024-11-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(10) UNSIGNED NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion_producto` varchar(250) NOT NULL,
  `precio_producto` decimal(5,2) NOT NULL,
  `existencias_producto` int(10) UNSIGNED NOT NULL,
  `imagen_producto` varchar(25) NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `estado_producto` tinyint(1) NOT NULL,
  `id_administrador` int(10) UNSIGNED NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `precio_producto`, `existencias_producto`, `imagen_producto`, `id_categoria`, `estado_producto`, `id_administrador`, `fecha_registro`) VALUES
(1, 'Smart TV 4K', 'Televisor inteligente con resolución 4K para una experiencia visual excepcional.', 599.99, 20, 'default.png', 18, 1, 1, '2024-02-04'),
(2, 'Laptop UltraSlim', 'Portátil ultradelgado con potente rendimiento y pantalla Full HD.', 899.99, 20, 'default.png', 14, 1, 1, '2024-02-06'),
(3, 'Robot Aspirador', 'Robot inteligente que aspira y limpia automáticamente tu hogar.', 249.99, 20, 'default.png', 10, 1, 1, '2024-02-06'),
(4, 'Set de Herramientas', 'Kit completo de herramientas para bricolaje y reparaciones en el hogar.', 79.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(5, 'Cámara DSLR', 'Cámara digital réflex con sensor de alta resolución y opciones avanzadas.', 799.99, 20, 'default.png', 13, 1, 1, '2024-02-06'),
(6, 'Zapatillas Deportivas', 'Zapatillas cómodas y elegantes para entrenamientos y actividades deportivas.', 59.99, 20, 'default.png', 3, 1, 1, '2024-02-06'),
(7, 'Libro Bestseller', 'Novela emocionante escrita por un autor reconocido.', 19.99, 20, 'default.png', 6, 1, 1, '2023-12-12'),
(8, 'Batidora Multifunción', 'Batidora potente con múltiples funciones para la cocina.', 49.99, 20, 'default.png', 15, 1, 1, '2024-02-06'),
(9, 'Juego de Mesa Familiar', 'Juego de mesa divertido para toda la familia.', 29.99, 20, 'default.png', 5, 1, 1, '2024-02-06'),
(10, 'Collar de Plata', 'Elegante collar de plata con diseño único.', 89.99, 20, 'default.png', 20, 1, 1, '2024-02-06'),
(11, 'Guitarra Acústica', 'Guitarra acústica de alta calidad para músicos aficionados y profesionales.', 299.99, 20, 'default.png', 12, 1, 1, '2024-02-06'),
(12, 'Silla de Oficina Ergonómica', 'Silla cómoda y ergonómica para largas horas de trabajo.', 129.99, 20, 'default.png', 1, 1, 1, '2024-05-16'),
(13, 'Bicicleta de Montaña', 'Bicicleta resistente para aventuras en terrenos difíciles.', 449.99, 20, 'default.png', 21, 1, 1, '2024-02-06'),
(14, 'Set de Pintura', 'Kit completo de pintura para artistas y aficionados.', 39.99, 20, 'default.png', 17, 1, 1, '2024-02-06'),
(15, 'Reloj de Lujo', 'Reloj elegante con mecanismo automático y diseño moderno.', 199.99, 20, 'default.png', 23, 1, 1, '2024-04-04'),
(16, 'Videojuego de Aventuras', 'Videojuego emocionante con gráficos de última generación.', 49.99, 20, 'default.png', 22, 1, 1, '2024-02-06'),
(17, 'Secadora de Ropa', 'Secadora eficiente para el cuidado de tu ropa.', 349.99, 20, 'default.png', 10, 1, 1, '2024-02-06'),
(18, 'Maletín de Viaje', 'Maletín resistente con múltiples compartimentos para viajes.', 79.99, 20, 'default.png', 16, 1, 1, '2024-02-06'),
(19, 'Auriculares Inalámbricos', 'Auriculares con tecnología inalámbrica y sonido de alta calidad.', 89.99, 20, 'default.png', 1, 1, 1, '2024-05-16'),
(20, 'Juguete Educativo para Niños', 'Juguete educativo que estimula el aprendizaje en los niños.', 19.99, 20, 'default.png', 11, 1, 1, '2024-02-06'),
(21, 'Cepillo Dental Eléctrico', 'Cepillo dental eléctrico para una limpieza profunda y efectiva.', 29.99, 20, 'default.png', 24, 1, 1, '2024-02-06'),
(22, 'Mochila de Camping', 'Mochila espaciosa y duradera para actividades al aire libre.', 69.99, 20, 'default.png', 21, 1, 1, '2024-05-16'),
(23, 'Pelota de Fútbol', 'Pelota de fútbol de alta calidad para partidos y entrenamientos.', 19.99, 20, 'default.png', 3, 1, 1, '2024-02-06'),
(24, 'Lámpara de Escritorio LED', 'Lámpara moderna con iluminación LED ajustable para el escritorio.', 34.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(25, 'Colchón Ortopédico', 'Colchón ortopédico para un sueño reparador y saludable.', 299.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(26, 'Tablet Android', 'Tablet con sistema operativo Android y pantalla táctil.', 199.99, 20, 'default.png', 1, 1, 1, '2024-05-16'),
(27, 'Máquina de Café Automática', 'Máquina de café con funciones automáticas y diseño elegante.', 149.99, 20, 'default.png', 15, 1, 1, '2024-02-06'),
(28, 'Altavoces Bluetooth', 'Altavoces inalámbricos con calidad de sonido excepcional.', 79.99, 20, 'default.png', 8, 1, 1, '2024-02-06'),
(29, 'Telescopio Astronómico', 'Telescopio potente para observaciones astronómicas.', 299.99, 20, 'default.png', 16, 1, 1, '2024-02-06'),
(30, 'Mesa de Ping Pong', 'Mesa de ping pong plegable para diversión en casa.', 249.99, 20, 'default.png', 3, 1, 1, '2024-02-06'),
(31, 'Silla Gamer', 'Silla ergonómica diseñada para jugadores con estilo.', 169.99, 20, 'default.png', 1, 1, 1, '2024-05-16'),
(32, 'Secador de Pelo Profesional', 'Secador de pelo potente con tecnología profesional.', 69.99, 20, 'default.png', 7, 1, 1, '2024-02-06'),
(33, 'Jardinera de Cerámica', 'Jardinera elegante para plantas y decoración interior.', 39.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(34, 'Monitor Curvo Gaming', 'Monitor curvo de alta velocidad de actualización para jugadores.', 349.99, 20, 'default.png', 14, 1, 1, '2024-02-06'),
(35, 'Cámara de Seguridad WiFi', 'Cámara de seguridad inalámbrica para monitoreo remoto.', 89.99, 20, 'default.png', 13, 1, 1, '2024-02-06'),
(36, 'Batería Externa para Teléfono', 'Batería portátil para cargar dispositivos móviles sobre la marcha.', 29.99, 20, 'default.png', 1, 1, 1, '2024-05-16'),
(37, 'Bolsa Térmica para Picnic', 'Bolsa térmica espaciosa para mantener la comida fresca durante el picnic.', 24.99, 20, 'default.png', 16, 1, 1, '2024-02-06'),
(38, 'Juego de Cuchillos de Cocina', 'Set de cuchillos de alta calidad para cocina profesional.', 59.99, 20, 'default.png', 15, 1, 1, '2024-02-06'),
(39, 'Smartwatch Deportivo', 'Smartwatch con funciones deportivas y monitoreo de la salud.', 129.99, 20, 'default.png', 7, 1, 1, '2024-02-06'),
(40, 'Máquina de Ejercicios en Casa', 'Equipo de ejercicio compacto para entrenamientos en casa.', 179.99, 20, 'default.png', 3, 1, 1, '2024-02-06'),
(41, 'Lámpara Solar de Jardín', 'Lámpara de jardín alimentada por energía solar con diseño moderno.', 34.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(42, 'Sartén Antiadherente', 'Sartén de cocina antiadherente para cocinar de manera saludable.', 19.99, 20, 'default.png', 15, 1, 1, '2024-02-06'),
(43, 'Máquina de Coser Electrónica', 'Máquina de coser automática con funciones electrónicas.', 129.99, 20, 'default.png', 17, 1, 1, '2024-02-06'),
(44, 'Candado Inteligente Bluetooth', 'Candado inteligente con control mediante aplicación móvil.', 29.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(45, 'Lentes de Sol de Diseñador', 'Lentes de sol con estilo de diseñador y protección UV.', 69.99, 20, 'default.png', 7, 1, 1, '2024-02-06'),
(46, 'Máquina de Helado Casero', 'Máquina para hacer helados caseros con facilidad.', 49.99, 20, 'default.png', 15, 1, 1, '2024-02-06'),
(47, 'Funda para Portátil', 'Funda elegante y resistente para portátil con compartimentos adicionales.', 24.99, 20, 'default.png', 14, 1, 1, '2024-02-06'),
(48, 'Mesa de Centro de Vidrio', 'Mesa de centro moderna con superficie de vidrio templado.', 79.99, 20, 'default.png', 4, 1, 1, '2024-02-04'),
(49, 'Cepillo Aspirador para Mascotas', 'Cepillo especializado para eliminar el pelo de mascotas.', 39.99, 20, 'default.png', 19, 1, 1, '2024-02-06'),
(50, 'Batería Recargable para Cámara', 'Batería recargable de larga duración para cámaras digitales.', 29.99, 20, 'default.png', 13, 1, 1, '2024-02-06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`),
  ADD UNIQUE KEY `correo_usuario` (`correo_administrador`),
  ADD UNIQUE KEY `alias_usuario` (`alias_administrador`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nombre_categoria` (`nombre_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `dui_cliente` (`dui_cliente`),
  ADD UNIQUE KEY `correo_cliente` (`correo_cliente`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `nombre_producto` (`nombre_producto`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_usuario` (`id_administrador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id_detalle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_administrador`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
