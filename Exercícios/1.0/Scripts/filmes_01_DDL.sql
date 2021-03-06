CREATE DATABASE CATALOGO;
GO

USE CATALOGO;
GO 

CREATE TABLE GENERO (
    idGenero TINYINT  PRIMARY KEY IDENTITY(1,1),
	nomeGenero VARCHAR(30) NOT NULL
);
GO

CREATE TABLE FILME (
   idFilme SMALLINT PRIMARY KEY IDENTITY(1,1),
   idGenero TINYINT FOREIGN KEY REFERENCES GENERO(idGenero) NOT NULL,
   nomeFilme VARCHAR(70) NOT NULL
);
GO