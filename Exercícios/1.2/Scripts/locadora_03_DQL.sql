USE VEICULOS;
GO

SELECT * FROM EMPRESA;
GO

SELECT * FROM VEICULO;
GO

SELECT * FROM MODELO;
GO

SELECT * FROM MARCA;
GO

SELECT * FROM ALUGUEL;
GO

SELECT * FROM CLIENTE;
GO

SELECT * FROM PLACA;
GO

--Listar todos os alugu�is mostrando as datas de in�cio e fim, o nome do cliente que alugou e nome do modelo do carro:

SELECT nomeCliente, dataRetirada, dataDevolucao, nomeModelo FROM ALUGUEL
LEFT JOIN VEICULO
ON VEICULO.idVeiculo = ALUGUEL.idVeiculo
INNER JOIN MODELO
ON MODELO.idModelo = VEICULO.idModelo
LEFT JOIN CLIENTE
ON CLIENTE.idCliente = ALUGUEL.idCliente


--Listar os alugu�is de um determinado cliente mostrando seu nome, as datas de in�cio e fim e o nome do modelo do carro:

SELECT nomeCliente, dataRetirada, dataDevolucao, nomeModelo FROM ALUGUEL
LEFT JOIN VEICULO
ON VEICULO.idVeiculo = ALUGUEL.idVeiculo
INNER JOIN MODELO
ON MODELO.idModelo = VEICULO.idModelo
LEFT JOIN CLIENTE
ON CLIENTE.idCliente = ALUGUEL.idCliente
WHERE nomeCliente = 'Odirlei'