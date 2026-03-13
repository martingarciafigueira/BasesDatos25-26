DROP DATABASE IF EXISTS BD_ActividadesTema4;
GO
--Creamos la base de datos
CREATE DATABASE BD_ActividadesTema4;
GO
--Usamos la base de datos
USE BD_ActividadesTema4;
GO
--Actividad 1
CREATE TABLE clientes(
id_cliente int,
nombre varchar(50),
apellidos varchar(50),
fecha_nacimiento datetime);

CREATE TABLE productos(
id_producto int,
nombre varchar(100),
precio float,
stock int);

CREATE TABLE pedidos(
id_cliente int,
id_pedido int,
id_producto int,
cantidad int,
fecha_pedido datetime);

CREATE TABLE empleados(
id_empleado int,
nombre varchar(50),
apellidos varchar(50),
puesto varchar(50));

CREATE TABLE ventas(
id_venta int,
id_cliente int,
id_producto int,
cantidad int,
precio_unitario float,
fecha_venta datetime);



