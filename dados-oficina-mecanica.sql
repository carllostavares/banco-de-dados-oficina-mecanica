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

SELECT* from tb_itens_servico;
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
-- Dados tb_OS
-- -----------------------------------------------------
INSERT INTO tb_os (id_cpf_cliente, id_equipe_mecanico, id_chassi,data_emissao, data_conclusao, valor_total) VALUES 
("070.154.874-57",20,"9BG116GW04C400001","2023-01-11","2023-01-12", 212.99),
("112.345.678-90",21,"9BG126GE94H378401","2023-01-20","2023-01-22",365.00),
("777.888.999-34",22,"9CH414JD67G347839","2023-02-02", "2023-02-05",200.0),
("014.128.358-00",24,"8TE532LO42D873620","2023-02-10","2023-02-10",149.00),
("055.432.798-57",23,"5BG216JK95D598766","2023-02-15","2023-02-16",399.99),
("077.188.387-02",23,"9MJ117K78E5697412","2023-02-15","2023-02-17",620.90),
("098.765.432-11",21,"8FH657GM98D569666","2023-02-18","2023-02-21",269.99),
("102.406.954-01",20,"9BG66KJ83E3847382","2023-02-20","2023-02-21",524.0),
("120.380.134-18",22,"3QT775KM78S777773","2023-02-22","2023-02-23",491.98),
("120.749.910-88",24,"3KL449LS87R666557","2023-02-23","2023-02-23",749.99),
("100.300.650-76",24,"7MJ668RE88D600021","2023-02-23","2023-02-25",183.0),
("112.088.387-02",21,"1PX609FZ99L456654","2023-02-25","2023-02-25",599.99)
;


-- -----------------------------------------------------
-- Dados tb_itenspeças
-- -----------------------------------------------------
    
INSERT INTO tb_itnspecas (id_os,id_peca,quantidadePecas) VALUES
(1,1013,4),
(1,1001,1),
(2,1013,4),
(4,1089,1),
(5,1080,1),
(6,1020,1),
(7,1077,1),
(8,1142,2),
(9,1127,1),
(9,1128,1),
(10,1069,1),
(10,1100,1),
(11,1015,4),
(12,1095,1)
;

-- -----------------------------------------------------
-- Dados tb_itens_serviço
-- -----------------------------------------------------
INSERT INTO tb_itens_servico  (id_os,id_servico)  VALUES
("1",1),
("1",7),
(2,3),
(2,1),
(3,3),
(4,11),
(5,11),
(6,19),
(7,15),
(8,20),
(9,21),
(10,22),
(11,1),
(12,12)
;

-- -----------------------------------------------------
-- Dados tb_serviço
-- -----------------------------------------------------

	INSERT INTO tb_servico (id_servico, nome_servico, valor_maodeobra, tempo_estimado) VALUES
		(1, "Troca de Óleo", 25.0, "00:30:00"),
        (2, "Alinhamento e balanceamento", 100.0, "02:00:00"),
        (3, "Revisão mecânica", 200.0, "04:00:00"),
        (4, "Manutenção dos Freios", 100.0, "01:00:00"),
        (5, "Manutenção de Embreagem", 100.0, "01:30:00"),
        (6, "Manutenção de Sistema de Arrefecimento", 80.0 , "03:10:00"),
        (7, "Troca de Filtros",25.0, "01:15:00"),
        (8, "Revisão Elétrica", 200.0, "05:00:00"),
        (9, "Cambagem", 200.0, "02:00:00"),
        (10, "Manutenção dos amortecedores",100.0 , "02:40:00"),
        (11, "Troca de Pneu/Roda/Calota",50.0 , "01:00:00"),
        (12, "Instalação de Central Multimidia",100.00 , "01:30:00"),
        (13, "Troca de Moldura do Painel",100.0 , "01:00:00"),
        (14, "Troca de Caixa de Marcha",80.0 , "05:00:00"),
        (15, "Troca de Vela da Ignição",50.0 , "00:30:00"),
        (16, "Troca de Parachoque",120.0 , "00:40:00"),
        (17, "Troca de Radiador",100.0 , "02:15:00"),
        (18, "Troca de Bomba Combustível",100.0 , "02:20:00"),
        (19, "Troca de Embreagem ", 70.0 , "01:00:00"),
		(20, "Troca de Farol ", 70.0 , "01:00:00"),
		(21, "Troca de Rolamento ", 90.0 , "01:00:00"),
        (22, "Revisão Geral",350.0, "08:00:00")
        ;
        
        
-- -----------------------------------------------------
-- Dados tb_estoque
-- -----------------------------------------------------

INSERT INTO tb_estoque (id_peca, nome_peca, valor_peca) VALUES
    (1001, "Filtro de Ar HB20 1.6 2012-2021 ORIGINAL", 22.99),
    (1002, "Filtro de Ar ONIX 1.6 2012-2019", 25.99),
    (1003, "Filtro de Ar MOBI 1.0 2017-2019", 79.90),
    (1004, "Filtro de Ar KWID 1.0 2017-2018 ", 49.90),
    (1005, "Filtro de Óleo KWID 1.0 12V 2017-2022", 32.50),
    (1006, "Filtro de Óleo HB20 1.0 12V 2012-2022", 39.90),
    (1007, "Filtro de Óleo ONIX 1.4 FLEX 2013-2019", 17.80),
    (1008, "Filtro de Óleo MOBI 1.0 2017-2019", 39.90),
    (1009, "Filtro de Combustível MOBI 1.0 2017", 30.10),
    (1010, "Filtro de Combustível ONIX 2013-2019", 12.50),
    (1011, "Filtro de Combustível HB20 2012-2022", 23.80),
    (1012, "Filtro de Combustível KWID 2017-2020", 25.01),
    (1013, "Óleo de Motor ELAION 5w30 1L", 35.00),
    (1014, "Óleo de Motor LUBRAX 20w50 1L", 31.50),
    (1015, "Óleo de Motor LUBRAX 10w30 1L", 39.50),
    (1016, "Óleo de Motor MOBIL 15w40 1L", 31.50),
    (1017, "Aditivo Radiador PETRONAS Coolant UP 1L", 39.90),
    (1018, "Água Bi-Desmineralizada RADNAQ", 4.90),
    (1019, "Água Destilada Pura 5L", 34.90),
    (1020, "Kit Embreagem MOBI 1.0 - 4 Cilindros", 309.90),
    (1021, "Kit Embreagem ONIX 1.4 - 4 Cilindros", 800.90),
    (1022, "Kit Embreagem HB20 1.0 - 3 Cilindros", 550.90),
    (1023, "Kit Embreagem KWID 1.0 12V", 770.90),
    (1024, "Rolamento Roda Traseira KWID", 51.90),
    (1025, "Rolamento Roda Dianteira HB20 1.0", 150.11),
    (1026, "Rolamento Roda Dianteira ONIX", 157.08),
    (1027, "Rolamento Roda Dianteira MOBI", 100.99),
	(1127,"Rolamento Roda Dianteira  MISUBISHI", 200.99),
    (1128,"Rolamento Roda Traseira MISUBISHI", 200.99),
    (1028, "Cabo Freio MOBI Flex 2015", 65.99),
    (1029, "Cabo Freio HB20 2011 - 2017", 52.99),
    (1030, "Cabo Freio KWID", 100.99),
    (1031, "Cabo Freio ONIX", 27.52),
    (1032, "KIT Pastilha de Freio KWID", 102.90),
    (1033, "KIT Pastilha de Freio ONIX", 67.90),
    (1034, "KIT Pastilha de Freio MOBI", 119.90),
    (1035, "KIT Pastilha de Freio HB20", 130.90),
    (1036, "Par de Rotor MOBI 1.0 2017-2019", 280.65),
    (1037, "Par de Rotor HB20 1.0", 180.65),
    (1038, "Par de Rotor KWID 1.0", 247.89),
    (1039, "Par de Rotor ONIX 1.0", 296.89),
    (1040, "Farol Dianteiro Direito Fiat Mobi 2017-2021", 658.98),
    (1041, "Farol Dianteiro Esquerdo Fiat Mobi 2017-2021", 658.98),
    (1042, "Farol Dianteiro Direito Onix 2016-2021", 454.00),
	(1142, "Farol Dianteiro Direito SPIN 2016-2021", 454.00),
    (1043, "Farol Dianteiro Esquerdo Onix 2016-2021", 454.00),
    (1044, "Farol Dianteiro Direito Kwid 2019-2021", 314.00),
    (1045, "Farol Dianteiro Esquerdo Kwid 2019-2021",314.00),
    (1046, "Farol Dianteiro Direito HB20 2017-2021",424.00),
    (1047, "Farol Dianteiro Esquerdo HB20 2017-2021",424.00),
	(1048, "Lanterna Traseira Onix 2017-2019",184.00),
    (1049, "Lanterna Traseira Mobi 2018-2019",140.00),
    (1050, "Lanterna Traseira HB20 2017-2019",159.90),
    (1051, "Lanterna Traseira Kwid 2017-2019",121.99),
    (1052, "Par Amortecedor Dianteiro ONIX", 1.200),
    (1053, "Par Amortecedor Dianteiro MOBI", 1.500),
    (1054, "Par Amortecedor Dianteiro HB20", 1.350),
    (1055, "Par Amortecedor Dianteiro KWID", 1.110),
    (1056, "Par Amortecedor Traseiro ONIX", 1.220),
    (1057, "Par Amortecedor Traseiro MOBI", 1.000),
    (1058, "Par Amortecedor Traseiro KWID", 1.200),
    (1059, "Par Amortecedor Traseiro HB20", 1.400),
    (1060, "Moldura Painel Central Fiat Mobi 2016 à 2020", 120.00),
    (1061, "Moldura Painel Central Chevrolet Onix 2017 à 2020", 98.00),
    (1062, "Moldura Painel Central Hyundai HB20 2017 à 2020", 109.99),
    (1063, "Moldura Painel Central Renault Kwid 2018 à 2020", 99.99),
    (1064, "Moldura Painel Central Renault Kwid 2018 à 2020", 99.99),
    (1065, "Caixa de Marcha/Câmbio Fiat Mobi EVO 1.0 Flex 2019", 3.800),
    (1066, "Caixa de Marcha/Câmbio Chevrolet Onix Joy 1.0 Flex 2018", 2.999),
    (1067, "Caixa de Marcha/Câmbio Renault Kwid 1.4 Flex 2019", 2.699),
    (1068, "Caixa de Marcha/Câmbio Hyundai HB20s 1.6 Flex 2020", 3.699),
    (1069, "Kit Vela de Ignição FIAT Argo/Cronos/Mobi/Uno 1.0 1.3 3 Cilindros", 399.99),
    (1070, "Kit Vela de Ignição CHEVROLET Onix/Prisma/Cobalt 1.4 3 Cilindros", 369.99),
    (1071, "Kit Vela de Ignição RENAULT Kwid/Logan/Sandero 1.0", 99.99),
    (1072, "Kit Vela de Ignição HYUNDAI HB20/Kia/Cerato/Soul 1.0", 169.99),
    (1073, "Parachoque Dianteiro Hyundai HB20 2012 à 2015", 199.99),
    (1074, "Parachoque Dianteiro Fiat Mobi 2017 à 2020", 299.99),
    (1075, "Parachoque Dianteiro Chevrolet Onix 2018 à 2020", 219.99),
    (1076, "Parachoque Dianteiro Renault Kwid 2018 à 2020", 199.99),
    (1077, "Parachoque Dianteiro Chevrolet Onix 2018 à 2020", 219.99),
    (1078, "Pneu Aro 14  Westlake", 249.99),
    (1079, "Pneu Aro 13  Westlake", 229.99),
    (1080, "Pneu Aro 16  Westlake", 349.99),
    (1081, "Pneu Aro 14  Pirelli", 329.99),
    (1082, "Pneu Aro 13  Pirelli", 249.99),
    (1083, "Pneu Aro 16  Pirelli", 349.99),
    (1084, "Pneu Aro 13  Pirelli", 249.99),
    (1085, "Jogo de Rodas Fiat Mobi Aro 14", 1.955),
    (1086, "Jogo de Rodas Chevrolet Onix Aro 14", 1.699),
    (1087, "Jogo de Rodas Renault Kwid Aro 14", 1.999),
    (1088, "Jogo de Rodas Hyundai HB20 Aro 14", 2.599),
    (1089, "Jogo de 04 Calota Aro 14", 99.00),
    (1090, "Jogo de 04 Calota Aro 13", 89.00),
    (1091, "Jogo de 04 Calota Aro 16", 109.00),
    (1092, "Jogo Capa Para Banco Automotivo Carro Couro Impermeável", 69.99),
    (1093, "Capa De Proteção Volante Automotivo Universal", 19.99),
    (1094, "Central Multimídia Universal Mp5 C/ Espelhamento Android Ios", 399.99),
    (1095, "Central Multimídia Multilaser C/ Espelhamento Android Ios", 499.99),
    (1096, "Radiador CHEVROLET Onix/Cobalt/Prisma/Spin 2017 2018 2019 Manual", 599.99),
    (1097, "Radiador FIAT Mobi/Argo/Cronos/Uno 2017 2018 2019 Manual", 799.99),
    (1098, "Radiador RENAULT Kwid/Logan/Sandero 2017 2018 2019 Manual", 599.99),
    (1099, "Radiador HYUNDAI HB20/Kia/Cerato/Soul 2017 2018 2019 Manual", 699.99),
    (1100, "Bomba Combustível MOBI 1.0 2017 2020", 349.99),
    (1101, "Bomba Combustível ONIX 1.0 2017 2020", 249.99),
    (1102, "Bomba Combustível HB20 1.0 2017 2020", 349.99),
    (1103, "Bomba Combustível KWID 1.0 2017 2020", 269.99);  
    

-- -----------------------------------------------------
-- Dados tb_formapagamento
-- -----------------------------------------------------
    
INSERT INTO tb_formapagamento (id_pagamento, tipo_pagamento, qtd_parcelas,valor_pagamento,id_os) VALUES 	
		("1", "especie",0,212.99,1),
		("2", "especie",0,365.00,2),
		("3", "pix",0 ,200.00,3),
		("4", "pix",0,149.00,4),
		("5", "pix" ,0,399,90,5),
		("6", "especie",0,0,6),
		("7", "pix",0,0,7),
		("8", "especie",0,0,8),
		("9", "credito", 3,0,9),
		("10", "debito",0,0,10),
		("11", "pix",0,0,11),
		("12", "debito",0,0,12),
		("13", "especie",0,0,13),
		("14", "pix",0,0,14),
		("15", "especie",0,0,15),
		("16", "pix",0,0,16),
		("17", "pix",0,0,17),
		("18", "credito",5,0,18),
		("19", "credito",1,0,19),
		("20", "pix",0,0,20),
		("21", "debito",0,0,21);
        
