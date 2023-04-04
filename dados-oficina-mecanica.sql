SET  FOREIGN_KEY_CHECKS = 0;

INSERT INTO tb_cliente VALUE ("11122233344", "Naman de Melo");
INSERT INTO tb_cliente VALUE ("22222233344", "Rosemay de Melo"),("33322233344", "Zenem  da Silva"),("44422233344", "Karla Crsita"),("55522233344", "kaua Tavares"),("66622233344", "Djalma Lima"),
("77722233344", "Vanessa Gomes"),("88822233344", "Waleria Alvés"),("99922233344", "Pedro Morais"),("11133333344", "Dayanne Veras"),("22244433344", "Isadora Mota"),("22222233377", "Tatiany Costa");

SELECT * FROM tb_mecanico;

INSERT INTO tb_mecanico(id_cpf,nome,especialidade,tb_equipe_mecanico_id_equipe_mecanico) VALUE ("11144411111","Flavio Mendes", "Motor",1); 
INSERT INTO tb_mecanico(id_cpf,nome,especialidade,tb_equipe_mecanico_id_equipe_mecanico) VALUE ("11144411999","Otavio tendes", "Eletrica",2); 

insert into tb_telefone(id_telefone,numero,tb_cliente_id_cpf) value ("12345678", "987456321","22222233344");
select * from tb_telefone_tb_cliente1_idx;