--Crear una tabla temporal llamada "#ventas" que contenga las mismas columnas que la tabla "ventas" y los datos de los últimos 3 meses
CREATE TABLE #ventas(
id_venta int,
id_cliente int,
id_producto int,
cantidad int,
precio_unitario float,
fecha_venta datetime)

INSERT INTO #ventas
SELECT * FROM ventas
WHERE fecha_venta >= DATEADD(MONTH, -3, GETDATE())

SELECT DATEADD(MONTH, -3, GETDATE())

DROP TABLE #ventas

--Crear una tabla temporal llamada "#clientes_activos" que contenga solo los clientes que hayan realizado compras en el último mes

SELECT DISTINCT c.*
INTO #clientes_activos
FROM ventas v
INNER JOIN clientes c on c.id_cliente = v.id_cliente
WHERE v.fecha_venta >= DATEADD(MONTH, -1, GETDATE())

SELECT * FROM #clientes_activos
DROP TABLE #clientes_activos

--Crear una tabla temporal llamada "#pedidos_procesados" que contenga solo los pedidos que hayan sido procesados y entregados en la última semana

SELECT *
INTO #pedidos_procesados
FROM pedidos
WHERE fecha_pedido >= DATEADD(WEEK, -1, GETDATE())

SELECT * FROM #pedidos_procesados
DROP TABLE #pedidos_procesados

--Crear una tabla temporal llamada "#productos_mas_vendidos" que contenga los 10 productos más vendidos en el último mes

SELECT TOP 10 v.id_producto, SUM(cantidad) as 'Cantidad de ventas'
INTO #productos_mas_vendidos
FROM ventas v
INNER JOIN productos p on p.id_producto = v.id_producto
WHERE fecha_venta >= DATEADD(MONTH, -1, GETDATE())
GROUP BY v.id_producto
ORDER BY SUM(cantidad) DESC

SELECT * FROM #productos_mas_vendidos















DROP TABLE #productos_mas_vendidos