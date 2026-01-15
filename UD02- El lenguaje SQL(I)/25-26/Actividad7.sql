--1
SELECT * FROM Futbolistas
ORDER BY Nombre

--2
SELECT Nombre, Pais FROM Equipos
ORDER BY Pais 

--3
SELECT Posicion, Nombre
FROM Futbolistas
ORDER BY Posicion, Nombre

--4
SELECT Nombre, Pais
FROM Equipos
WHERE Pais LIKE 'España'
UNION ALL
SELECT Nombre, Pais
FROM Equipos
WHERE Pais NOT LIKE 'España'
