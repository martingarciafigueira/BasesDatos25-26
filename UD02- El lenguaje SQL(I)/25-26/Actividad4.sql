--1
SELECT nif FROM socios
UNION
SELECT nif from prestamos

--2
SELECT nif from socios
INTERSECT
SELECT nif from prestamos

--3
SELECT nif from socios
EXCEPT
SELECT nif from prestamos