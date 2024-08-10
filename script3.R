install.packages("questionr")
library(questionr)
nomeHospital <- c("São Sebastião", "João Paulo II", "Trindade", "São Clemente", "Hospital Regional", "Hospital Geral")
redeHospitalar <- c("Municipal", "Municipal", "Federal", "Estadual", "Estadual",  "Municipal")
hospitais <- data.frame(Nome_hospital = nomeHospital,
                        Rede_Hospitalar = redeHospitalar)
hospitais$Nome_hospital
hospitais$Rede_Hospitalar

questionr::freq(x= hospitais$Rede_Hospitalar, cum = TRUE, sort = "desc")
