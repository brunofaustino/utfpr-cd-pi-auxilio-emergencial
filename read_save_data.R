#install.packages("tidyverse")
#install.packages("DBI")
#install.packages("RPostgres")

library(tidyverse)
library(DBI)
library(RPostgres)

df <- read_csv2('C:\\Users\\bfaam\\Downloads\\auxilio_emergencial.csv', col_names = c('ano_disponibilizacao', 'mes_disponibilizacao',
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

con <- dbConnect(RPostgres::Postgres(),dbname = 'postgres',   options="-c search_path=auxilio",
                 host = 'localhost', 
                 port = 5432, 
                 user = 'postgres',
                 password = 'admin')


dbAppendTable(con, "municipio", municipio)
dbAppendTable(con, "parcela_extra", parcela_extra)
dbAppendTable(con, "parcela", parcela)

dbDisconnect(con)
