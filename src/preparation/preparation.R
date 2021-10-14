####################
### PREPARE DATA ###
####################

# input
library(readr)
listings <- read.csv("listings.csv")
View(listings)

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

listingssub <- listings[c(1:6,9:13,18,21,23,28,33,34,36:42,75:83)]
listingssub <- listingssub%>%filter(maximum_nights <= 90)

#classification 30/60/90 days
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
