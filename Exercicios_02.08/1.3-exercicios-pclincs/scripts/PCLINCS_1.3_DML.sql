USE PCLINCS_JOAO;
GO

INSERT INTO DONO (nomeDono)
VALUES ('João'), ('Gustavo');
GO
INSERT INTO DONO (nomeDono)
VALUES ('Murillo');
GO


INSERT INTO CLINICA (end_clinica)
VALUES ('Rua'), ('Rua2');
GO
INSERT INTO CLINICA (nomeClinica)
VALUES ('Petstar'), ('Petvip');
GO

UPDATE CLINICA SET cod_clinica = 4
WHERE nomeClinica = 'Petlux'

DELETE FROM CLINICA 
WHERE nomeClinica = 'Petlux'

INSERT INTO ESPECIE (nomeEsp)
VALUES ('M'), ('T');
GO
UPDATE ESPECIE SET nomeEsp = 'Cachorro'
WHERE cod_esp = 1


INSERT INTO ESPECIE (nomeEsp)
VALUES ('Cobra');
GO

INSERT INTO RACA (cod_esp, nomeRaca)
VALUES (2,'A'), (1,'B'),(1,'C');
GO
UPDATE RACA SET nomeRaca = 'Cascavel'
WHERE cod_raca = 3

UPDATE RACA SET cod_esp = 3
WHERE cod_raca = 3




INSERT INTO PET(nomePet,cod_dono,cod_raca)
VALUES ('B',1,1), ('A',1,2), ('E',2,3);
GO

UPDATE PET SET cod_dono = 2
WHERE cod_pet = 2



INSERT INTO VETERINARIO (cod_clinica, nomeVet)
VALUES (1,'R'), (2,'T'), (1,'W');
GO
UPDATE VETERINARIO SET cod_clinica = 3
WHERE cod_veterinario = 3



INSERT INTO ATENDIMENTO (cod_pet,cod_veterinario,dataAtendimento)
VALUES (1,1,'10-11-2021 08:20'), (3,2,'11-11-2021 14:50'), (2,3,'12-11-2021 09:20'), (3,2,'13-11-2021 17:45');
GO

UPDATE ATENDIMENTO SET descricao = 'cirurgia'
WHERE cod_atendimento = 4

DELETE FROM ATENDIMENTO
WHERE cod_atendimento= 4
