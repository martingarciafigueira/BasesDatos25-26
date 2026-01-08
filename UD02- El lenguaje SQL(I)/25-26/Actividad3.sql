
--1

SELECT nombre + ' ' + apellidos AS 'Nombre completo' FROM socios
WHERE nif IN (SELECT DISTINCT nif from prestamos)

--2
SELECT *, YEAR(CURRENT_TIMESTAMP) - YEAR(alta) AS 'Años de alta' FROM socios
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(alta) > 5

SELECT *, DATEDIFF(YYYY, alta, current_timestamp) AS 'Años de alta' FROM socios
WHERE DATEDIFF(YYYY, alta, current_timestamp) > 5
