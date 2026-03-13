--Otorgar permisos a PruebaDAW para leer y escribir en una tabla
GRANT SELECT, INSERT
on Futbolistas
TO PruebaDAW
--Otorgar permisos para actualizar o leer una columna específica de una tabla a PruebaDAW
GRANT SELECT, UPDATE(disponible)
on juegos
TO PruebaDAW
GRANT SELECT(titulo)
on juegos
TO PruebaDAM
--Desde PruebaDAW, delega permisos a PruebaDAM para que pueda otorgar permisos a otros usuarios
GRANT SELECT, INSERT
TO PruebaDAW
WITH GRANT OPTION;
GRANT SELECT, INSERT
on juegos
TO PruebaDAM;

--Revocar permisos de PruebaDAW para leer y escribir en una tabla
REVOKE SELECT, INSERT
on juegos
FROM PruebaDAW
CASCADE;

