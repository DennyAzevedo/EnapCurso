custos_hospitalares<- c(1955.77, 1884.48, 1825.71, 2002.66, 1924.01, 1946.58, 2098.05, 2050.29, 2015.67, 2011.02) 

media = mean(custos_hospitalares)
mediana = median(custos_hospitalares)
desvioPadrao = sd(custos_hospitalares)

print(paste("A Média dos custos hospitalares: ", media))
print(paste("A mediana dos custos hospitalares: ", mediana))
print(paste("O Devio Padrão dos custos hospitalares: ", desvioPadrao))
