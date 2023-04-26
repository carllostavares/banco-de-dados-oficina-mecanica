

/*------------------------------------------------------------------*/

-- Perguntas : 
-- Consultas/ Perguntas/ Relatórios (DQL)

-- Quais são as OS que têm carros cadastrados e quais os nomes dos clientes  e descrições desses carros ? 
SELECT tb_os.id_os "Número OS", tb_cliente.nome "Nome Cliente", tb_veiculo.descrição "Modelo Veículo" FROM tb_os, tb_cliente, tb_veiculo
 WHERE tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente AND tb_veiculo.id_chassi = tb_os.id_

-- Quais são as OS que têm carros cadastrados e quais os nomes dos clientes  e descrições desses carros, de forma ordenada pelo número da OS ?
SELECT tb_os.id_os "Número OS", tb_cliente.nome "Nome Cliente", tb_veiculo.descrição "Modelo Veículo" FROM tb_os, tb_cliente, tb_veiculo
WHERE tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente AND tb_veiculo.id_chassi = tb_os.id_chassi order by id_os;
 
-- Quais os valores e formas de pagamento de todas as OS de forma ordenada por número de OS ?
SELECT tb_os.id_os "Número OS", tb_formapagamento.tipo_pagamento  "Forma Pagamento", tb_formapagamento.valor_pagamento
 FROM tb_os, tb_formapagamento WHERE tb_os.id_os = tb_formapagamento.id_os ORDER BY tb_os.id_os;

-- Quais os valores e formas de pagamento de todas as OS de forma ordenada por número de OS entre "2023-02-17"  e  "2023-04-22" ?
SELECT tb_os.id_os "Número OS", tb_formapagamento.tipo_pagamento  "Forma Pagamento", tb_formapagamento.valor_pagamento "Valor do Pagamento" FROM tb_os, tb_formapagamento
WHERE tb_os.id_os = tb_formapagamento.id_os AND data_conclusao  BETWEEN  "2023-02-17" AND "2023-04-22";

-- Quais os números de telefones de todos os mecânicos ?
SELECT tb_mecanico.nome "Nome Mecânico", tb_telefone.id_telefone "Número de télefone"  
FROM  tb_telefone INNER JOIN tb_mecanico ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico;

-- Quais os mecanismos que não têm número de telefone ?
SELECT tb_mecanico.nome "Nome Mecânico", tb_telefone.id_telefone "Número de télefone" 
 FROM  tb_telefone RIGHT JOIN tb_mecanico ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico 
WHERE id_telefone IS NULL;

-- Quais as OS que não tem carros ?
SELECT 
tb_os.id_os "Número OS",
  tb_cliente.nome "Nome Cliente",
 CASE WHEN  tb_veiculo.descrição IS NULL THEN "SEM CARRO"
 ELSE tb_veiculo.descrição END "Descrição",
  tb_estoque.nome_peca "Nome Peça"
FROM
  tb_os
  INNER JOIN tb_cliente ON tb_os.id_cpf_cliente = tb_cliente.id_cpf_cliente
  INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
  INNER JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
  LEFT JOIN tb_veiculo ON tb_os.id_chassi = tb_veiculo.id_chassi
  WHERE  tb_veiculo.descrição IS NULL order by tb_os.id_os ;
  
-- Quais os endereços de todos os mecânicos ?
 SELECT tb_mecanico.nome "Nome Mecânico", CASE WHEN LENGTH(tb_endereco.logradouro) = 0 THEN "SEM RUA/AVENIDA" 
  ELSE tb_endereco.logradouro END "Logradouro"
  ,tb_endereco.numero "Número",tb_endereco.bairro "Bairro",
  tb_endereco.cidade "Cidade",tb_endereco.UF "UF" FROM tb_mecanico
  INNER JOIN tb_endereco ON tb_mecanico.id_cpf_mecanico = tb_endereco.id_cpf_mecanico;

-- Quais os mecânicos que não tem o nome da RUA/AV no endereço ?
SELECT tb_mecanico.nome "Nome Mecânico", CASE WHEN LENGTH(tb_endereco.logradouro) = 0 THEN "SEM RUA/AVENIDA" ELSE tb_endereco.logradouro END "Logradouro"
  ,tb_endereco.numero "Número",tb_endereco.bairro "Bairro",
  tb_endereco.cidade "Cidade",tb_endereco.UF "UF" FROM tb_mecanico
  INNER JOIN tb_endereco ON tb_mecanico.id_cpf_mecanico = tb_endereco.id_cpf_mecanico WHERE LENGTH(tb_endereco.logradouro) = 0 ;

-- Quais os mecânicos que possuem mais de um número de telefone ?
SELECT tb_mecanico.nome "Nome dos Mecânicos" , COUNT(tb_telefone.id_telefone) "Quantidade Telefone" 
  FROM tb_mecanico  
  INNER JOIN tb_telefone ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico
  GROUP BY tb_mecanico.id_cpf_mecanico HAVING COUNT(tb_telefone.id_telefone) > 1 ;

-- Quantas as OS a equipe 21 abriram ?
SELECT tb_equipe_mecanico.id_equipe_mecanico "Equipe Mecânico",tb_os.id_os "Número OS" , COUNT(tb_os.id_os) "Quantidade de OS" FROM tb_os
RIGHT JOIN tb_equipe_mecanico on tb_equipe_mecanico.id_equipe_mecanico = tb_os.id_equipe_mecanico
WHERE tb_equipe_mecanico.id_equipe_mecanico = 21 GROUP BY tb_os.id_os ;

-- Quais OS a equipe 23 abriram ?
SELECT tb_equipe_mecanico.id_equipe_mecanico "Equipe Mecânico",tb_os.id_os "Número OS"  FROM tb_os
RIGHT JOIN tb_equipe_mecanico on tb_equipe_mecanico.id_equipe_mecanico = tb_os.id_equipe_mecanico
WHERE tb_equipe_mecanico.id_equipe_mecanico = 23 GROUP BY tb_os.id_os ;

-- Qual OS teve o maior valor pago ? 
SELECT tb_cliente.nome "Nome Cliente" ,MAX(tb_os.valor_total) "Valor Pago" , tb_formapagamento.tipo_pagamento  "Tipo de Pagamneto" FROM tb_os
INNER JOIN tb_cliente ON tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente 
INNER JOIN tb_formapagamento ON tb_os.id_os = tb_formapagamento.id_os
WHERE valor_total = (SELECT MAX(valor_total) FROM tb_os) GROUP BY tb_os.id_cpf_cliente, tb_formapagamento.tipo_pagamento;


-- Qual a forma de pagamento mais usada nas OS ?
SELECT tb_formapagamento.tipo_pagamento "Forma de Pagamneto" , COUNT(tb_formapagamento.tipo_pagamento) "QTD 
Usada"
FROM tb_os
INNER JOIN tb_formapagamento ON tb_formapagamento.id_os =  tb_os.id_os
GROUP BY tb_formapagamento.tipo_pagamento ORDER BY tb_formapagamento.tipo_pagamento DESC LIMIT 1;

-- Quais clientes trouxeram mais de 1 carro ?
SELECT tb_cliente.nome "Nome Cliente", COUNT(tb_os.id_chassi) "Carros" FROM tb_os
INNER JOIN tb_veiculo ON tb_os.id_chassi = tb_veiculo.id_chassi
INNER JOIN tb_cliente ON tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente
GROUP BY tb_cliente.nome ORDER BY COUNT(tb_os.id_chassi)  DESC LIMIT 8 ;

-- Quais os 4 produtos com mais ocorrências nas OS ?
SELECT tb_estoque.nome_peca "Nome", count(tb_estoque.id_peca)"Ocorrências", 
SUM(tb_itnspecas.quantidadePecas) "Quantidade Vendida" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
INNER JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
GROUP BY tb_estoque.nome_peca ORDER BY SUM(tb_itnspecas.quantidadePecas) DESC LIMIT 5; 

-- Quais os 5  produtos que mais venderam ?
SELECT tb_estoque.nome_peca "Nome", count(tb_estoque.id_peca)"Ocorrências", 
SUM(tb_itnspecas.quantidadePecas) "Quantidade Vendida" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
INNER JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
GROUP BY tb_estoque.nome_peca ORDER BY SUM(tb_itnspecas.quantidadePecas) DESC LIMIT 5; 

-- Quais os 3  tipos de serviços mais usados ?
SELECT tb_servico.nome_servico "Nome Serviço", COUNT(tb_servico.id_servico)  "Ocorrência" FROM tb_os
INNER JOIN tb_itens_servico ON tb_itens_servico.id_os = tb_os.id_os
INNER JOIN tb_servico ON tb_itens_servico.id_servico = tb_servico.id_servico 
GROUP BY tb_servico.nome_servico ORDER BY COUNT(tb_servico.id_servico) DESC LIMIT 3

-- Quais as peças não vendidas ?

SELECT  tb_estoque.id_peca "Número da Peça", tb_estoque.nome_peca "Nome da peça" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
RIGHT JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
WHERE tb_os.id_os IS NULL;

-- Qual  o tempo estimado  de todos os serviços das OS que foram abertas  entre "2023-02-17"  e  "2023-03-22" ?
SELECT tb_os.id_os "Número OS", SEC_TO_TIME(SUM( TIME_TO_SEC(tb_servico.tempo_estimado))) "Tempo total estimado" FROM tb_os
INNER JOIN tb_itens_servico ON tb_os.id_os = tb_itens_servico.id_os 
INNER JOIN tb_servico ON  tb_servico.id_servico = tb_itens_servico.id_servico 
WHERE  data_conclusao  BETWEEN  "2023-02-17" AND "2023-03-22"
GROUP BY  tb_os.id_os  ORDER BY tb_os.id_os;


-- Scripts : Deletar ou Atualizar (DML)

-- Excluindo Tabelas 

DROP TABLE tb_cliente;
DROP TABLE tb_endereco;
DROP TABLE tb_equipe_mecanico;
DROP TABLE tb_estoque;
DROP TABLE tb_formapagamento;
DROP TABLE tb_itens_servico;
DROP TABLE tb_itnspecas;
DROP TABLE tb_mecanico;
DROP TABLE tb_os;
DROP TABLE tb_servico;
DROP TABLE tb_telefone;
DROP TABLE tb_veiculo;
	
-- Atualizando e Deletando

UPDATE tb_estoque SET valor_peca = '25' WHERE id_peca = '1001';
DELETE FROM tb_estoque WHERE id_peca = '1002';
UPDATE tb_estoque SET nome_peca = 'Filtro de AR BMW I8 ORIGINAL' WHERE id_peca = '1001';


UPDATE tb_servico SET valor_maodeobra = '35', nome_servico = 'Óleo troca' WHERE id_servico = '1';
DELETE FROM tb_servico WHERE id_servico = '10';            
UPDATE tb_servico SET valor_maodeobra = '11', nome_servico = 'Para-choque' WHERE id_servico = '11'; 
UPDATE tb_veiculo SET descrição = 'BWM I8', placa = 'NRSDS1'	WHERE id_chassi =  '0ED889HU65Q151545';
 DELETE FROM tb_veiculo WHERE id_chassi = '0RH887MK89D566667';     
UPDATE tb_servico SET valor_maodeobra = '175.90' WHERE id_servico = '10';
UPDATE tb_cliente SET nome = 'Nathália Sales' WHERE id_cpf_cliente = '014.128.358-00';
DELETE FROM tb_cliente WHERE id_cpf_cliente = '014.128.358-00';
UPDATE tb_endereco SET cidade = 'Rio de Janeiro' WHERE id_cpf_cliente = '070.154.874-57'; 
UPDATE tb_endereco SET cidade = 'Bahia'	WHERE id_cpf_cliente = '112.345.678-90';       
UPDATE tb_endereco SET cidade = 'São Paulo', numero = '553' WHERE id_cpf_cliente = '777.888.999-34';        
DELETE FROM tb_endereco WHERE  id_cpf_cliente = '070.154.874-57';
DELETE FROM tb_endereco	WHERE id_cpf_cliente = '777.888.999-34';
UPDATE tb_formapagamento SET tipo_pagamento = 'debito' WHERE id_pagamento = '1';
UPDATE tb_formapagamento SET tipo_pagamento = 'credito' WHERE id_pagamento = '2';
UPDATE tb_formapagamento SET tipo_pagamento = 'especie' WHERE id_pagamento = '3';
DELETE FROM tb_formapagamento WHERE id_pagamento = '3';

-- Scripts : Alterar as Estruturas das Tabelas (DDL)
 
ALTER TABLE tb_endereco ADD COLUMN pais VARCHAR(10);
ALTER TABLE tb_veiculo CHANGE COLUMN placa nathalia VARCHAR(15);
ALTER TABLE tb_servico MODIFY nome_servico VARCHAR(50);
ALTER TABLE tb_mecanicoDROP nome;
ALTER TABLE tb_estoque CHANGE COLUMN valor_peca valor_de_cada_peca INT;

----------------------------------
-- Scripts : Criando Views (DDL)
-----------------------------------
1 -- Quais os clientes que possuem carros?

CREATE VIEW vw_clientesveiculos AS
SELECT tb_cliente.id_cpf_cliente, tb_cliente.nome, tb_os.id_os, tb_veiculo.placa, tb_veiculo.descrição
FROM tb_os
INNER JOIN tb_cliente ON tb_os.id_cpf_cliente = tb_cliente.id_cpf_cliente
INNER JOIN tb_veiculo ON tb_os.id_chassi = tb_veiculo.id_chassi
WHERE tb_veiculo.placa is not null;


2 -- Qual é o valor total de faturamento da oficina mecânica nos últimos dois meses?

CREATE VIEW vw_faturamento AS
SELECT SUM(total_faturamento) AS 'Total do Fat. de Fev até Abril'
FROM (
    SELECT os.data_conclusao, SUM(tb_formapagamento.valor_pagamento) AS total_faturamento
    FROM tb_os AS os
    INNER JOIN tb_formapagamento ON tb_formapagamento.id_pagamento = os.id_os
    WHERE os.data_conclusao BETWEEN '2023/02/23' AND '2023/04/23'
    GROUP BY os.data_conclusao
)as subquery;

3 -- Quais as 5 peças tiveram maior saída e participações em vendas?

CREATE VIEW vw_pecasmaisvendidas AS
SELECT e.nome_peca 'Descrição do Produto', 
COUNT(e.id_peca) 'Qnt Participação em OS', 
sum(tb_itnspecas.quantidadepecas) 'Qntd Vendidas'
FROM tb_estoque AS e
INNER JOIN tb_itnspecas ON e.id_peca = tb_itnspecas.id_peca
GROUP BY e.id_peca
ORDER BY COUNT(e.id_peca) DESC
LIMIT 5;

4 -- Quais são os 3 serviços que demora menos a ser executado?

CREATE VIEW vw_tempomedio AS
SELECT nome_servico, min(tempo_estimado)
FROM tb_servico
GROUP BY nome_servico
order by min(tempo_estimado) asc
LIMIT 3;


5 -- Quais são os  5 serviços mais baratos?

CREATE VIEW vw_servicobarato AS
SELECT nome_servico, concat("R$ ", min(valor_maodeobra + 00)) 'Valor da Mão da Obra'
FROM tb_servico
GROUP BY nome_servico
order by min(valor_maodeobra) asc
LIMIT 5;

6 -- Qual o bairro que fica mais concentrado na maioria dos meus clientes?

CREATE VIEW vw_bairroclientes AS
select bairro, count(bairro)
from tb_endereco
GROUP BY bairro;

7 -- Qual é o histórico de serviços realizados no veículo com placa BRT0T12?

CREATE VIEW vw_historicoplaca as
SELECT * 
FROM tb_veiculo
WHERE placa = 'BRT0T12';

8 -- Quais são os clientes que mais frequentam a oficina mecânica e quais são os serviços mais comuns que eles solicitam?

-- Script para os serviços mais solicitado

CREATE VIEW vw_maissolicitado AS
SELECT tb_servico.nome_servico "Serviço mais usado" , COUNT(tb_itens_servico.id_servico) "QTD Serviço
Usada" FROM tb_os
JOIN tb_itens_servico ON tb_itens_servico.id_os = tb_os.id_os
JOIN tb_servico ON tb_servico.id_servico = tb_itens_servico.id_servico 
JOIN tb_cliente ON tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente
GROUP BY tb_servico.id_servico
HAVING COUNT(tb_os.id_cpf_cliente) >1;

-- Script para os clientes mais frequentes

CREATE VIEW vw_maisfrequentam AS
SELECT tb_cliente.nome, tb_cliente.id_cpf_cliente, tb_os.id_os 'OS' , s.nome_servico
FROM tb_os
JOIN tb_cliente ON tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente
JOIN tb_itens_servico i ON tb_os.id_os = i.id_os
JOIN tb_servico s ON i.id_servico = s.id_servico
GROUP BY tb_os.id_cpf_cliente,s.nome_servico,tb_os.id_os 
ORDER BY tb_os.id_os desc;

9 -- Qual é o valor médio das notas fiscais emitidas pela oficina mecânica nos últimos três meses?

CREATE VIEW vw_medianf as
SELECT concat('R$ ', sum(total)) 'Média das NF`s (Jan à Abril)'
from (SELECT os.id_os, os.data_conclusao, avg(os.valor_total) as total
FROM tb_os as os
WHERE os.data_conclusao BETWEEN '2023/01/12' and '2023/04/22'
GROUP BY os.id_os)
as subquery;

10 -- Todos os clientes que não são do Recife?

CREATE VIEW vw_clientesrecife AS
SELECT c.nome, e.cidade
FROM tb_endereco as e
INNER JOIN tb_cliente as c ON e.id_cpf_cliente = c.id_cpf_cliente
WHERE e.cidade <> 'Recife';

-----------------------------------------
-- Scripts : Destruindo Views (DDL)
-----------------------------------------
DROP VIEW vw_clientesveiculos;
DROP VIEW vw_faturamento;
DROP VIEW vw_pecasmaisvendidas;
DROP VIEW vw_tempomedio;
DROP VIEW vw_servicobarato;
DROP VIEW vw_historicoplaca;
DROP VIEW vw_maissolicitad;
DROP VIEW vw_maisfrequentam;
DROP VIEW vw_medianf;
DROP VIEW vw_clientesrecife;


