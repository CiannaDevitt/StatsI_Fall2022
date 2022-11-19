library(stargazer)
library(tidyverse)

data <- read.csv('https://raw.githubusercontent.com/ASDS-TCD/StatsI_Fall2022/main/datasets/incumbents_subset.csv')

#### Question 1

model <- lm(data$voteshare ~ data$difflog)
residual1 <- model$residuals
plot(data$difflog, data$voteshare)
abline(model)
summary(model)


#### Question 2

model2 <- lm(data$presvote ~ data$difflog)
summary(model2)
plot(data$difflog, data$presvote)
abline(model2)
residual2 <- model2$residuals
residual2


#### Question 3

model3 <- lm(data$voteshare ~ data$presvote)
summary(model3)
abline(plot(data$presvote, data$voteshare))
plot(data$presvote, data$voteshare)
abline(model3)

##### Question 4

model4 <- lm(residual1 ~ residual2)
summary(model4)
plot(residual2, residual1)
abline(model4)

##### Question 5
model5 <- lm(data$voteshare ~ data$difflog + data$presvote)
summary(model5)
