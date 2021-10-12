#outlier
na.omit(listingssub$priceperson)
lower_bound <- quantile(listingssub$priceperson, 0.01, na.rm = TRUE)
upper_bound <- quantile(listingssub$priceperson, 0.99, na.rm = TRUE)

outlier_ind <- which(listingssub$priceperson < lower_bound |listingssub$priceperson > upper_bound)
listingssub[outlier_ind, ]

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
