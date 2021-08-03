library(ggplot2)

head(ToothGrowth) # Data Set di Default

# Convert dose and cyl columns from numeric to factor variables
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
mtcars$cyl <- as.factor(mtcars$cyl)

# Box plot
bp<-ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_boxplot()
p1<-bp + scale_fill_hue(l=40, c=35)
p1
