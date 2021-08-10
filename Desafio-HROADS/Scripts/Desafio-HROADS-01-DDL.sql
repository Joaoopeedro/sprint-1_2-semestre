CREATE DATABASE SENAI_HROADS_TARDE;
GO 

USE SENAI_HROADS_TARDE;
GO

CREATE TABLE CLASSE(
	idClasse SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeClasse VARCHAR(25)
);
GO

CREATE TABLE PERSONAGEM(
	idPersonagem SMALLINT PRIMARY KEY IDENTITY(1,1),
	idClasse SMALLINT FOREIGN KEY REFERENCES CLASSE(idClasse),
	nomePersonagem VARCHAR(20) NOT NULL,
	capacidadeVida SMALLINT  NOT NULL, 
	capacidadeMaxMana SMALLINT NOT NULL,
	dataAtualizacao DATE NOT NULL,
	dataCriacao DATE NOT NULL
);
GO

CREATE TABLE TIPOHABILIDADE(
	idTipoHabilidade SMALLINT PRIMARY KEY IDENTITY (1,1),
	nometipo VARCHAR (20)NOT NULL

);
GO

CREATE TABLE HABILIDADE(
	idHabilidade SMALLINT PRIMARY KEY IDENTITY (1,1),
	idTipoHabilidade SMALLINT FOREIGN KEY REFERENCES TIPOHABILIDADE(idTipoHabilidade),
	nomeHabilidade VARCHAR (20)

);
GO

CREATE TABLE CLASSEHABILIDADE(
	idCH SMALLINT PRIMARY KEY IDENTITY (1,1),
	idClasse SMALLINT FOREIGN KEY REFERENCES CLASSE (idClasse),
	idHabilidade SMALLINT FOREIGN KEY REFERENCES HABILIDADE(idHabilidade)

);
GO