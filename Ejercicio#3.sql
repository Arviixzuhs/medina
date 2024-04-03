CREATE DATABASE IF NOT EXISTS compañia;

USE compañia;

CREATE TABLE
    IF NOT EXISTS cliente (
        id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(25) NOT NULL,
        segundoNombre VARCHAR(25) NOT NULL,
        tercerNombre VARCHAR(25) NOT NULL,
        apellido VARCHAR(25) NOT NULL,
        segundoApellido VARCHAR(25) NOT NULL,
        apellidoDeCasada VARCHAR(25) NOT NULL,
        genero ENUM ('F', 'M', 'O') NOT NULL,
        DUI INT NOT NULL,
        nacimiento DATE NOT NULL,
        correoPublicidad VARCHAR(30) NOT NULL,
        correoPrincipal VARCHAR(30) NOT NULL UNIQUE,
        clienteInternacional BOOLEAN NOT NULL DEFAULT FALSE,
        registro DATE DEFAULT (CURRENT_DATE),
        PRIMARY KEY (id)
    );

CREATE TABLE
    IF NOT EXISTS direccion (
        id INT NOT NULL AUTO_INCREMENT,
        clientId INT NOT NULL,
        tipoDireccion ENUM ('D', 'T') NOT NULL,
        departamento VARCHAR(80) NOT NULL,
        municipo VARCHAR(80) NOT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (clientId) REFERENCES cliente (id)
    );

CREATE TABLE
    IF NOT EXISTS telefono (
        id INT NOT NULL AUTO_INCREMENT,
        clientId INT NOT NULL,
        tipoTelefono ENUM ('C', 'F', 'O') NOT NULL,
        numero VARCHAR(12) NOT NULL,
        FOREIGN KEY (clientId) REFERENCES cliente (id)
    );

INSERT INTO
    direccion
VALUES
    (1, 1, "D", "#4", "Santa fé"),
    (2, 2, "D", "#4", "Santa fé"),
    (3, 3, "D", "#4", "Santa fé"),
    (4, 4, "D", "#4", "Santa fé"),
    (5, 5, "D", "#4", "Santa fé"),
    (6, 6, "D", "#4", "Santa fé"),
    (7, 7, "D", "#4", "Santa fé"),
    (8, 8, "D", "#4", "Santa fé"),
    (9, 9, "D", "#4", "Santa fé"),
    (10, 10, "D", "#4", "Santa fé");

INSERT INTO
    telefono
VALUES
    (1, 1, "F", "#4", "12345"),
    (2, 2, "F", "#4", "12345"),
    (3, 3, "F", "#4", "12345"),
    (4, 4, "F", "#4", "12345"),
    (5, 5, "F", "#4", "12345"),
    (6, 6, "F", "#4", "12345"),
    (7, 7, "F", "#4", "12345"),
    (8, 8, "F", "#4", "12345"),
    (9, 9, "F", "#4", "12345"),
    (10, 10, "F", "#4", "12345");

INSERT INTO
    cliente
VALUES
    (
        1,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh@gmail.com",
        "arviixzuh@gmail.com",
        TRUE,
    ),
    (
        2,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh2@gmail.com",
        "arviixzuh2@gmail.com",
        TRUE,
    ),
    (
        3,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh3@gmail.com",
        "arviixzuh3@gmail.com",
        TRUE,
    ),
    (
        4,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh4@gmail.com",
        "arviixzuh4@gmail.com",
        TRUE,
    ),
    (
        5,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh5@gmail.com",
        "arviixzuh5@gmail.com",
        TRUE,
    ),
    (
        6,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh6@gmail.com",
        "arviixzuh6@gmail.com",
        TRUE,
    ),
    (
        7,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh7@gmail.com",
        "arviixzuh7@gmail.com",
        TRUE,
    ),
    (
        8,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh8@gmail.com",
        "arviixzuh8@gmail.com",
        TRUE,
    ),
    (
        9,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh9@gmail.com",
        "arviixzuh9@gmail.com",
        TRUE,
    ),
    (
        10,
        "Victor",
        "Gabriel",
        "Pandolfi",
        "Linsalata",
        "",
        "M",
        123,
        "2024-12-26",
        "arviixzuh10@gmail.com",
        "arviixzuh10@gmail.com",
        TRUE,
    ),