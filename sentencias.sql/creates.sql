CREATE DATABASE fabrica_maniquies;
USE fabrica_maniquies;

CREATE TABLE modelos (
    id_modelo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50), 
    material_sugerido VARCHAR(50) 
);

CREATE TABLE maniquies (
    id_maniqui INT PRIMARY KEY AUTO_INCREMENT,
    id_modelo INT,
    fecha_ensamblado DATE,
    FOREIGN KEY (id_modelo) REFERENCES modelos(id_modelo)
);

CREATE TABLE piezas (
    id_pieza INT PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('Cabeza', 'Torso', 'Brazo', 'Pierna'), 
    color VARCHAR(30),
    material VARCHAR(50),
    id_maniqui INT NULL, 
    FOREIGN KEY (id_maniqui) REFERENCES maniquies(id_maniqui)
);
