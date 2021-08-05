CREATE DATABASE PCLINCS;
GO

USE PCLINCS;
GO

CREATE TABLE DONO(
	cod_dono SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeDono VARCHAR (20) NOT NULL
);

CREATE TABLE ESPECIE(
	cod_esp SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeEsp VARCHAR (20) NOT NULL
);

CREATE TABLE CLINICA(
	cod_clinica SMALLINT PRIMARY KEY IDENTITY (1,1),
	end_clinica VARCHAR(70)NOT NULL UNIQUE
);

CREATE TABLE VETERINARIO(
	cod_veterinario SMALLINT PRIMARY KEY IDENTITY (1,1),
	cod_clinica SMALLINT FOREIGN KEY REFERENCES CLINICA (cod_clinica),
	nomeVet VARCHAR(15) NOT NULL
);

CREATE TABLE RACA(
	cod_raca SMALLINT PRIMARY KEY IDENTITY (1,1),
	cod_esp SMALLINT FOREIGN KEY REFERENCES ESPECIE (cod_esp),
	nomeRaca VARCHAR (25) NOT NULL
);

CREATE TABLE PET(
	cod_pet SMALLINT PRIMARY KEY IDENTITY (1,1),
	cod_dono SMALLINT FOREIGN KEY REFERENCES DONO (cod_dono),
	cod_raca SMALLINT FOREIGN KEY REFERENCES RACA (cod_raca),
	nomePet VARCHAR (20)NOT NULL
);

CREATE TABLE ATENDIMENTO(
	cod_atendimento SMALLINT PRIMARY KEY IDENTITY (1,1),
	cod_veterinario SMALLINT FOREIGN KEY REFERENCES VETERINARIO (cod_veterinario),
	cod_pet SMALLINT FOREIGN KEY REFERENCES PET (cod_pet),
	dataAtendimento DATETIME
);
GO