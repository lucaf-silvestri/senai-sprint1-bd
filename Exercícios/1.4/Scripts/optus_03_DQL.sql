USE OPTUS;
GO

SELECT * FROM OPTUS;
GO

SELECT * FROM PERMISSAO;
GO

SELECT * FROM ARTISTA;
GO

SELECT * FROM ESTILO;
GO

SELECT * FROM ALBUM;
GO

SELECT * FROM LANCAMENTO;
GO

SELECT * FROM ALBUMESTILO;
GO

SELECT * FROM USUARIO;
GO

SELECT * FROM PLATAFORMA;
GO

-- Listar todos os usuários administradores, sem exibir suas senhas:
SELECT idUsuario as 'ID do Usuário', idPermissao as 'ID da Permissão', nome as 'Nome', email as 'Email' FROM USUARIO
WHERE idPermissao = 1;
GO

-- Listar todos os álbuns lançados após o um determinado ano de lançamento (2019):
SELECT tituloAlbum as 'Título', dataLancamento as 'Data de Lançamento' FROM LANCAMENTO
LEFT JOIN ALBUM
ON ALBUM.idAlbum = LANCAMENTO.idAlbum
WHERE dataLancamento > '31/12/2019'
GO

-- Listar os dados de um usuário através do e-mail e senha:
SELECT nome as Nome, email as Email, tipoPermissao as Permissão FROM USUARIO
LEFT JOIN PERMISSAO
ON PERMISSAO.idPermissao = USUARIO.idPermissao
WHERE email LIKE 'rogerio@' AND senha LIKE 'rogerio123'

-- Listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum:
SELECT tituloAlbum as 'Título do Album', nomeArtista as 'Nome do Artista', nomeEstilo as Estilo FROM ALBUMESTILO
LEFT JOIN ESTILO
ON ESTILO.idEstilo = ALBUMESTILO.idEstilo
LEFT JOIN ALBUM
ON ALBUM.idAlbum = ALBUMESTILO.idAlbum
LEFT JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista
WHERE seEstaAtivo = 1;
GO

