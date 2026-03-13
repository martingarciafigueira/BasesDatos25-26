--Crear un índice en la columna "nombre" de la tabla "clientes"
CREATE INDEX IND_Nombre_Clientes ON clientes(nombre);
--Crear un índice en las columnas "id_cliente" y "id_producto" de la tabla "pedidos"
CREATE INDEX IND_ClienteProducto_Pedido ON pedidos(id_cliente, id_producto);
--Crear un índice en la columna "precio" de la tabla "productos"
CREATE INDEX IND_Precio ON productos(precio);
--Crear un índice en la columna "fecha_nacimiento" de la tabla "clientes" con un filtro para limitar el rango de fechas a 2024
CREATE INDEX IND_FechaNac_Clientes ON clientes(fecha_nacimiento) WHERE fecha_nacimiento >= '01-01-2024' AND fecha_nacimiento <='31-12-2024'
