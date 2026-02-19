CREATE DATABASE ACTIVIDAD1
GO
USE ACTIVIDAD1
GO
--Tabla "clientes"
CREATE TABLE clientes(
id_cliente int,
nombre varchar(50),
apellido varchar(50),
fecha_nacimiento datetime);

--Tabla "productos"
CREATE TABLE productos(
id_producto int,
nombre varchar(100),
precio decimal,
stock int);

--Tabla "pedidos"
CREATE TABLE pedidos(
id_pedido int,
id_cliente int,
id_producto int,
cantidad int,
fecha_pedido datetime);

--Tabla "empleados" 
CREATE TABLE empleados(
id_empleado int,
nombre varchar(50),
apellido varchar(50),
puesto varchar(50));

--Tabla "ventas"
CREATE TABLE ventas(
id_venta int,
id_cliente int,
id_producto int,
cantidad int,
precio_unitario decimal,
fecha_venta datetime)