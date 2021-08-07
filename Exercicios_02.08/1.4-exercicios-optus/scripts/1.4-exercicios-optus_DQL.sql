USE OPTUS_JOAO;
GO

SELECT * FROM USUARIO
SELECT * FROM ARTISTA
SELECT * FROM ALBUM
SELECT * FROM ESTILOMUSICAL
SELECT * FROM ALBUMESTILO

--listar todos os usu�rios administradores, sem exibir suas senhas
SELECT nomeUsu,emailUsu FROM USUARIO


--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT * FROM ALBUM
WHERE dataLancamento > '01-04-2020 10:00';

--listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT * FROM USUARIO
WHERE emailUsu = 'joao@gmail.com' AND senha =123;

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT idAlbum,nomeAlb,nomeArt,estilo FROM ALBUM
INNER JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista  ;