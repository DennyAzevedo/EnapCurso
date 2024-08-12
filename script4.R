# Criando conjunto de dados
1:100

# fixa a "semente" para a geração de números aleatórios - mesma semestre, mesmos números 
set.seed(1972)

# gera um conjunto com 50 números aleatórios
valores_aleatorios<- sample(x=1:100, size = 50)
valores_aleatorios

# soma os valores de um conjunto
sum(1:3)  

# informa o número de linhas (ou elementos) de um conjunto ou DataFrame
NROW(1:3)

# calculando a média de do conjunto "valores_aleatorios"
sum(valores_aleatorios)/NROW(valores_aleatorios)

# calculando a média de do conjunto "valores_aleatorios"
mean(x= valores_aleatorios)

# calculando a mediana de do conjunto "valores_aleatorios"
median(x= valores_aleatorios)

# calculando o valor mínimo do conjunto "valores_aleatorios"
min(valores_aleatorios)

# calculando o valor maxímo do conjunto "valores_aleatorios"
max(valores_aleatorios)

# calculando a amplitude do conjunto "valores_aleatorios"
max(valores_aleatorios) - min(valores_aleatorios)

# calculando o desvio padrão do conjunto "valores_aleatorios"
sd(valores_aleatorios)
