library(DBI)
library(readr)


df<-read.csv("data/202101_AuxilioEmergencial.csv", header = TRUE, sep = ";")

head(df)

con <- dbConnect(RPostgres::Postgres(),dbname = 'auxilio_emergencial', 
                 host = 'localhost', 
                 port = 5432, 
                 user = 'postgres',
                 password = 'postgres123')

queries <- readLines("src/create.sql")

sapply(queries, function(x) dbGetQuery(con,x))

dbDisconnect(con)
