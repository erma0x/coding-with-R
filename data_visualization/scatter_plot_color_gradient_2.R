set.seed(10)
# Sequential color scheme
head(mtcars)
sp2<-ggplot(mtcars, aes(x=wt, y=mpg, color=qsec)) + geom_point()
sp2