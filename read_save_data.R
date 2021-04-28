library(tidyverse)
library(DBI)

df <- read_delim('./auxilio_emergencial.txt', '\t') %>% drop_na()
df[df == 'NULL'] <- '0'

View(head(df))
View(municipio)
View(head(parcela))
View(head(parcela_extra))

df <- tibble::rowid_to_column(df, "ID")

municipio <- df[, c(4, 5)] %>% distinct(NOME_MUNICIPIO, .keep_all = TRUE)

parcela <- df[, c(1,5,2,3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23)] %>% mutate(ID_PARCELA_EXTRA = ID)

parcela_extra <- df[, c(1,24,25,26,27,28)]



con <- dbConnect(RPostgres::Postgres(),dbname = 'auxilio_emergencial', 
                 host = 'localhost', 
                 port = 5432, 
                 user = 'postgres',
                 password = 'postgres123')

dbCreateTable(con, "MUNICIPIO", municipio)
dbCreateTable(con, "PARCELA_EXTRA", parcela_extra)
dbCreateTable(con, "PARCELA", parcela)

dbAppendTable(con, "MUNICIPIO", municipio)
dbAppendTable(con, "PARCELA_EXTRA", municipio)
dbAppendTable(con, "PARCELA", parcela)

dbDisconnect(con)


