/*
Nome:
Anthony Muraro
Calebe Barros Ramalho Da Silva
*/

CREATE DATABASE bd_infonet;

USE bd_infonet;

CREATE TABLE funcionario (
    idFuncionario INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    setor VARCHAR(80) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

INSERT INTO funcionario (nome, email, cidade, estado, setor, salario)
VALUES
('Ana Souza', 'ana@infonet.com', 'Sao Paulo', 'SP', 'TI', 5200.00),
('Carlos Lima', 'carlos@infonet.com', 'Rio de Janeiro', 'RJ', 'RH', 3800.00),
('Fernanda Costa', 'fernanda@infonet.com', 'Campinas', 'SP', 'Financeiro', 4500.00),
('Roberto Alves', 'roberto@infonet.com', 'Belo Horizonte', 'MG', 'TI', 6100.00),
('Juliana Matos', 'juliana@infonet.com', 'Curitiba', 'PR', 'Comercial', 2900.00),
('Marcos Pereira', 'marcos@infonet.com', 'Sao Paulo', 'SP', 'RH', 3200.00),
('Patricia Nunes', 'patricia@infonet.com', 'Porto Alegre', 'RS', 'Financeiro', 4100.00);

UPDATE funcionario
SET salario = 7000.00
WHERE idFuncionario = 1;
GO

UPDATE funcionario
SET setor = 'Gestao de Pessoas'
WHERE setor = 'RH';

UPDATE funcionario
SET cidade = 'Florianopolis',
    estado = 'SC'
WHERE idFuncionario = 7;

DELETE FROM funcionario
WHERE idFuncionario = 2;

DELETE FROM funcionario
WHERE estado = 'RS';

SELECT nome, email, salario
FROM funcionario
WHERE setor = 'TI';

SELECT nome, setor, salario
FROM funcionario
WHERE salario < 4000.00;

SELECT nome, cidade, setor
FROM funcionario
WHERE setor <> 'Financeiro';

SELECT * FROM funcionario;

ALTER TABLE funcionario
ADD dt_nasc DATE,
    DATA_ADMISSAO DATE;

UPDATE funcionario
SET dt_nasc = '15-04-2000',
    DATA_ADMISSAO = '10-02-2022'
WHERE idFuncionario = 1;

UPDATE funcionario
SET dt_nasc = '20-08-2007',
    DATA_ADMISSAO = '15-03-2023'
WHERE idFuncionario = 3;

UPDATE funcionario
SET dt_nasc = '30-04-2008',
    DATA_ADMISSAO = '20-01-2024'
WHERE idFuncionario = 4;

UPDATE funcionario
SET dt_nasc = '05-11-2004',
    DATA_ADMISSAO = '10-06-2021'
WHERE idFuncionario = 5;

UPDATE funcionario
SET dt_nasc = '30-05-2000',
    DATA_ADMISSAO = '15-08-2020'
WHERE idFuncionario = 6;

SELECT nome, DAY(dt_nasc) AS dia, MONTH(dt_nasc) AS mes, YEAR(dt_nasc) AS ano
FROM funcionario;

SELECT DISTINCT DATENAME(MONTH, dt_nasc) AS mes
FROM funcionario
ORDER BY MONTH(dt_nasc);

SELECT idFuncionario, nome
FROM funcionario
WHERE YEAR(dt_nasc) = 2007;

SELECT nome, DAY(dt_nasc) AS dia
FROM funcionario
WHERE MONTH(dt_nasc) = 4
AND YEAR(dt_nasc) = 2008;

SELECT nome, DATEADD(MONTH, 2, dt_nasc) AS dt_nasc
FROM funcionario;

SELECT nome, DATEDIFF(YEAR, dt_nasc, GETDATE()) AS idade
FROM funcionario;

SELECT idFuncionario, nome, YEAR(dt_nasc) AS ano_nascimento
FROM funcionario
WHERE YEAR(dt_nasc) = 2000
AND MONTH(dt_nasc) BETWEEN 3 AND 5;

SELECT nome, YEAR(dt_nasc) AS ano_nascimento
FROM funcionario
WHERE estado = 'SP';

SELECT nome, dt_nasc
FROM funcionario
WHERE YEAR(dt_nasc) < 2005;

SELECT DISTINCT cidade, estado
FROM funcionario
WHERE YEAR(dt_nasc) > 2002;

SELECT *
FROM funcionario
WHERE YEAR(dt_nasc) IN (2000, 2004);

SELECT nome
FROM funcionario
WHERE DAY(dt_nasc) = 30;
