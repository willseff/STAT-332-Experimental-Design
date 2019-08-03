#question 4
data<-read.table('/Users/will/Documents/GitHub/STAT-332-Experimental-Design/Data/thrush.txt', header = TRUE, sep = "", dec = ".")
plot(data)
attach(data)
mean(number)
head(data)
mu_hat_x = mean(area)
mu_hat_y = mean(number)
mu_x = 13.4
f=50/1783
n=50
ratio_estimate = mu_hat_y/mu_hat_x*mu_x
ratio_estimate*1783
theta=mu_hat_y/mu_hat_x
theta
ri= (number-(area*theta))^2
ri
sigma=sqrt(sum(ri)/(n-1))
sigma
standard_error=sigma*(sqrt((1-f)/n))
standard_error

confidence_interval = (ratio_estimate+qnorm(0.975)*standard_error)*1783
qnorm(0.975)
