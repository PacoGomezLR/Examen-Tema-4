DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE biblioteca;
USE biblioteca;


CREATE TABLE autores (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    localidad VARCHAR(200),
    fecha_nacimiento DATE,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ALTER TABLE autores ADD COLUMN imagen VARCHAR(200) AFTER descripcion;

INSERT INTO autores (nombre, localidad, fecha_nacimiento) 
VALUES 
  ('José', 'Montilla', '2000-01-01'),
  ('Juan', 'Lucena', '2000-01-01'),
  ('Ana', 'Lucena', '2000-01-01');


  CREATE TABLE libros (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    especialidad VARCHAR(200),
    estado_civil VARCHAR(200),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ALTER TABLE libros ADD COLUMN imagen VARCHAR(200) AFTER descripcion;

INSERT INTO libros (nombre, especialidad, estado_civil) 
VALUES 
  ('José Profe', 'Matemáticas', 'Casado'),
  ('Juan Profe', 'Lengua', 'Casado'),
  ('Ana Profe', 'Inglés', 'Casado');