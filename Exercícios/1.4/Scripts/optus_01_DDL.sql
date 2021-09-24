CREATE DATABASE OPTUS;
GO

USE OPTUS;
GO

CREATE TABLE OPTUS(
   idOptus smallint PRIMARY KEY IDENTITY(1,1),
   enderecoOptus varchar(75) UNIQUE NOT NULL,
);
go

CREATE TABLE PERMISSAO(
   idPermissao smallint PRIMARY KEY IDENTITY(1,1),
   tipoPermissao char(20) NOT NULL,
);
go

CREATE TABLE ARTISTA(
   idArtista smallint PRIMARY KEY IDENTITY(1,1),
   idOptus smallint FOREIGN KEY REFERENCES OPTUS(idOptus) NOT NULL,
   nomeArtista varchar(75) NOT NULL,
);
go

CREATE TABLE ESTILO(
   idEstilo smallint PRIMARY KEY IDENTITY(1,1),
   nomeEstilo char(30) NOT NULL,
);
go

CREATE TABLE ALBUM(
   idAlbum smallint PRIMARY KEY IDENTITY(1,1),
   idArtista smallint FOREIGN KEY REFERENCES ARTISTA(idArtista) UNIQUE NOT NULL,
   tituloAlbum varchar(500) NOT NULL,
   localizacao varchar(30),
   quatidadeMinutos char(10),
   seEstaAtivo char(1),
);
go

CREATE TABLE LANCAMENTO(
   idLancamento smallint PRIMARY KEY IDENTITY(1,1),
   idAlbum smallint FOREIGN KEY REFERENCES ALBUM(idAlbum) NOT NULL,
   dataLancamento date UNIQUE NOT NULL,
);
go

CREATE TABLE ALBUMESTILO(
   idAlbum smallint FOREIGN KEY REFERENCES ALBUM(idAlbum) NOT NULL,
   idEstilo smallint FOREIGN KEY REFERENCES ESTILO(idEstilo) NOT NULL,
);
go

CREATE TABLE USUARIO(
   idUsuario smallint PRIMARY KEY IDENTITY(1,1),
   idPermissao smallint FOREIGN KEY REFERENCES PERMISSAO(idPermissao) NOT NULL,
   nome varchar(75) NOT NULL,
   email varchar(50) NOT NULL,
   senha varchar(14) NOT NULL,
);
go

CREATE TABLE PLATAFORMA(
   idPlataforma smallint PRIMARY KEY IDENTITY(1,1),
   idLancamento smallint FOREIGN KEY REFERENCES LANCAMENTO(idLancamento),
   idUsuario smallint FOREIGN KEY REFERENCES USUARIO(idUsuario),
   acessoPlataforma char(30),
);
go