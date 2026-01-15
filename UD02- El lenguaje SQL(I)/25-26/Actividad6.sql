
--1
CREATE VIEW GoleadoresLimpios AS
SELECT * FROM Futbolistas
WHERE Goles > 5 AND TA = 0 AND TR = 0

SELECT * FROM GoleadoresLimpios

--2
CREATE VIEW EquiposEspana AS
SELECT * FROM Equipos
WHERE Pais LIKE 'España'

SELECT * FROM EquiposEspana

