CREATE TABLE tb_regiao(
	id  int PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	localidade_s VARCHAR(30),
	localidade_w VARCHAR(30),
	descricao VARCHAR(30)
	
);

INSERT INTO tb_regiao(id,nome,localidade_s,localidade_w,descricao) VALUES (1,'Vale Central','33.8088','70.7644','Chile');
INSERT INTO tb_regiao(id,nome,localidade_s,localidade_w,descricao) VALUES (2,'Serra Gaucha','29.3746','50.8764 ','Sul do Brasil');

CREATE TABLE tb_vinicola(
	id int PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	descricao VARCHAR(20),
	fone VARCHAR(20),
	email VARCHAR(30),
	regiao_id INT,
	FOREIGN KEY (regiao_id) REFERENCES tb_regiao(id)	
);

ALTER table tb_vinicola ALTER COLUMN descricao TYPE VARCHAR(150);

INSERT INTO tb_vinicola(id,nome,descricao,fone,email,regiao_id) VALUES (1,'Santa Rita','localizada no valle del
maipo e tem mais de 100 anos de historia','NULL','santa@gmail.com',1);
INSERT INTO tb_vinicola(id,nome,descricao,fone,email,regiao_id) VALUES (2,'Santa Carolina',NULL,'3395-4422','carolina@gmail.com',1);
INSERT INTO tb_vinicola(id,nome,descricao,fone,email,regiao_id) VALUES (3,'Garibaldi','Vinicola situada na serra gaucha','9822-3344','garibaldi@gmail.com',2);



CREATE TABLE tb_tipo_vinho(
id INT PRIMARY KEY,
nome VARCHAR(20) NOT NULL	
);

INSERT INTO tb_tipo_vinho(id,nome) VALUES (1,'Tinto');
INSERT INTO tb_tipo_vinho(id,nome) VALUES (2,'Branco');
INSERT INTO tb_tipo_vinho(id,nome) VALUES (3,'Rose');
INSERT INTO tb_tipo_vinho(id,nome) VALUES (4,'Bordeaux');


CREATE TABLE tb_vinho(
id INT PRIMARY KEY,
nome VARCHAR(20) NOT NULL,
tipo_id INT,
preco FLOAT,
vinicola_id INT,
FOREIGN KEY (tipo_id) REFERENCES tb_tipo_vinho(id),
FOREIGN KEY (vinicola_id) REFERENCES tb_vinicola(id)	
);


INSERT INTO tb_vinho(id,nome,tipo_id,preco,vinicola_id) VALUES (1,'Amanda',1,100.0,1);
INSERT INTO tb_vinho(id,nome,tipo_id,preco,vinicola_id) VALUES (2,'Belinha',2,200.0,1);
INSERT INTO tb_vinho(id,nome,tipo_id,preco,vinicola_id) VALUES (3,'Camila',4,65.0,2);
INSERT INTO tb_vinho(id,nome,tipo_id,preco,vinicola_id) VALUES (4,'Daniela',3,89.0,2);
INSERT INTO tb_vinho(id,nome,tipo_id,preco,vinicola_id) VALUES (5,'Eduarda',1,55.0 ,3);
INSERT INTO tb_vinho(id,nome,tipo_id,preco,vinicola_id) VALUES (6,'Fernanda',2,70.0,3);






