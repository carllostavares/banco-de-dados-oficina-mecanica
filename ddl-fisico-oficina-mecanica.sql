-- MySQL Workbench Forward Engineering
SET FOREIGN_KEY_CHECKS = 0;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tb_cliente`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_cliente` (
  `id_cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_cpf`),
  UNIQUE INDEX `id_cpf_UNIQUE` (`id_cpf` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_equipe_mecanico`
-- -----------------------------------------------------
CREATE TABLE `mydb`.`tb_equipe_mecanico` (
  `id_equipe_mecanico` INT NOT NULL,
  PRIMARY KEY (`id_equipe_mecanico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_mecanico`
-- -----------------------------------------------------
CREATE TABLE `mydb`.`tb_mecanico` (
  `id_cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(200) NOT NULL,
  `especialidade` VARCHAR(45) NOT NULL,
  `tb_equipe_mecanico_id_equipe_mecanico` INT NOT NULL,
  PRIMARY KEY (`id_cpf`),
  UNIQUE INDEX `id_cpf_UNIQUE` (`id_cpf` ASC) VISIBLE,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE,
  INDEX `fk_tb_mecanico_tb_equipe_mecanico1_idx` (`tb_equipe_mecanico_id_equipe_mecanico` ASC) VISIBLE,
  CONSTRAINT `fk_tb_mecanico_tb_equipe_mecanico1`
    FOREIGN KEY (`tb_equipe_mecanico_id_equipe_mecanico`)
    REFERENCES `mydb`.`tb_equipe_mecanico` (`id_equipe_mecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_telefone`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_telefone` (
  `id_telefone` VARCHAR(15) NOT NULL,
  `numero` VARCHAR(15) NOT NULL,
  `tb_cliente_id_cpf` VARCHAR(11) NOT NULL,
  `tb_mecanico_id_cpf` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id_telefone`),
  UNIQUE INDEX `id_telefone_UNIQUE` (`id_telefone` ASC) VISIBLE,
  INDEX `fk_tb_telefone_tb_cliente1_idx` (`tb_cliente_id_cpf` ASC) VISIBLE,
  INDEX `fk_tb_telefone_tb_mecanico1_idx` (`tb_mecanico_id_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_tb_telefone_tb_cliente1`
    FOREIGN KEY (`tb_cliente_id_cpf`)
    REFERENCES `mydb`.`tb_cliente` (`id_cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_telefone_tb_mecanico1`
    FOREIGN KEY (`tb_mecanico_id_cpf`)
    REFERENCES `mydb`.`tb_mecanico` (`id_cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_endereco`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_endereco` (
  `UF` VARCHAR(2) NOT NULL,
  `logradouro` VARCHAR(200) NOT NULL,
  `numero` INT NOT NULL,
  `cidade` VARCHAR(100) NOT NULL,
  `bairro` VARCHAR(100) NOT NULL,
  `tb_mecanico_id_cpf` VARCHAR(11) NOT NULL,
  `tb_cliente_id_cpf` VARCHAR(11) NOT NULL,
  INDEX `fk_tb_endereco_tb_cliente1_idx` (`tb_cliente_id_cpf` ASC) VISIBLE,
  UNIQUE INDEX `tb_cliente_id_cpf_UNIQUE` (`tb_cliente_id_cpf` ASC) VISIBLE,
  UNIQUE INDEX `tb_mecanico_id_cpf_UNIQUE` (`tb_mecanico_id_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_tb_endereco_tb_mecanico1`
    FOREIGN KEY (`tb_mecanico_id_cpf`)
    REFERENCES `mydb`.`tb_mecanico` (`id_cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_tb_endereco_tb_cliente1`
    FOREIGN KEY (`tb_cliente_id_cpf`)
    REFERENCES `mydb`.`tb_cliente` (`id_cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_veiculo`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_veiculo` (
  `id_chassi` VARCHAR(45) NOT NULL,
  `descrição` VARCHAR(45) NOT NULL,
  `placa` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_chassi`),
  UNIQUE INDEX `id_chassi_UNIQUE` (`id_chassi` ASC) VISIBLE,
  UNIQUE INDEX `placa_UNIQUE` (`placa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_os`
-- -----------------------------------------------------
CREATE TABLE `mydb`.`tb_os` (
  `id_os` VARCHAR(45) NOT NULL,
  `valor_total` DECIMAL(7,2) NOT NULL,
  `data_emissao` VARCHAR(10) NOT NULL,
  `data_conclusao` VARCHAR(10) NOT NULL,
  `tb_cliente_id_cpf` VARCHAR(11) NOT NULL,
  `tb_equipe_mecanico_id_equipe_mecanico` INT NOT NULL,
  `tb_veiculo_id_chassi` VARCHAR(45) NULL,
  PRIMARY KEY (`id_os`),
  UNIQUE INDEX `id_os_UNIQUE` (`id_os` ASC) VISIBLE,
  UNIQUE INDEX `valor_total_UNIQUE` (`valor_total` ASC) VISIBLE,
  INDEX `fk_tb_os_tb_cliente1_idx` (`tb_cliente_id_cpf` ASC) VISIBLE,
  INDEX `fk_tb_os_tb_equipe_mecanico1_idx` (`tb_equipe_mecanico_id_equipe_mecanico` ASC) VISIBLE,
  INDEX `fk_tb_os_tb_veiculo1_idx` (`tb_veiculo_id_chassi` ASC) VISIBLE,
  CONSTRAINT `fk_tb_os_tb_cliente1`
    FOREIGN KEY (`tb_cliente_id_cpf`)
    REFERENCES `mydb`.`tb_cliente` (`id_cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_os_tb_equipe_mecanico1`
    FOREIGN KEY (`tb_equipe_mecanico_id_equipe_mecanico`)
    REFERENCES `mydb`.`tb_equipe_mecanico` (`id_equipe_mecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_os_tb_veiculo1`
    FOREIGN KEY (`tb_veiculo_id_chassi`)
    REFERENCES `mydb`.`tb_veiculo` (`id_chassi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_servico`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_servico` (
  `id_servico` VARCHAR(45) NOT NULL,
  `valor_maodeobra` DECIMAL(7,2) NOT NULL,
  `tempo_estimado` DATE NOT NULL,
  `nome_servico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_servico`),
  UNIQUE INDEX `nome_servico_UNIQUE` (`nome_servico` ASC) VISIBLE,
  UNIQUE INDEX `id_servico_UNIQUE` (`id_servico` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_itensServico`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_itensServico` (
  `quantidadeServico` INT NOT NULL,
  `tb_servico_id_servico` VARCHAR(45) NOT NULL,
  `tb_os_id_os` VARCHAR(45) NOT NULL,
  INDEX `fk_tb_itensServico_tb_os1_idx` (`tb_os_id_os` ASC) VISIBLE,
  PRIMARY KEY (`tb_os_id_os`, `tb_servico_id_servico`),
  CONSTRAINT `fk_tb_itensServico_tb_servico1`
    FOREIGN KEY (`tb_servico_id_servico`)
    REFERENCES `mydb`.`tb_servico` (`id_servico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_itensServico_tb_os1`
    FOREIGN KEY (`tb_os_id_os`)
    REFERENCES `mydb`.`tb_os` (`id_os`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_estoque`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_estoque` (
  `id_peca` VARCHAR(45) NOT NULL,
  `nome_peca` VARCHAR(45) NOT NULL,
  `valor_peca` DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (`id_peca`),
  UNIQUE INDEX `id_peca_UNIQUE` (`id_peca` ASC) VISIBLE,
  UNIQUE INDEX `nome_peca_UNIQUE` (`nome_peca` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_itnspecas`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_itnspecas` (
  `quantidadePecas` INT NOT NULL,
  `tb_estoque_id_peca` VARCHAR(45) NOT NULL,
  `tb_os_id_os` VARCHAR(45) NOT NULL,
  INDEX `fk_tb_itnspecas_tb_os1_idx` (`tb_os_id_os` ASC) VISIBLE,
  PRIMARY KEY (`tb_os_id_os`, `tb_estoque_id_peca`),
  CONSTRAINT `fk_tb_pecas_tb_estoque1`
    FOREIGN KEY (`tb_estoque_id_peca`)
    REFERENCES `mydb`.`tb_estoque` (`id_peca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_itnspecas_tb_os1`
    FOREIGN KEY (`tb_os_id_os`)
    REFERENCES `mydb`.`tb_os` (`id_os`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_formapagamento`
-- -----------------------------------------------------
CREATE TABLE  `mydb`.`tb_formapagamento` (
  `id_pagamento` VARCHAR(45) NOT NULL,
  `tipo_pagamento` VARCHAR(45) NOT NULL,
  `valor_pagamento` DECIMAL(7,2) NOT NULL,
  `tb_os_id_os` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pagamento`, `tb_os_id_os`),
  INDEX `fk_tb_formapagamento_tb_os1_idx` (`tb_os_id_os` ASC) VISIBLE,
  CONSTRAINT `fk_tb_formapagamento_tb_os1`
    FOREIGN KEY (`tb_os_id_os`)
    REFERENCES `mydb`.`tb_os` (`id_os`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
