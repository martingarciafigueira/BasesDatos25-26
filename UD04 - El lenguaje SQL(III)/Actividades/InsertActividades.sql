
INSERT INTO clientes (id_cliente, nombre, apellido, fecha_nacimiento)
VALUES (1, 'Juan', 'Pérez', '01/01/1990'),
       (2, 'María', 'García', '10/05/1995'),
       (3, 'Pedro', 'Martínez', '15/12/1985');

INSERT INTO productos (id_producto, nombre, precio, stock)
VALUES (1, 'Camisa', 29.99, 100),
       (2, 'Pantalón', 49.99, 50),
       (3, 'Zapatos', 79.99, 30);

INSERT INTO pedidos (id_pedido, id_cliente, id_producto, cantidad, fecha_pedido)
VALUES (1, 1, 1, 2, '10/02/2026'),
       (2, 2, 2, 1, '11/02/2026'),
       (3, 3, 3, 3, '12/02/2026');

INSERT INTO empleados (id_empleado, nombre, apellido, puesto)
VALUES (1, 'Ana', 'Sánchez', 'Gerente'),
       (2, 'Luis', 'Gómez', 'Vendedor'),
       (3, 'Carla', 'Ramírez', 'Recepcionista');

INSERT INTO ventas (id_venta, id_cliente, id_producto, cantidad, precio_unitario, fecha_venta)
VALUES (1, 1, 1, 2, 29.99, '10/02/2026'),
       (2, 2, 2, 1, 49.99, '11/02/2026'),
       (3, 3, 3, 3, 79.99, '12/02/2026');	   