SELECT * FROM Futbolistas

--1
DELETE Futbolistas
WHERE Codigo = 'AL0002'

--2
DELETE Equipos
WHERE PAIS LIKE 'Italia'

--3
DELETE Equipos
WHERE Codigo LIKE '#DEPALV'

--4
DELETE Futbolistas
WHERE Posicion LIKE 'PORTERO'

--5
DELETE Futbolistas
WHERE Dorsal NOT BETWEEN 1 AND 25

--6
DELETE Futbolistas
WHERE CodigoEquipo LIKE 'RETIRADO' OR Edad > 40

--7
DELETE Equipos
WHERE Codigo IN
(
SELECT e.Codigo
FROM Equipos e
LEFT JOIN Futbolistas f on e.Codigo = f.CodigoEquipo
GROUP BY e.Codigo
HAVING COUNT(f.codigo) < 23
)
