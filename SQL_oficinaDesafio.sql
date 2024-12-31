--DQL-0ficina
/*Descri��o do Desafio
Para este cen�rio voc� ir� utilizar seu esquema conceitual, criado no desafio do m�dulo de modelagem de BD com modelo ER,
para criar o esquema l�gico para o contexto de uma oficina. Neste desafio, voc� definir� todas as etapas. Desde o esquema
at� a implementa��o do banco de dados. Sendo assim, neste projeto voc� ser� o protagonista. Tenha os mesmos cuidados, 
apontados no desafio anterior, ao modelar o esquema utilizando o modelo relacional.

Ap�s a cria��o do esquema l�gico, realize a cria��o do Script SQL para cria��o do esquema do banco de dados.
Posteriormente, realize a persist�ncia de dados para realiza��o de testes. Especifique ainda queries mais complexas
do que apresentadas durante a explica��o do desafio. Sendo assim, crie queries SQL com as cl�usulas abaixo:

Recupera��es simples com SELECT Statement;
Filtros com WHERE Statement;
Crie express�es para gerar atributos derivados;
Defina ordena��es dos dados com ORDER BY;
Condi��es de filtros aos grupos � HAVING Statement;
Crie jun��es entre tabelas para fornecer uma perspectiva mais complexa dos dados;

Diretrizes
N�o h� um m�nimo de queries a serem realizadas;
Os t�picos supracitados devem estar presentes nas queries;
Elabore perguntas que podem ser respondidas pelas consultas
As cl�usulas podem estar presentes em mais de uma query
*/

select nome, descricao as tipo_servi�o, modelo
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



