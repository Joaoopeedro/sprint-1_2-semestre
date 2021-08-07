CREATE DATABASE PESSOAS;
GO
USE EMPRESA_JOAO;
GO

INSERT INTO PESSOA (nomePessoa, cnh)
VALUES ('Pedro',667), ('Joao', 662);
GO

DELETE FROM PESSOA



INSERT INTO TELEFONE (idPessoa,numeroTelefone)
VALUES (1,'888'), (2,'444'), (2,'222');
GO



INSERT INTO EMAIL (idPessoa, end_email)
VALUES (2, 'joao@gmail.com'),(1,'pedro@gmail.com'), (2, 'Joao2@gmail.com');
GO

--DML