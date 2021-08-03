library(ggplot2)

head(ToothGrowth) # Data Set di Default


# Convert dose and cyl columns from numeric to factor variables
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
mtcars$cyl <- as.factor(mtcars$cyl)


# Scatter plot
sp<-ggplot(mtcars, aes(x=wt, y=mpg, color=cyl)) + geom_point()
p2 <-sp + scale_color_hue(l=40, c=35)
p2
