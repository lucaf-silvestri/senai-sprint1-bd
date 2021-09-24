USE CLINICAS;
GO

SELECT * FROM CLINICA;
GO

SELECT * FROM VETERINARIO;
GO

SELECT * FROM TIPODEANIMAL;
GO

SELECT * FROM RACA;
GO

SELECT * FROM PETS;
GO

SELECT * FROM DONOS;
GO

SELECT * FROM ATENDIMENTO;
GO


--Listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social):

SELECT nomeVeterinario, crmv, nomeClinica, razaoSocial FROM VETERINARIO
LEFT JOIN CLINICA
ON CLINICA.idClinica = VETERINARIO.idClinica
WHERE VETERINARIO.idClinica = 2


--Listar todas as ra�as que come�am com a letra S:

SELECT * FROM RACA WHERE left(nomeRaca, 1) = 'S';


--Listar todos os tipos de pet que terminam com a letra O:

SELECT * FROM TIPODEANIMAL WHERE RIGHT(nomeAnimal, 1) = 'O'


--Listar todos os pets mostrando os nomes dos seus donos:

SELECT nomePet, nomeDono FROM PETS
LEFT JOIN DONOS
ON DONOS.idDono = PETS.idDono


--Listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido:

SELECT nomeVeterinario AS 'Nome do Veterin�rio', nomePet AS 'Nome do Pet', nomeRaca AS 'Ra�a', nomeAnimal AS 'Tipo de Animal', nomeDono AS 'Nome do Dono', nomeClinica AS 'Nome da Cl�nica' FROM ATENDIMENTO
LEFT JOIN VETERINARIO
ON ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario
LEFT JOIN CLINICA 
ON VETERINARIO.idClinica = CLINICA.idClinica
LEFT JOIN PETS 
ON ATENDIMENTO.idPet = PETS.idPet
LEFT JOIN RACA
ON PETS.idRaca = RACA.idRaca
LEFT JOIN TIPODEANIMAL
ON RACA.idTipoAnimal = TIPODEANIMAL.idTipoAnimal
LEFT JOIN DONOS
ON PETS.IdDono = DONOS.IdDono