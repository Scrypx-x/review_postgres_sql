CREATE TABLE escritores (
    id_escritor SERIAL PRIMARY KEY,
    primer_nombre VARCHAR(30) NOT NULL,
    primer_apellido VARCHAR(30) NOT NULL,
    nacimiento_fecha DATE,
    pais_origen VARCHAR(50)
);

CREATE TABLE publicaciones (
    id_publicacion SERIAL PRIMARY KEY,
    id_escritor INT NOT NULL,
    titulo_obra VARCHAR(255) NOT NULL,
    codigo_isbn VARCHAR(20) UNIQUE,
    publicacion_fecha DATE,
    precio_venta NUMERIC(10, 2)
);