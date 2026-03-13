--Crear una vista que muestre los datos de la tabla "clientes" ordenados por fecha de nacimiento descendente:

CREATE VIEW Vista_1 AS
SELECT *
FROM clientes

SELECT * FROM Vista_1
ORDER BY fecha_nacimiento

--Crear una vista que muestre los datos de la tabla "pedidos" junto con los nombres y precios de los productos correspondientes

CREATE VIEW Vista_2 AS
SELECT pe.*, po.nombre, po.precio
FROM pedidos pe
INNER JOIN productos po on pe.id_producto = po.id_producto

SELECT * FROM Vista_2

--Crear una vista que muestre los nombres y puestos de los empleados cuyo apellido empieza por "G":

CREATE VIEW Vista_3 AS
SELECT nombre, puesto
FROM empleados
WHERE apellido LIKE 'G%'

--Crear una vista actualizable que permita actualizar la cantidad de stock de un producto

CREATE VIEW Vista_4 AS
SELECT id_producto, nombre, stock
FROM productos

SELECT * FROM Vista_4

UPDATE Vista_4
SET stock +=10
WHERE id_producto = 3

--Crear una vista actualizable que permita actualizar la fecha de nacimiento de un cliente

CREATE VIEW Vista_5 AS
SELECT CONCAT (nombre, ' ', apellido) 'NombreCompleto', fecha_nacimiento FROM clientes

SELECT * FROM Vista_5

UPDATE Vista_5
SET fecha_nacimiento = CURRENT_TIMESTAMP
WHERE NombreCompleto LIKE 'Pedro Martínez'

