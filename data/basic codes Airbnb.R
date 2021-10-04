
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

summary(listings_5$room_type)
newlistings <- subset(listings_5, room_type = "Entire home/apt")
View(newlistings)
install.packages("dplyr")
library(dplyr)
newnew <- listings_5%>%
  filter(room_type == "Entire home/apt")
View(newnew)

table(listings_5$room_type)

newnew5 <- newnew%>%
  filter(maximum_nights <= 90)
View(newnew5)

#make accomodates and price numeric
accomodates_num <- as.numeric(newnew5$accommodates)
newnew5$price_1 = as.numeric(gsub("\\$", "", newnew5$price))

#create variable price per person
newnew5$priceperson= (newnew5$price_1/accomodates_num)

#neighbourhoods + frequency0
table(newnew5$neighbourhood_cleansed)

#dummy sticks to 30days
newnew5$dummy30days <- ifelse(newnew5$maximum_nights <= 30, 1, 0)

listings <- newnew5

listings$dummy3060days <- ifelse(listings$maximum_nights >= 31 & listings$maximum_nights <= 60, 1, 0)
listings$dummy61days <- ifelse(listings$maximum_nights >= 61, 1, 0)



listingssub$maximum_nights <- ifelse(listingssub$maximum_nights)

#dummy neighbourhood Noord
listings$dummyNoord <- ifelse(listings$neighbourhood_cleansed =="Noord-Oost"|listings$neighbourhood_cleansed =="Noord-West"|listings$neighbourhood_cleansed == "Oud-Noord", 1, 0)
listings$dummyNoordOost <- ifelse(listings$neighbourhood_cleansed =="Noord-Oost", 1, 0)
listings$dummyNoordWest <- ifelse(listings$neighbourhood_cleansed =="Noord-West", 1, 0)
listings$dummyOudNoord <- ifelse(listings$neighbourhood_cleansed =="Oud-Noord", 1, 0)
#dummy neighbourhood Centrum
listings$dummyCentrum <-ifelse(listings$neighbourhood_cleansed =="Centrum-Oost"|listings$neighbourhood_cleansed == "Centrum-West", 1, 0)
listings$dummyCentrumOost <- ifelse(listings$neighbourhood_cleansed =="Centrum-Oost", 1, 0)
listings$dummyCentrumWest <- ifelse(listings$neighbourhood_cleansed =="Centrum-West", 1, 0)
View(listings)

listingssub <- listings[c(1:6,9:13,18,21,23,28,33,34,36:42,75:86)]
View(listingssub)

#ANOVA 
priceairbnb_aov0 <- lm(priceperson ~ dummy30days, listingssub)
anova(priceairbnb_aov0)
priceairbnb_aov0 <- lm(priceperson ~ dummy3060days, listingssub)
anova(priceairbnb_aov0)
priceairbnb_aov0 <- lm(priceperson ~ dummy61days, listingssub)
anova(priceairbnb_aov0)
priceairbnb_aov10 <- lm(priceperson ~  listingssub)
anova(priceairbnb_aov10)

dummytest <- listingssub %>%
  if(dummy30days =1{
    
  }
  ])

emmeans(FocalTrust_aov1, pairwise ~ Condition*Attitude_hi, adjust="bonferroni)
