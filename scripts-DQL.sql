SELECT tb_os.id_os "Número OS", tb_cliente.nome "Nome Cliente", tb_veiculo.descrição "Modelo Veículo" FROM tb_os, tb_cliente, tb_veiculo
 WHERE tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente AND tb_veiculo.id_chassi = tb_os.id_chassi;
 
SELECT tb_os.id_os "Número OS", tb_cliente.nome "Nome Cliente", tb_veiculo.descrição "Modelo Veículo" FROM tb_os, tb_cliente, tb_veiculo
WHERE tb_cliente.id_cpf_cliente = tb_os.id_cpf_cliente AND tb_veiculo.id_chassi = tb_os.id_chassi order by id_os;
 
SELECT tb_os.id_os "Número OS", tb_formapagamento.tipo_pagamento  "Forma Pagamento", tb_formapagamento.valor_pagamento FROM tb_os, tb_formapagamento
WHERE tb_os.id_os = tb_formapagamento.id_os ORDER BY tb_os.id_os;

SELECT tb_os.id_os "Número OS", tb_formapagamento.tipo_pagamento  "Forma Pagamento", tb_formapagamento.valor_pagamento "Valor do Pagamento" FROM tb_os, tb_formapagamento
WHERE tb_os.id_os = tb_formapagamento.id_os AND data_conclusao  BETWEEN  "2023-02-17" AND "2023-04-22";

SELECT tb_mecanico.nome "Nome Mecânico", tb_telefone.id_telefone "Número de télefone"  FROM  tb_telefone INNER JOIN tb_mecanico ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico;

SELECT tb_mecanico.nome "Nome Mecânico", tb_telefone.id_telefone "Número de télefone"  FROM  tb_telefone RIGHT JOIN tb_mecanico ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico 
WHERE id_telefone IS NULL;


SELECT 
  tb_os.id_os AS id_os,
  tb_cliente.nome AS nome_cliente,
  tb_veiculo.descrição AS descrição_veiculo,
  tb_estoque.nome_peca AS nome_peça
FROM
  tb_os
  INNER JOIN tb_cliente ON tb_os.id_cpf_cliente = tb_cliente.id_cpf_cliente
  INNER JOIN tb_itnspecas ON tb_os.id_os = tb_itnspecas.id_os
  INNER JOIN tb_estoque ON tb_itnspecas.id_peca = tb_estoque.id_peca
  LEFT JOIN tb_veiculo ON tb_os.id_chassi = tb_veiculo.id_chassi
  order by id_os;