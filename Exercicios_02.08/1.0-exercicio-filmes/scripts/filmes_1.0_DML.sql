CREATE DATABASE CATALOGO_JOAO ;
GO

USE CATALOGO_JOAO;
GO

INSERT INTO GENERO(nomeGenero)
VALUES ('AÇÃO'), ('ROMANCE'),('AVENTURA'), ('TERROR')
GO



DELETE FROM GENERO 
WHERE idGenero > 4


INSERT INTO FILME (tituloFilme, idgenero)
VALUES ('Rambo', 1), ('Vingadores' ,1), ('Ghost', 2),('Diario de uma paixao', 2),
('HER',NULL),('Homem-aranha', NULL);
GO

DELETE FROM FILME


--update FILME set tituloFilme = 'RAMBO 2'
--WHERE idFilme = 1

--DELETE FROM GENERO