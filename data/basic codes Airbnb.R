
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
