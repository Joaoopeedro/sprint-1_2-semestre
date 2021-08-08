USE PCLINCS_JOAO;
GO

SELECT * FROM ATENDIMENTO
SELECT * FROM VETERINARIO
SELECT * FROM PET
SELECT * FROM RACA
SELECT * FROM ESPECIE
SELECT * FROM CLINICA
SELECT * FROM DONO 


--listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT nomeClinica,nomeVet,crmv FROM VETERINARIO 
INNER JOIN CLINICA
ON CLINICA.cod_clinica = VETERINARIO.cod_clinica
WHERE nomeClinica = 'Petstar'

--listar todas as raças que começam com a letra S
SELECT * FROM RACA
WHERE nomeRaca LIKE  'S%';

--listar todos os tipos de pet que terminam com a letra O
SELECT * FROM ESPECIE
WHERE nomeEsp LIKE  '%o';

--listar todos os pets mostrando os nomes dos seus donos
SELECT cod_pet,nomePet,nomeDono FROM PET 
FULL OUTER JOIN DONO
ON DONO.cod_dono = PET.cod_dono;


--listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome,
--a raça e o tipo do pet que foi atendido,o nome do dono do pet e o nome da
--clínica onde o pet foi atendido

SELECT cod_atendimento,nomeVet,nomePet,nomeRaca,nomeEsp,nomeDono,nomeClinica FROM ATENDIMENTO
INNER JOIN VETERINARIO
ON VETERINARIO.cod_veterinario = ATENDIMENTO.cod_veterinario
INNER JOIN PET
ON PET.cod_pet = ATENDIMENTO.cod_pet
INNER JOIN CLINICA
ON CLINICA.cod_clinica = VETERINARIO.cod_clinica
INNER JOIN DONO
ON DONO.cod_dono = PET.cod_dono
INNER JOIN RACA
ON RACA.cod_raca = PET.cod_raca
INNER JOIN ESPECIE 
ON ESPECIE.cod_esp = RACA.cod_esp;

