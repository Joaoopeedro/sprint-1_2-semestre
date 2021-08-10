SELECT * FROM CLASSE
SELECT * FROM PERSONAGEM
SELECT * FROM TIPOHABILIDADE
SELECT * FROM HABILIDADE
SELECT * FROM CLASSEHABILIDADE



--Selecionar todos os personagens;
SELECT * FROM PERSONAGEM 

--Selecionar todos as classes;
SELECT * FROM CLASSE

--Selecionar somente o nome das classes;
SELECT nomeClasse [Nome da Classe] FROM CLASSE  

--Selecionar todas as habilidades;
SELECT * FROM HABILIDADE 

--Realizar a contagem de quantas habilidades estão cadastradas;
SELECT COUNT(idHabilidade)[Contagem de Quantas Habilidades] FROM HABILIDADE 

--Selecionar somente os id’s das habilidades classificando-os por ordem crescente;
SELECT idHabilidade FROM HABILIDADE
ORDER BY idHabilidade ASC;

--Selecionar todos os tipos de habilidades;
SELECT * FROM TIPOHABILIDADE

--Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
--idHabilidade, nomeHabilidade
SELECT idHabilidade,nomeHabilidade[Nome Habilidade], nometipo [Tipo de Habilidade]  FROM HABILIDADE 
INNER JOIN TIPOHABILIDADE
ON TIPOHABILIDADE.idTipoHabilidade = HABILIDADE.idTipoHabilidade;

--Selecionar todos os personagens e suas respectivas classes;
SELECT nomePersonagem [Nome do Personagem],nomeClasse [Nome da Classe] FROM PERSONAGEM
INNER JOIN CLASSE
ON CLASSE.idClasse = PERSONAGEM.idClasse;

--Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);
SELECT nomePersonagem[Nome do Personagem],nomeClasse[Nome da Classe] FROM PERSONAGEM
RIGHT JOIN CLASSE
ON CLASSE.idClasse = PERSONAGEM.idClasse;

--Selecionar todas as classes e suas respectivas habilidades;
SELECT nomeClasse[Nome da Classe],nomeHabilidade[Nome da Habilidade] FROM CLASSE
LEFT JOIN CLASSEHABILIDADE
ON CLASSEHABILIDADE.idClasse = CLASSE.idClasse
LEFT JOIN HABILIDADE
ON HABILIDADE.idHabilidade = CLASSEHABILIDADE.idHabilidade;

--Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT nomeHabilidade[Nome da Habilidade],nomeClasse[Nome da Classe] FROM HABILIDADE
LEFT JOIN CLASSEHABILIDADE
ON CLASSEHABILIDADE.idHabilidade= HABILIDADE.idHabilidade
LEFT JOIN CLASSE
ON CLASSE.idClasse = CLASSEHABILIDADE.idClasse;

-- Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT nomeHabilidade [Nome da Habilidade],nomeClasse[Nome da Classe] FROM HABILIDADE
FULL OUTER JOIN CLASSEHABILIDADE
ON CLASSEHABILIDADE.idHabilidade = HABILIDADE.idHabilidade
FULL OUTER JOIN CLASSE
ON CLASSE.idClasse = CLASSEHABILIDADE.idClasse;
