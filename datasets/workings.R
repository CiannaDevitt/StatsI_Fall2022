plot(expenditure$V1, expenditure$V2, type = "h", col= 1, ylim = c(0,10))
df_r <- data.frame(x = expenditure $V2, group= c(
  rep(expenditure $V3, nrow(expenditure)),
  rep(expenditure $V4, nrow(expenditure)),
  rep(expenditure $V5, nrow(expenditure))))
                   


df_r
plot(df_r)
ex_int <- data.frame(expenditure)
p

df3 <- data.frame(percap_incomeX1, percap_exY)
df2 <- data.frame(percap_exY, num_peoX3,num_resX2,percap_incomeX1)
plot(df2)
plot(df3, xlab="per capita personal income", ylab="per capita expenditure on shelters/housing assistance")


df4<- data.frame(num_resX2, region_df)

plot(west)

hist(x=regionI, y=percap_exYI, main="histogram of region")

state <- expenditure $V1
percap_incomeX1 <- expenditure $V3
percap_exY <- expenditure $V2
percap_exYI <- as.integer(percap_exY)
num_resX2 <- expenditure $V4
num_peoX3 <- expenditure $V5
region <- expenditure $V6

region_df <-data.frame(state, region)

regionI <- as.integer(region)


northeast_region <-region_df[2:10,]
north_central <- region_df[11:22,]
south <- region_df[23:38,]
west <- region_df[39:51,]
