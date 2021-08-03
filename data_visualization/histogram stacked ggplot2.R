require(reshape2)  # this is the library that lets you flatten out data
require(ggplot2)   # plotting library

A<-runif(10,0,5)
B<-runif(10,0,2)
C<-runif(10,0,4)
D<-runif(10,0,5)

bucket<-list(a=A,b=B,c=C,d=D) # this puts all values in one list

# the melt command flattens the 'bucket' list into value/vectorname pairs
# the 2 columns are called 'value' and 'L1' by default
# 'fill' will color bars differently depending on L1 group
# call geom_histogram with position="dodge" to offset the bars and manual binwidth of 2

ggplot(melt(bucket), aes(value, fill = L1)) + 
  geom_histogram(position = "stack", binwidth=1,bins = 6)+labs(fill=' Legend ')
