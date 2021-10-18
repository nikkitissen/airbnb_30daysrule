################
### ANALYSIS ###
################

# load required package
library(car)

# download the prepared dataset listingssub.csv
listingssub <- read.csv("gen/temp/listingssub.csv")
View(listingssub)

# Make the classification variables factor variables
listingssub$classification_neigbourhood <- as.factor(listingssub$classification_neigbourhood)
listingssub$classification_nights <- as.factor(listingssub$classification_nights)

# Run multiple ANOVAs for the classifications + interaction and for the dummies
Priceperson_aov1 <- aov(priceperson ~ classification_nights + classification_neigbourhood, listingssub)
summary(Priceperson_aov1)
Priceperson_aov2 <- aov(priceperson ~ classification_nights + classification_neigbourhood + classification_neigbourhood:classification_nights, listingssub)
summary(Priceperson_aov2)
Priceperson_aov3 <- aov(priceperson ~ dummy30days + dummy3060days, listingssub)
summary(Priceperson_aov3)
Priceperson_aov4 <- aov(priceperson ~ dummy3060days + dummy61days, listingssub)
summary(Priceperson_aov4)

# ANOVA assumptions + save graphs as PDF
pdf("gen/output/assumptions.pdf")
plot(Priceperson_aov1, 1)  #homogeneity
leveneTest(priceperson ~ classification_neigbourhood*classification_nights, listingssub) 
plot(Priceperson_aov2, 2) #normality
dev.off()

# save output ANOVA
capture.output(summary(Priceperson_aov1), file = "gen/output/anova1.doc")
capture.output(summary(Priceperson_aov2), file = "gen/output/anova2.doc")
capture.output(summary(Priceperson_aov3), file = "gen/output/anova3.doc")
capture.output(summary(Priceperson_aov4), file = "gen/output/anova4.doc")
