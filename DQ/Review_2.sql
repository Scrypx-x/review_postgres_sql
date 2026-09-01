SELECT titulo, fecha_publicacion, precio
FROM libros
WHERE fecha_publicacion > '2000-12-31'
ORDER BY fecha_publicacion DESC;

SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo, nacionalidad 
FROM autores
WHERE nacionalidad IN ('Española', 'Argentina');

SELECT * 
FROM libros
WHERE precio BETWEEN 15.00 AND 20.00;

SELECT * 
FROM libros
WHERE titulo ILIKE '%amor%';

SELECT titulo, precio
FROM libros
ORDER BY precio DESC 
LIMIT 5;

SELECT l.titulo, l.precio, CONCAT(a.nombre, ' ', a.apellido) AS nombre_del_autor
FROM libros l
INNER JOIN autores a ON l.autor_id = a.autor_id;

SELECT CONCAT(a.nombre, ' ', a.apellido) AS nombre_del_autor, COUNT(l.libro_id) AS libros_escritos
FROM autores a
LEFT JOIN libros l ON a.autor_id = l.autor_id
GROUP BY a.autor_id, a.nombre, a.apellido
ORDER BY libros_escritos DESC;

SELECT 
    CONCAT(a.nombre, ' ', a.apellido) AS nombre_del_autor,
    AVG(l.precio) AS precio_promedio,
    MIN(l.precio) AS precio_minimo,
    MAX(l.precio) AS precio_maximo
FROM autores a
INNER JOIN libros l ON a.autor_id = l.autor_id
GROUP BY a.autor_id, a.nombre, a.apellido;

SELECT 
    CONCAT(a.nombre, ' ', a.apellido) AS nombre_del_autor,
    AVG(l.precio) AS precio_promedio
FROM autores a
INNER JOIN libros l ON a.autor_id = l.autor_id
GROUP BY a.autor_id, a.nombre, a.apellido
HAVING AVG(l.precio) > 20.00;

SELECT 
    a.nacionalidad,
    COUNT(l.libro_id) AS total_libros
FROM autores a
INNER JOIN libros l ON a.autor_id = l.autor_id
GROUP BY a.nacionalidad;