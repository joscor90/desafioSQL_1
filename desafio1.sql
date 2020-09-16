-- Crear Base de datos posts
CREATE DATABASE posts;

-- Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción
CREATE TABLE post(id SERIAL, nombre_usuario VARCHAR(15), fecha_creacion DATE DEFAULT NOW(), contenido VARCHAR(200), descripcion VARCHAR(150), PRIMARY KEY (id));
