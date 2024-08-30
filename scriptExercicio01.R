library(tidyverse)
library(dplyr)

arquivo<- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_municipios.csv"

dados_municipios<- read.csv(file= arquivo)

filter(.data= dados_municipios, sigla_uf!="CE" )

dados_municipios %>%
  group_by(nome_regiao) %>%
  summarise(
    quanidade_municipios = n(),
    populacao_regiao = sum(populacao)
  ) %>%
  arrange(desc(populacao_regiao)) %>%
  select(nome_regiao, quanidade_municipios, populacao_regiao)
