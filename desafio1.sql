-- Crear Base de datos posts
CREATE DATABASE posts;

-- Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción
CREATE TABLE post(id SERIAL, nombre_usuario VARCHAR(15), fecha_creacion DATE DEFAULT NOW(), contenido VARCHAR(200), descripcion VARCHAR(150), PRIMARY KEY (id));

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(nombre_usuario, contenido, descripcion) VALUES ('Pamela', 'lorem ipsum...', 'lorem ipsum...'), ('Pamela', 'lorem ipsum...', 'lorem ipsum...'), ('Carlos', 'lorem ipsum...', 'lorem ipsum...');

-- Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD COLUMN titulo VARCHAR(20);

-- Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo='Mi primer post' WHERE id=1;

UPDATE post SET titulo='Mi segundo post' WHERE id=2;

UPDATE post SET titulo='Mi primer post' WHERE id=3;

