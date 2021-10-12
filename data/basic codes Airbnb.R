# make row 1 heading + delete row 1
colnames(listings) <- listings[1,]
listings <- listings[-1,]

#make accomodates and price numeric
accomodates_num <- as.numeric(listings$accommodates)
listings$price_1 = as.numeric(gsub("\\$", "", listings$price))




install.packages("dplyr")
library(dplyr)
listingssub <- listingssub%>%
  filter(room_type == "Entire home/apt")


table(listingssub$room_type)

listingssub <- listingssub%>%filter(maximum_nights <= 90)

library(dplyr)
listingssub <- listingssub%>%filter(room_type == "Entire home/apt")

table(listingssub$room_type)
listingssub <- listingssub%>%
  filter(maximum_nights <= 90)

#make accomodates and price numeric
accomodates_num <- as.numeric(listingssub$accommodates)
listingssub$price_1 = as.numeric(gsub("\\$", "", listingssub$price))
#create variable price per person
listingssub$priceperson= (listingssub$price_1/accomodates_num)
#neighbourhoods + frequency0
table(listingssub$neighbourhood_cleansed)


#outlier
na.omit(listingssub$priceperson)
lower_bound <- quantile(listingssub$priceperson, 0.01, na.rm = TRUE)
upper_bound <- quantile(listingssub$priceperson, 0.99, na.rm = TRUE)

outlier_ind <- which(listingssub$priceperson < lower_bound |listingssub$priceperson > upper_bound)
listingssub[outlier_ind, ]

re

#Anova neighbourhood +nights
Priceperson_aov1 <- aov(priceperson ~ classification_nights + classification_neigbourhood, listingssub)
summary(Priceperson_aov1)
Priceperson_aov2 <- aov(priceperson ~ classification_nights + classification_neigbourhood + classification_neigbourhood:classification_nights, listingssub)
summary(Priceperson_aov2)
Priceperson_aov3 <- aov(priceperson ~ dummy30days + dummy3060days, listingssub)
summary((Priceperson_aov3))
Priceperson_aov4 <- aov(priceperson ~ dummy3060days + dummy61days, listingssub)
summary((Priceperson_aov4))

#ANOVA assumptions
plot(Priceperson_aov1, 1)  #homogeneity
library(car)
leveneTest(priceperson ~ classification_neigbourhood*classification_nights, listingssub) 
plot(Priceperson_aov2, 2) #normality
     
#table neigbourhood x nights
table(listingssub$classification_neigbourhood, listingssub$classification_nights)


install.packages("ggplot2")
library(ggplot2)

ggplot(listingssub, aes(priceperson)) + geom_bar()
ggplot(listingssub, aes(classification_nights, priceperson)) + geom_point()
ggplot(listingssub, aes(classification_nights)) + geom_bar()


gd <- listingssub %>% group_by(classification_nights) %>% summarise(priceperson = mean(priceperson))
gd2 <- listingssub %>% group_by(classification_neigbourhood) %>% summarise(priceperson = mean(priceperson))
ggplot(listingssub, aes(x = classification_nights, y = priceperson)) +
  geom_point() +
  geom_bar(data = gd, stat = "identity")
ggplot(gd2, aes(x = classification_neigbourhood, y = priceperson)) +
  geom_bar(stat = "identity")
