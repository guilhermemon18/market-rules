library(arules)
#Base de dados de um mercado na França:
base = read.transactions('mercado2.csv', sep = ',', rm.duplicates = TRUE)
summary(base)

itemFrequencyPlot(base, topN = 7)

#Dataset possui registros de compras em 7 dias
#Então para verificar o produtos que foram vendidos 4 vezes por dia
#4 * 7 = 28 produtos por semana.
#Support = 28 / 7501 = 0,003
regras = apriori(data = base, parameter = list(support = 0.003, confidence = 0.2))

inspect(sort(regras, by = 'lift')[1:20])