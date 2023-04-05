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
      
      
-- -----------------------------------------------------
-- Dados Endereço Mecanico
-- -----------------------------------------------------
        

-- -----------------------------------------------------
-- Dados tb_equipe_mecanico
-- -----------------------------------------------------
INSERT INTO tb_equipe_mecanico VALUES (20),(21),(22),(23),(24);



-- -----------------------------------------------------
-- Dados tb_mecanico
-- -----------------------------------------------------

INSERT INTO tb_mecanico VALUES 
("564.597.264-01","Naman de Melo","Motor",20),
("942.632.852-03", "Rosemay Melo","Elétrica",20),
("963.147.231-87","Zenem  da Silva","Geral",20),
("444.778.632-77", "Karla Crsita","Geral",20),

("837.99.471-53","kaua Tavares","Elétrica",21),
("606.447.888-00","Djalma Lima","Geral",21),
("687.031.684-99","Vanessa Gomes","Motor",21),
("666.249.874-11","Waleria Alvés","Geral",21),

("682.031.000-22","Pedro Morais","Geral",22),
("999.888.221.33","Dayanne Veras","Elétrica",22),
("658.999.324-44","Isadora Mota","Motor",22),
("963.225.447-55", "Tatiany Costa","Geral",22),

("887.754.669-66","Rafael Machado","Elétrica",23),
("989.878.979-77","Ana Larissa","Motor",23),
("656.454.646-88","Vinicius Melo","Geral",23),
("117.903.878-99","Caio Brito","Geral",23),

("086.000.974-78","Breno Gomes","Motor",24),
("954.680.007-10","Leia Gardelha","Elétrica",24),
("962.457.222-74","Carlos ALberto","Geral",24),
("999.555.077-41","Ricardo Toronto","Geral",24);

-- -----------------------------------------------------
-- Dados Telefone Mecanico
-- -----------------------------------------------------

INSERT INTO tb_telefone (id_telefone, id_cpf_mecanico) VALUES 
		("82981905367", "564.597.264-01"),
		("82212633406","837.99.471-53"),
        ("82212633650","682.031.000-22"),
        ("83212613560", "887.754.669-66"),
        ("83212633439", "086.000.974-78"),
        ("84324456788", "942.632.852-03"),
        ("81353318717", "606.447.888-00"),
        ("81353316237", "999.888.221.33"),
        
		("82989056457", "656.454.646-88"),
		("82216733066","962.457.222-74"),
        ("82210033560","682.031.000-22"),
        ("83212634356", "444.778.632-77"),
        ("85612633432", "666.249.874-11"),
        ("84320245678", "942.632.852-03"),
        ("81301031817", "999.555.077-41"),
        ("81353600237", "999.555.077-41");