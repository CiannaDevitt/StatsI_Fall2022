install.packages('car')
library(car)
data(Prestige)
help("Prestige")


?ifelse

professional <- ifelse(Prestige$type == 'prof', 1, 0)
professional

model <- lm(Prestige$prestige ~ Prestige$income + professional + Prestige$income:professional)
summary(model)
plot(model)

p_value <- pt(q = 2.65, df= 128)
p_value

p_value2 <- pt(q = 3.23, df = 128)
p_value2


