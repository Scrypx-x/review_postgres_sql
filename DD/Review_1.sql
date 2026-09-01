CREATE DATABASE campus;


DROP TABLE IF EXISTS alumnos;


CREATE TABLE alumnos (
  id_alumno SERIAL PRIMARY KEY,
  nombre_completo VARCHAR(60),
  sexo CHAR(1),
  edad_anios INT,
  promedio_acumulado FLOAT,
  estatura_m NUMERIC(3,2),
  fecha_admision DATE,
  hora_entrada TIME,
  momento_registro TIMESTAMP,
  tiempo_evaluaciones INTERVAL,
  observaciones_perfil TEXT,
  es_activo BOOLEAN
);