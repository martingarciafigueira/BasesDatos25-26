
--1
GRANT SELECT, INSERT
ON clientes
TO PruebaDAW

--2
GRANT SELECT(nombre)
ON estudiantes
TO PruebaDAW

GRANT INSERT
ON estudiantes
TO PruebaDAW

GRANT UPDATE(id_estudiante)
ON estudiantes
TO PruebaDAW

GRANT DELETE
ON estudiantes
TO PruebaDAW

GRANT SELECT
ON estudiantes
TO PruebaDAW

--3
REVOKE SELECT, INSERT, DELETE
ON estudiantes
TO PruebaDAW

--4
GRANT SELECT
ON empleados
TO PRUEBADAM
WITH GRANT OPTION;

--5
REVOKE
SELECT, UPDATE, DELETE
ON empleados
TO PruebaDAM
CASCADE;