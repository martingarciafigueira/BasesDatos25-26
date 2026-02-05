--1
SELECT nombre, LEN(nombre) as Longitud FROM Futbolistas

--2
SELECT CURRENT_TIMESTAMP

--3
SELECT UPPER(nombre) as NombreCompletoMayusculas from Futbolistas

--4
SELECT e.Nombre, SUM(f.Goles) as GolesEquipo
FROM Futbolistas f
INNER JOIN Equipos e ON f.CodigoEquipo = e.Codigo 
group by e.Nombre

--5
SELECT CodigoEquipo, COUNT(f.codigo)
FROM Futbolistas f
GROUP BY CodigoEquipo

--6
SELECT FLOOR(AVG(CAST(GOLES AS FLOAT)))
FROM Equipos

--7
SELECT CEILING(AVG(CAST(GOLES AS FLOAT)))
FROM Equipos

--7.1
SELECT ROUND(AVG(CAST(GOLES AS FLOAT)), 3)
FROM Equipos

--DIFICIL.1
SELECT CASE
WHEN CHARINDEX(' ', Nombre) > 0 THEN SUBSTRING(Nombre, 0, CHARINDEX(' ', Nombre))  
WHEN CHARINDEX(' ', Nombre) = 0 THEN Nombre
END
FROM Futbolistas

--DIFICIL.2
SELECT CASE
WHEN CHARINDEX(' ', Nombre) > 0 THEN LEN(SUBSTRING(Nombre, 0, CHARINDEX(' ', Nombre)))  
WHEN CHARINDEX(' ', Nombre) = 0 THEN LEN(Nombre)
END
FROM Futbolistas

--DIFICIL.3: Solamente los equipos con 0 goles. Query Aaron
SELECT e.Nombre, COALESCE(SUM(f.Goles),0) as GolesEquipo
FROM Equipos e
LEFT JOIN Futbolistas f ON f.CodigoEquipo = e.Codigo 
group by e.Nombre
HAVING SUM(f.Goles) IS NULL

--DIFICIL.3
SELECT e.Nombre, COALESCE(SUM(f.Goles),0) as GolesEquipo
FROM Equipos e
LEFT JOIN Futbolistas f ON f.CodigoEquipo = e.Codigo 
group by e.Nombre
order by GolesEquipo DESC

--DIFICIL.4
SELECT e.Nombre, COUNT(f.codigo) as NumeroFutbolistas
FROM Equipos e
LEFT JOIN Futbolistas f ON f.CodigoEquipo = e.Codigo 
group by e.Nombre
HAVING COUNT(f.codigo) = 0
order by NumeroFutbolistas

--DIFICIL.5
SELECT e.Nombre, COUNT(f.codigo) as NumeroFutbolistas
FROM Equipos e
LEFT JOIN Futbolistas f ON f.CodigoEquipo = e.Codigo 
group by e.Nombre
order by NumeroFutbolistas