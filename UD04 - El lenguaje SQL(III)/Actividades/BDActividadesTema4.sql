DROP DATABASE IF EXISTS BD_ActividadesTema4
GO
CREATE DATABASE BD_ActividadesTema4
GO
USE BD_ActividadesTema4
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[fecha_nacimiento] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 30/03/2023 19:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[id_empleado] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[puesto] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 30/03/2023 19:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[id_cliente] [int] NULL,
	[id_pedido] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[fecha_pedido] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 30/03/2023 19:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] NULL,
	[nombre] [varchar](100) NULL,
	[precio] [float] NULL,
	[stock] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 30/03/2023 19:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[id_venta] [int] NULL,
	[id_cliente] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio_unitario] [float] NULL,
	[fecha_venta] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellidos], [fecha_nacimiento]) VALUES (1, N'Juan', N'Pérez', CAST(N'1990-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellidos], [fecha_nacimiento]) VALUES (2, N'María', N'García', CAST(N'1995-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellidos], [fecha_nacimiento]) VALUES (3, N'Pedro', N'Martínez', CAST(N'1985-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[empleados] ([id_empleado], [nombre], [apellidos], [puesto]) VALUES (1, N'Ana', N'Sánchez', N'Gerente')
GO
INSERT [dbo].[empleados] ([id_empleado], [nombre], [apellidos], [puesto]) VALUES (2, N'Luis', N'Gómez', N'Vendedor')
GO
INSERT [dbo].[empleados] ([id_empleado], [nombre], [apellidos], [puesto]) VALUES (3, N'Carla', N'Ramírez', N'Recepcionista')
GO
INSERT [dbo].[pedidos] ([id_cliente], [id_pedido], [id_producto], [cantidad], [fecha_pedido]) VALUES (1, 1, 1, 2, CAST(N'2023-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[pedidos] ([id_cliente], [id_pedido], [id_producto], [cantidad], [fecha_pedido]) VALUES (2, 2, 2, 1, CAST(N'2023-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[pedidos] ([id_cliente], [id_pedido], [id_producto], [cantidad], [fecha_pedido]) VALUES (3, 3, 3, 3, CAST(N'2023-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[pedidos] ([id_cliente], [id_pedido], [id_producto], [cantidad], [fecha_pedido]) VALUES (3, 4, 3, 7, CAST(N'2023-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[productos] ([id_producto], [nombre], [precio], [stock]) VALUES (1, N'Camisa', 29.99, 100)
GO
INSERT [dbo].[productos] ([id_producto], [nombre], [precio], [stock]) VALUES (2, N'Pantalón', 49.99, 50)
GO
INSERT [dbo].[productos] ([id_producto], [nombre], [precio], [stock]) VALUES (3, N'Zapatos', 79.99, 30)
GO
INSERT [dbo].[ventas] ([id_venta], [id_cliente], [id_producto], [cantidad], [precio_unitario], [fecha_venta]) VALUES (1, 2, 1, 2, 29.99, CAST(N'2023-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ventas] ([id_venta], [id_cliente], [id_producto], [cantidad], [precio_unitario], [fecha_venta]) VALUES (2, 2, 2, 1, 49.99, CAST(N'2023-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ventas] ([id_venta], [id_cliente], [id_producto], [cantidad], [precio_unitario], [fecha_venta]) VALUES (3, 3, 3, 3, 79.99, CAST(N'2023-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ventas] ([id_venta], [id_cliente], [id_producto], [cantidad], [precio_unitario], [fecha_venta]) VALUES (4, 1, 2, 3, 80, CAST(N'2022-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ventas] ([id_venta], [id_cliente], [id_producto], [cantidad], [precio_unitario], [fecha_venta]) VALUES (5, 1, 1, 15, 29.99, CAST(N'2023-03-10T00:00:00.000' AS DateTime))
GO
USE [master]
GO
ALTER DATABASE [BD_ActividadesTema4] SET  READ_WRITE 
GO
