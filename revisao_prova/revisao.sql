CREATE TABLE cliente(
    codcli INTEGER PRIMARY KEY,
    nomecli VARCHAR(30) NOT NULL,
    sexo CHAR(1),
    dtnasc DATE,
    cidade VARCHAR(30),
    uf VARCHAR(5),
    cpf VARCHAR(11)
);

CREATE TABLE dependente(
coddep INTEGER PRIMARY KEY,
nomedep VARCHAR(30),
sexo CHAR(1),
dtnasc DATE,
cidade VARCHAR(30),
uf VARCHAR(3),
cpf VARCHAR(11)
);

CREATE TABLE dependencia(
graudependencia VARCHAR(2),
codcli INTEGER,
coddep INTEGER,
PRIMARY KEY(codcli, coddep),
FOREIGN KEY(codcli) REFERENCES cliente (codcli), 
FOREIGN KEY(coddep) REFERENCES dependente (coddep), 
);

--ex01
SELECT nomecliente, genero
FROM cliente;

--ex02
SELECT nomeproduto, preco
FROM produto;

--ex03
SELECT idcompra, dtcompra
FROM compras;

--ex04
SELECT nomecliente, estadocivil, cidade
FROM cliente;

--ex05
SELECT * FROM cliente;

--ex06
SELECT nomecliente, estadocivil
FROM cliente
ORDER BY nomecliente ASC;

--ex07
SELECT nomeproduto, preco
FROM produto
ORDER BY preco DESC
LIMIT 3;

--ex08
SELECT nomecliente, cidade, estado
FROM cliente
ORDER BY cidade,estado;

--ex09
SELECT DISTINCT cidade
FROM cliente
ORDER BY cidade ;

--ex10
SELECT DISTINCT dtcompra
FROM compras
ORDER BY dtcompra;

--ex11
SELECT nomeproduto
FROM produto
WHERE preco > 5;

--ex12
SELECT nomecliente, estadocivil
FROM cliente
WHERE genero = 'f' OR genero = 'F';

--ex13
SELECT nomecliente, cidade
FROM cliente
WHERE estado = 'Rio de Janeiro';

--ex14
SELECT nomecliente
FROM cliente
WHERE dtnascimento < '2004-01-01';

--ex15
SELECT DISTINCT idcliente
FROM compras
WHERE dtcompra BETWEEN '2021-01-01' AND '2021-12-31';

--ex16
SELECT DISTINCT idcliente
FROM compras
WHERE EXTRACT(YEAR FROM)


