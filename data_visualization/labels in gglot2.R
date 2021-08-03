#LABELS IN GGPLOT2

a<-rnorm(10, mean = 5, sd = 3) #random value from N distr.
b<-rnorm(10, mean = 5, sd = 3) 

categorie<-as.factor(c(1,2))# trasforma in variabile categorica
c<-sample(categorie,size = 10, replace = T) # prende 10 elementi a caso

DF<-data.frame(a,b,c)
DF$c <- as.factor(DF$c) 

p <- ggplot(DF, aes(x= a,y=b)) + geom_point(aes(fill= c))
p2<-p+labs(x = "LABEL X Axis") + theme_minimal()
p3<-p2+labs(y = 'LAVEL Y AXIS')
p4<-p3+labs(title = 'MAIN TITLE')
p5<-p4+ labs(subtitle = "SUBTITLE")

p6<-p5+labs(colour = DF$c)
p7<-p6 + scale_color_hue(h = c(120,200) )

p8<-p7 + labs(fill = "LEGEND")# Modify legend titles

p8
