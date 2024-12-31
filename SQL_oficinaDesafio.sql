--DQL-0ficina
/*Descrição do Desafio
Para este cenário você irá utilizar seu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER,
para criar o esquema lógico para o contexto de uma oficina. Neste desafio, você definirá todas as etapas. Desde o esquema
até a implementação do banco de dados. Sendo assim, neste projeto você será o protagonista. Tenha os mesmos cuidados, 
apontados no desafio anterior, ao modelar o esquema utilizando o modelo relacional.

Após a criação do esquema lógico, realize a criação do Script SQL para criação do esquema do banco de dados.
Posteriormente, realize a persistência de dados para realização de testes. Especifique ainda queries mais complexas
do que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

Recuperações simples com SELECT Statement;
Filtros com WHERE Statement;
Crie expressões para gerar atributos derivados;
Defina ordenações dos dados com ORDER BY;
Condições de filtros aos grupos – HAVING Statement;
Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;

Diretrizes
Não há um mínimo de queries a serem realizadas;
Os tópicos supracitados devem estar presentes nas queries;
Elabore perguntas que podem ser respondidas pelas consultas
As cláusulas podem estar presentes em mais de uma query
*/

select nome, descricao as tipo_serviço, modelo
from mecanico, servico, veiculo
where modelo = 'Gol';
go
select *
from peca;
go
select distinct id_peca, estatus
from ordem_servico;
go
select id_peca, estatus
from ordem_servico
order by estatus;
go
select id_peca, ABS(valor_unit) as absValorUnit
from peca 
where ABS(valor_unit) > 15;
go
select sum(qtd)
from peca;
go
select *
from VEICULO;
go
SELECT *
FROM cliente
INNER JOIN ordem_servico ON cliente.id_cliente = ordem_servico.id_os
INNER JOIN mecanico ON ordem_servico.id_mecanico = mecanico.id_mecanico;
select * from veiculo;
go
SELECT marca, modelo FROM veiculo
WHERE modelo = 'Onix' or marca = 'Fiat';--retorna 2
go
SELECT marca, modelo FROM veiculo
WHERE modelo = 'Onix' and marca = 'Fiat';--retorna 0
go
SELECT marca FROM veiculo
WHERE modelo = 'Onix' or marca = 'Fiat';
go
SELECT marca FROM veiculo
WHERE marca IN ('Fiat', 'Chevrolet');
go

select * from PECA;
go
SELECT descricao, valor_unit FROM peca
WHERE valor_unit BETWEEN 20 AND 60
ORDER BY valor_unit DESC;
go

-- MULTIPLICACAO
SELECT *,  VALOR_UNIT * QTD AS valor_total
FROM PECA;
go

SELECT 
    c.nome,
    os.valor_total,
    p.valor_unit,
    s.preco_servico,
	s1.qtd_servico
FROM 
    CLIENTE c
INNER JOIN 
    ORDEM_SERVICO os ON c.ID_CLIENTE = os.ID_OS 
INNER JOIN 
    peca p ON os.ID_os = p.id_peca
INNER JOIN 
    servico s ON p.ID_peca = s.id_servico
INNER JOIN 
    servico s1 ON p.ID_peca = s.id_servico
GROUP BY 
    c.nome, os.valor_total, p.valor_unit, s.preco_servico, s1.qtd_servico
HAVING 
    SUM(os.valor_total) > 10;

go
select *
from cliente, ORDEM_SERVICO, PECA, SERVICO;
go
--216 linhas - produto cartesiano -(multiplica-se oo numero de linhas em cada tabela)
select *
from VEICULO;
go
SELECT *
FROM cliente
INNER JOIN ordem_servico ON cliente.id_cliente = ordem_servico.id_os
INNER JOIN mecanico ON ordem_servico.id_mecanico = mecanico.id_mecanico;
select * from veiculo;
go

SELECT descricao, valor_unit FROM peca
  WHERE valor_unit BETWEEN 20 AND 40

 go
  -- qual servico cada cliente fez?
  SELECT 
    c.nome AS Nome_Cliente, 
    s.descricao AS Servico_Executado
FROM 
    CLIENTE c
JOIN 
    VEICULO v ON c.id_cliente = v.id_cliente
JOIN 
    ORDEM_SERVICO os ON v.id_veiculo = os.id_veiculo
JOIN 
    SERVICO s ON os.id_servico = s.id_servico;



