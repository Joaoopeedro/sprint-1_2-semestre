USE OPTUS_JOAO;
GO

SELECT * FROM USUARIO
SELECT * FROM ARTISTA
SELECT * FROM ALBUM
SELECT * FROM ESTILOMUSICAL
SELECT * FROM ALBUMESTILO

--listar todos os usuários administradores, sem exibir suas senhas
SELECT nomeUsu,emailUsu,Permissao FROM USUARIO
WHERE Permissao = 'Administrador'


--listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT * FROM ALBUM
WHERE dataLancamento > '2021';

--listar os dados de um usuário através do e-mail e senha
SELECT * FROM USUARIO
WHERE emailUsu = 'joao@gmail.com' AND senha =123;

--listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT ALBUM.idAlbum,nomeAlb,nomeArt,nomeEst,ATIVO FROM ALBUM
INNER JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista
INNER JOIN ALBUMESTILO
ON ALBUM.idAlbum = ALBUMESTILO.idAlbum
INNER JOIN ESTILOMUSICAL
ON ESTILOMUSICAL.idEstilo = ALBUMESTILO.idEstilo
WHERE ATIVO = 'Sim';