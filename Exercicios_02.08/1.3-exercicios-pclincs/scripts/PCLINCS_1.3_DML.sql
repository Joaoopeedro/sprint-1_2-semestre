USE PCLINCS_JOAO;
GO

INSERT INTO DONO (nomeDono)
VALUES ('João'), ('Gustavo');
GO


INSERT INTO CLINICA (end_clinica)
VALUES ('Rua'), ('Rua2');
GO



INSERT INTO ESPECIE (nomeEsp)
VALUES ('M'), ('T');
GO


INSERT INTO RACA (cod_esp, nomeRaca)
VALUES (2,'A'), (1,'B'),(1,'C');
GO



INSERT INTO PET(nomePet,cod_dono,cod_raca)
VALUES ('B',1,1), ('A',1,2), ('E',2,3);
GO


INSERT INTO VETERINARIO (cod_clinica, nomeVet)
VALUES (1,'R'), (2,'T'), (1,'W');
GO



INSERT INTO ATENDIMENTO (cod_pet,cod_veterinario,dataAtendimento)
VALUES (1,1,'10-11-2021 08:20'), (3,2,'11-11-2021 14:50'), (2,3,'12-11-2021 09:20'), (3,2,'13-11-2021 17:45');
GO
