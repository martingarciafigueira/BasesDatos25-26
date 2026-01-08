
--1
SELECT * FROM juegos
WHERE disponible = 'S' AND autor LIKE 'Naughty Dog'

--2
SELECT DISTINCT nif from prestamos

--3
SELECT nombre, apellidos
FROM socios
WHERE alta between '01-01-2012' AND '31-12-2012'



SELECT nombre, apellidos, nif, 'FP Montecastelo' as 'Entidad de la que es socio'
FROM socios

SELECT codigo, codigo -1, *, *
FROM juegos
WHERE disponible = 'S'

SELECT * FROM juegos
