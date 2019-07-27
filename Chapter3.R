#textbook example
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/fac_example1.txt', header = TRUE, sep = "", dec = ".")
summary(aov(data$time~as.factor(data$tt)))
aggregate(data$time, list(treatments = data$tt), mean)

interaction.plot(data$method,data$sol,data$time,
                 type = 'b', pch=c(19,1),col = 1:2, lty =1:2)
