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
  labs(x = "Mês", y = "Benef  ício", title = "Valor total Benefício por mês em cada Estado") +
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


