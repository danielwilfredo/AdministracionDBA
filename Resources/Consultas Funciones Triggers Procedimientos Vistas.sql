-- Crear la base de datos
DROP DATABASE if EXISTS ejemplos_db;

CREATE DATABASE IF NOT EXISTS ejemplos_db;
-- cambia el nombre de la base de datos por ejemplo_tucarnet - ejemplo_20140155

-- Seleccionar la base de datos
USE ejemplos_db;

-- Crear la tabla de clientes
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL
);

-- Crear la tabla de pedidos
CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    CONSTRAINT fk_pedido_cliente
    FOREIGN KEY (id_cliente) 
	 REFERENCES cliente(id_cliente)
);

-- Crear la tabla de productos
CREATE TABLE producto (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(50) NOT NULL,
	 existencia INT NOT NULL,
	 CONSTRAINT check_existencia CHECK (existencia >0),
    precio DECIMAL(10, 2) NOT NULL, 
    CONSTRAINT check_precio CHECK (precio >0)
);

-- Crear la tabla de detalle de pedidos
CREATE TABLE detalle_pedido (
    id_detalle INT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    CONSTRAINT check_precio CHECK (total >0),
    CONSTRAINT fk_pedido_detalle
    FOREIGN KEY (id_pedido) 
	 REFERENCES pedido(id_pedido),
	 CONSTRAINT fk_detalle_producto
    FOREIGN KEY (id_producto) 
	 REFERENCES producto(id_producto)
);

-- insersion de datos en productos y clientes
-- Inserciones para la tabla clientes
INSERT INTO cliente (id_cliente, nombre_cliente) VALUES
(1, 'Juan Pérez'),
(2, 'María Gutiérrez'),
(3, 'Pedro Rodríguez'),
(4, 'Laura Martínez'),
(5, 'Carlos Sánchez');

-- Inserciones para la tabla productos
INSERT INTO producto (id_producto, nombre_producto, existencia, precio) VALUES
(1, 'Camisa', 50, 25.99),
(2, 'Pantalón', 30, 39.99),
(3, 'Zapatos', 20, 59.99),
(4, 'Corbata', 40, 12.99),
(5, 'Vestido', 25, 49.99),
(6, 'Blusa', 35, 29.99),
(7, 'Bufanda', 60, 9.99),
(8, 'Calcetines', 70, 5.99),
(9, 'Gorra', 45, 14.99),
(10, 'Sombrero', 15, 19.99),
(11, 'Chaqueta', 20, 79.99),
(12, 'Falda', 35, 34.99),
(13, 'Pantalones cortos', 40, 19.99),
(14, 'Botas', 15, 89.99),
(15, 'Bufanda de lana', 50, 14.99);

INSERT INTO pedido VALUES(1,1),(2,2),(3,3),(4,4),(5,5);

-- creación de funciones, vistas, procedimientos y triggers 

-- vistas

CREATE VIEW listado_producto AS 
SELECT nombre_producto, precio 
FROM producto WHERE existencia>25;

SELECT * FROM listado_producto;

-- trigger

-- Crear el trigger
DELIMITER //

CREATE TRIGGER actualizar_existencias
AFTER INSERT ON detalle_pedido
FOR EACH ROW
BEGIN
    UPDATE producto
    SET existencia = existencia - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END

//
DELIMITER ;


-- probando funcionamiento del TRIGGER

SELECT * FROM producto;

SELECT * FROM pedido;

INSERT INTO detalle_pedido VALUES(1, 1, 1, 15, 389.85);

DESCRIBE detalle_pedido;
SHOW TABLES; 

-- procedimiento almacenado para actualizar productos si se hace una devolucion de pedidos
SELECT * FROM detalle_pedido;
SELECT * FROM producto;


DELIMITER //

CREATE PROCEDURE devolucion_producto(
    IN id_detalle_in INT,
    IN nueva_cantidad INT
)
BEGIN
    DECLARE producto_id INT;
    DECLARE cantidad_devuelta INT;
    
    -- Obtener el ID del producto y la cantidad devuelta del detalle del pedido
    SELECT id_producto, cantidad INTO producto_id, cantidad_devuelta
    FROM detalle_pedido
    WHERE id_detalle = id_detalle_in;
    
    -- Actualizar la cantidad en la tabla de productos
    UPDATE producto
    SET existencia = existencia + (cantidad_devuelta - nueva_cantidad)
    WHERE id_producto = producto_id;
    
    -- Actualizar la cantidad en el detalle del pedido
    UPDATE detalle_pedido
    SET cantidad = nueva_cantidad
    WHERE id_detalle = id_detalle_in;
    
END

//
DELIMITER ;

SELECT * FROM detalle_pedido;

CALL devolucion_producto(1, 5);

SELECT * FROM producto;
SELECT * FROM detalle_pedido;

UPDATE detalle_pedido SET cantidad=10
WHERE id_detalle = 1;

SELECT id_producto FROM detalle_pedido WHERE id_detalle = 1;

-- segundo ejemplo insertar datos

DELIMITER //

CREATE PROCEDURE insertar_cliente(
    IN cliente_id INT,
    IN cliente_nombre VARCHAR(50)
)
BEGIN
    INSERT INTO cliente (id_cliente, nombre_cliente)
    VALUES (cliente_id, cliente_nombre);
END

//
DELIMITER 


SELECT * FROM cliente
CALL insertar_cliente(99, 'Wilfredo' );

-- ejemplo de funcion 

DELIMITER //

CREATE FUNCTION calcular_total_producto(producto_id INT, cantidad INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE precio_producto DECIMAL(10, 2);
    DECLARE total DECIMAL(10, 2);
    
    -- Obtener el precio del producto
    SELECT precio INTO precio_producto
    FROM producto
    WHERE id_producto = producto_id;
    
    -- Calcular el total
    SET total = precio_producto * cantidad;
    
    RETURN total;
END

//
DELIMITER ;

 -- Devuelve el total para el producto con ID 2 y una cantidad de 5 unidades
SELECT calcular_total_producto(2, 5);

SELECT * FROM producto;


INSERT INTO detalle_pedido VALUES(2, 2, 2, 5, calcular_total_producto(2,5));
SELECT * FROM detalle_pedido;

INSERT INTO detalle_pedido VALUES(3, 3, 3, 3, 3);




