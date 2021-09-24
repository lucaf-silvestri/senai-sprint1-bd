USE OPTUS;
GO

INSERT INTO OPTUS (enderecoOptus)
VALUES
('Rua da Roda n° 367'),
('Avenida Capone n° 684'),
('Rua Chocante n° 29');
GO

INSERT INTO PERMISSAO(tipoPermissao)
VALUES
('Administrador'),
('Comum');
GO

INSERT INTO ARTISTA (idOptus, nomeArtista)
VALUES
(2, 'José Musical'),
(3, 'David Violão'),
(1, 'Lucy Cantarolante');
GO

INSERT INTO ESTILO (nomeEstilo)
VALUES
('Rock'),
('Pop'),
('Soul');
GO

INSERT INTO ALBUM (idArtista, tituloAlbum, localizacao, quatidadeMinutos, seEstaAtivo)
VALUES
(2, 'Cabeça de Rádio', 'Seattle, Washington', '93', '1'),
(1, 'Armas e Rosas', 'São Paulo, SP', '67', '1'),
(3, 'Rainha', 'Roma, Roma', '54', '1');
GO

INSERT INTO LANCAMENTO (idAlbum, dataLancamento)
VALUES
(1, '21/04/2020'),
(3, '05/08/2018'),
(2, '23/01/2021');
GO

INSERT INTO ALBUMESTILO (idAlbum, idEstilo)
VALUES
(1, 1),
(1, 3),
(2, 3),
(3, 2);
GO

INSERT INTO USUARIO (idPermissao, nome, email, senha)
VALUES
(1,	'Carlos', 'carlos@', 'carlos123'),
(2,	'Rogério', 'rogerio@', 'rogerio123'),
(2,	'Eduardo', 'eduardo@', 'edu123');
GO

INSERT INTO PLATAFORMA (idLancamento, idUsuario, acessoPlataforma)
VALUES
(3,	1,	'Desktop'),
(2,	2,	'Desktop'),
(1,	3,	'Desktop');
GO

