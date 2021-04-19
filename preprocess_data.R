library(DBI)
library(readr)
library(tidyverse)
library(dplyr)
library(tidyr)
library(stringi)
library(stringr)


df<-read_csv2("data/202101_AuxilioEmergencial.csv") %>% 
  filter(df, !is.na(CÓDIGO.MUNICÍPIO.IBGE) & NIS.BENEFICIÁRIO > 0)

str(df)
View(df)

municipio <- df[, c(2, 3, 4)] %>% distinct(CÓDIGO.MUNICÍPIO.IBGE, .keep_all = TRUE) %>% 
  rename(
    CODIGO_MUNICIPIO_IBGE = CÓDIGO.MUNICÍPIO.IBGE,
    NOME_MUNICIPIO = NOME.MUNICÍPIO
  )
View(municipio)

parcela <- df[, c(1,5, 12, 13, 14)] %>%
  rename(
    MES_DISPONIBILIZACAO = MÊS.DISPONIBILIZAÇÃO,
    NIS_BENEFICIARIO = NIS.BENEFICIÁRIO,
    OBSERVACAO = OBSERVAÇÃO,
    VALOR_BENEFICIO = VALOR.BENEFÍCIO
  )
parcela$MES_DISPONIBILIZACAO <- as.character(parcela$MES_DISPONIBILIZACAO)
stri_sub_all(parcela$MES_DISPONIBILIZACAO, 7, 6) <- "01"
parcela$MES_DISPONIBILIZACAO <- as.Date(parcela$MES_DISPONIBILIZACAO, "%Y%m%d")
parcela$VALOR_BENEFICIO <- str_replace_all(parcela$VALOR_BENEFICIO, ",", ".") %>% as.double(parcela$VALOR_BENEFICIO)



beneficiario <- df[, c(3, 5,6,7,8,9,10,11)] %>% distinct(NIS.BENEFICIÁRIO, .keep_all = TRUE) %>% 
  rename(
    CODIGO_MUNICIPIO_IBGE = CÓDIGO.MUNICÍPIO.IBGE,
    NIS_BENEFICIARIO = NIS.BENEFICIÁRIO,
    NIS_RESPONSAVEL = NIS.RESPONSÁVEL,
    CPF_BENEFICIARIO = CPF.BENEFICIÁRIO,
    CPF_RESPONSAVEL = CPF.RESPONSÁVEL,
    NOME_RESPONSAVEL = NOME.RESPONSÁVEL,
    NOME_BENEFICIARIO = NOME.BENEFICIÁRIO
  )
View(beneficiario)

con <- dbConnect(RPostgres::Postgres(),dbname = 'auxilio_emergencial', 
                 host = 'localhost', 
                 port = 5432, 
                 user = 'postgres',
                 password = 'postgres123')

dbCreateTable(con, "parcela", parcela)
dbCreateTable(con, "beneficiario", beneficiario)
dbCreateTable(con, "municipio", municipio)

dbAppendTable(con, "municipio", municipio)
dbAppendTable(con, "beneficiario", beneficiario)
dbAppendTable(con, "parcela", parcela)
#dbReadTable(con, "municipio")
dbDisconnect(con)




