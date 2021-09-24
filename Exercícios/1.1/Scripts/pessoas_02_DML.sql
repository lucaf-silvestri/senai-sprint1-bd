USE PESSOAS;
GO

INSERT INTO PESSOA (nomePessoa)
VALUES
('Carlos'),
('Jô'),
('Roberta');
GO

INSERT INTO CNH (idPessoa, descricao)
VALUES
('3', '1111'),
('1', '2222'),
('2', '3333');
GO

INSERT INTO TELEFONE (idPessoa, numeroTelefone)
VALUES
(1, '1111-1111'),
(3, '3333-3333'),
(2, '2222-2222');
GO

INSERT INTO EMAIL (idPessoa, enderecoEmail)
VALUES
(2, 'jo@'),
(1, 'carlos@'),
(3, 'roberta@');
GO