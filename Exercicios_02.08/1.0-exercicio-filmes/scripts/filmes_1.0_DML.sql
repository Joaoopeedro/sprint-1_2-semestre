CREATE DATABASE CATALOGO_JOAO ;
GO

USE CATALOGO_JOAO;
GO

INSERT INTO GENERO(nomeGenero)
VALUES ('AÇÃO'), ('ROMANCE')
GO



DELETE FROM GENERO 
WHERE idGenero = 2


INSERT INTO FILME (tituloFilme, idgenero)
VALUES ('Rambo', 1), ('Vingadores' ,1), ('GHOST', 2),('DIARIO DE UMA PAIXAO', 2);
GO



--update FILME set tituloFilme = 'RAMBO 2'
--WHERE idFilme = 1

--DELETE FROM GENERO