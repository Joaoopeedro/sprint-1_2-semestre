USE GUFI_TARDE ;
GO

-->

INSERT INTO tipoUsuario (tituloTipoUsuario)
VALUES ('ADMINISTRADOR'),('COMUM');
GO

INSERT INTO usuario(idTipoUsuario,nomeUsuario,email,senha)
VALUES (1,'ADMINISTRADOR','adm@adm.com','adm12345'),(2,'LUCAS', 'lucas@email.com','lucas123'),
	   (2,'SAULO', 'saulo@email.com','saulo123');
	   GO

INSERT INTO instituicao (CNPJ,nomeFantasia,endereco)
VALUES ('99999999999999', 'Escola SENAI de Informática', 'Al. Barão de Limeira, 539');
GO

INSERT INTO tipoEvento(tituloTipoEvento)
VALUES ('C#'),('REACTJS'),('SQL');
GO

SELECT * FROM tipoEvento
SELECT * FROM instituicao

INSERT INTO evento (idTipoEvento,idInstituicao,nomeEvento,descricao,
                    dataEvento, acessoLivre)
VALUES (1,1,'ORIENTAÇÃO A OBJETO',
	    'Conceitos sobre os pilares da programação orientada a objetos',
		'18/08/2021 18:00',1),
		(2,1,'CICLO DE VIDA', 'Como utilizar os ciclos de vida com a biblioteca ReactJs',
		'19/08/2021 10:00',0);
GO

delete from evento

INSERT INTO situacao(DESCRICAO)
VALUES ('APROVADA'),('RECUSADA'),('AGUARDANDO');
GO



SELECT * FROM usuario
SELECT * FROM evento
SELECT * FROM situacao

INSERT INTO presenca (idUsuario,idEvento,idSituacao)
VALUES (2,2,3),(3,1,1);
GO

SELECT * FROM presenca