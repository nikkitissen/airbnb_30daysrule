# make row 1 heading + delete row 1
colnames(listings) <- listings[1,]
listings <- listings[-1,]

#make accomodates and price numeric
accomodates_num <- as.numeric(listings$accommodates)
listings$price_1 = as.numeric(gsub("\\$", "", listings$price))

#create variable price per person
listings$priceperson= (listings$price_1/accomodates_num)

#neighbourhoods + frequency0
table(listings$neighbourhood_cleansed)

#dummy sticks to 30days
listings$dummy30days <- ifelse(listings$maximum_nights <= 30, 1, 0)
listings$dummy3060days <- ifelse(listings$maximum_nights >= 31 & listings$maximum_nights <= 60, 1, 0)
listings$dummy61days <- ifelse(listings$maximum_nights >= 61, 1, 0)

#dummy neighbourhood Noord
listings$dummyNoord <- ifelse(listings$neighbourhood_cleansed =="Noord-Oost"|listings$neighbourhood_cleansed =="Noord-West"|listings$neighbourhood_cleansed == "Oud-Noord", 1, 0)
listings$dummyNoordOost <- ifelse(listings$neighbourhood_cleansed =="Noord-Oost", 1, 0)
listings$dummyNoordWest <- ifelse(listings$neighbourhood_cleansed =="Noord-West", 1, 0)
listings$dummyOudNoord <- ifelse(listings$neighbourhood_cleansed =="Oud-Noord", 1, 0)
#dummy neighbourhood Centrum
listings$dummyCentrum <-ifelse(listings$neighbourhood_cleansed =="Centrum-Oost"|listings$neighbourhood_cleansed == "Centrum-West", 1, 0)
listings$dummyCentrumOost <- ifelse(listings$neighbourhood_cleansed =="Centrum-Oost", 1, 0)
listings$dummyCentrumWest <- ifelse(listings$neighbourhood_cleansed =="Centrum-West", 1, 0)


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

#dummy sticks to 30days
listingssub$classification_nights <- ''
listingssub$classification_nights <- ifelse(listingssub$maximum_nights<=30, '0',listingssub$classification_nights)
listingssub$classification_nights <- ifelse(listingssub$maximum_nights>30&listingssub$maximum_nights<=60, '1',listingssub$classification_nights)
listingssub$classification_nights <- ifelse(listingssub$maximum_nights>60&listingssub$maximum_nights<=90, '2',listingssub$classification_nights)
listingssub$classification_nights <- as.factor(newnew$classification_nights)
summary(aov(priceperson~1+classification_nights, data = listingssub))
table(listingssub$classification_nights)
#classification for neighbourhoods
listingssub$classification_neigbourhood <- ''
listingssub$classification_neigbourhood <- ifelse(listingssub$neighbourhood_cleansed =="Noord-Oost", '0', listingssub$classification_neigbourhood)
listingssub$classification_neigbourhood <- ifelse(listingssub$neighbourhood_cleansed =="Noord-West", '0', listingssub$classification_neigbourhood)
listingssub$classification_neigbourhood <- ifelse(listingssub$neighbourhood_cleansed =="Oud-Noord", '0', listingssub$classification_neigbourhood)
listingssub$classification_neigbourhood <- ifelse(listingssub$neighbourhood_cleansed =="Centrum-Oost", '1', listingssub$classification_neigbourhood)
listingssub$classification_neigbourhood <- ifelse(listingssub$neighbourhood_cleansed =="Centrum-West", '1', listingssub$classification_neigbourhood)


#Anova neighbourhood +nights
Priceperson_aov1 <- aov(priceperson ~ classification_nights + classification_neigbourhood, listingssub)
summary(Priceperson_aov1)
Priceperson_aov2 <- aov(priceperson ~ classification_nights + classification_neigbourhood + classification_neigbourhood:classification_nights, listingssub)
summary(Priceperson_aov2)
#ANOVA assumptions
plot(Priceperson_aov1, 1)  #homogeneity
library(car)
leveneTest(priceperson ~ classification_neigbourhood*classification_nights, listingssub) 
plot(Priceperson_aov2) #normality
     
#table neigbourhood x nights
table(listingssub$classification_neigbourhood, listingssub$classification_nights)

install.packages("ggplot2")
library(ggplot2)

ggplot(listingssub, aes(priceperson)) + geom_bar()
ggplot(listingssub, aes(classification_nights, priceperson)) + geom_point()
ggplot(listingssub, aes(classification_nights)) + geom_bar()

#average price per neigbourhood and nights. DOES NOT YET FUNCTION PROPERLY AS NIGHTS 0 & 1 RETURN ZERO. SAME FOR NEIGHBOURHOOD 0
gd <- listingssub %>% group_by(classification_nights) %>% summarise(priceperson = mean(priceperson))
gd2 <- listingssub %>% group_by(classification_neigbourhood) %>% summarise(priceperson = mean(priceperson))
ggplot(listingssub, aes(x = classification_nights, y = priceperson)) +
  geom_point() +
  geom_bar(data = gd, stat = "identity")
ggplot(gd2, aes(x = classification_neigbourhood, y = priceperson)) +
  geom_bar(stat = "identity")
