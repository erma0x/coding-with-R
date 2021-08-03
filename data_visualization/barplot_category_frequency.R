
# BARPLOT 
# FREQUENCY OF CATEGORICAL VARIABLES

set.seed(10)
categorie<-as.factor(c(1,2))                                   #   trasforma in variabile categorica
c<-sample(categorie,size = 10, replace = T)     # prende 10 elementi a caso

DF<-data.frame(c)
DF$c <- as.factor(DF$c) 

k <- ggplot(DF, aes(factor(c), fill = factor(c))) 
                                                                                                   #FILL = Riempi
                                                                                                   # aes(factor(c)) indica di usare c come vettore per i colori
p<-k + geom_bar()
p
