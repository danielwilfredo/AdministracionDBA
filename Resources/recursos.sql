
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

