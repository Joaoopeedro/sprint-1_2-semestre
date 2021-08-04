CREATE DATABASE EMPRESA;
GO

USE EMPRESA ;
GO

CREATE TABLE PESSOA(
	idPessoa SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomePessoa VARCHAR(20) NOT NULL,
	

);
GO
ALTER TABLE PESSOA
ADD  cnh CHAR(11) NOT NULL

CREATE TABLE TELEFONE(
	idTelefone SMALLINT PRIMARY KEY IDENTITY(1,1),
	idPessoa SMALLINT FOREIGN KEY REFERENCES PESSOA (idPessoa),
	numeroTelefone CHAR(15) NOT NULL
);
GO

CREATE TABLE EMAIL (
	idEmail INT PRIMARY KEY IDENTITY (1,1),
	idPessoa SMALLINT FOREIGN KEY REFERENCES PESSOA(idPessoa),
	end_email VARCHAR(256) NOT NULL
);
GO

