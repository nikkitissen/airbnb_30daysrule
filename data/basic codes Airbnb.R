
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











#NEW CODE 

summary(cleaned_listings_5$room_type)
newcleaned_listings <- subset(cleaned_listings, room_type = "Entire home/apt")
View(newcleaned_listings)
install.packages("dplyr")
library(dplyr)
newnew <- cleaned_listings%>%
  filter(room_type == "Entire home/apt")
View(newnew)

table(cleaned_listings$room_type)

cleaned_listings <- newnew%>%
  filter(maximum_nights <= 90)
View(cleaned_listings)

#make accomodates and price numeric
accomodates_num <- as.numeric(cleaned_listings$accommodates)
cleaned_listings$price_1 = as.numeric(gsub("\\$", "", cleaned_listings$price))

#create variable price per person
cleaned_listings$priceperson= (cleaned_listings$price_1/accomodates_num)

#neighbourhoods + frequency0
table(cleaned_listings$neighbourhood_cleansed)

#dummy sticks to 30days

cleaned_listings$classification_nights <- ''
cleaned_listings$classification_nights <- ifelse(cleaned_listings$maximum_nights<=30, '0',cleaned_listings$classification_nights)
cleaned_listings$classification_nights <- ifelse(cleaned_listings$maximum_nights>30&cleaned_listings$maximum_nights<=60, '1',cleaned_listings$classification_nights)
cleaned_listings$classification_nights <- ifelse(cleaned_listings$maximum_nights>60&cleaned_listings$maximum_nights<=90, '2',cleaned_listings$classification_nights)
cleaned_listings$classification_nights <- as.factor(newnew$classification_nights)

summary(aov(priceperson~1+classification_nights, data = cleaned_listings))


table(cleaned_listings$classification_nights)


#dummy neighbourhood Noord
cleaned_listings$dummyNoord <- ifelse(cleaned_listings$neighbourhood_cleansed =="Noord-Oost"|cleaned_listings$neighbourhood_cleansed =="Noord-West"|cleaned_listings$neighbourhood_cleansed == "Oud-Noord", 1, 0)
cleaned_listings$dummyNoordOost <- ifelse(cleaned_listings$neighbourhood_cleansed =="Noord-Oost", 1, 0)
cleaned_listings$dummyNoordWest <- ifelse(cleaned_listings$neighbourhood_cleansed =="Noord-West", 1, 0)
cleaned_listings$dummyOudNoord <- ifelse(cleaned_listings$neighbourhood_cleansed =="Oud-Noord", 1, 0)
#dummy neighbourhood Centrum
cleaned_listings$dummyCentrum <-ifelse(cleaned_listings$neighbourhood_cleansed =="Centrum-Oost"|cleaned_listings$neighbourhood_cleansed == "Centrum-West", 1, 0)
cleaned_listings$dummyCentrumOost <- ifelse(cleaned_listings$neighbourhood_cleansed =="Centrum-Oost", 1, 0)
cleaned_listings$dummyCentrumWest <- ifelse(cleaned_listings$neighbourhood_cleansed =="Centrum-West", 1, 0)
View(cleaned_listings)

Priceperson_aov1 <- lm(priceperson ~ dummyNoord*classification_nights,cleaned_listings)
anova(Priceperson_aov1)

cleaned_listings <- cleaned_listings[c(1:6,9:13,18,21,23,28,33,34,36:42,75:83)]
View(cleaned_listings)

emmeans(FocalTrust_aov1, pairwise ~ Condition*Attitude_hi, adjust="bonferroni")

#ANOVA 
Priceperson_aov0 <- lm(priceperson ~ classification_nights,cleaned_listings)
anova(Priceperson_aov0)

install.packages("ggplot2")
library(ggplot2)
ggbarplot(classification_nights, x="nightsmaximum", y="meanpriceperson", add = c("mean"))

ggplot(cleaned_listings, aes(priceperson)) + geom_bar()

barplot(cleaned_listings, aes(classification_nights, priceperson)) + geom_point()

ggplot(cleaned_listings, aes(classification_nights, priceperson)) +
  geom_point() 

mean_pp <- mean(cleaned_listings$priceperson)
ggplot(cleaned_listings, aes(classification_nights, mean_pp) +
  geom_point()

ggplot(cleaned_listings, aes(x=as.factor(classification_nights), y=priceperson)) + geom_boxplot()
