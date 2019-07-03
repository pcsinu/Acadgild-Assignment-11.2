library(ggplot2)

bankData <- read.csv("bank-additional-full.csv",sep=";")

ggplot(bankData, aes(factor(job), fill = factor(default))) +
  geom_bar(position = "dodge2")

summary(table(bankData$duration,bankData$housing))
plot(bankData$housing, bankData$duration)

summary(table(bankData$cons.conf.idx,bankData$cons.price.idx))
plot(bankData$cons.conf.idx,bankData$cons.price.idx)

plot(bankData$job,bankData$emp.var.rate)

plot(bankData$education,bankData$emp.var.rate)
