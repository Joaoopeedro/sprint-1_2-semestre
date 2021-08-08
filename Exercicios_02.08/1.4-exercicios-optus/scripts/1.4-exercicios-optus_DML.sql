USE OPTUS_JOAO;
GO

INSERT INTO USUARIO (nomeUsu,emailUsu,senha)
VALUES ('João','joao@gmail.com', '123'), ('Pedro', 'pedro@hotmail.com', '1234');
GO

UPDATE USUARIO SET Permissao = 'Comum'
WHERE idUsuario = 6



INSERT INTO ARTISTA(nomeArt)
VALUES ('Lucas'), ('Gabriel');
GO



INSERT INTO ALBUM (idArtista,nomeAlb,dataLancamento)
VALUES (2,'AMENDOIM', '03-04-2021 10:30'), (1,'BANANA','04-04-2021 12:30'),(1,'PERA','05-04-2021');
GO

UPDATE ALBUM SET ATIVO = 'Não'
WHERE idAlbum = 3



INSERT INTO ESTILOMUSICAL(nomeEst)
VALUES ('Funk'), ('Rock'), ('Pop');
GO



INSERT INTO ALBUMESTILO(idEstilo,idAlbum)
VALUES (1,3), (2,2),(1,4);
GO

