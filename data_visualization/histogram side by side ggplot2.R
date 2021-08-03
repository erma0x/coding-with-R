require(reshape2)  # this is the library that lets you flatten out data
require(ggplot2)   # plotting library

bucket<-list(a=a,cs=cs,e=e,qr=qr,w=w) # this puts all values in one list

# the melt command flattens the 'bucket' list into value/vectorname pairs
# the 2 columns are called 'value' and 'L1' by default
# 'fill' will color bars differently depending on L1 group
ggplot(melt(bucket), aes(value, fill = L1)) + 

#call geom_histogram with position="dodge" to offset the bars and manual binwidth of 2
geom_histogram(position = "dodge", binwidth=2)
