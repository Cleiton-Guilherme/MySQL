CREATE DATABASE DB_PIZZARIA_LEGAL;

USE DB_PIZZARIA_LEGAL;

CREATE TABLE TB_CATEGORIA(
ID bigint AUTO_INCREMENT,
TIPOSABOR VARCHAR(255),
PRIMARY KEY(ID)
);

INSERT INTO TB_CATEGORIA (TIPOSABOR)
VALUES ("SALGADA");

INSERT INTO TB_CATEGORIA (TIPOSABOR)
VALUES ("DOCE");

INSERT INTO TB_CATEGORIA (TIPOSABOR)
VALUES ("ESPECIAL");

INSERT INTO TB_CATEGORIA (TIPOSABOR)
VALUES ("VEGETARIANA");

CREATE TABLE TB_PIZZA( 
ID BIGINT AUTO_INCREMENT,
SABOR VARCHAR (255),
TIPOSABOR_ID bigint,
TAMANHO VARCHAR (255),
VALOR DECIMAL(8,2),
PRIMARY KEY (ID),
FOREIGN KEY (TIPOSABOR_ID) REFERENCES TB_CATEGORIA(ID)
);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("CALABRESA", 1, "GRANDE", 45.80);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("4 QUEIJOS", 3, "MÉDIA", 35.80);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("MARGUERITA", 3, "GRANDE", 59.90);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("BRIGADEIRO", 2, "MÉDIA", 54.60);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("DOCE DE LEITE", 4, "MÉDIA", 85.90);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("PORTUGUESA", 1, "PEQUENA", 31.50);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("ROMEU É JULIETA", 2, "PEQUENA", 27.40);

INSERT INTO TB_PIZZA (SABOR, TIPOSABOR_ID, TAMANHO, VALOR)
VALUES ("PALMITO É BROCOLIS", 4, "MÉDIA", 59.90);

SELECT * FROM TB_PIZZA;

SELECT * FROM TB_PIZZA WHERE VALOR > 50;

SELECT * FROM TB_PIZZA WHERE VALOR between 3 AND 60;

SELECT * FROM TB_PIZZA WHERE SABOR LIKE "%J%";

SELECT * FROM TB_PIZZA INNER JOIN TB_CATEGORIA ON TB_PIZZA.TIPOSABOR_ID = TB_CATEGORIA.ID;

SELECT * FROM TB_PIZZA INNER JOIN TB_CATEGORIA ON TB_PIZZA.TIPOSABOR_ID = TB_CATEGORIA.ID WHERE TB_CATEGORIA.TIPOSABOR = "DOCE";












