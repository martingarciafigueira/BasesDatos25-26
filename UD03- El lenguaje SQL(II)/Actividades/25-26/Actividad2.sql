--1
INSERT INTO Equipos (Codigo, Nombre, Pais)
VALUES ('CDEuropa', 'Europa', 'España')

--2
INSERT INTO Futbolistas (Codigo, Nombre, CodigoEquipo)
VALUES ('#EUR001', 'Jose Antonio Lage', 'CDEuropa'), ('#EUR002', 'Ruben Rodriguez', 'CDEuropa')

--3
INSERT INTO Futbolistas2 
SELECT Codigo, Nombre, CodigoEquipo
FROM Futbolistas
WHERE CodigoEquipo LIKE '#RCELTA'

--4
INSERT INTO Equipos (Codigo, Nombre, Pais)
VALUES ('CDMontecastelo', DEFAULT, DEFAULT)

--5
INSERT INTO FutbolistasEspanha
SELECT CASE
WHEN CHARINDEX(' ', f.Nombre) > 0 THEN SUBSTRING(f.Nombre, 0, CHARINDEX(' ', f.Nombre))
WHEN CHARINDEX(' ', f.Nombre) = 0 THEN f.Nombre
END AS Nombre,
CASE
WHEN CHARINDEX(' ', f.Nombre) > 0 THEN SUBSTRING(f.Nombre, CHARINDEX(' ', f.Nombre), LEN(f.Nombre))
WHEN CHARINDEX(' ', f.Nombre) = 0 THEN ''
END AS Apellido
FROM Futbolistas f
INNER JOIN Equipos e on f.CodigoEquipo = e.Codigo
WHERE e.Pais LIKE 'España'
