#Questions how to move legend?
#Question 1
data<-read.csv('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Assignment_Data/a4q1data.csv')
attach(data)
data
interaction.plot(Price,Inflation,Tire.Wear.Out,type='l',xlab ='Price', ylab='Mean of Tire Wear Out',main='Interaction Plot of Price and Inflation',legend='TRUE')

model<-lm(Tire.Wear.Out~as.factor(Price)+as.factor(Inflation)+as.factor(Price)*as.factor(Inflation))
summary(aov(model))
model<- lm(Tire.Wear.Out~as.factor(Treatment))
summary(aov(model))
pt(0.116,23)
#(d)
with(data, tapply(Tire.Wear.Out, list(Price,Inflation), mean))
model<- lm(Tire.Wear.Out~as.factor(Treatment))
summary(aov(model))
0.0036/(sqrt(0.000143*2/3))

1-pt(0.3687,23)
pt(123,23)
#Question 2
data<-read.csv('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Assignment_Data/Soap2.csv')
attach(data)
#between treatments
t<-with(data, data.table::rleid(Moisture.content, Coolant.Temperature,Mixing.Temperature))
t
model<-(Process.capability~as.factor(t))
summary(aov(model))
#interactions
with(data, tapply(Process.capability, list(MixingTemp=Mixing.Temperature,CoolantTemp=Coolant.Temperature,MoistureCont=Moisture.content), mean) )
model<-lm(Process.capability~as.factor(Moisture.content)+as.factor(Coolant.Temperature)+as.factor(Mixing.Temperature)*as.factor(Coolant.Temperature)+as.factor(Mixing.Temperature)*as.factor(Moisture.content)+as.factor(Coolant.Temperature)*as.factor(Moisture.content))
summary(aov(model))

interaction.plot(Moisture.content,Mixing.Temperature,Process.capability)
