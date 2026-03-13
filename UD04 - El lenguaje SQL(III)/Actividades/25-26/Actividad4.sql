

--1

SELECT * INTO #VENTAS FROM VENTAS
WHERE fecha_venta >= DATEADD(MONTH,-3,CURRENT_TIMESTAMP)

SELECT * FROM #VENTAS

--2
SELECT nombre, apellido INTO #clientes_activos
FROM clientes c
INNER JOIN ventas v on c.id_cliente = v.id_cliente
where fecha_venta >= DATEADD(MONTH,-1,CURRENT_TIMESTAMP)

SELECT * FROM #clientes_activos

--3
SELECT * INTO #pedidos_procesados
FROM pedidos
where fecha_pedido >= DATEADD(WEEK,-1,CURRENT_TIMESTAMP)

SELECT * FROM #pedidos_procesados

--4
SELECT TOP 10 *
FROM productos p
INNER JOIN ventas v on p.id_producto = v.id_producto
where fecha_venta >= DATEADD(MONTH,-1,CURRENT_TIMESTAMP)
ORDER BY cantidad DESC
