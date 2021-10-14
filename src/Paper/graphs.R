##############
### GRAPHS ###
##############

install.packages("ggplot2")
library(ggplot2)
# input
listingssub <- read.csv("gen/temp/listingssub.csv")
View(listingssub)

ggplot(listingssub, aes(priceperson)) + geom_bar()
ggplot(listingssub, aes(classification_nights, priceperson)) + geom_point() + geom_boxplot()
ggplot(listingssub, aes(classification_nights)) + geom_bar()


ggplot(listingssub, aes(x = classification_nights, y = priceperson, color= classification_nights)) +
  geom_point() +
  geom_boxplot() 
ggplot(listingssub, aes(x = classification_neigbourhood, y = priceperson, color=classification_neigbourhood)) +
  geom_boxplot()

