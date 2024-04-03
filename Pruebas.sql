CREATE DATABASE IF NOT EXISTS medina;

USE medina;

CREATE TABLE IF NOT EXISTS usuario (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    cedula VARCHAR(25) NOT NULL,
    registro DATE DEFAULT (CURRENT_DATE), 
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tareas (
    id INT NOT NULL AUTO_INCREMENT,
    userId INT NOT NULL,
    titulo VARCHAR(25) NOT NULL,
    descripcion VARCHAR(25) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (userId) REFERENCES usuario (id)
);

# INSERT INTO usuario (id, nombre, apellido, cedula) VALUES (3, "Victor", "Linsalata", "12345"), (4, "Gabriela", "Linsalata", "123458");
# SELECT * FROM usuario;
# SELECT * FROM usuario WHERE id = 1;
# UPDATE usuario SET nombre = "Victor" WHERE id = 1;
# DELETE FROM usuario WHERE id = 1;
# SELECT * FROM usuario;
# SELECT * FROM usuario WHERE registro BETWEEN "2024-04-01" AND "2024-05-01";

# INSERT INTO tareas (id, userId, titulo, descripcion) VALUES (2, 4, "titulo 2", "descripcion 2"), (3, 4, "titulo 3", "descripcion 3");
# SELECT * FROM tareas WHERE userId = 4 AND id = 3;
# UPDATE tareas SET titulo = "TITULO EDITADO" WHERE userId = 4 AND id = 1;
# DELETE FROM tareas WHERE userId = 4 AND id = 3;
# SELECT * FROM tareas WHERE userId = 4;
