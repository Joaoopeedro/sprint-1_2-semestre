CREATE DATABASE OPTUS;
GO

USE OPTUS;
GO

CREATE TABLE USUARIO(
	idUsuario SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeUsu VARCHAR (15) NOT NULL,
	emailUsu VARCHAR (30) NOT NULL UNIQUE,
	senha VARCHAR (15)NOT NULL UNIQUE
);

CREATE TABLE ARTISTA(
	idArtista SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeArt VARCHAR (20) NOT NULL
);

CREATE TABLE ALBUM(
	idAlbum SMALLINT PRIMARY KEY IDENTITY (1,1),
	idArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA (idArtista),
	nomeAlb VARCHAR(15)NOT NULL,
	dataLancamento DATETIME
);

CREATE TABLE ESTILOMUSICAL(
	idEstilo SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeEst VARCHAR(15) NOT NULL
);

CREATE TABLE ALBUMESTILO(
	idAlbumEstilo SMALLINT PRIMARY KEY IDENTITY (1,1),
	idEstilo SMALLINT FOREIGN KEY REFERENCES ESTILOMUSICAL (idEstilo),
	idAlbum SMALLINT FOREIGN KEY REFERENCES ALBUM (idAlbum)
);
GO