--Agregar una restricción UNIQUE a la columna "nombre" en la tabla "clientes"
ALTER TABLE clientes
ADD CONSTRAINT UNQ_nombre UNIQUE (nombre)
--Agregar una restricción NOT NULL a la columna "precio" en la tabla "productos"
ALTER TABLE productos
ALTER COLUMN precio float NOT NULL
--Agregar una restricción CHECK a la columna "cantidad" en la tabla "pedidos"
ALTER TABLE pedidos
ADD CONSTRAINT CK_cantidad CHECK ( cantidad > 0)
--Agregar una restricción PRIMARY KEY a la columna "id_empleado" en la tabla "empleados"
ALTER TABLE empleados
ADD CONSTRAINT PK_id_empleado PRIMARY KEY (id_empleado)
--Agregar una restricción FOREIGN KEY a la columna "id_cliente" en la tabla "pedidos" que haga referencia a la tabla "clientes"
ALTER TABLE pedidos
ADD CONSTRAINT FK_id_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
--Agregar una restricción FOREIGN KEY a la columna "id_producto" en la tabla "ventas" que haga referencia a la tabla "productos"
ALTER TABLE ventas
ADD CONSTRAINT FK_id_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
--Agregar una restricción UNIQUE a la columna "id_venta" en la tabla "ventas“
ALTER TABLE ventas
ADD CONSTRAINT UNQ_id_venta UNIQUE (id_venta)
--Agregar una restricción PRIMARY KEY compuesta a las columnas "id_cliente" e "id_producto" en la tabla "pedidos"
ALTER TABLE pedidos
ALTER COLUMN id_cliente int NOT NULL
ALTER TABLE pedidos
ALTER COLUMN id_producto int NOT NULL
ALTER TABLE pedidos
ADD CONSTRAINT PK_pedidos_clienteProducto PRIMARY KEY (id_cliente, id_producto)

