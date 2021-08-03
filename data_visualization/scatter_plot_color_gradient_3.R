# Diverging color scheme
set.seed(10)
sp2<-ggplot(mtcars, aes(x=wt, y=mpg, color=qsec)) + geom_point()
mid<-mean(mtcars$qsec)
sp2+scale_color_gradient2(midpoint=mid, low="red", mid="orange",
                                       high="black")