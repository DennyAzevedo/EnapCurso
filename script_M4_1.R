library(tidyverse)

##Dados abertos de dados.gov.br
library(readr)
contratacoes_pcmv_pcva <- read_delim("mcmv_subsidiado_ogu202404.csv", 
    delim = ";", escape_double = FALSE,
    col_types = cols(qtd_uh = col_number(), 
               qtd_uh_distratadas = col_number(), 
               qtd_uh_entregues = col_number(), 
               qtd_uh_vigentes = col_number(), txt_cep = col_character(), 
               txt_cnpj_construtora_entidade = col_character()), 
    locale = locale(decimal_mark = ",", grouping_mark = "."), 
    trim_ws = TRUE)
View(mcmv_subsidiado_ogu202404)

contratacoes_pcmv_pcva%>%
  group_by(txt_sigla_uf) %>%
  summarise(
    contratadas= sum(qtd_uh), #soma das quantidades de unidades habitacionais contratadas
    entregues = sum(qtd_uh_entregues), #soma das quantidades de unidades habitacionais entregues
    perc_entregues = (entregues/contratadas)*100 #de unidades habitacionais entregues
  ) %>%
  arrange(desc(perc_entregues))


contratacoes_pcmv_pcva%>%
  group_by(txt_sigla_uf) %>%
  summarise(
    contratadas= sum(qtd_uh), #soma das quantidades de unidades habitacionais contratadas
    entregues = sum(qtd_uh_entregues), #soma das quantidades de unidades habitacionais entregues
    perc_entregues = (entregues/contratadas)*100 #de unidades habitacionais entregues
  ) %>%
  mutate(txt_sigla_uf=reorder(txt_sigla_uf, perc_entregues)) %>%
  ggplot() +
  geom_col(aes(x=perc_entregues, y=txt_sigla_uf))
