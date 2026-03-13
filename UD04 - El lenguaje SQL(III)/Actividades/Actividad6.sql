--Crear una vista que muestre los datos de la tabla "clientes" ordenados por fecha de nacimiento descendente:
CREATE VIEW Ejercicio1 AS
SELECT TOP 10 * FROM clientes
ORDER BY fecha_nacimiento DESC

--Crear una vista que muestre los datos de la tabla "pedidos" junto con los nombres y precios de los productos correspondientes
CREATE VIEW Ejercicio2 AS
SELECT pe.*, pr.nombre, pr.precio
FROM pedidos pe
INNER JOIN productos pr on pe.id_producto = pr.id_producto

--Crear una vista que muestre los nombres y puestos de los empleados cuyo apellido empieza por "G":
CREATE VIEW Ejercicio3 AS
SELECT nombre, puesto
FROM empleados
WHERE apellidos LIKE 'G%'

--Crear una vista actualizable que permita actualizar la cantidad de stock de un producto:
CREATE VIEW Ejercicio4 AS
SELECT nombre, stock
from productos

SELECT * FROM Ejercicio4

UPDATE Ejercicio4
SET stock = stock + 50
WHERE nombre = 'Camisa'

--Crear una vista actualizable que permita actualizar la fecha de nacimiento de un cliente:
CREATE VIEW Ejercicio5 AS
SELECT id_cliente, fecha_nacimiento
FROM clientes

SELECT * FROM Ejercicio5

UPDATE Ejercicio5
SET fecha_nacimiento = GETDATE()
WHERE id_cliente = 1


