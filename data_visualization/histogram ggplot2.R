library(ggplot2)
set.seed(10)
# generate random data
c1<-rnorm(10,mean = 5, sd = 2)
c2<-rnorm(10,mean = 5, sd = 2)
c3<-rnorm(10,mean = 5, sd = 2)
c4<-rnorm(10,mean = 5, sd = 2)

# transform into factors
categorie = as.factor(c(1,2,3,4,5))

 # take 10 random elements
C<-sample(categorie,size = 10, replace = T)

# create dataframe 
DF = as.data.frame(cbind(c1,c2,c3,c4,C))       

# create color vector
colors=c('red','blue','green','orange','purple')

# plot  histogram
p<-ggplot(data=DF, aes(DF$C))
p1<-p+geom_histogram(bins =length(C),binwidth = 0.1)
p2<-p1+labs(title=' Title', subtitle = ' subtitle')+theme_bw()
p3<-p2+labs(x='X',y='Y')
p3
