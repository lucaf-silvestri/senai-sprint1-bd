CREATE DATABASE VEICULOS;
GO

USE VEICULOS;
GO

CREATE TABLE EMPRESA(
   idEmpresa smallint PRIMARY KEY IDENTITY(1,1),
   nomeEmpresa varchar(100),
);
go

CREATE TABLE MARCA(
   idMarca smallint PRIMARY KEY IDENTITY(1,1),
   nomeMarca varchar(100),
);
go

CREATE TABLE CLIENTE(
   idCliente smallint PRIMARY KEY IDENTITY(1,1),
   nomeCliente varchar(60),
);
go

CREATE TABLE MODELO(
   idModelo smallint PRIMARY KEY IDENTITY(1,1),
   idMarca smallint FOREIGN KEY REFERENCES MARCA(idMarca),
   nomeModelo varchar(30),
);
go

CREATE TABLE VEICULO(
   idVeiculo smallint PRIMARY KEY IDENTITY(1,1),
   idModelo smallint FOREIGN KEY REFERENCES MODELO(idModelo),
   idEmpresa smallint FOREIGN KEY REFERENCES EMPRESA(idEmpresa),
   anoVeiculo char(4),
);
go

CREATE TABLE ALUGUEL(
   idAluguel smallint PRIMARY KEY IDENTITY(1,1),
   idVeiculo smallint FOREIGN KEY REFERENCES VEICULO(idVeiculo),
   idCliente smallint FOREIGN KEY REFERENCES CLIENTE(idCliente),
   valorAluguel char(12),
   dataAluguel DATE,
);
go

CREATE TABLE PLACA(
   idPlaca smallint PRIMARY KEY IDENTITY(1,1),
   idVeiculo smallint FOREIGN KEY REFERENCES VEICULO(idVeiculo),
   conteudoPlaca char(8),
);
go

