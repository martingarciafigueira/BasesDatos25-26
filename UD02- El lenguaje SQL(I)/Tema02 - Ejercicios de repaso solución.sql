--1
SELECT C.NumReferencia, A.Lugar
FROM Cajas C
INNER JOIN Almacenes A ON C.Almacen = A.Codigo;

--2
SELECT E.Nombre, E.Apellidos, D.Nombre
FROM Empleados E
INNER JOIN Departamentos D ON E.Departamento = D.Codigo
ORDER BY D.Nombre;

--3
SELECT S.Nombre, P.Nombre
FROM Salas S
INNER JOIN Peliculas P ON S.Pelicula = P.Codigo;

--4
SELECT PI.Nombre, PR.Nombre FROM Piezas PI
INNER JOIN Suministra S ON PI.Codigo = S.CodigoPieza
INNER JOIN Proveedores PR ON S.IdProveedor = PR.Id WHERE S.Precio > 50;

--5
SELECT DISTINCT C.NomApels, V.Maquina
FROM Cajeros C
INNER JOIN Venta V ON C.Codigo = V.Cajero;

--6
SELECT A.Lugar, COUNT(C.NumReferencia)
FROM Almacenes A
LEFT JOIN Cajas C ON A.Codigo = C.Almacen
GROUP BY A.Codigo, A.Lugar;

--7
SELECT Nombre, Presupuesto
FROM Departamentos
WHERE Presupuesto > (SELECT AVG(CAST(Presupuesto AS FLOAT)) FROM Departamentos)
ORDER BY Presupuesto DESC;

--8
SELECT F.Nombre, COUNT(I.DNI)
FROM Facultad F
LEFT JOIN Investigadores I ON F.Codigo = I.Facultad
GROUP BY F.Codigo, F.Nombre;

--9
SELECT IdProveedor, AVG(Precio)
FROM Suministra
GROUP BY IdProveedor;

--10
SELECT Maquina, COUNT(*)
FROM Venta
GROUP BY Maquina
ORDER BY 2 DESC;

--11
SELECT P.Nombre, COUNT(S.Nombre)
FROM Peliculas P
LEFT JOIN Salas S ON P.Codigo = S.Pelicula
GROUP BY P.Codigo, P.Nombre;

--12
SELECT A.Codigo, A.Lugar
FROM Almacenes A JOIN Cajas C ON A.Codigo = C.Almacen
GROUP BY A.Codigo, A.Lugar
HAVING COUNT(C.NumReferencia) > 3;

--13
SELECT D.Nombre, COUNT(E.DNI)
FROM Departamentos D
LEFT JOIN Empleados E ON D.Codigo = E.Departamento
GROUP BY D.Codigo, D.Nombre;

--14
SELECT P.Nombre, S.Nombre
FROM Peliculas P
LEFT JOIN Salas S ON P.Codigo = S.Pelicula;

--15
SELECT F.Nombre, AVG(DATEDIFF(HOUR, R.Comienzo, R.Fin))
FROM Facultad F
INNER JOIN Investigadores I ON F.Codigo = I.Facultad
INNER JOIN Reserva R ON I.DNI = R.DNI
GROUP BY F.Codigo, F.Nombre
HAVING AVG(DATEDIFF(HOUR, R.Comienzo, R.Fin)) > 2.5;

--16
SELECT C.NomApels FROM Cajeros C
INNER JOIN Venta V ON C.Codigo = V.Cajero
INNER JOIN Productos P ON V.Producto = P.Codigo
GROUP BY C.Codigo, C.NomApels
HAVING SUM(P.Precio) > 1000;

--17
SELECT P.Nombre
FROM Piezas P
INNER JOIN Suministra S ON P.Codigo = S.CodigoPieza
GROUP BY P.Codigo, P.Nombre
HAVING COUNT(S.IdProveedor) > 2;

--18
SELECT A.Codigo, A.Capacidad, COUNT(C.NumReferencia)
FROM Almacenes A
INNER JOIN Cajas C ON A.Codigo = C.Almacen
GROUP BY A.Codigo, A.Capacidad
HAVING COUNT(C.NumReferencia) > A.Capacidad;

--19
CREATE VIEW V_Detalle_Ventas AS
SELECT C.NomApels, P.Nombre AS Producto, P.Precio, M.Piso
FROM Venta V
INNER JOIN Cajeros C ON V.Cajero = C.Codigo
INNER JOIN Productos P ON V.Producto = P.Codigo
INNER JOIN Maquinas_registradoras M ON V.Maquina = M.Codigo;

--20
CREATE VIEW V_Facultades_Activas AS
SELECT F.Nombre, SUM(DATEDIFF(HOUR, R.Comienzo, R.Fin)) AS Total_Horas
FROM Facultad F
INNER JOIN Investigadores I ON F.Codigo = I.Facultad
INNER JOIN Reserva R ON I.DNI = R.DNI
GROUP BY F.Codigo, F.Nombre
HAVING SUM(DATEDIFF(HOUR, R.Comienzo, R.Fin)) > 5;