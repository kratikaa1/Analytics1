#Regression analysis
#Simple linear regression with 1 IV & 1 DV

data(women)
names(women)



cov(women$height, women$weight)
#69: WHICH SHOWS +ve relationship btwn height and weight
cor(women$height, women$weight)
#0.995: which shows strong and positive relationship between variables

plot(x=women$height, y=women$weight, type='b')
abline(lm(weight ~ height,data = women), col='red')
#abline is a prediction line

fit1=lm(weight ~ height, data=women) #creating a linear model
summary(fit1) 
#p value is significant as it is less than 0.05, so there is a relationship between y and atleast 1 x.
#in simple linear regression we do not use adjusted r sq we use multiple r sq.
#multiple r square: 99.1% chances that weight is dependent on height(doubtful)
#residual std. error: it is the deviation around the standard line.
#coefficient values: if weight is increased by 1 unit height is incresed by 3.45 units
#intercept and height both are significant for weight
#residuals: error, difference btwn predicted and actual weight. ranges from -1.7 to 3.1; variation.
#f statistic tells us whether there is a linear model which exists btwn IV AND DV. if p value is less thN 0.05,thn it is significant and we reject null hypothesis. and hence there is a sifnificant relationship btwn height and weight.
#book r in action, pg.174
#estimate: if weight increases by1 unit thn height shld increase by 3.45 units.
(new1= data.frame(height=c(65,66))) #heights needs to be in the range of dataset bcz u can't extrapolate but intrapolate within the range.
new1
(p1=predict(fit1, newdata = new1))
x=(cbind(new1,p1))

