       # tests
       
       mu <- ddply(df, "category", summarise, grp.mean=mean(weight))
       head(mu)
       
       ##   sex grp.mean
       ## 1   F    54.70
       ## 2   M    65.36
       
       #pearson  
       t.test(x,y,mu=0, alternative='two.sided',paired = TRUE)
       t.test(x,y,mu=0, var.equal= TRUE, alternative ='two.sided')
       t.test(x,mu=n, alternative='less')
       
       aov(y~x, data = d) # data frame
       
       cor(x,y)# Correlation coefficient between the numbers in vector x and the numbers in vector y
       
       cor.test(x,y)# Correlation coefficient between the numbers in vector x and the numbers in vector y, along with a t-test of the significance of the correlation coefficient.
       
       lm(y~x, data = d)# Linear regression analysis with the numbers in vector y as the dependent variable and the numbers in vector x as the independent variable. Data are in data frame d.
       
       coefficients(a)# Slope and intercept of linear regression model a.
       
       confint(a)# Confidence intervals of the slope and intercept of linear regression model a
       
       summary(a)
