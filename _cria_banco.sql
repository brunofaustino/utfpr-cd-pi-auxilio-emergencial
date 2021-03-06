create schema auxilio

DROP TABLE IF EXISTS auxilio.municipio CASCADE;
DROP TABLE IF EXISTS auxilio.PARCELA_EXTRA CASCADE;
DROP TABLE IF EXISTS auxilio.PARCELA CASCADE;

create table auxilio.municipio(
 	NOME_MUNICIPIO VARCHAR(50),
 	UF VARCHAR(2),
 	constraint PK_ID_MUNICIPIO primary key (NOME_MUNICIPIO, UF)
);

create table auxilio.PARCELA_EXTRA(
	ID SERIAL,
	NOME_MUNICIPIO VARCHAR(50), 
	UF VARCHAR(50),
	PAGAMENTO_BLOQUEADO_OU_CANCELADO INT,
	VALOR_DEVOLVIDO_A_UNIAO INT,
	BOLSA_FAMILIA INT,
	CADUN_NAO_BOLSA INT,
	EXTRA_CADUN INT,
	CONSTRAINT ID_PK primary KEY (ID),
	CONSTRAINT ID_PARCELA_EXTRA_FK FOREIGN KEY (NOME_MUNICIPIO, UF) REFERENCES auxilio.municipio(NOME_MUNICIPIO, UF)
);

create table auxilio.PARCELA(
	ID SERIAL,
	NOME_MUNICIPIO VARCHAR(50), 
	UF VARCHAR(50),
	ANO_DISPONIBILIZACAO INT,
	MES_DISPONIBILIZACAO INT,
	PARCELA_1 INT,
	PARCELA_2 INT,
	PARCELA_3 INT,
	PARCELA_4 INT,
	PARCELA_5 INT,
	PARCELA_6 INT,
	PARCELA_7 INT,
	PARCELA_8 INT,
	PARCELA_9 INT,
	PARCELA_1_VALOR_BENEFICIO decimal,
	PARCELA_2_VALOR_BENEFICIO decimal,
	PARCELA_3_VALOR_BENEFICIO decimal,
	PARCELA_4_VALOR_BENEFICIO decimal,
	PARCELA_5_VALOR_BENEFICIO decimal,
	PARCELA_6_VALOR_BENEFICIO decimal,
	PARCELA_7_VALOR_BENEFICIO decimal,
	PARCELA_8_VALOR_BENEFICIO decimal,
	PARCELA_9_VALOR_BENEFICIO decimal,
	CONSTRAINT ID_PARCELA_PK primary key (ID),
	CONSTRAINT ID_PARCELA_FK FOREIGN KEY (NOME_MUNICIPIO, UF) REFERENCES auxilio.municipio(NOME_MUNICIPIO, UF)
);

--select * from auxilio.municipio limit 10;
--select * from auxilio.PARCELA_EXTRA limit 10;
--select * from auxilio.parcela limit 10;
