1. Crear Usuarios:
Cada usuario debe tener un nombre de usuario único y una contraseña segura.

CREATE USER 'nombre_usuario'@'localhost' IDENTIFIED BY 'contraseña';

2. Conceder Privilegios:
Concede los privilegios necesarios a cada usuario. Puedes asignar privilegios a nivel global, por base de datos o por tabla.

-- Ejemplo de privilegios globales
GRANT ALL PRIVILEGES ON *.* TO 'nombre_usuario'@'localhost' WITH GRANT OPTION;

-- Ejemplo de privilegios por base de datos
GRANT SELECT, INSERT, UPDATE, DELETE ON nombre_base_datos.* TO 'nombre_usuario'@'localhost';

-- Ejemplo de privilegios por tabla
GRANT SELECT, INSERT, UPDATE, DELETE ON nombre_base_datos.nombre_tabla TO 'nombre_usuario'@'localhost';

3. Actualizar Privilegios:
Después de conceder o modificar los privilegios, es necesario recargar los privilegios para que surtan efecto.

FLUSH PRIVILEGES;

4. Revocar Privilegios (Opcional):

-- Revocar todos los privilegios globales
REVOKE ALL PRIVILEGES ON *.* FROM 'nombre_usuario'@'localhost';

-- Revocar privilegios por base de datos
REVOKE SELECT, INSERT, UPDATE, DELETE ON nombre_base_datos.* FROM 'nombre_usuario'@'localhost';

-- Revocar privilegios por tabla
REVOKE SELECT, INSERT, UPDATE, DELETE ON nombre_base_datos.nombre_tabla FROM 'nombre_usuario'@'localhost';

5. Verificar Privilegios:
Puedes verificar los privilegios asignados a un usuario utilizando la siguiente consulta:

SHOW GRANTS FOR 'nombre_usuario'@'localhost';



