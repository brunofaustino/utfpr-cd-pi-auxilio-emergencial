library(tidyverse)
library(DBI)

df <- read_delim('./auxilio_emergencial.txt', '\t') %>% drop_na()
df[df == 'NULL'] <- '0'

df <- tibble::rowid_to_column(df, "ID")

municipio <- df[, c(4, 5)] %>% distinct(NOME_MUNICIPIO, .keep_all = TRUE)

parcela <- df[, c(1,5,2,3,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23)] %>% mutate(ID_PARCELA_EXTRA = ID)

parcela[, c(14:23)] <- lapply(parcela[, c(14:23)], as.numeric)

parcela_extra <- df[, c(1,24,25,26,27,28)]

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


