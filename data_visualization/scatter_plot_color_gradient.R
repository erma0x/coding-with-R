


# Sequential color scheme

set.seed(10)

head(mtcars)

sp2<-ggplot(mtcars, aes(x=wt, y=mpg, color=qsec)) + geom_point()

sp2+scale_color_gradient(low="red", high="black")

  
