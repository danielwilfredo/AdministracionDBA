INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `imagen_categoria`) VALUES
(1, 'Electrónica', 'Productos electrónicos para el hogar y la oficina.', 'electronica.jpg'),
(2, 'Ropa', 'Moda para todas las edades y estilos.', 'ropa.jpg'),
(3, 'Deportes', 'Equipos y accesorios para diferentes deportes.', 'deportes.jpg'),
(4, 'Hogar y Jardín', 'Artículos para la decoración del hogar y el jardín.', 'hogar_jardin.jpg'),
(5, 'Juguetes', 'Juguetes para niños de todas las edades.', 'juguetes.jpg'),
(6, 'Libros', 'Libros de diversos géneros y autores.', 'libros.jpg'),
(7, 'Salud y Belleza', 'Productos para el cuidado personal y la belleza.', 'salud_belleza.jpg'),
(8, 'Música', 'CDs y vinilos de artistas de diferentes géneros.', 'musica.jpg'),
(9, 'Automotriz', 'Accesorios y repuestos para vehículos.', 'automotriz.jpg'),
(10, 'Electrodomésticos', 'Electrodomésticos para el hogar.', 'electrodomesticos.jpg'),
(11, 'Bebés y Niños', 'Productos para bebés y niños pequeños.', 'bebes_ninos.jpg'),
(12, 'Instrumentos Musicales', 'Instrumentos para músicos amateurs y profesionales.', 'instrumentos_musicales.jpg'),
(13, 'Fotografía', 'Cámaras y accesorios para amantes de la fotografía.', 'fotografia.jpg'),
(14, 'Computadoras', 'Hardware y software para computadoras.', 'computadoras.jpg'),
(15, 'Cocina', 'Utensilios y electrodomésticos para la cocina.', 'cocina.jpg'),
(16, 'Viajes', 'Productos relacionados con viajes y aventuras.', 'viajes.jpg'),
(17, 'Arte y Manualidades', 'Materiales para artistas y aficionados a las manualidades.', 'arte_manualidades.jpg'),
(18, 'Televisores', 'Televisores de alta definición y accesorios.', 'televisores.jpg'),
(19, 'Mascotas', 'Productos para el cuidado y entretenimiento de mascotas.', 'mascotas.jpg'),
(20, 'Joyería', 'Joyas y accesorios elegantes.', 'joyeria.jpg'),
(21, 'Camping', 'Equipos para acampar y actividades al aire libre.', 'camping.jpg'),
(22, 'Videojuegos', 'Videojuegos y consolas de última generación.', 'videojuegos.jpg'),
(23, 'Relojes', 'Relojes de diferentes estilos y marcas.', 'relojes.jpg'),
(24, 'Aseo Personal', 'Productos para el cuidado personal e higiene.', 'aseo_personal.jpg'),
(25, 'Regalos', 'Ideas de regalos para ocasiones especiales.', 'regalos.jpg');


INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `precio_producto`, `imagen_producto`, `id_categoria`, `estado_producto`, `id_administrador`) VALUES
(1, 'Smart TV 4K', 'Televisor inteligente con resolución 4K para una experiencia visual excepcional.', 599.99, 'tv_4k.jpg', 18, 1, 1),
(2, 'Laptop UltraSlim', 'Portátil ultradelgado con potente rendimiento y pantalla Full HD.', 899.99, 'laptop_ultraslim.jpg', 14, 1, 1),
(3, 'Robot Aspirador', 'Robot inteligente que aspira y limpia automáticamente tu hogar.', 249.99, 'robot_aspirador.jpg', 10, 1, 1),
(4, 'Set de Herramientas', 'Kit completo de herramientas para bricolaje y reparaciones en el hogar.', 79.99, 'herramientas.jpg', 4, 1, 1),
(5, 'Cámara DSLR', 'Cámara digital réflex con sensor de alta resolución y opciones avanzadas.', 799.99, 'camara_dslr.jpg', 13, 1, 1),
(6, 'Zapatillas Deportivas', 'Zapatillas cómodas y elegantes para entrenamientos y actividades deportivas.', 59.99, 'zapatillas_deportivas.jpg', 3, 1, 1),
(7, 'Libro Bestseller', 'Novela emocionante escrita por un autor reconocido.', 19.99, 'libro_bestseller.jpg', 6, 1, 1),
(8, 'Batidora Multifunción', 'Batidora potente con múltiples funciones para la cocina.', 49.99, 'batidora_multifuncion.jpg', 15, 1, 1),
(9, 'Juego de Mesa Familiar', 'Juego de mesa divertido para toda la familia.', 29.99, 'juego_mesa.jpg', 5, 1, 1),
(10, 'Collar de Plata', 'Elegante collar de plata con diseño único.', 89.99, 'collar_plata.jpg', 20, 1, 1),
(11, 'Guitarra Acústica', 'Guitarra acústica de alta calidad para músicos aficionados y profesionales.', 299.99, 'guitarra_acustica.jpg', 12, 1, 1),
(12, 'Silla de Oficina Ergonómica', 'Silla cómoda y ergonómica para largas horas de trabajo.', 129.99, 'silla_oficina.jpg', 1, 1, 1),
(13, 'Bicicleta de Montaña', 'Bicicleta resistente para aventuras en terrenos difíciles.', 449.99, 'bicicleta_montana.jpg', 21, 1, 1),
(14, 'Set de Pintura', 'Kit completo de pintura para artistas y aficionados.', 39.99, 'set_pintura.jpg', 17, 1, 1),
(15, 'Reloj de Lujo', 'Reloj elegante con mecanismo automático y diseño moderno.', 199.99, 'reloj_lujo.jpg', 23, 1, 1),
(16, 'Videojuego de Aventuras', 'Videojuego emocionante con gráficos de última generación.', 49.99, 'videojuego_aventuras.jpg', 22, 1, 1),
(17, 'Secadora de Ropa', 'Secadora eficiente para el cuidado de tu ropa.', 349.99, 'secadora_ropa.jpg', 10, 1, 1),
(18, 'Maletín de Viaje', 'Maletín resistente con múltiples compartimentos para viajes.', 79.99, 'maletin_viaje.jpg', 16, 1, 1),
(19, 'Auriculares Inalámbricos', 'Auriculares con tecnología inalámbrica y sonido de alta calidad.', 89.99, 'auriculares_inalambricos.jpg', 1, 1, 1),
(20, 'Juguete Educativo para Niños', 'Juguete educativo que estimula el aprendizaje en los niños.', 19.99, 'juguete_educativo.jpg', 11, 1, 1),
(21, 'Cepillo Dental Eléctrico', 'Cepillo dental eléctrico para una limpieza profunda y efectiva.', 29.99, 'cepillo_dental.jpg', 24, 1, 1),
(22, 'Mochila de Camping', 'Mochila espaciosa y duradera para actividades al aire libre.', 69.99, 'mochila_camping.jpg', 21, 1, 1),
(23, 'Pelota de Fútbol', 'Pelota de fútbol de alta calidad para partidos y entrenamientos.', 19.99, 'pelota_futbol.jpg', 3, 1, 1),
(24, 'Lámpara de Escritorio LED', 'Lámpara moderna con iluminación LED ajustable para el escritorio.', 34.99, 'lampara_led.jpg', 4, 1, 1),
(25, 'Colchón Ortopédico', 'Colchón ortopédico para un sueño reparador y saludable.', 299.99, 'colchon_ortopedico.jpg', 4, 1, 1);


INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `precio_producto`, `imagen_producto`, `id_categoria`, `estado_producto`, `id_administrador`) VALUES
(26, 'Tablet Android', 'Tablet con sistema operativo Android y pantalla táctil.', 199.99, 'tablet_android.jpg', 1, 1, 1),
(27, 'Máquina de Café Automática', 'Máquina de café con funciones automáticas y diseño elegante.', 149.99, 'maquina_cafe.jpg', 15, 1, 1),
(28, 'Altavoces Bluetooth', 'Altavoces inalámbricos con calidad de sonido excepcional.', 79.99, 'altavoces_bluetooth.jpg', 8, 1, 1),
(29, 'Telescopio Astronómico', 'Telescopio potente para observaciones astronómicas.', 299.99, 'telescopio_astronomico.jpg', 16, 1, 1),
(30, 'Mesa de Ping Pong', 'Mesa de ping pong plegable para diversión en casa.', 249.99, 'mesa_ping_pong.jpg', 3, 1, 1),
(31, 'Silla Gamer', 'Silla ergonómica diseñada para jugadores con estilo.', 169.99, 'silla_gamer.jpg', 1, 1, 1),
(32, 'Secador de Pelo Profesional', 'Secador de pelo potente con tecnología profesional.', 69.99, 'secador_pelo.jpg', 7, 1, 1),
(33, 'Jardinera de Cerámica', 'Jardinera elegante para plantas y decoración interior.', 39.99, 'jardinera_ceramica.jpg', 4, 1, 1),
(34, 'Monitor Curvo Gaming', 'Monitor curvo de alta velocidad de actualización para jugadores.', 349.99, 'monitor_curvo_gaming.jpg', 14, 1, 1),
(35, 'Cámara de Seguridad WiFi', 'Cámara de seguridad inalámbrica para monitoreo remoto.', 89.99, 'camara_seguridad.jpg', 13, 1, 1),
(36, 'Batería Externa para Teléfono', 'Batería portátil para cargar dispositivos móviles sobre la marcha.', 29.99, 'bateria_externa.jpg', 1, 1, 1),
(37, 'Bolsa Térmica para Picnic', 'Bolsa térmica espaciosa para mantener la comida fresca durante el picnic.', 24.99, 'bolsa_termica.jpg', 16, 1, 1),
(38, 'Juego de Cuchillos de Cocina', 'Set de cuchillos de alta calidad para cocina profesional.', 59.99, 'cuchillos_cocina.jpg', 15, 1, 1),
(39, 'Smartwatch Deportivo', 'Smartwatch con funciones deportivas y monitoreo de la salud.', 129.99, 'smartwatch_deportivo.jpg', 7, 1, 1),
(40, 'Máquina de Ejercicios en Casa', 'Equipo de ejercicio compacto para entrenamientos en casa.', 179.99, 'maquina_ejercicios.jpg', 3, 1, 1),
(41, 'Lámpara Solar de Jardín', 'Lámpara de jardín alimentada por energía solar con diseño moderno.', 34.99, 'lampara_solar.jpg', 4, 1, 1),
(42, 'Sartén Antiadherente', 'Sartén de cocina antiadherente para cocinar de manera saludable.', 19.99, 'sarten_antiadherente.jpg', 15, 1, 1),
(43, 'Máquina de Coser Electrónica', 'Máquina de coser automática con funciones electrónicas.', 129.99, 'maquina_coser.jpg', 17, 1, 1),
(44, 'Candado Inteligente Bluetooth', 'Candado inteligente con control mediante aplicación móvil.', 29.99, 'candado_bluetooth.jpg', 4, 1, 1),
(45, 'Lentes de Sol de Diseñador', 'Lentes de sol con estilo de diseñador y protección UV.', 69.99, 'lentes_sol.jpg', 7, 1, 1),
(46, 'Máquina de Helado Casero', 'Máquina para hacer helados caseros con facilidad.', 49.99, 'maquina_helado.jpg', 15, 1, 1),
(47, 'Funda para Portátil', 'Funda elegante y resistente para portátil con compartimentos adicionales.', 24.99, 'funda_portatil.jpg', 14, 1, 1),
(48, 'Mesa de Centro de Vidrio', 'Mesa de centro moderna con superficie de vidrio templado.', 79.99, 'mesa_centro.jpg', 4, 1, 1),
(49, 'Cepillo Aspirador para Mascotas', 'Cepillo especializado para eliminar el pelo de mascotas.', 39.99, 'cepillo_aspirador_mascotas.jpg', 19, 1, 1),
(50, 'Batería Recargable para Cámara', 'Batería recargable de larga duración para cámaras digitales.', 29.99, 'bateria_camara.jpg', 13, 1, 1);


CREATE TABLE Empleados (
    IDEmpleado INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    Departamento VARCHAR(50)
);

INSERT INTO Empleados (IDEmpleado, Nombre, Apellido, Edad, Departamento)
VALUES (1, 'Juan', 'Pérez', 30, 'Ventas');

SELECT Nombre, Apellido, Edad
FROM Empleados
WHERE Departamento = 'Ventas';


-- Crear un usuario
CREATE USER 'mi_usuario'@'localhost' 
IDENTIFIED BY 'mi_contraseña';

-- Conceder privilegios al usuario
GRANT SELECT, INSERT, UPDATE, DELETE 
ON mi_base_de_datos.* TO 'mi_usuario'@'localhost';


CREATE DATABASE ricaldone;

USE ricaldone;

CREATE TABLE estudiante(
nombre varchar(50),
apellido varchar(50)
);

INSERT INTO estudiante (nombre, apellido)
VALUES ('Juan', 'Pérez');

SELECT nombre, apellido
FROM estudiante;

UPDATE estudiante
SET nombre = 'Juanito'
WHERE nombre = 'Juan';

DELETE FROM estudiante
WHERE nombre = 'Juanito';

-- Creación de tablas
-- Tabla para los cargos
CREATE TABLE cargo (
    id_cargo INT PRIMARY KEY,
    nombre_cargo VARCHAR(50)
);
-- Tabla para los departamentos
CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(100)
);

CREATE TABLE empleado (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    id_departamento INT,
    id_cargo INT,  -- Referencia al ID de la tabla cargo
    salario DECIMAL(10, 2),
    fecha_inicio DATE,
    CONSTRAINT fk_departamento_empleado
    FOREIGN KEY (id_departamento)
    REFERENCES departamento(id_departamento)  -- Relación con la tabla cargo
    ,
    CONSTRAINT fk_cargo_empleado
    FOREIGN KEY (id_cargo)
    REFERENCES cargo(id_cargo)  -- Relación con la tabla cargo
);

CREATE TABLE proyecto (
    id_proyecto INT PRIMARY KEY,
    nombre_proyecto VARCHAR(100)
);

CREATE TABLE asignacion (
    id_asignacion INT PRIMARY KEY,
    id_empleado INT,
    id_proyecto INT,
    fecha_asignacion DATE,
    CONSTRAINT fk_empleado_asignacion FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
    CONSTRAINT fk_proyecto_asignacion FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);


--Alter table para agregar restricciones

-- Agrega una restricción de unicidad a la columna nombre_cargo en la tabla cargo
ALTER TABLE cargo
ADD CONSTRAINT uc_nombre_cargo UNIQUE (nombre_cargo);

-- Agrega una restricción CHECK para verificar que el salario sea mayor a 0
ALTER TABLE empleado
ADD CONSTRAINT chk_salario_positive CHECK (salario > 0);

-- Agrega una restricción CHECK para verificar que la fecha_asignacion sea mayor o igual a la fecha actual
ALTER TABLE asignacion
ADD CONSTRAINT chk_fecha_asignacion_actual CHECK (fecha_asignacion >= CURDATE());

-- Agrega una restricción CHECK para verificar que la fecha_inicio sea mayor o igual a la fecha actual
ALTER TABLE empleado
ADD CONSTRAINT chk_fecha_inicio_actual CHECK (fecha_inicio >= CURDATE());

-- Agrega la restricción NOT NULL a los campos nombre y apellido en la tabla empleado
ALTER TABLE empleado
MODIFY nombre VARCHAR(100) NOT NULL,
MODIFY apellido VARCHAR(100) NOT NULL;




-- Creación de la tabla principal
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100)
);
-- Creación de la tabla secundaria
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    producto VARCHAR(100),
    cantidad INT,
    CONSTRAINT fk_pedido_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES clientes(id_cliente)
);


-- ejemplos para restricciones

CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id_departamento)
);

CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(100)
);

CREATE TABLE ejemplo (
    id INT PRIMARY KEY,
    edad INT CHECK (edad >= 18)
);

-- Crear la tabla de empleados con restricción DEFAULT
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    estado_civil VARCHAR(20) DEFAULT 'Soltero',
    salario DECIMAL(10, 2)
);

-- Insertar un empleado sin especificar el estado civil
INSERT INTO empleados (id_empleado, nombre, apellido, salario) VALUES (1, 'Juan', 'Pérez', 50000.00);

-- Insertar un empleado especificando el estado civil
INSERT INTO empleados (id_empleado, nombre, apellido, estado_civil, salario) VALUES (2, 'María', 'Gómez', 'Casado', 60000.00);

-- Consultar los datos de la tabla empleados
SELECT * FROM empleados;


-- Crear una tabla con restricción DEFAULT utilizando la función NOW()
CREATE TABLE ejemplo (
    id INT PRIMARY KEY,
    descripcion VARCHAR(100),
    fecha_creacion DATETIME DEFAULT NOW()
);

-- Insertar un registro sin especificar la fecha_creacion (se utilizará el valor predeterminado)
INSERT INTO ejemplo (id, descripcion) VALUES (1, 'Primer ejemplo');

-- Insertar un registro especificando la fecha_creacion
INSERT INTO ejemplo (id, descripcion, fecha_creacion) VALUES (2, 'Segundo ejemplo', '2022-01-25 15:30:00');

-- Consultar los datos de la tabla ejemplo
SELECT * FROM ejemplo;

