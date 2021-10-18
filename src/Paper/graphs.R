##############
### GRAPHS ###
##############

# load required package 
library(ggplot2)

# download the prepared dataset listingssub.csv
listingssub <- read.csv("gen/temp/listingssub.csv")
View(listingssub)

# Make the classification variables factor variables
listingssub$classification_neigbourhood <- as.factor(listingssub$classification_neigbourhood)
listingssub$classification_nights <- as.factor(listingssub$classification_nights)

#create graphs of priceperson & classification_nights and priceperson & classification_neighbourhood. Save both in one file
pdf("gen/output/graphs_airbnb.pdf")

ggplot(listingssub, aes(x = classification_nights, y = priceperson, color= classification_nights)) +
  geom_point() +
  geom_boxplot()

ggplot(listingssub, aes(x = classification_neigbourhood, y = priceperson, color=classification_neigbourhood)) +
  geom_point() +
  geom_boxplot()

dev.off() 
