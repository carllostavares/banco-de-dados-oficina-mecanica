
-- -----------------------------------------------------
-- Schema oficina_mecanica 
-- -----------------------------------------------------
CREATE SCHEMA oficina_mecanica DEFAULT CHARACTER SET utf8 ;

-- -----------------------------------------------------
-- Table tb_cliente`
-- -----------------------------------------------------
CREATE TABLE  tb_cliente (
  id_cpf_cliente VARCHAR(14) NOT NULL,
  nome VARCHAR(200) NOT NULL,
  
  PRIMARY KEY (id_cpf_cliente)
  );

-- -----------------------------------------------------
-- Table tb_equipe_mecanico`
-- -----------------------------------------------------
CREATE TABLE tb_equipe_mecanico(
  id_equipe_mecanico INT NOT NULL,
  PRIMARY KEY (id_equipe_mecanico)
  );

-- -----------------------------------------------------
-- Table tb_mecanico`
-- -----------------------------------------------------
CREATE TABLE tb_mecanico (
  id_cpf_mecanico VARCHAR(14) NOT NULL,
  nome VARCHAR(200) NOT NULL,
  especialidade VARCHAR(45) NOT NULL,
  id_equipe_mecanico INT NOT NULL,
  
  PRIMARY KEY (id_cpf_mecanico),
  CONSTRAINT fk_equipe_mecanico
  
    FOREIGN KEY (id_equipe_mecanico)
    REFERENCES tb_equipe_mecanico (id_equipe_mecanico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    );
    
/*SELECT tb_mecanico.nome, tb_telefone.id_telefone FROM tb_mecanico 
LEFT JOIN tb_telefone ON tb_mecanico.id_cpf_mecanico = tb_telefone.id_cpf_mecanico 
where tb_telefone.id_telefone IS NULL;*/

-- -----------------------------------------------------
-- Table tb_telefone
-- -----------------------------------------------------

CREATE TABLE  tb_telefone (
  id_telefone VARCHAR(11) NOT NULL,
  id_cpf_cliente VARCHAR(14)  NULL,
  id_cpf_mecanico VARCHAR(14)  NULL,
  
  PRIMARY KEY (id_telefone),
  CONSTRAINT fk_tb_telefone
  
    FOREIGN KEY (id_cpf_cliente)
    REFERENCES tb_cliente ( id_cpf_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
    FOREIGN KEY (id_cpf_mecanico)
    REFERENCES tb_mecanico (id_cpf_mecanico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    );

-- -----------------------------------------------------
-- Table tb_endereco
-- -----------------------------------------------------

CREATE TABLE  tb_endereco (
  UF VARCHAR(2) NOT NULL,
  logradouro VARCHAR(200) NOT NULL,
  numero INT NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  bairro VARCHAR(100) NOT NULL,
  id_cpf_mecanico VARCHAR(14)  NULL,
  id_cpf_cliente VARCHAR(14)  NULL,
 
 
  CONSTRAINT fk_tb_mecanico
    FOREIGN KEY (id_cpf_mecanico)
    REFERENCES tb_mecanico (id_cpf_mecanico)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
  CONSTRAINT fk_tb_cliente
    FOREIGN KEY ( id_cpf_cliente)
    REFERENCES tb_cliente (id_cpf_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    );

-- -----------------------------------------------------
-- Table tb_veiculo
-- -----------------------------------------------------
CREATE TABLE  tb_veiculo (
  id_chassi VARCHAR(17) NOT NULL,
  descrição VARCHAR(45) NOT NULL,
  placa VARCHAR(7) NOT NULL,
  
  PRIMARY KEY (id_chassi)
  );
 
-- -----------------------------------------------------
-- Table tb_os
-- -----------------------------------------------------
CREATE TABLE tb_os(
  id_os INT NOT NULL AUTO_INCREMENT,
  valor_total DECIMAL(7,2)ZEROFILL NOT NULL ,
  data_emissao DATE NOT NULL,
  data_conclusao DATE NOT NULL,
  id_cpf_cliente VARCHAR(14) NOT NULL,
  id_equipe_mecanico INT NOT NULL,
  id_chassi VARCHAR(45) NULL,
  
 
  PRIMARY KEY (id_os),
  CONSTRAINT fk_id_os
 
    FOREIGN KEY (id_cpf_cliente)
    REFERENCES tb_cliente (id_cpf_cliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT fk_tb_equipe_mecanico
    FOREIGN KEY (id_equipe_mecanico)
    REFERENCES tb_equipe_mecanico (id_equipe_mecanico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT fk_tb_veiculo
    FOREIGN KEY (id_chassi)
    REFERENCES tb_veiculo (id_chassi)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION 
    );

-- -----------------------------------------------------
-- Table tb_servico
-- -----------------------------------------------------
CREATE TABLE  tb_servico(
  id_servico INT NOT NULL,
  valor_maodeobra DECIMAL(7,2)ZEROFILL NOT NULL,
  tempo_estimado TIME NOT NULL,
  nome_servico VARCHAR(100) NOT NULL,
  
  PRIMARY KEY (id_servico));

-- -----------------------------------------------------
-- Table tb_itensServico
-- -----------------------------------------------------
CREATE TABLE  tb_itens_servico (
  quantidadeServico INT NOT NULL,
  id_servico INT NOT NULL,
  id_os INT NOT NULL,
 
  PRIMARY KEY (id_os,id_servico),
  CONSTRAINT fk_tb_itens_servico
  
    FOREIGN KEY (id_servico)
    REFERENCES tb_servico (id_servico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT fk_tb_os
    FOREIGN KEY (id_os)
    REFERENCES tb_os (id_os)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table tb_estoque
-- -----------------------------------------------------

CREATE TABLE  tb_estoque (
  id_peca VARCHAR(45) NOT NULL,
  nome_peca VARCHAR(45) NOT NULL,
  valor_peca DECIMAL(7,2)ZEROFILL NOT NULL,
  
  PRIMARY KEY (id_peca))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table tb_itnspecas
-- -----------------------------------------------------

CREATE TABLE  tb_itnspecas (
  quantidadePecas INT NOT NULL,
  id_peca VARCHAR(45) NOT NULL,
  id_os INT NOT NULL,
  
  PRIMARY KEY (id_os, id_peca),
  
    FOREIGN KEY (id_peca)
    REFERENCES tb_estoque(id_peca)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    

    FOREIGN KEY (id_os)
    REFERENCES tb_os(id_os)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table tb_formapagamento
-- -----------------------------------------------------
CREATE TABLE  tb_formapagamento (
  id_pagamento VARCHAR(45) NOT NULL,
  tipo_pagamento VARCHAR(45) NOT NULL,
  valor_pagamento DECIMAL(7,2)ZEROFILL NOT NULL,
  id_os INT NOT NULL,
   
  PRIMARY KEY (id_pagamento, id_os),
  
  CONSTRAINT fk_tb_formapagamento_tb_os
    FOREIGN KEY (id_os)
    REFERENCES tb_os (id_os)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
