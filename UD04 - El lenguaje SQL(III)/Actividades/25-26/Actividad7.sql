--Crear un índice en la columna "nombre" de la tabla "clientes"
CREATE INDEX IND_NOMBRE_CLIENTES
ON clientes(nombre);
--Crear un índice en las columnas "id_cliente" y "id_producto" de la tabla "pedidos"
CREATE UNIQUE INDEX IND_CLI_PRO_PEDIDOS
ON pedidos(id_cliente,id_producto);
--Crear un índice en la columna "precio" de la tabla "productos"
CREATE INDEX IND_PRECIO_PRODUCTO
ON productos(precio);
-- Crear un índice en la columna "fecha_nacimiento" de la tabla "clientes"
-- con un filtro para limitar el rango de fechas a 2024
CREATE INDEX IND_FECHA_NAC_CLIENTES
ON clientes(fecha_nacimiento)
WHERE fecha_nacimiento >= '01/01/2024' AND fecha_nacimiento <= '31/12/2024';
-- Crear un índice en las columnas "nombre" y "precio" de la tabla "productos"
-- con un ordenamiento de nombre ascendente y de precio descendente
CREATE INDEX IND_NOMBRE_PRECIO_PRODUCTO
ON productos(nombre asc, precio desc);