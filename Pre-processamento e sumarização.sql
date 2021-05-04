--***************************************************************************
-- CRIAวรO DAS TABELAS
--***************************************************************************

CREATE TABLE auxilio_emergencial_202004(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202005(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202006(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202007(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202008(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202009(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202010(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202011(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

CREATE TABLE auxilio_emergencial_202012(
	MES_DISPONIBILIZACAO VARCHAR(255),
	UF VARCHAR(255),
	CODIGO_MUNICIPIO_IBGE VARCHAR(255),
	NOME_MUNICIPIO VARCHAR(255),
	NIS_BENEFICIARIO VARCHAR(255),
	CPF_BENEFICIARIO VARCHAR(255),
	NOME_BENEFICIARIO VARCHAR(255),
	NIS_RESPONSAVEL VARCHAR(255),
	CPF_RESPONSAVEL VARCHAR(255),
	NOME_RESPONSAVEL VARCHAR(255),
	ENQUADRAMENTO VARCHAR(255),
	PARCELA VARCHAR(255),
	OBSERVACAO VARCHAR(255),
	VALOR_BENEFICIO VARCHAR(255)
)
GO

--***************************************************************************
-- IMPORTACAO
--***************************************************************************

-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005" IN "F:\AuxilioEmergencial\202005_AuxilioEmergencial.csv" -T -c -t"";"" -E -C 65001
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006" IN "F:\AuxilioEmergencial\202006_AuxilioEmergencial.csv" -T -c -t";" -E
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007" IN "F:\AuxilioEmergencial\202007_AuxilioEmergencial.csv" -T -c -t";" -E
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008" IN "F:\AuxilioEmergencial\202008_AuxilioEmergencial.csv" -T -c -t";" -E
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009" IN "F:\AuxilioEmergencial\202009_AuxilioEmergencial.csv" -T -c -t";" -E
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010" IN "F:\AuxilioEmergencial\202010_AuxilioEmergencial.csv" -T -c -t";" -E
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011" IN "F:\AuxilioEmergencial\202011_AuxilioEmergencial.csv" -T -c -t";" -E
-- bcp "dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012" IN "F:\AuxilioEmergencial\202012_AuxilioEmergencial.csv" -T -c -t";" -E

select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
select count(*) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012


BULK INSERT auxilio_emergencial_202004
FROM 'F:\AuxilioEmergencial\202004_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202005
FROM 'F:\AuxilioEmergencial\202005_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO


BULK INSERT auxilio_emergencial_202006
FROM 'F:\AuxilioEmergencial\202006_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202007
FROM 'F:\AuxilioEmergencial\202007_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202008
FROM 'F:\AuxilioEmergencial\202008_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202009
FROM 'F:\AuxilioEmergencial\202009_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202010
FROM 'F:\AuxilioEmergencial\202010_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202011
FROM 'F:\AuxilioEmergencial\202011_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO

BULK INSERT auxilio_emergencial_202012
FROM 'F:\AuxilioEmergencial\202012_AuxilioEmergencial.csv'
WITH (FIELDTERMINATOR=';', codepage='1252')
PRINT('Auxilio Emergencial')
GO


--***************************************************************************
-- PRE PROCESSAMENTO
--***************************************************************************

select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
select count(1) from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012

select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
select top 2 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012

DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011 where uf = '"UF"'
DELETE from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012 where uf = '"UF"'

select top 1 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012 where uf = '"UF"'

-- PARCELA
;with cte as (
	select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012
)select distinct parcela from cte
go 

-- VALOR_BENEFICIO
;with cte as (
	select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012
)select distinct VALOR_BENEFICIO from cte
GO

-- ENQUADRAMENTO
;with cte as (
	select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012
)select distinct ENQUADRAMENTO from cte
GO 

-- OBSERVACAO
;with cte as (
	select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012
)select distinct OBSERVACAO from cte
GO

-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
-- DROP TABLE dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011
GO

SELECT 
	--TOP 2
	2020 as ANO_DISPONIBILIZACAO
	,CAST(RIGHT(REPLACE(MES_DISPONIBILIZACAO, '"', ''), 2) AS INT) as MES_DISPONIBILIZACAO
	,REPLACE(UF, '"', '') as UF
	,REPLACE(NOME_MUNICIPIO, '"', '') as NOME_MUNICIPIO
	,CASE
		WHEN ENQUADRAMENTO = '"BOLSA FAMILIA"' THEN 'BOLSA_FAMILIA'
		WHEN ENQUADRAMENTO = '"CADUN NAO BOLSA"' THEN 'CADUN_NAO_BOLSA'
		WHEN ENQUADRAMENTO = '"EXTRA CADUN"' THEN 'EXTRA_CADUN'
	end as ENQUADRAMENTO
	,CASE
		WHEN PARCELA = '"1ช"' THEN 'PARCELA_1'
		WHEN PARCELA = '"2ช"' THEN 'PARCELA_2'
		WHEN PARCELA = '"3ช"' THEN 'PARCELA_3'
		WHEN PARCELA = '"4ช"' THEN 'PARCELA_4'
		WHEN PARCELA = '"5ช"' THEN 'PARCELA_5'
		WHEN PARCELA = '"6ช"' THEN 'PARCELA_6'
		WHEN PARCELA = '"7ช"' THEN 'PARCELA_7'
		WHEN PARCELA = '"8ช"' THEN 'PARCELA_8'
		WHEN PARCELA = '"9ช"' THEN 'PARCELA_9'
	 END AS PARCELA
	 ,CASE
			WHEN PARCELA = '"1ช"' THEN 'PARCELA_1_VALOR_BENEFICIO'
			WHEN PARCELA = '"2ช"' THEN 'PARCELA_2_VALOR_BENEFICIO'
			WHEN PARCELA = '"3ช"' THEN 'PARCELA_3_VALOR_BENEFICIO'
			WHEN PARCELA = '"4ช"' THEN 'PARCELA_4_VALOR_BENEFICIO'
			WHEN PARCELA = '"5ช"' THEN 'PARCELA_5_VALOR_BENEFICIO'
			WHEN PARCELA = '"6ช"' THEN 'PARCELA_6_VALOR_BENEFICIO'
			WHEN PARCELA = '"7ช"' THEN 'PARCELA_7_VALOR_BENEFICIO'
			WHEN PARCELA = '"8ช"' THEN 'PARCELA_8_VALOR_BENEFICIO'
			WHEN PARCELA = '"9ช"' THEN 'PARCELA_9_VALOR_BENEFICIO'
		 END AS PARCELA_VALOR_BENEFICIO
	,CASE 
		WHEN OBSERVACAO = '""' THEN NULL
		WHEN OBSERVACAO = '"Nใo hแ"' THEN NULL
		WHEN OBSERVACAO = '"Pagamento bloqueado ou cancelado"' THEN 'PAGAMENTO_BLOQUEADO_OU_CANCELADO'
		WHEN OBSERVACAO = '"Valor devolvido เ Uniใo."' THEN 'VALOR_DEVOLVIDO_A_UNIAO' 
	END AS OBSERVACAO
	,CAST(REPLACE(REPLACE(VALOR_BENEFICIO, '"', ''), ',','.') AS DECIMAL(10,2)) as VALOR_BENEFICIO
	into dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012
GO

--***************************************************************************
-- SUMARIZAวรO
--***************************************************************************

-- PARCELA
;with cte as (
	select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
union select parcela from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
)select distinct parcela from cte
go 

-- VALOR_BENEFICIO
;with cte as (
	select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
union select VALOR_BENEFICIO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
)select distinct VALOR_BENEFICIO from cte
GO

-- ENQUADRAMENTO
;with cte as (
	select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
union select ENQUADRAMENTO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
)select distinct ENQUADRAMENTO from cte
GO 

-- OBSERVACAO
;with cte as (
	select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202006_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
union select OBSERVACAO from dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
)select distinct OBSERVACAO from cte
GO

-- PARCELA -------------------------------------

;WITH CTE AS (
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
	pivot (
		count(PARCELA)
		for PARCELA IN ([PARCELA_1] , [PARCELA_2], [PARCELA_3], [PARCELA_4], [PARCELA_5], [PARCELA_6], [PARCELA_7], [PARCELA_8], [PARCELA_9])
	) AS PVT
)
SELECT
	ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO,
	SUM(PARCELA_1) AS PARCELA_1,
	SUM(PARCELA_2) AS PARCELA_2,
	SUM(PARCELA_3) AS PARCELA_3,
	SUM(PARCELA_4) AS PARCELA_4,
	SUM(PARCELA_5) AS PARCELA_5,
	SUM(PARCELA_6) AS PARCELA_6,
	SUM(PARCELA_7) AS PARCELA_7,
	SUM(PARCELA_8) AS PARCELA_8,
	SUM(PARCELA_9) AS PARCELA_9
	INTO dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_parcela
FROM CTE
GROUP BY ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO
GO 

-- VALOR_BENEFICIO -------------------------------------

-- select top 10 * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean

-- drop table dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_valor_beneficio

;WITH CTE (ANO_DISPONIBILIZACAO,MES_DISPONIBILIZACAO,UF,NOME_MUNICIPIO,ENQUADRAMENTO,PARCELA,OBSERVACAO, [PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO]) AS (
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
	pivot (
		sum(VALOR_BENEFICIO)
		for PARCELA_VALOR_BENEFICIO IN ([PARCELA_1_VALOR_BENEFICIO] , [PARCELA_2_VALOR_BENEFICIO], [PARCELA_3_VALOR_BENEFICIO], [PARCELA_4_VALOR_BENEFICIO], [PARCELA_5_VALOR_BENEFICIO], [PARCELA_6_VALOR_BENEFICIO], [PARCELA_7_VALOR_BENEFICIO], [PARCELA_8_VALOR_BENEFICIO], [PARCELA_9_VALOR_BENEFICIO])
	) AS PVT
)
SELECT
	ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO,
	SUM(PARCELA_1_VALOR_BENEFICIO) AS PARCELA_1_VALOR_BENEFICIO,
	SUM(PARCELA_2_VALOR_BENEFICIO) AS PARCELA_2_VALOR_BENEFICIO,
	SUM(PARCELA_3_VALOR_BENEFICIO) AS PARCELA_3_VALOR_BENEFICIO,
	SUM(PARCELA_4_VALOR_BENEFICIO) AS PARCELA_4_VALOR_BENEFICIO,
	SUM(PARCELA_5_VALOR_BENEFICIO) AS PARCELA_5_VALOR_BENEFICIO,
	SUM(PARCELA_6_VALOR_BENEFICIO) AS PARCELA_6_VALOR_BENEFICIO,
	SUM(PARCELA_7_VALOR_BENEFICIO) AS PARCELA_7_VALOR_BENEFICIO,
	SUM(PARCELA_8_VALOR_BENEFICIO) AS PARCELA_8_VALOR_BENEFICIO,
	SUM(PARCELA_9_VALOR_BENEFICIO) AS PARCELA_9_VALOR_BENEFICIO
	INTO dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_valor_beneficio
FROM CTE
GROUP BY ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO
GO 

-- ENQUADRAMENTO -------------------------------------

;WITH CTE (ANO_DISPONIBILIZACAO,MES_DISPONIBILIZACAO,UF,NOME_MUNICIPIO,PARCELA,PARCELA_VALOR_BENEFICIO,OBSERVACAO,VALOR_BENEFICIO,[BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN]) AS (
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
	pivot (
		count(ENQUADRAMENTO)
		for ENQUADRAMENTO IN ([BOLSA_FAMILIA] , [CADUN_NAO_BOLSA], [EXTRA_CADUN])
	) AS PVT
)
SELECT
	ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO,
	COUNT([BOLSA_FAMILIA]) AS [BOLSA_FAMILIA],
	COUNT([CADUN_NAO_BOLSA]) AS [CADUN_NAO_BOLSA],
	COUNT([EXTRA_CADUN]) AS [EXTRA_CADUN]
	INTO dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_enquadramento
FROM CTE
GROUP BY ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO
GO 

-- OBSERVACAO -------------------------------------

;WITH CTE (ANO_DISPONIBILIZACAO,MES_DISPONIBILIZACAO,UF,NOME_MUNICIPIO,ENQUADRAMENTO,PARCELA,PARCELA_VALOR_BENEFICIO,VALOR_BENEFICIO,[PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO]) AS (
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202004_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202005_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202007_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202008_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202009_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202010_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202011_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
	UNION ALL 
	select * FROM dbDW_TargetDataJobs.dbo.auxilio_emergencial_202012_Clean
	pivot (
		count(OBSERVACAO)
		for OBSERVACAO IN ([PAGAMENTO_BLOQUEADO_OU_CANCELADO] , [VALOR_DEVOLVIDO_A_UNIAO])
	) AS PVT
)
SELECT
	ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO,
	COUNT([PAGAMENTO_BLOQUEADO_OU_CANCELADO]) AS [PAGAMENTO_BLOQUEADO_OU_CANCELADO],
	COUNT([VALOR_DEVOLVIDO_A_UNIAO]) AS [VALOR_DEVOLVIDO_A_UNIAO]
	INTO dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_observacao
FROM CTE
GROUP BY ANO_DISPONIBILIZACAO, MES_DISPONIBILIZACAO, UF, NOME_MUNICIPIO
GO 


-- select * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_parcela where uf = 'SP' and nome_municipio = 'SAO PAULO'
-- select * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_valor_beneficio where uf = 'SP' and nome_municipio = 'SAO PAULO'
-- select * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_observacao where uf = 'SP' and nome_municipio = 'SAO PAULO'
-- select * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_enquadramento where uf = 'SP' and nome_municipio = 'SAO PAULO'

-- sp_help auxilio_emergencial_pivot_enquadramento

-- (44568 row(s) affected)
select
	parcela.ANO_DISPONIBILIZACAO,
	parcela.MES_DISPONIBILIZACAO,
	parcela.UF,
	parcela.NOME_MUNICIPIO,
	parcela.PARCELA_1,
	parcela.PARCELA_2,
	parcela.PARCELA_3,
	parcela.PARCELA_4,
	parcela.PARCELA_5,
	parcela.PARCELA_6,
	parcela.PARCELA_7,
	parcela.PARCELA_8,
	parcela.PARCELA_9,

	valor_beneficio.PARCELA_1_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_2_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_3_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_4_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_5_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_6_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_7_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_8_VALOR_BENEFICIO,
	valor_beneficio.PARCELA_9_VALOR_BENEFICIO,

	observacao.PAGAMENTO_BLOQUEADO_OU_CANCELADO,
	observacao.VALOR_DEVOLVIDO_A_UNIAO,

	enquadramento.BOLSA_FAMILIA,
	enquadramento.CADUN_NAO_BOLSA,
	enquadramento.EXTRA_CADUN

	INTO dbDW_TargetDataJobs.dbo.auxilio_emergencial_exportacao
from dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_parcela as parcela
left join dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_valor_beneficio as valor_beneficio on 
	(valor_beneficio.ANO_DISPONIBILIZACAO = parcela.ANO_DISPONIBILIZACAO
	and valor_beneficio.MES_DISPONIBILIZACAO = parcela.MES_DISPONIBILIZACAO
	and valor_beneficio.UF = parcela.UF
	and valor_beneficio.NOME_MUNICIPIO = parcela.NOME_MUNICIPIO)
left join dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_observacao as observacao on 
	(observacao.ANO_DISPONIBILIZACAO = parcela.ANO_DISPONIBILIZACAO
	and observacao.MES_DISPONIBILIZACAO = parcela.MES_DISPONIBILIZACAO
	and observacao.UF = parcela.UF
	and observacao.NOME_MUNICIPIO = parcela.NOME_MUNICIPIO)
left join dbDW_TargetDataJobs.dbo.auxilio_emergencial_pivot_enquadramento as enquadramento on 
	(enquadramento.ANO_DISPONIBILIZACAO = parcela.ANO_DISPONIBILIZACAO
	and enquadramento.MES_DISPONIBILIZACAO = parcela.MES_DISPONIBILIZACAO
	and enquadramento.UF = parcela.UF
	and enquadramento.NOME_MUNICIPIO = parcela.NOME_MUNICIPIO)


-- select top 100 * from dbDW_TargetDataJobs.dbo.auxilio_emergencial_exportacao
-- where uf = 'SP' and NOME_MUNICIPIO = 'SAO PAULO' ORDER BY MES_DISPONIBILIZACAO

--***************************************************************************
-- EXPORTAวรO
--***************************************************************************

-- bcp dbDW_TargetDataJobs.dbo.auxilio_emergencial_exportacao OUT "F:\202004_AuxilioEmergencial\202004_AuxilioEmergencial_sumarizado.csv" -T -c -t";" -E