USE OPTUS_JOAO;
GO

SELECT * FROM USUARIO
SELECT * FROM ARTISTA
SELECT * FROM ALBUM
SELECT * FROM ESTILOMUSICAL
SELECT * FROM ALBUMESTILO

--listar todos os usuários administradores, sem exibir suas senhas
SELECT nomeUsu,emailUsu FROM USUARIO


--listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT * FROM ALBUM
WHERE dataLancamento > '01-04-2020 10:00';

--listar os dados de um usuário através do e-mail e senha
SELECT * FROM USUARIO
WHERE emailUsu = 'joao@gmail.com' AND senha =123;

--listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT idAlbum,nomeAlb,nomeArt,estilo FROM ALBUM
INNER JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista  ;