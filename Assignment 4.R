data<-read.csv('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Assignment_Data/a4q1data.csv')
attach(data)
interaction.plot(Price,Inflation,Tire.Wear.Out)

model<-lm(Tire.Wear.Out~as.factor(Price)+as.factor(Inflation)+as.factor(Price)*as.factor(Inflation))
summary(aov(model))

model<- lm(Tire.Wear.Out~as.factor(Treatment))
summary(aov(model))
