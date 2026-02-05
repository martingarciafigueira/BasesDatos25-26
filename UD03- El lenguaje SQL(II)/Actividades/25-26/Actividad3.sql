
--1
UPDATE Equipos
SET Puntos -= 15
WHERE Codigo LIKE '#FCBLNA'

--2
UPDATE Futbolistas
SET PrecioMercado = '35 Mill'
WHERE Codigo LIKE 'RM0011'

--3
UPDATE Equipos
SET PJ = '500', PG=480, PE=20, PP=0
WHERE Codigo LIKE '#RCELTA'

--4
UPDATE Futbolistas
SET CodigoEquipo = '#RCELTA'
WHERE Codigo LIKE 'AM0022'

--5
UPDATE Futbolistas
SET CodigoEquipo = '#SDEIBR'
WHERE Codigo = 'AM0006'

UPDATE Futbolistas
SET CodigoEquipo = '#ATMDRD'
WHERE Codigo = 'EB0006'

--6

INSERT INTO Equipos (Codigo)
VALUES ('RETIRADO')

UPDATE Futbolistas
SET CodigoEquipo = 'RETIRADO', Dorsal = 0
WHERE Codigo = 'RM0008'

--7
UPDATE Equipos
SET Pais = 'España', GOLES=0, Puntos=0, PJ='0', PG=0, PE=0, PP=0, Estadio='El plantío', Ciudad='Burgos'
WHERE Codigo='#ZENIT'

--EJEMPLO EQUIPOS CON MAS DE 15 FUTBOLISTAS
UPDATE Equipos
SET PAIS = 'Peru'
WHERE Codigo IN
(
SELECT e.Codigo, COUNT(f.codigo)
FROM Equipos e
INNER JOIN Futbolistas f on e.Codigo = f.CodigoEquipo
GROUP BY e.Codigo
HAVING COUNT(f.codigo) > 24
)
