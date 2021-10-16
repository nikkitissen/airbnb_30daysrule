##############
### GRAPHS ###
##############

install.packages("ggplot2")
library(ggplot2)
# input
listingssub <- read.csv("gen/temp/listingssub.csv")
View(listingssub)

#create graphs of priceperson & classification_nights and priceperson & classification_neighbourhood. Save both in one file
pdf("gen/output/graphs_airbnb.pdf")

ggplot(listingssub, aes(x = classification_nights, y = priceperson, color= classification_nights)) +
  geom_point() +
  geom_boxplot() 
ggplot(listingssub, aes(x = classification_neigbourhood, y = priceperson, color=classification_neigbourhood)) +
  geom_boxplot()

dev.off() 
