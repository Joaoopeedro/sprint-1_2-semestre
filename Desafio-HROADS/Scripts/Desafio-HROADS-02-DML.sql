USE SENAI_HROADS_TARDE;
GO

INSERT INTO CLASSE(nomeClasse)
VALUES ('Bárbaro'), ('Cruzado'), ('Caçadora de Demonios'), ('Monge'),('Necromante'), ('Feiticeiro'), ('Arcanista');
GO

--Atualizar o nome da classe de Necromante para Necromancer;
UPDATE CLASSE SET nomeClasse = 'Necromancer'
WHERE idClasse = 5

INSERT INTO PERSONAGEM (idClasse,nomePersonagem,capacidadeVida,capacidadeMaxMana,dataAtualizacao,dataCriacao)
VALUES (1,'DeuBug',100,80,GETDATE(),'18/01/2019'), (4,'BitBug',70,100,GETDATE(),'17/03/2016'),(7,'Fer8',75,60,GETDATE(),'18/03/2018');
GO

--Atualizar o nome do personagem Fer8 para Fer7
UPDATE PERSONAGEM SET nomePersonagem = 'Fer7'
WHERE idPersonagem = 3


INSERT INTO TIPOHABILIDADE(nometipo)
VALUES ('Ataque'),('Defesa'),('Cura'),('Magia');
GO

INSERT INTO HABILIDADE(idTipoHabilidade,nomeHabilidade)
VALUES (1,'Lança Mortal'), (2, 'Escudo Supremo'), (3,'Recuperar Vida');
GO

INSERT INTO CLASSEHABILIDADE(idClasse,idHabilidade)
VALUES (1,1),(1,2),(2,2),(3,1),(4,3),(4,2),(6,3);
GO
