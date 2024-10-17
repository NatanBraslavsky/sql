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