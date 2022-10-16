### Question 1
# Null hypothesis - the two variables are statistically independent
# Observed frequencies in the contingency table against null
df <- as.data.frame(PS02_data)

Total.sample.size <- df[3,4]
Total.not.stopped <- df[3,1]
Total.bribe.req <- df[3,2]
Total.stopped <- df[3,3]
Total.Upper <- df[1,4]
Total.Lower <- df[2,4]

fo1 <- df[1,1]
fe1 <- ((Total.not.stopped)*(Total.Upper))/(Total.sample.size)
fo2 <- df[2,1]
fe2 <- ((Total.not.stopped)*(Total.Lower))/(Total.sample.size)
fo3 <- df[1,2]
fe3 <- ((Total.bribe.req) * (Total.Upper))/(Total.sample.size)
fo4 <- df[2,2]
fe4 <- ((Total.bribe.req) * (Total.Lower))/(Total.sample.size)
fo5 <- df[1,3]
fe5 <- ((Total.stopped)*(Total.Upper))/(Total.sample.size)
fo6 <- df[2,3]
fe6 <- ((Total.stopped)*(Total.Lower))/(Total.sample.size)

chi.stat1 <- ((fo1 - fe1) ^ 2 / fe1) + ((fo2 - fe2) ^ 2 / fe2) + 
  ((fo3 - fe3) ^ 2 / fe3) + ((fo4 - fe4) ^ 2 / fe4) + ((fo5-fe5) ^ 2 / fe5) + ((fo6 - fe6) ^ 2 / fe6)
print(chi.stat1)

#nrow(df) - 1
#ncol(df) - 1
deg_free <- (nrow(df) - 1) * (ncol(df) - 1)

#pchisq(6.460777, 6)

p.value <- pchisq(chi.stat1, deg_free)
p.value

# As the P-value is not less than 0.1, we fail to reject 
# the null hypothesis, that the values are statistically independent.

Propcol1 <- Total.not.stopped/Total.sample.size
Proprow1 <- Total.Upper/Total.sample.size
Propcol2 <- Total.bribe.req/Total.sample.size
Proprow2 <- Total.Lower/Total.sample.size
Propcol3 <- Total.stopped/Total.sample.size

z1 <- (fo1 - fe1) / sqrt(fe1 * ((1 - (Total.Upper/Total.sample.size))*(1 - (Total.not.stopped/Total.sample.size))))
z2 <- (fo2 - fe2) / sqrt(fe2 * ((1 - (Total.Lower/Total.sample.size))*(1 - (Total.not.stopped/Total.sample.size))))
z3 <- (fo3 - fe3) / sqrt(fe3 * ((1 - (Total.Upper/Total.sample.size))*(1 - (Total.bribe.req/Total.sample.size))))
z4 <- (fo4 - fe4) / sqrt(fe4 * ((1 - (Total.Lower/Total.sample.size))*(1 - (Total.bribe.req/Total.sample.size))))
z5 <- (fo5 - fe5) / sqrt(fe5 * ((1 - (Total.Upper/Total.sample.size))*(1 - (Total.stopped/Total.sample.size))))
z6 <- (fo6 - fe6) / sqrt(fe6 * ((1 - (Total.Lower/Total.sample.size))*(1 - (Total.stopped/Total.sample.size))))

#### Question 2
df <- read.csv("https://raw.githubusercontent.com/kosukeimai/qss/master/PREDICTION/women.csv")
df <- as.data.frame(df)



plot(df$reserved, df$water)
lin <- lm(df$water~df$reserved)
summary(lin) 
abline(lin)


