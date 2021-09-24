USE VEICULOS;
GO

ALTER TABLE ALUGUEL DROP COLUMN dataAluguel;
GO

ALTER TABLE ALUGUEL ADD dataRetirada DATE, dataDevolucao DATE;
GO

INSERT INTO EMPRESA (nomeEmpresa)
VALUES ('Carlos Cars'), ('Franklin Tunings'), ('Carrinhos do Zé');
GO

INSERT INTO MARCA (nomeMarca)
VALUES ('Volkswagen'), ('Chevrolet'), ('Toyota');
GO

INSERT INTO MODELO (nomeModelo, idMarca)
VALUES ('Camaro',	2), ('Fusca',	1), ('Corola', 3);
GO

INSERT INTO VEICULO (anoVeiculo, idEmpresa, idModelo)
VALUES (1966, 3, 1), (2004,	2,	3), (1986,	2,	2);
GO

INSERT INTO CLIENTE (nomeCliente)
VALUES ('Cláudio'), ('Saulo'), ('Odirlei');
GO

INSERT INTO ALUGUEL (idVeiculo, idCliente, valorAluguel, dataRetirada, dataDevolucao) VALUES 
(2,	1,	169, '10/07/2021', '10/08/2021'), 
(2,	3,	210, '09/05/2021', '09/06/2021'), 
(3,	2,	199, '04/07/2021', '04/08/2021');
GO

INSERT INTO PLACA (idVeiculo, conteudoPlaca)
VALUES (1,	'FRK-2861'), (3, 'THM-6188'), (2, 'YZV-1561');
GO