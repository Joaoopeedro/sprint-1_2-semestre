USE OPTUS_JOAO;
GO

SELECT * FROM USUARIO
SELECT * FROM ARTISTA
SELECT * FROM ALBUM
SELECT * FROM ESTILOMUSICAL
SELECT * FROM ALBUMESTILO

--listar todos os usu�rios administradores, sem exibir suas senhas
SELECT nomeUsu,emailUsu,Permissao FROM USUARIO
WHERE Permissao = 'Administrador'


--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT * FROM ALBUM
WHERE dataLancamento > '2021';

--listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT * FROM USUARIO
WHERE emailUsu = 'joao@gmail.com' AND senha =123;

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT ALBUM.idAlbum,nomeAlb,nomeArt,nomeEst,ATIVO FROM ALBUM
INNER JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista
INNER JOIN ALBUMESTILO
ON ALBUM.idAlbum = ALBUMESTILO.idAlbum
INNER JOIN ESTILOMUSICAL
ON ESTILOMUSICAL.idEstilo = ALBUMESTILO.idEstilo
WHERE ATIVO = 'Sim';