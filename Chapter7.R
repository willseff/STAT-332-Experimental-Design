#these questions don't require r but i used it to creates simple scripts to quickly do caculations
#oops didnt have to do this below
pi=c(0.172,0.114,0.132)
sigma=sqrt(pi*(1-pi))
w=c(0.177,0.097,0.726)
f=c(150/2365,100/1297,250/9683)
n=c(150,100,250)
terms = w^2*(1-f)*sigma^2/n
sqrt(sum(terms))

#question 3
na_sigma=c(41.45,37.62,51.23)
optimal_allocation_denominator= sum(w*na_sigma)
allocation=w*na_sigma/optimal_allocation_denominator*500
