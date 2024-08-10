idServidor <- c(1,2,3,4,5,6,7)
sexo <- c("Masculino","Masculino","Masculino","Feminino","Feminino","Feminino","Feminino")
formacao <- c("Administração", "Engenharia", "Economia", "Administração", "Economia", "Medicina", "Psicologia")
lotacao <- c("RH", "Financeiro", "Financeiro", "Atendimento", "Planejamento", "Perícia Médica", "RH")
remuneracao <- c(8000, 7500, 8200, 8300, 8200, 8300, 8250)

dfServidores = data.frame(Id_Servidor = idServidor,
              Sexo = sexo,
              Formação = formacao,
              Lotação = lotacao,
              Remuneração = remuneracao)
library(questionr)
questionr::freq(dfServidores$Sexo)
questionr::freq(dfServidores$Formação, cum = TRUE)
