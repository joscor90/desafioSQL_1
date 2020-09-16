-- PRIMERA PARTE

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

-- Insertar 2 post para el usuario "Pedro"
INSERT INTO post(nombre_usuario, contenido, descripcion, titulo) VALUES ('Pedro', 'lorem ipsum...', 'lorem ipsum...', 'Mi primer post'), ('Pedro', 'lorem ipsum...', 'lorem ipsum...', 'Mi segundo post');

-- Eliminar el post de Carlos
DELETE FROM post WHERE nombre_usuario='Carlos';

-- Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(nombre_usuario, contenido, descripcion, titulo) VALUES ('Carlos', 'lorem ipsum...', 'lorem ipsum...', 'Post de regreso');

-- SEGUNDA PARTE

-- Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(id INT, fecha_hora_creacion TIMESTAMP DEFAULT NOW(), contenido VARCHAR(150), FOREIGN KEY (id) REFERENCES post(id));

-- Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios (id, contenido) VALUES (1, 'Buen post'), (1, 'Muy buen post'), (6, 'Buen post'), (6, 'Buen post'), (6, 'Buen post'), (6, 'No me gusto tu post');

-- Crear un nuevo post para "Margarita"
INSERT INTO post(nombre_usuario, contenido, descripcion, titulo) VALUES ('Margarita', 'lorem ipsum...', 'lorem ipsum...', 'Mi primer post');

