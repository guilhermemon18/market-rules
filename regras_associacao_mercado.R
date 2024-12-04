# install.packages('arules')
library(arules)

base = read.csv('mercado1.csv', header = FALSE)
base = read.transactions('mercado1.csv', sep = ',', rm.duplicates = TRUE)
summary(base)

itemFrequencyPlot(base, topN = 7)
#CRia as regras com algoritmo apriori com o suporte e confiança
regras = apriori(data = base, parameter = list(support = 0.3, confidence = 0.8))

inspect(sort(regras, by = 'lift'))
