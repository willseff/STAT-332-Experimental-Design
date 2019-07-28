#Question 1
data<-read.csv('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Assignment_Data/a4q1data.csv')
attach(data)
interaction.plot(Price,Inflation,Tire.Wear.Out)

model<-lm(Tire.Wear.Out~as.factor(Price)+as.factor(Inflation)+as.factor(Price)*as.factor(Inflation))
summary(aov(model))

model<- lm(Tire.Wear.Out~as.factor(Treatment))
summary(aov(model))

#Question 2
data<-read.csv('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Assignment_Data/Soap2.csv')
attach(data)
with(data, tapply(Process.capability, list(MixingTemp=Mixing.Temperature,CoolantTemp=Coolant.Temperature,MoistureCont=Moisture.content), mean) )
model<-lm(Process.capability~as.factor(Moisture.content)+as.factor(Coolant.Temperature)+as.factor(Mixing.Temperature)*as.factor(Coolant.Temperature)+as.factor(Mixing.Temperature)*as.factor(Moisture.content)+as.factor(Coolant.Temperature)*as.factor(Moisture.content))
summary(aov(model))

interaction.plot(Moisture.content,Mixing.Temperature,Process.capability)
