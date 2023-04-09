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

INSERT INTO tb_endereco (UF,cidade,bairro,logradouro,numero,id_cpf_mecanico) VALUES

		("PE", "Recife", "Pina", "Av. Herculano Bandeira", 1501, "564.597.264-01"),
        ("PE", "Recife", "Pina", "Rua Estrela do Mar", 553, "942.632.852-03"),
        ("PE", "Recife", "Pina", "Poraque", 484, "963.147.231-87"),
        ("PE", "Recife", "Pina", "Parú", 156, "444.778.632-77"),
        ("PE", "Recife", "Pina", "Anequim", 564, "837.99.471-53"),
        ("PE", "Recife", "Pina", "Golfinho", 159, "606.447.888-00"),
        ("PE", "Recife", "Pina", "", 1501, "687.031.684-99"),
		("PE", "Recife", "Ipsep", "Rua Comandante Garcia D'Avila", 789, "999.555.077-41"),
        ("PE", "Recife", "Ipsep", "Rua Cruz e Sousa", 25, "666.249.874-11"),
        ("PE", "Recife", "Apipucos", "Rua Aliança", 256, "682.031.000-22"),
        ("PE", "Recife", "Apipucos", "Rua Caetés", 327, "999.888.221.33"),
        ("PE", "Recife", "Apipucos", "Rua Correnteza", 897, "658.999.324-44"),
        ("PE", "Recife", "Apipucos", "Rua do Mussu", 147, "963.225.447-55"),
        ("PE", "Recife", "Apipucos", "Rua Dom Luiz", 554, "887.754.669-66"),
        ("PE", "Recife", "Alto do Mandu", "Rua Acará", 256, "989.878.979-77"),
        ("PE", "Recife", "Alto do Mandu", "Rua Anhembi", 667, "656.454.646-88"),
        ("PE", "Recife", "Alto do Mandu", "Rua Batatais", 402, "117.903.878-99"),
        ("PE", "Recife", "Alto do Mandu", "Rua Cedro", 224, "086.000.974-78"),
        ("PE", "Recife", "Alto do Mandu", "Rua da Arataca", 568, "954.680.007-10"),
        ("PE", "Recife", "Madalena", "Rua Altinho", 610, "962.457.222-74");

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
        
-- -----------------------------------------------------
-- Dados Telefone Cliente
-- -----------------------------------------------------
    
    INSERT INTO tb_telefone (id_telefone, id_cpf_cliente)  VALUES 
		("81981905671", "070.154.874-57"),
		("84999334455", "098.765.432-11"),
        ("84999887766", "098.765.432-11"),
        ("81999889900", "070.154.874-57"),
        ("11999889911", "112.345.678-90"),
        ("11999889922", "120.380.134-18"),
        ("81999889933", "025.111.258-97"),
        ("82999889944", "100.300.650-76"),
        
		("11999449911", "102.406.954-01"),
        ("11999339922", "120.749.910-88"),
        ("81976889933", "112.088.387-02"),
        ("81299889944", "014.128.358-00");
        
        
-- -----------------------------------------------------
-- Table tb_veiculo
-- -----------------------------------------------------

INSERT INTO tb_veiculo (id_chassi, descrição, placa) VALUES 
("9BG116GW04C400001","HB-20 EVOLUTION","BRT0T12"),
("9BG126GE94H378401","NISSAN VERSA","BYT8F13"),
("9CH414JD67G347839","AUDI E-TRON","BWQ9F14"),
("8TE532LO42D873620","ONIX LT FLEX","BDQ9W21"),
("5BG216JK95D598766","FIESTA TITANIUM","BEA9C34"),
("9MJ117K78E5697412","HB-20S COMFORT","DKF3D02"),
("8FH657GM98D569666","TRACKER TURBO","JKT0D65"),
("9BG66KJ83E3847382","SPIN ACTIV7","KGS2E54"),
("3QT775KM78S777773","MISUBISHI TR4","PLK2D87"),
("3KL449LS87R666557","IDEIA","QTE7M14"),
("7MJ668RE88D600021","KICKS ADVENCE","DME0D42"),
("1PX609FZ99L456654","SPACEFOX CONFORT","BSQ8W39"),
("6ER775KJ58G444441","FOX XTREME","OIR2W65"),
("0RH887MK89D566667","VERSA SL","PLK2Z78"),
("6AS771YI38J111478","RANGER XLS","WSX4H72"),
("2ZL66WS05D5339334", "JEEP COMPASS","YHN6P93"),
("6TV008TH79N791233","VW GOL G6","OLM3V01"),
("5HJ779RY96W666225","WR-V EXL", "CVB2Q54"),
("3WM991QA07L668230","ARGO TREKKING","QAZ2P33"),
("5FR884GLLL99W8000","ECOSPORTE","SLF8G25"),
("0ED889HU65Q151545","KOMBI","LMK2K34");


-- -----------------------------------------------------
-- Dados tb_serviço
-- -----------------------------------------------------

	INSERT INTO tb_servico (id_servico, nome_servico, valor_maodeobra, tempo_estimado) VALUES
		(1, "Troca de Óleo", 25.0, 0),
        (2, "Alinhamento e balanceamento", 100.0, 0),
        (3, "Revisão Geral", 200.0, 0),
        (4, "Manutenção dos Freios", 100.0, 0),
        (5, "Manutenção de Embreagem", 100.0, 0),
        (6, "Manutenção de Sistema de Arrefecimento", 80.0 , 0),
        (7, "Troca de Filtros",25.0 , 0),
        (8, "Manutençao Elétrica", 200.0, 0),
        (9, "Cambagem", 200.0, 0),
        (10, "Manutenção dos amortecedores",100.0 , 0);