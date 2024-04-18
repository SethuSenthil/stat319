#Read data get run linear regression
heartRateOxygenCons <- read.csv("HeartRateOxygCons.csv", header=T)
obj2 <- lm(Ox~HR, data=heartRateOxygenCons)

#correlation and correlation test
cor(heartRateOxygenCons$Ox,heartRateOxygenCons$HR)
cor.test(heartRateOxygenCons$Ox,heartRateOxygenCons$HR)

#visual inspection of normality
qqnorm(obj2$residuals)
qqline(obj2$residuals)

#statistical test of normality
shapiro.test(obj2$residuals)

#visual check of constant variance
plot(heartRateOxygenCons$HR, obj2$residuals)
abline(h=0)

#first two lines are repeated from start
#don't need to do this if continuing from above without closing R
heartRateOxygenCons <- read.csv("HeartRateOxygCons.csv", header=T)
obj2 <- lm(Ox~HR, data=heartRateOxygenCons)

#ANOVA table
anova(obj2)

#regression model estimates and statistics
summary(obj2)

#confidence interval for slope and intercept
confint(obj2, level=0.95)

#first two lines are repeated from start
#don't need to do this if continuing from above without closing R
heartRateOxygenCons <- read.table("Data Location", header=T)
obj2 <- lm(y~x, data=heartRateOxygenCons)

#confidence interval and prediction interval for specific X observation
predict(obj2, interval="confidence", se.fit=T, newdata=data.frame(x=value),level=0.95)
predict(obj2, interval="prediction", se.fit=F, newdata=data.frame(x=value),level=0.95)