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

-- Listar todos os usu�rios administradores, sem exibir suas senhas:
SELECT idUsuario as 'ID do Usu�rio', idPermissao as 'ID da Permiss�o', nome as 'Nome', email as 'Email' FROM USUARIO
WHERE idPermissao = 1;
GO

-- Listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento (2019):
SELECT tituloAlbum as 'T�tulo', dataLancamento as 'Data de Lan�amento' FROM LANCAMENTO
LEFT JOIN ALBUM
ON ALBUM.idAlbum = LANCAMENTO.idAlbum
WHERE dataLancamento > '31/12/2019'
GO

-- Listar os dados de um usu�rio atrav�s do e-mail e senha:
SELECT nome as Nome, email as Email, tipoPermissao as Permiss�o FROM USUARIO
LEFT JOIN PERMISSAO
ON PERMISSAO.idPermissao = USUARIO.idPermissao
WHERE email LIKE 'rogerio@' AND senha LIKE 'rogerio123'

-- Listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum:
SELECT tituloAlbum as 'T�tulo do Album', nomeArtista as 'Nome do Artista', nomeEstilo as Estilo FROM ALBUMESTILO
LEFT JOIN ESTILO
ON ESTILO.idEstilo = ALBUMESTILO.idEstilo
LEFT JOIN ALBUM
ON ALBUM.idAlbum = ALBUMESTILO.idAlbum
LEFT JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista
WHERE seEstaAtivo = 1;
GO

