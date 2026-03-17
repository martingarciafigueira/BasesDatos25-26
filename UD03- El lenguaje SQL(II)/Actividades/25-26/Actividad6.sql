
--1
BEGIN TRY
	BEGIN TRANSACTION

		INSERT INTO Futbolistas (Codigo, Nombre, Goles)
		VALUES ('MC005', 'Paula Docampo', 3)

		DECLARE @GOLES INT = (SELECT Goles FROM Futbolistas WHERE Codigo LIKE 'MC005')

		UPDATE Equipos
		SET Goles += @GOLES
		WHERE Codigo = '#RCELTA'

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	PRINT 'Ha ocurrido un error'
	ROLLBACK TRANSACTION
END CATCH

--2
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @NuevoEquipo varchar(50) = '#RCELTA', @CodigoFutbolista varchar(50) = 'MC005'

		UPDATE Futbolistas
		SET CodigoEquipo = @NuevoEquipo
		WHERE Codigo LIKE @CodigoFutbolista;

		DECLARE @GOLES INT = (SELECT Goles FROM Futbolistas WHERE Codigo LIKE @CodigoFutbolista)

		UPDATE Equipos
		SET Goles += @GOLES
		WHERE Codigo = @NuevoEquipo

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	PRINT 'Ha ocurrido un error'
	ROLLBACK TRANSACTION
END CATCH

--3

BEGIN TRY
	BEGIN TRANSACTION

		INSERT INTO Equipos (CODIGO, NOMBRE)
		VALUES ('LASACA', 'LAS ACACIAS')

		INSERT INTO Futbolistas (Codigo, Nombre, CodigoEquipo)
		VALUES ('LA001', 'Marcus Thuram', 'LASACA'),('LA002', 'Didier Drogba', 'LASACA')

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	PRINT 'Ha ocurrido un error'
	ROLLBACK TRANSACTION
END CATCH

--4
BEGIN TRY
	BEGIN TRANSACTION

		INSERT INTO Equipos (CODIGO, NOMBRE)
		VALUES ('VIG', 'VIGO')

		INSERT INTO Equipos (CODIGO, NOMBRE)
		VALUES ('VIG', 'VIGO2')

		INSERT INTO Futbolistas (Codigo, Nombre, CodigoEquipo)
		VALUES ('VI001', 'Abel Caballero', 'VIG')

		INSERT INTO Futbolistas (Codigo, Nombre, CodigoEquipo)
		VALUES ('VI001', 'Abel Caballero', 'VIG')

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	PRINT 'Ha ocurrido un error'
	ROLLBACK TRANSACTION
END CATCH

SELECT * FROM Equipos
WHERE Codigo LIKE 'VIG'