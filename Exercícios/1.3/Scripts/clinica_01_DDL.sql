create database CLINICAS;
GO

USE CLINICAS;
GO

CREATE TABLE DONOS(
   idDono smallint PRIMARY KEY IDENTITY(1,1),
   nomeDono varchar(75),
);
go

CREATE TABLE TIPODEANIMAL(
   idTipoAnimal smallint PRIMARY KEY IDENTITY(1,1),
   nomeAnimal varchar(75),
);
go

CREATE TABLE RACA(
   idRaca smallint PRIMARY KEY IDENTITY(1,1),
   idTipoAnimal smallint FOREIGN KEY REFERENCES TIPODEANIMAL(idTipoAnimal),
   nomeRaca varchar(50),
);
go

CREATE TABLE PETS(
   idPet smallint PRIMARY KEY IDENTITY(1,1),
   idDono smallint FOREIGN KEY REFERENCES DONOS(idDono),
   idRaca smallint FOREIGN KEY REFERENCES RACA(idRaca),
   nomePet varchar(75),
);
go

CREATE TABLE CLINICA(
   idClinica smallint PRIMARY KEY IDENTITY(1,1),
   endereco varchar(50),
   nomeClinica varchar(75),
);
go

CREATE TABLE VETERINARIO(
   idVeterinario smallint PRIMARY KEY IDENTITY(1,1),
   idClinica smallint FOREIGN KEY REFERENCES CLINICA(idClinica),
   nomeVeterinario varchar(75),
);
go

CREATE TABLE ATENDIMENTO(
   idAtendimento smallint PRIMARY KEY IDENTITY(1,1),
   idVeterinario smallint FOREIGN KEY REFERENCES VETERINARIO(idVeterinario),
   idPet smallint FOREIGN KEY REFERENCES PETS(idPet),
   senhaAtendimento char(9),
);
go