SET  FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------
-- Dados Cliente
-- -----------------------------------------------------
INSERT INTO tb_cliente VALUES 
("070.154.874-57", "Hugo Diniz"),
("112.345.678-90", "Juliana Ramalho"),
("777.888.999-34", "Diego Coutinho"),
("014.128.358-00", "Ben Hur Queiroz"),
("055.432.798-57", "Fellipe Diniz"),
("077.188.387-02", "Godofredo Souza"),
("098.765.432-11", "César Pinho"),
("102.406.954-01", "Mácio Júnior"),
("120.380.134-18", "Joao Victor"),
("120.749.910-88", "Luiz Andre"),
("100.300.650-76", "Thiago Rodrigues"),
("112.088.387-02", "Godolores Castro");

-- -----------------------------------------------------
-- Dados Endereço Cliente
-- -----------------------------------------------------

INSERT INTO tb_endereco(UF,cidade,bairro,logradouro,numero,id_cpf_cliente)
	values ("PE", "Recife", "Boa Viagem", "Rua Segredo", 51, "070.154.874-57"),
		("PE", "Recife", "Boa Viagem", "Rua Passarinho", 1345, "112.345.678-90"),
		("PE", "Recife", "Prado", "Rua Capitão Zuera", 453, "777.888.999-34"),
		("PE", "Recife", "Madalena", "Rua Ricardo Salazar", 45, "014.128.358-00"),
        ("PE", "Recife", "Campo Grande", "Rua Faz Chover", 1000, "055.432.798-57"),
		("PE", "Jaboatao", "Cha Grande", "Rua Desce e Sobe", 1, "077.188.387-02"),
		("PE", "Olinda", "Bairro Novo", "Rua Faz Chover", 40, "098.765.432-11"),
		("PE", "Recife", "Hipódromo", 'Rua Fulano de Tal', 100, "102.406.954-01"),
		("PE", "São Lourenço da mata", "Centro", "Rua Holanda", 08, "120.380.134-18"),
        ("PE", "Olinda", "Jardim Atlantico", "Rua Rutilo", 8, "120.749.910-88"),
        ("PE", "Recife", "Campo Grande", "Rua N S da Glória", 164, "100.300.650-76"),
        ("PE", "Recife", "iputinga", "Rua João do caminhão", 102, "112.088.387-02");
        

