USE EMPRESA_JOAO
SELECT * FROM PESSOA
SELECT * FROM TELEFONE
SELECT * FROM EMAIL

--DQL

--listar as pessoas em ordem alfabética reversa, mostrando seus telefones,
--seus e-mails e suas CNHs

SELECT nomePessoa,cnh, numeroTelefone,end_email FROM  PESSOA
INNER JOIN TELEFONE
ON TELEFONE.idPessoa = PESSOA.idPessoa
INNER JOIN EMAIL
ON EMAIL.idPessoa = PESSOA.idPessoa
ORDER BY nomePessoa DESC;



