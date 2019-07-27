#textbook example 1
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/fac_example1.txt', header = TRUE, sep = "", dec = ".")
summary(aov(data$time~as.factor(data$tt)))
aggregate(data$time, list(treatments = data$tt), mean)

interaction.plot(data$method,data$sol,data$time,
                 type = 'b', pch=c(19,1),col = 1:2, lty =1:2)

#example 2
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/fac_example2.txt', header = TRUE, sep = "", dec = ".")
model<- lm(data$sales~as.factor(data$block)+as.factor(data$colour)+as.factor(data$image)+as.factor(data$colour)*as.factor(data$image))
summary(aov(model))
interaction.plot(data$colour,data$image,data$sales,type ='b',
                 pch=c(19,1), col = 1:2, lty = 1:2, ylab='Average of Sales')
#Exercise 2
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/fac_exercise2.txt', header = TRUE, sep = "", dec = ".")
mu_hat = 0.133
with(data, tapply(response, list(Design=design,Condition=condition), mean) )
t<-with(data, data.table::rleid(design, condition))
boxplot(response ~ t, data=data, xlab="Treatment", ylab="Response" )
summary(aov(data$response~as.factor(t)))
#there appears to be a difference between treatment effects 
#interaction plot
interaction.plot(data$design,data$condition,data$response, type ='b',
                 pch=c(19,1), col = 1:2, lty = 1:2, ylab='Average Response')

#Exercise 3
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/fac_exercise3.txt', header = TRUE, sep = "", dec = ".")
head(data)
model<- lm(response~as.factor(subject)+as.factor(angle)+as.factor(width)+as.factor(angle)*as.factor(width), data = data)
summary(aov(model))
plot(model)
interaction.plot(data$angle,data$width,data$response,type ='b',
                pch=c(19,1), col = 1:2, lty = 1:2, ylab='Average of Sales')
#Exercise 5
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/fac_exercise5.txt', header = TRUE, sep = "", dec = ".")
attach(data)
model<- lm(response~ as.factor(dentist)+as.factor(brand)+as.factor(desensization)+as.factor(desensization)*as.factor(brand))
summary(aov(model))
