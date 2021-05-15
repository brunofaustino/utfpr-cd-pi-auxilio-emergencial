-- Database: postgres

-->>> 1 consulta envolvendo projeção e seleção
-- Descrição: Obtendo o nome de todos os municipios do estado de São Paulo
SELECT nome_municipio FROM auxilio.municipio where uf = 'SP';

-->>> 1 consulta que envolva junção externa (LEFT OUTER JOIN, ou RIGHT OUTER JOIN ou FULL OUTER JOIN)
-- Descrição: Obtendo registro de receberam: parcelas extras OU parcela OU ambos (intersecção)
SELECT * FROM auxilio.parcela as parcela
FULL OUTER JOIN auxilio.parcela_extra as parcela_extra on (parcela_extra.UF = parcela.uf)
LIMIT 10;

-->>> 1 consulta que envolva pelo menos uma operação de conjunto (UNION, INTERSECT, EXCEPT)
-- Descrição: Retornando registros de São Paulo e juntando com os registros do Rio de Janeiro
SELECT * FROM auxilio.parcela WHERE uf = 'SP'
UNION
SELECT * FROM auxilio.parcela WHERE uf = 'RJ'

-- Descrição: Obtendo municipios de São Paulo, exceto os munipcios que receberam mais de R$10000 na primaira parcela
SELECT nome_municipio FROM auxilio.municipio where uf = 'SP'
EXCEPT
SELECT nome_municipio FROM auxilio.parcela WHERE parcela_1_valor_beneficio < 10000

-->>> 1 consulta que envolva divisão relacional


-->>> 1 consulta com operação de agregação e agrupamento (Função de agregação + GROUP BY)
-- Descrição: Retornando a soma de todos os gastos com a primeira parcela para todas as cidades de Minas Gerais e Rio Grande do Sul
SELECT  
	uf,
	SUM(parcela.parcela_1_valor_beneficio) AS parcela_1_valor_beneficio
FROM auxilio.parcela
WHERE uf = 'MG' or uf = 'RS'
GROUP BY uf
