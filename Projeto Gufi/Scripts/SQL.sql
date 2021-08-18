USE GUFI_TARDE;
GO

-- LISATR TODOS OS TIPOS DE USUSARIO
SELECT * FROM tipoUsuario

-- LISTAR TODOS OS USUSARIOS
SELECT * FROM usuario

SELECT * FROM evento

SELECT * FROM situacao

SELECT * FROM tipoEvento

SELECT * FROM instituicao

SELECT * FROM presenca


-->

SELECT U.idUsuario,U.nomeUsuario[USUARIO],T.idTipoUsuario 'Tipo de usuario', T.tituloTipoUsuario titulo FROM usuario U
INNER JOIN tipoUsuario T
ON U.idTipoUsuario = T.idTipoUsuario



-->
SELECT E.nomeEvento Evento, I.nomeFantasia Instituicao,TE.tituloTipoEvento[Tipo do Evento] FROM evento E
INNER JOIN tipoEvento TE ON E.idTipoEvento = E.idTipoEvento
INNER JOIN instituicao I ON I.idInstituicao = E.idInstituicao

-->
SELECT U.nomeUsuario Usuario,
       TU.tituloTipoUsuario [Tipo de usuario],
	   u.email [Email do Usuario ],
	   E.nomeEvento [Nome do Evento],
	   convert (varchar(103),E.dataEvento,103) [Data do Evento],
	   TE.tituloTipoEvento [Tipo do Evento],
	   I.nomeFantasia instituição,
	   S.DESCRICAO,
	   E.acessoLivre

FROM usuario U
INNER JOIN presenca P ON(U.idUsuario = P.idUsuario)
INNER JOIN situacao S ON(P.idSituacao = S.idSituacao)
INNER JOIN evento E ON (P.idEvento = E.idEvento)
INNER JOIN tipoEvento TE ON (E.idTipoEvento = TE.idTipoEvento)
JOIN instituicao I ON (E.idInstituicao = I.idInstituicao)
INNER JOIN tipoUsuario TU ON(U.idTipoUsuario = TU.idTipoUsuario)


-->

SELECT nomeUsuario,email,senha 
FROM usuario
WHERE email = 'adm@adm.com'
and  senha = 'adm12345'