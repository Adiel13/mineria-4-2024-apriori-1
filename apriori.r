install.packages("arules")
library(arules)

data <- read.csv('C:\\Users\\kevin\\OneDrive\\Documentos\\MIIC\\Mineria\\Censo2018\\HOGAR_BDP.csv', sep=",")

data

reglas <- apriori(data, parameter = list(support=0.2, confidence=0.5 ))

inspect(reglas[0:100])
inspect(reglas[100:200])
inspect(reglas[200:300])

data2 <- subset(data, DEPARTAMENTO == 1)
data2 <- data2[, -1]

reglas2 <- apriori(data2, parameter = list(support=0.2, confidence=0.5 ))
inspect(reglas2[0:100])
inspect(reglas2[100:200])
inspect(reglas2[200:300])


data3 <- subset(data2, MUNICIPIO == 101)
data3 <- data3[, -1]
data3 <- data3[, -1]
data3 <- data3[, -39]
data3 <- data3[, -38]
data3 <- data3[, -6]
data3 <- data3[, -23]

reglas3 <- apriori(data3, parameter = list(support=0.2, confidence=0.5 ))
inspect(reglas3[0:100])
inspect(reglas3[100:200])
inspect(reglas3[500:600])
inspect(reglas3[600:700])



reglas3 <- apriori(data3, parameter = list(support=0.3, confidence=0.6))
