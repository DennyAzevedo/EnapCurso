install.packages("devtools")
devtools::install_github("tchiluanda/rtn")

library(rtn)
library(tidyverse)

rtn::get_full_account_name()

despesa_beneficios_previdenciarios<- "4.1 Benefícios Previdenciários"

get_account_data_by_month(despesa_beneficios_previdenciarios,month = 12)

dados_previdenciarios<-get_account_data_by_month(despesa_beneficios_previdenciarios,month = 1:12)

dados_previdenciarios%>%
  plot_rtn_series()

get_account_data_by_month(despesa_beneficios_previdenciarios,month = 1:12) %>%
  plot_rtn_series()

get_full_account_name()

despesas_obrigatorias <- c("4.4.1.1", "4.4.1.2", "4.4.1.3","4.4.1.4","4.4.1.5" )

get_12_month_accumulated_account_data_by_month(despesas_obrigatorias,
  month = c(1:12), #indica que quer o valor acumulado para todos os 12 meses do ano
  match_required = FALSE)%>% #indica que vai fazer o match sem precisar do nome completo da conta
  plot_rtn_series() #gera o gráfico de linha

