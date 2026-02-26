CREATE DATABASE ACTIVIDAD2
GO
USE ACTIVIDAD2
GO
--Tabla "clientes"
CREATE TABLE clientes(
id_cliente int PRIMARY KEY,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
fecha_nacimiento datetime NOT NULL);

--Tabla "productos"
CREATE TABLE productos(
id_producto int PRIMARY KEY,
nombre varchar(100),
precio decimal CHECK (precio >= 0),
stock int);

--Tabla "pedidos"
CREATE TABLE pedidos(
id_pedido int PRIMARY KEY,
id_cliente int REFERENCES clientes(id_cliente),
id_producto int REFERENCES productos(id_producto),
cantidad int,
fecha_pedido datetime);

--Tabla "empleados" 
CREATE TABLE empleados(
id_empleado int PRIMARY KEY,
nombre varchar(50),
apellido varchar(50),
puesto varchar(50),
salario money CHECK (salario between 1184 AND 5000));

--Tabla "ventas"
CREATE TABLE ventas(
id_venta int PRIMARY KEY,
id_cliente int,
id_producto int,
cantidad int,
precio_unitario decimal,
fecha_venta datetime)

--Tabla "estudiantes" 
CREATE TABLE estudiantes(
id_estudiante int PRIMARY KEY,
nombre varchar(50) NOT NULL)


