SELECT tb_os.id_os "Número OS", tb_cliente.nome "Nome Cliente", tb_veiculo.descrição "Modelo Veículo" FROM tb_os, tb_cliente, tb_veiculo
 WHERE tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente AND tb_veiculo.id_chassi = tb_os.id_chassi;
 
SELECT tb_os.id_os "Número OS", tb_cliente.nome "Nome Cliente", tb_veiculo.descrição "Modelo Veículo" FROM tb_os, tb_cliente, tb_veiculo
WHERE tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente AND tb_veiculo.id_chassi = tb_os.id_chassi order by id_os;
 
SELECT tb_os.id_os "Número OS", tb_formapagamento.tipo_pagamento  "Forma Pagamento", tb_formapagamento.valor_pagamento
 FROM tb_os, tb_formapagamento WHERE tb_os.id_os = tb_formapagamento.id_os ORDER BY tb_os.id_os;

SELECT tb_os.id_os "Número OS", tb_formapagamento.tipo_pagamento  "Forma Pagamento", tb_formapagamento.valor_pagamento "Valor do Pagamento" FROM tb_os, tb_formapagamento
WHERE tb_os.id_os = tb_formapagamento.id_os AND data_conclusao  BETWEEN  "2023-02-17" AND "2023-04-22";

SELECT tb_mecanico.nome "Nome Mecânico", tb_telefone.id_telefone "Número de télefone"  
FROM  tb_telefone INNER JOIN tb_mecanico ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico;

SELECT tb_mecanico.nome "Nome Mecânico", tb_telefone.id_telefone "Número de télefone" 
 FROM  tb_telefone RIGHT JOIN tb_mecanico ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico 
WHERE id_telefone IS NULL;

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
  
  
  SELECT tb_mecanico.nome "Nome Mecânico", CASE WHEN LENGTH(tb_endereco.logradouro) = 0 THEN "SEM RUA/AVENIDA" 
  ELSE tb_endereco.logradouro END "Logradouro"
  ,tb_endereco.numero "Número",tb_endereco.bairro "Bairro",
  tb_endereco.cidade "Cidade",tb_endereco.UF "UF" FROM tb_mecanico
  INNER JOIN tb_endereco ON tb_mecanico.id_cpf_mecanico = tb_endereco.id_cpf_mecanico;
  
	SELECT tb_mecanico.nome "Nome Mecânico", CASE WHEN LENGTH(tb_endereco.logradouro) = 0 THEN "SEM RUA/AVENIDA" ELSE tb_endereco.logradouro END "Logradouro"
  ,tb_endereco.numero "Número",tb_endereco.bairro "Bairro",
  tb_endereco.cidade "Cidade",tb_endereco.UF "UF" FROM tb_mecanico
  INNER JOIN tb_endereco ON tb_mecanico.id_cpf_mecanico = tb_endereco.id_cpf_mecanico WHERE LENGTH(tb_endereco.logradouro) = 0 ;
  
  SELECT tb_mecanico.nome "Nome dos Mecânicos" , COUNT(tb_telefone.id_telefone) "Quantidade Telefone" 
  FROM tb_mecanico  
  INNER JOIN tb_telefone ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico
  GROUP BY tb_mecanico.id_cpf_mecanico HAVING COUNT(tb_telefone.id_telefone) > 1 ;

SELECT tb_equipe_mecanico.id_equipe_mecanico "Equipe Mecânico",tb_os.id_os "Número OS" , COUNT(tb_os.id_os) "Quantidade de OS" FROM tb_os
RIGHT JOIN tb_equipe_mecanico on tb_equipe_mecanico.id_equipe_mecanico = tb_os.id_equipe_mecanico
WHERE tb_equipe_mecanico.id_equipe_mecanico = 21 GROUP BY tb_os.id_os ;

SELECT tb_equipe_mecanico.id_equipe_mecanico "Equipe Mecânico", COUNT(tb_os.id_os) "Quantidade de OS" FROM tb_os
RIGHT JOIN tb_equipe_mecanico on tb_equipe_mecanico.id_equipe_mecanico = tb_os.id_equipe_mecanico
WHERE tb_equipe_mecanico.id_equipe_mecanico = 21 ;

SELECT tb_equipe_mecanico.id_equipe_mecanico "Equipe Mecânico",tb_os.id_os "Número OS"  FROM tb_os
RIGHT JOIN tb_equipe_mecanico on tb_equipe_mecanico.id_equipe_mecanico = tb_os.id_equipe_mecanico
WHERE tb_equipe_mecanico.id_equipe_mecanico = 23 GROUP BY tb_os.id_os ;

SELECT tb_cliente.nome "Nome Cliente" ,MAX(tb_os.valor_total) "Valor Pago" ,
 tb_formapagamento.tipo_pagamento  "Tipo de Pagamneto" FROM tb_os
INNER JOIN tb_cliente ON tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente 
INNER JOIN tb_formapagamento ON tb_os.id_os = tb_formapagamento.id_os
WHERE valor_total = (SELECT MAX(valor_total) FROM tb_os)
GROUP BY tb_os.id_cpf_cliente, tb_formapagamento.tipo_pagamento;

SELECT tb_formapagamento.tipo_pagamento "Forma de Pagamneto" , COUNT(tb_formapagamento.tipo_pagamento) "QTD Usada"
FROM tb_os
INNER JOIN tb_formapagamento ON tb_formapagamento.id_os =  tb_os.id_os
GROUP BY tb_formapagamento.tipo_pagamento ORDER BY tb_formapagamento.tipo_pagamento DESC LIMIT 1;

SELECT tb_cliente.nome "Nome Cliente", COUNT(tb_os.id_chassi) "Carros" FROM tb_os
INNER JOIN tb_veiculo ON tb_os.id_chassi = tb_veiculo.id_chassi
INNER JOIN tb_cliente ON tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente
GROUP BY tb_cliente.nome ORDER BY COUNT(tb_os.id_chassi)  DESC LIMIT 8 ;


SELECT tb_estoque.nome_peca "Nome", count(tb_estoque.id_peca)"Ocorrências" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
INNER JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
GROUP BY tb_estoque.nome_peca  ORDER BY count(tb_estoque.id_peca) DESC LIMIT 4; 


SELECT tb_estoque.nome_peca "Nome", count(tb_estoque.id_peca)"Ocorrências", 
SUM(tb_itnspecas.quantidadePecas) "Quantidade Vendida" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
INNER JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
GROUP BY tb_estoque.nome_peca ORDER BY SUM(tb_itnspecas.quantidadePecas) DESC LIMIT 5; 


SELECT  tb_estoque.id_peca "Número da Peça", tb_estoque.nome_peca "Nome da peça" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
RIGHT JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
WHERE tb_os.id_os IS NULL;

SELECT  tb_estoque.id_peca "Número da Peça", tb_estoque.nome_peca "Nome da peça" FROM tb_os
INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
RIGHT JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
WHERE tb_os.id_os IS NULL;

SELECT tb_os.id_os "Número OS", SEC_TO_TIME(SUM( TIME_TO_SEC(tb_servico.tempo_estimado))) "Tempo total estimado" FROM tb_os
INNER JOIN tb_itens_servico ON tb_os.id_os = tb_itens_servico.id_os 
INNER JOIN tb_servico ON  tb_servico.id_servico = tb_itens_servico.id_servico 
WHERE  data_conclusao  BETWEEN  "2023-02-17" AND "2023-03-22"
GROUP BY  tb_os.id_os  ORDER BY tb_os.id_os;