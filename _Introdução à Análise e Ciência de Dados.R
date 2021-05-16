#install.packages("tidyverse")
#install.packages("DBI")
#install.packages("RPostgres")

## ->> 1) Ingestão dos dados auxilio_emergencial no banco de dados 

library(tidyverse)
library(DBI)
library(RPostgres)

df <- read_csv2('./auxilio_emergencial.csv', col_names = c('ano_disponibilizacao', 'mes_disponibilizacao',
                                                           'uf', 'nome_municipio',
                                                           'parcela_1', 'parcela_2',
                                                           'parcela_3', 'parcela_4',
                                                           'parcela_5', 'parcela_6',
                                                           'parcela_7', 'parcela_8',
                                                           'parcela_9', 'parcela_1_valor_beneficio',
                                                           'parcela_2_valor_beneficio', 'parcela_3_valor_beneficio',
                                                           'parcela_4_valor_beneficio', 'parcela_5_valor_beneficio',
                                                           'parcela_6_valor_beneficio', 'parcela_7_valor_beneficio',
                                                           'parcela_8_valor_beneficio', 'parcela_9_valor_beneficio',
                                                           'pagamento_bloqueado_ou_cancelado', 'valor_devolvido_a_uniao',
                                                           'bolsa_familia', 'cadun_nao_bolsa',
                                                           'extra_cadun'),
                                              col_types = list(col_integer(), col_integer(),
                                                               col_character(), col_character(),
                                                               col_integer(), col_integer(),
                                                               col_integer(), col_integer(),
                                                               col_integer(), col_integer(),
                                                               col_integer(), col_integer(),
                                                               col_integer(), col_number(),
                                                               col_number(), col_number(),
                                                               col_number(), col_number(),
                                                               col_number(), col_number(),
                                                               col_number(), col_number(),
                                                               col_integer(), col_integer(),
                                                               col_integer(), col_integer(),
                                                               col_integer()))
df
df[df == 'NULL'] <- '0'
df[is.na(df)] <- 0

df <- tibble::rowid_to_column(df, "id")

municipio <- df[, c(4, 5)] %>% distinct(uf, nome_municipio, .keep_all = TRUE)

parcela <- df[, c(1,4,5,2,3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23)]

parcela[, c(14:23)] <- lapply(parcela[, c(14:23)], as.numeric)

parcela_extra <- df[, c(1,4,5,24,25,26,27,28)]

names(municipio) <- tolower(names(municipio))
names(parcela_extra) <- tolower(names(parcela_extra))
names(parcela) <- tolower(names(parcela))

con <- dbConnect(RPostgres::Postgres(),dbname = 'auxilio_emergencial',   options="-c search_path=auxilio",
                 host = 'localhost', 
                 port = 5432, 
                 user = 'postgres',
                 password = 'postgres123')


dbAppendTable(con, "municipio", municipio)
dbAppendTable(con, "parcela_extra", parcela_extra)
dbAppendTable(con, "parcela", parcela)

dbDisconnect(con)



## ->> 2) Visualização dos dados do csv auxilio_emergencial


library(tidyverse)

df <- read_csv2('./auxilio_emergencial.csv', col_names = c('ano_disponibilizacao', 'mes_disponibilizacao',
                                                           'uf', 'nome_municipio',
                                                           'parcela_1', 'parcela_2',
                                                           'parcela_3', 'parcela_4',
                                                           'parcela_5', 'parcela_6',
                                                           'parcela_7', 'parcela_8',
                                                           'parcela_9', 'parcela_1_valor_beneficio',
                                                           'parcela_2_valor_beneficio', 'parcela_3_valor_beneficio',
                                                           'parcela_4_valor_beneficio', 'parcela_5_valor_beneficio',
                                                           'parcela_6_valor_beneficio', 'parcela_7_valor_beneficio',
                                                           'parcela_8_valor_beneficio', 'parcela_9_valor_beneficio',
                                                           'pagamento_bloqueado_ou_cancelado', 'valor_devolvido_a_uniao',
                                                           'bolsa_familia', 'cadun_nao_bolsa',
                                                           'extra_cadun'),
                col_types = list(col_integer(), col_integer(),
                                 col_character(), col_character(),
                                 col_integer(), col_integer(),
                                 col_integer(), col_integer(),
                                 col_integer(), col_integer(),
                                 col_integer(), col_integer(),
                                 col_integer(), col_number(),
                                 col_number(), col_number(),
                                 col_number(), col_number(),
                                 col_number(), col_number(),
                                 col_number(), col_number(),
                                 col_integer(), col_integer(),
                                 col_integer(), col_integer(),
                                 col_integer()))

df[df == 'NULL'] <- '0'
df[is.na(df)] <- 0
df <- df %>% filter(uf != '')

df_valor_total <- df %>% mutate(valor_total = parcela_1_valor_beneficio + parcela_2_valor_beneficio + 
                                  parcela_3_valor_beneficio + parcela_4_valor_beneficio +
                                  parcela_5_valor_beneficio + parcela_6_valor_beneficio +
                                  parcela_7_valor_beneficio + parcela_8_valor_beneficio + parcela_9_valor_beneficio,
                                parcela_total = parcela_1 + parcela_2 + parcela_3 + parcela_4 +
                                  parcela_5 + parcela_6 + parcela_7 + parcela_8 +
                                  parcela_9)

valor_agrupado <- df_valor_total %>% group_by(mes_disponibilizacao, uf) 

beneficio_total_estado <- df_valor_total %>% group_by(uf) %>% summarise(total = sum(valor_total), total_parcela = sum(parcela_total))

valor_total_agrupado <- summarise(valor_agrupado, total_mes = sum(valor_total))

parcela_total_agrupado <- summarise(valor_agrupado, total_parcela = sum(parcela_total))

View(beneficio_total_estado)
View(valor_total_agrupado)
View(parcela_total_agrupado)

ggplot(data = df_valor_total) +  
  geom_col(aes(x = as.factor(mes_disponibilizacao), y = valor_total, fill = mes_disponibilizacao)) +  
  labs(x = "Mes", y = "Benefício", title = "Valor total do Benefício por mês") +
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =','))

ggplot(data = df_valor_total) +  
  geom_col(aes(x = uf, y = valor_total, fill = uf)) +  
  labs(x = "Estado", y = "Benefício", title = "Valor total Benefício por Estado") +
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) +
  facet_wrap(vars(mes_disponibilizacao), ncol = 2)

ggplot(data = df_valor_total) +  
  geom_col(aes(x = uf, y = parcela_total, fill = uf)) +  
  labs(x = "Estado", y = "Número de Parcelas", title = "Quantidade de Parcelas por Estado") +
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) +
  facet_wrap(vars(mes_disponibilizacao), ncol = 2)


ggplot(data = valor_total_agrupado) +  
  geom_line(aes(x = as.factor(mes_disponibilizacao), y = total_mes, colour = uf, group = uf)) +  
  labs(x = "Mês", y = "Benefício", title = "Valor total Benefício por mês em cada Estado") +
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) +
  facet_wrap(vars(uf))

ggplot(data = parcela_total_agrupado) +  
  geom_line(aes(x = as.factor(mes_disponibilizacao), y = total_parcela, colour = uf, group = uf)) +
  labs(x = "Mês", y = "Parcelas", title = "Quantidade de Parcelas por mês em cada Estado") +
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) +
  facet_wrap(vars(uf))

ggplot(data = beneficio_total_estado) +  
  geom_point(aes(x = total, y = total_parcela, colour = uf), size = 5) +  
  labs(x = "Beneficio total", y = "Parcelas", title = "Benefício e parcelas") +
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) +
  scale_x_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) 

## ->> Gráficos e tabelas a partir das query's feitas anteriormente

library(DBI)
library(RPostgres)
con <- dbConnect(RPostgres::Postgres(),dbname = 'auxilio_emergencial',   options="-c search_path=auxilio",
                 host = 'localhost', 
                 port = 5432, 
                 user = 'postgres',
                 password = 'postgres123')

cidades_sp <- as_tibble(dbGetQuery(con, "SELECT nome_municipio FROM auxilio.municipio where uf = 'SP'"))

receberam_parcela_ou_extra <- as_tibble(dbGetQuery(con, "SELECT * FROM auxilio.parcela as parcela
FULL OUTER JOIN auxilio.parcela_extra as parcela_extra on (parcela_extra.UF = parcela.uf) LIMIT 100"))

sp_rj <- as_tibble(dbGetQuery(con, "SELECT * FROM auxilio.parcela WHERE uf = 'SP'
UNION
SELECT * FROM auxilio.parcela WHERE uf = 'RJ'"))

sp_valor1_maior_dez_mil <- as_tibble(dbGetQuery(con, "SELECT nome_municipio FROM auxilio.municipio where uf = 'SP'
EXCEPT
SELECT nome_municipio FROM auxilio.parcela WHERE parcela_1_valor_beneficio < 10000"))

sp_except <- as_tibble(dbGetQuery(con, "SELECT nome_municipio FROM auxilio.municipio
WHERE NOT EXISTS (
	SELECT nome_municipio FROM auxilio.municipio where uf = 'SP'
	EXCEPT
	SELECT nome_municipio FROM auxilio.parcela WHERE parcela_1_valor_beneficio < 10000
)"))

parcela_1_valor_beneficio_mg_rs <- as_tibble(dbGetQuery(con, "SELECT  
	uf,
	SUM(parcela.parcela_1_valor_beneficio) AS parcela_1_valor_beneficio
FROM auxilio.parcela
WHERE uf = 'MG' or uf = 'RS'
GROUP BY uf"))


View(cidades_sp)

View(receberam_parcela_ou_extra)

ggplot(data = sp_rj) +
  geom_line(aes(x = as.factor(mes_disponibilizacao), y = parcela_1_valor_beneficio,  colour = uf, group = uf), size = 2) +
  labs(x = "Mês", y = "Valor bnefício da parcela 1", title = "Valor por mês do benefício da primeira parcela")+
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =',')) +
  facet_wrap(vars(uf))

View(sp_valor1_maior_dez_mil)

View(sp_except)

ggplot(data = parcela_1_valor_beneficio_mg_rs) +
  geom_col(aes(x = uf, y = parcela_1_valor_beneficio, fill = uf)) +
  labs(x = "Estado", y = "Valor bnefício da parcela 1", title = "Valor do benefício da primeira parcela nos Estados MG e RS")+
  scale_y_continuous(n.breaks = 6, labels = scales::number_format(big.mark = ".", decimal.mark =','))