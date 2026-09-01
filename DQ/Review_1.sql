SELECT nombre, edad, promedio
FROM estudiantes
WHERE activo = true;

SELECT *
FROM estudiantes
WHERE genero = 'F' AND promedio >= 4.5;

SELECT *
FROM estudiantes
WHERE fecha_ingreso >= '2024-01-01' AND fecha_ingreso < '2025-01-01'
ORDER BY fecha_ingreso DESC;

SELECT AVG(edad) AS promedio_edad, AVG(promedio) AS promedio_calificaciones
FROM estudiantes;

SELECT genero, COUNT(*) AS total_estudiantes
FROM estudiantes
GROUP BY genero;

SELECT nombre, promedio
FROM estudiantes
ORDER BY promedio DESC
LIMIT 5;

SELECT *
FROM estudiantes
WHERE duracion_tests > INTERVAL '2 hours 30 minutes';

SELECT *
FROM estudiantes
WHERE analisis_perfil ILIKE '%bases de datos%'
   OR analisis_perfil ILIKE '%algoritmos%';

SELECT MAX(altura) AS altura_maxima, MIN(altura) AS altura_minima
FROM estudiantes
WHERE genero = 'M';

SELECT nombre, fecha_ingreso, hora_ingreso, fecha_hora_registro
FROM estudiantes
WHERE hora_ingreso < '09:00:00';


/*
=====================================
              UPDATE
=====================================         
*/
UPDATE estudiantes
SET activo = false
WHERE id = 6; 

UPDATE estudiantes
SET promedio = promedio + 0.2
WHERE promedio < 3.0;

UPDATE estudiantes
SET hora_ingreso = '08:00:00'
WHERE fecha_ingreso = '2024-02-01';

UPDATE estudiantes
SET analisis_perfil = 'Graduado con honores académicos.'
WHERE id = 15;

UPDATE estudiantes
SET genero = 'F',
    altura = 1.65
WHERE id = 20;

UPDATE estudiantes
SET activo = false
WHERE fecha_ingreso < '2022-01-01'
  AND promedio < 3.5;

UPDATE estudiantes
SET duracion_tests = INTERVAL '2 hours'
WHERE duracion_tests < INTERVAL '1 hour';

UPDATE estudiantes
SET edad = edad + 1
WHERE fecha_ingreso >= '2021-01-01' AND fecha_ingreso < '2022-01-01';

UPDATE estudiantes
SET analisis_perfil = NULL
WHERE activo = false;

UPDATE estudiantes
SET promedio = 5.0
WHERE id = (
   SELECT id
   FROM estudiantes
   ORDER BY fecha_hora_registro ASC
   LIMIT 1
);


DELETE FROM estudiantes
WHERE id = 34;

DELETE FROM estudiantes
WHERE activo = false;

DELETE FROM estudiantes
WHERE promedio < 2.5;

DELETE FROM estudiantes
WHERE fecha_ingreso < '2021-01-01';

DELETE FROM estudiantes
WHERE genero = 'M'
  AND altura < 1.60;

DELETE FROM estudiantes
WHERE fecha_ingreso >= '2024-01-01' AND fecha_ingreso < '2025-01-01'
  AND activo = false;

DELETE FROM estudiantes
WHERE duracion_tests < INTERVAL '45 minutes';

DELETE FROM estudiantes
WHERE nombre LIKE 'E%';

DELETE FROM estudiantes
WHERE activo = true
  AND fecha_ingreso < '2023-01-01'
  AND promedio < 3.5;

TRUNCATE TABLE estudiantes;