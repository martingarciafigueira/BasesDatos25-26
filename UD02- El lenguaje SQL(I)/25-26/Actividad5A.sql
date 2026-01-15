
SELECT f.*, e.Nombre as 'Nombre equipo' FROM Futbolistas f
INNER JOIN Equipos e ON f.CodigoEquipo = e.Codigo
