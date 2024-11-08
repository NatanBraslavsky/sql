-- EX 1
SELECT nomecliente, genero FROM cliente; 

-- EX 2
SELECT nomeproduto, preco FROM produto; 

-- EX 3
SELECT idcompra, dtcompra FROM compras; 

-- EX 4
SELECT nomecliente, cidade, estadocivil FROM cliente; 

-- EX 5
SELECT * FROM cliente;

-- EX 6
SELECT nomecliente, estadocivil FROM cliente 
    ORDER BY nomecliente ASC;

-- EX 7
SELECT nomeproduto, preco FROM produto 
    ORDER BY preco DESC;

-- EX 8
SELECT nomecliente, cidade, estado FROM cliente 
    ORDER BY cidade, estado ASC;

-- EX 9
SELECT DISTINCT estado FROM cliente;

-- EX 10
SELECT DISTINCT dtcompra FROM compras; 

-- EX 11 
SELECT nomeproduto FROM produto
    WHERE preco > 5;

-- EX 12
SELECT nomecliente, estadocivil FROM cliente
    WHERE genero = 'F';

-- EX 13
SELECT nomecliente, cidade FROM cliente
    WHERE estado = 'Rio de Janeiro';

-- EX 14 
SELECT nomecliente, dtnascimento FROM cliente
    WHERE dtnascimento < '2004-01-01';
-- EX 15
SELECT DISTINCT idcliente, dtcompra
    FROM compras
    WHERE dtcompra BETWEEN '2021-01-01' AND '2021-12-31';

-- EX 16
SELECT idcliente, dtcompra
    FROM compras 
    WHERE EXTRACT (YEAR FROM dtcompra) = 2020;

SELECT * FROM cliente;

-- EX 17
SELECT nomecliente FROM cliente
    WHERE nomecliente LIKE 'A%';

-- EX 18
SELECT nomecliente FROM cliente
    WHERE nomecliente LIKE '%ana%';

-- EX 19
SELECT nomecliente, estadocivil, estado FROM cliente
    WHERE estado = 'Rio de Janeiro' 
    OR estado = 'São Paulo' 
    OR estado = 'Espírito Santo' 
    OR estado = 'Minas Gerais'
    ORDER BY estado DESC;

-- EX 20
SELECT nomecliente, 
    CASE
        WHEN estadocivil = 'S' THEN 'Solteiro'
        WHEN estadocivil = 'C' THEN 'Casado'
        ELSE 'Viúvo'
    END
    FROM cliente
    ORDER BY estadocivil ASC;

-- EX 21
SELECT p.nomeproduto, m.nomemarca
    FROM produto AS p, marca AS m
    WHERE p.idmarca = m.idmarca;

-- EX 22
SELECT cliente.nomecliente, produto.nomeproduto
    FROM cliente, produto, compras
    WHERE cliente.idcliente = compras.idcliente AND compras.idproduto = produto.idproduto;

-- EX 23
SELECT cliente.nomecliente, cliente.estado, loja.nomeloja, loja.uf, compras.qtd
    FROM cliente, loja, compras
    WHERE cliente.idcliente = compras.idcliente AND compras.idloja = loja.idloja AND compras.qtd > 40
    ORDER BY compras.qtd DESC;

-- EX 24
select produto.nomeproduto, produto.preco, marca.nomemarca
    from produto join marca
    on produto.idmarca = marca.idmarca;
-- EX 25
select marca.nomemarca, compras.dtcompra, compras.qtd
    FROM compras JOIN produto ON compras.idproduto = produto.idproduto  JOIN marca 
    ON produto.idmarca = marca.idmarca;

-- EX 26 
select cliente.nomecliente, produto.nomeproduto,compras.qtd
    from cliente join compras on cliente.idcliente = compras.idcliente join produto
    on compras.idproduto = produto.idproduto;


INSERT INTO cliente
(idcliente,nomecliente,genero,estadocivil,dtnascimento,cidade,estado)
VALUES
(501, 'Alba', 'F', 'V', '1982/10/25', 'Duque de Caxias','Rio de Janeiro'),
(502, 'Solimar', 'F', 'V', '1972/11/25', 'Niterói','Rio de Janeiro'),
(503, 'Pablo', 'M', 'C', '1999/03/01', 'Nova Iguaçu','Rio de Janeiro'),
(504, 'Solange', 'F', 'S', '1979/06/05', 'Salvador', 'Bahia'),
(505, 'Mário', 'M', 'S', '1985/07/22', 'Bragança Paulista', 'São Paulo');


-- EX 27
select cliente.nomecliente, compras.idcompra
    from cliente left join compras
    on cliente.idcliente = compras.idcliente;


INSERT INTO marca (idmarca,nomemarca)
VALUES
(6,'Delícia de Prato'),
(7,'Pajé');


-- EX 28
select produto.nomeproduto, marca.nomemarca
    from produto right join marca
    on produto.idmarca = marca.idmarca;


-- EX 29
select cliente.nomecliente, marca.nomemarca
    from cliente FULL OUTER JOIN compras ON cliente.idcliente = compras.idcliente FULL OUTER JOIN produto 
    ON compras.idproduto = produto.idproduto Full outer join marca 
    on produto.idmarca = marca.idmarca;