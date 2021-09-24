USE CLINICAS;
GO

ALTER TABLE VETERINARIO ADD crmv varchar(50);
GO

ALTER TABLE CLINICA ADD razaoSocial varchar(100);
GO

ALTER TABLE ATENDIMENTO ADD descricaoConsulta varchar(250);
GO

ALTER TABLE ATENDIMENTO ADD dataConsulta date;
GO

INSERT INTO CLINICA (nomeClinica, endereco, razaoSocial)
VALUES
('Super Pets', 'R. Oswaldo Santos n� 23', 'Super Pets LTDA'),
('Pet Animal', 'R. Jo�o Caliente n� 40', 'Pet Animal LTDA'),
('Cl�nica Selvagem', 'R. Budega V�ia n� 289', 'Cl�nica Selvagem LTDA');
GO

INSERT INTO VETERINARIO (nomeVeterinario, idClinica, crmv)
VALUES 
('Cl�ber', 2, 'CRMV-SP'),
('Suzana', 3, 'CRMV-SP'), 
('C�zar', 1, 'CRMV-RJ');
GO

INSERT INTO DONOS (nomeDono)
VALUES ('Carlos'), ('Davi'), ('Gabriela');
GO

INSERT INTO TIPODEANIMAL (nomeAnimal) 
VALUES ('Gato'), ('Cachorro'), ('Hamster');
GO

INSERT INTO RACA (nomeRaca, idTipoAnimal) VALUES 
('Hamster Chin�s', 3),
('Pitbull', 2),
('Gato Persa', 1);
GO

INSERT INTO PETS (nomePet, idDono, idRaca) VALUES
('Doguinho', 2,	2),
('Gatinho', 3, 3),
('Rato Fofo', 1, 1);
GO

INSERT INTO ATENDIMENTO (senhaAtendimento, idVeterinario, idPet, descricaoConsulta, dataConsulta)
VALUES 
(100, 2, 3, 'Fazer a consulta do Rato Fofo', '01/10/2020'),
(200, 3, 1, 'Fazer a consulta do Doguinho', '02/11/2020'), 
(300, 1, 2, 'Fazer a consulta do Gatinho', '03/12/2021');
GO