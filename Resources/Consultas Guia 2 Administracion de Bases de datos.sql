-- creación de la base de datos 

DROP DATABASE IF EXISTS db_ejemplos_carnet;

-- cambia carnet por tu numero de carnet

CREATE DATABASE db_ejemplos_carnet;

USE db_ejemplos_carnet;

-- Tabla Empleados
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre_empleado VARCHAR(100),
    id_departamento INT
);

-- Tabla Departamentos
CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(100)
);

-- Tabla Proyectos
CREATE TABLE proyectos (
    id_proyecto INT PRIMARY KEY,
    nombre_proyecto VARCHAR(100)
);

-- Tabla Asignaciones
CREATE TABLE asignaciones (
    id_empleado INT NOT NULL,
    id_proyecto INT NOT NULL,
    asignacion_hora INT NOT NULL 
);


-- uso de sentencias DDL para creación de relaciones

ALTER TABLE asignaciones 
ADD CONSTRAINT fk_empleado_asignacion
FOREIGN KEY (id_empleado)
REFERENCES empleados(id_empleado);

ALTER TABLE asignaciones 
ADD CONSTRAINT fk_proyecto_asignacion
FOREIGN KEY (id_proyecto)
REFERENCES proyectos(id_proyecto);

ALTER TABLE asignaciones 
ADD CONSTRAINT check_asignacion_horas
CHECK (asignacion_hora>0);

-- Insertar datos en la tabla departamentos
INSERT INTO departamentos (id_departamento, nombre_departamento) VALUES
(1, 'Ventas'),
(2, 'Marketing'),
(3, 'Desarrollo');

-- Insertar datos en la tabla empleados
INSERT INTO empleados (id_empleado, nombre_empleado, id_departamento) VALUES
(1, 'Juan', 1),
(2, 'Ana', 1),
(3, 'Carlos', 2),
(4, 'Maria', 2),
(5, 'Pedro', 3),
(6, 'Sofia', 3),
(7, 'Luis', 1),
(8, 'Carmen', 2),
(9, 'Ricardo', 3),
(10, 'Isabel', 1);

-- Insertar datos en la tabla proyectos
INSERT INTO proyectos (id_proyecto, nombre_proyecto) VALUES
(1, 'Proyecto A'),
(2, 'Proyecto B'),
(3, 'Proyecto C'),
(4, 'Proyecto D'),
(5, 'Proyecto E');

-- Insertar datos en la tabla asignaciones
INSERT INTO asignaciones (id_empleado, id_proyecto, asignacion_hora) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 20),
(4, 4, 25),
(5, 5, 30),
(6, 1, 35),
(7, 2, 40),
(8, 3, 45),
(9, 4, 50),
(10, 5, 55);

-- Insertar más datos en la tabla departamentos
INSERT INTO departamentos (id_departamento, nombre_departamento) VALUES
(4, 'Recursos Humanos'),
(5, 'Finanzas'),
(6, 'Producción'),
(7, 'Investigación y Desarrollo'),
(8, 'Servicio al Cliente'),
(9, 'Soporte Tecnico');

-- Insertar más datos en la tabla empleados
INSERT INTO empleados (id_empleado, nombre_empleado, id_departamento) VALUES
(11, 'Emilio', 4),
(12, 'Rosa', 4),
(13, 'Javier', 5),
(14, 'Lorena', 5),
(15, 'Ernesto', 6),
(16, 'Patricia', 6),
(17, 'Oscar', 7),
(18, 'Teresa', 7),
(19, 'Rafael', 8),
(20, 'Cecilia', 8),
(21, 'Roberto', 4),
(22, 'Marta', 4),
(23, 'Fernando', 5),
(24, 'Luisa', 5),
(25, 'Antonio', 6),
(26, 'Sara', 6),
(27, 'Diego', 7),
(28, 'Paula', 7),
(29, 'Andrés', 8),
(30, 'Laura', 8);

-- Insertar más datos en la tabla proyectos
INSERT INTO proyectos (id_proyecto, nombre_proyecto) VALUES
(6, 'Proyecto F'),
(7, 'Proyecto G'),
(8, 'Proyecto H'),
(9, 'Proyecto I'),
(10, 'Proyecto J'),
(11, 'Proyecto K'),
(12, 'Proyecto L'),
(13, 'Proyecto M'),
(14, 'Proyecto N'),
(15, 'Proyecto O');

-- Insertar más datos en la tabla asignaciones
INSERT INTO asignaciones (id_empleado, id_proyecto, asignacion_hora) VALUES
(11, 6, 60),
(12, 7, 65),
(13, 8, 70),
(14, 9, 75),
(15, 10, 80),
(16, 11, 85),
(17, 12, 90),
(18, 13, 95),
(19, 14, 100),
(20, 15, 105);

-- Ejemplos de JOIN

-- INNER JOIN para obtener los nombres de los empleados junto con el nombre de su departamento
SELECT empleados.nombre_empleado, departamentos.nombre_departamento 
FROM empleados 
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento;

-- INNER JOIN con COUNT para obtener el número de empleados en cada departamento
SELECT departamentos.nombre_departamento AS 'Departamento', COUNT(*) AS 'Total de Empleados'
FROM empleados 
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento
GROUP BY departamentos.nombre_departamento;


-- LEFT JOIN con SUM para obtener el total de horas asignadas a cada proyecto
SELECT proyectos.nombre_proyecto, SUM(asignaciones.asignacion_hora) AS Horas
FROM proyectos 
LEFT JOIN asignaciones ON proyectos.id_proyecto = asignaciones.id_proyecto
GROUP BY proyectos.nombre_proyecto 
ORDER BY Horas DESC;

-- RIGHT JOIN con AVG para obtener el promedio de horas asignadas a cada empleado
SELECT empleados.nombre_empleado, AVG(asignaciones.asignacion_hora) AS 'Promedio de Horas'
FROM empleados 
RIGHT JOIN asignaciones ON empleados.id_empleado = asignaciones.id_empleado
GROUP BY empleados.nombre_empleado
ORDER BY asignaciones.asignacion_hora DESC;

-- Subconsulta para obtener los empleados que pertenecen al departamento con ID 1
SELECT nombre_empleado AS 'Empleados por departamento'
FROM empleados 
WHERE id_departamento = (SELECT id_departamento FROM departamentos WHERE nombre_departamento = 'Ventas');


-- Función de agregado para obtener el número total de empleados en el departamento con ID 1
SELECT COUNT(*) AS 'Cantidad de empleados en departamento'
FROM empleados 
WHERE id_departamento = 2;

-- Subconsulta para obtener los empleados que no están asignados a ningún proyecto
SELECT nombre_empleado 
FROM empleados 
WHERE id_empleado NOT IN (SELECT id_empleado FROM asignaciones);

-- Subconsulta para obtener los departamentos que tienen proyectos asignados
SELECT nombre_departamento 
FROM departamentos 
WHERE id_departamento  IN (SELECT id_departamento
FROM empleados 
WHERE id_empleado IN (SELECT id_empleado FROM asignaciones)
GROUP BY id_departamento);


-- Subconsulta para obtener el proyecto con la mayor cantidad de horas asignadas
SELECT nombre_proyecto, SUM(asignacion_hora)
FROM proyectos 
INNER JOIN asignaciones ON proyectos.id_proyecto = asignaciones.id_proyecto
WHERE proyectos.id_proyecto = (SELECT id_proyecto FROM asignaciones GROUP BY id_proyecto ORDER BY SUM(asignacion_hora) DESC LIMIT 1);

-- misma solucion utilizando otra consulta 

CREATE VIEW cantidad_horas_por_proyecto 
AS 
-- LEFT JOIN con SUM para obtener el total de horas asignadas a cada proyecto
SELECT proyectos.nombre_proyecto, SUM(asignaciones.asignacion_hora) AS Horas
FROM proyectos 
LEFT JOIN asignaciones ON proyectos.id_proyecto = asignaciones.id_proyecto
GROUP BY proyectos.nombre_proyecto 
ORDER BY Horas DESC;

SELECT nombre_proyecto, MAX(Horas) FROM cantidad_horas_por_proyecto;






