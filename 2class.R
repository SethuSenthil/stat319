#Read data get run linear regression
bears <- read.csv("BearsData.csv", header=T)
model <- lm(NeckG~HeadW, data=bears)

#correlation and correlation test
cor(bears$NeckG,bears$HeadW)
cor.test(bears$NeckG,bears$HeadW)

#visual inspection of normality
qqnorm(model$residuals)
qqline(model$residuals)

#statistical test of normality
shapiro.test(model$residuals)

#visual check of constant variance
plot(bears$HeadW, model$residuals)
abline(h=0)

#first two lines are repeated from start
#don't need to do this if continuing from above without closing R
bears <- read.csv("BearsData.csv", header=T)
model <- lm(NeckG~HeadW, data=bears)

#ANOVA table
anova(model)

#regression model estimates and statistics
summary(model)

#confidence interval for slope and intercept
confint(model, level=0.95)

#first two lines are repeated from start
#don't need to do this if continuing from above without closing R
bears <- read.csv("BearsData.csv", header=T)
model <- lm(NeckG~HeadW, data=bears)

#confidence interval and prediction interval for specific bear Head Width of 6 
predict(model, interval="confidence", se.fit=T, newdata=data.frame(HeadW=6),level=0.95)
predict(model, interval="prediction", se.fit=F, newdata=data.frame(HeadW=6),level=0.95)

