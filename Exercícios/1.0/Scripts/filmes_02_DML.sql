USE CATALOGO;
GO

INSERT INTO GENERO (nomeGenero)
VALUES ('Ação'), ('Romance');
GO

INSERT INTO FILME (nomeFilme, idGenero)
VALUES
('Rambo', '1'),
('Vingadores', '1'),
('Ghost', '2'),
('Diário de uma Paixão', '2');
GO