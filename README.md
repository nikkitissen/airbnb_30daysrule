# Which AirBnB should I visit while staying in Amsterdam?
This study shows interest in the [30-days rule](https://www.engadget.com/2018-01-10-amsterdam-airbnb-rental-30-day-limit.html?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAACSA-L7X_l1GZsI5sgU9BXuy4sX6EUP0fkHapl0HKwO4zOPZJ0MEeLZIDhIEoE2g32AcAW_jcdybRXXK3YddeFH0q7ZTXtKFqS8m67DWMjanp-rGH2kTTv7Ejf6HtuI0Pq6qQ4WHOszvmWAPzwccfirxqzsRSgymmuTnM2rpWr9h) which is implied in Amsterdam. Our research question is formulated as follows: "To what extent does the announcement of the 30-days rule impact the Airbnb housing price in Amsterdam?" This study will be conducted by comparing the Airbnbs located in Amsterdam that follow this 30-days rule with the Airbnbs located in Amsterdam that do not follow the 30-days rule. 
 
 ![Airbnb](https://user-images.githubusercontent.com/89909366/134505161-8c77de18-1d4d-4369-a780-accafbd86086.gif)

## Motivation
Amsterdam's excecutive board hopes to reduce tourists problems and the number of people who use their home as a way to earn money by implementing the 30-days rule. This means that an Airbnb rental cannot be longer than 30 days in a calander year. This rule has been adopted at the start of 2019 (before this rule the [60-days rule] (https://www.parool.nl/nieuws/maximale-verhuurtermijn-airbnb-naar-30-dagen~bd3cd8c2/) was valid). This new rule results in less profit for the Airbnb owners because they cannot rent their house as much as they would like. Although, many renters in Amsterdam stick to the new 30-day rule, there are still Airbnb hosts that do not follow the 30-day rule. Those renters will rent their house more which result in higher profit. You would say that the logical response to converting the 60-days rule to 30-days rule is to let the prices per night for renting a house in Amsterdam rise, but does the 30-days rule indeed have a significant effect on the price per night? And if so, how much do the prices per night for renting a house in Amsterdam rise? Therefore we are measuring what the impact of the 30-day rule is by comparing prices of the houses per person of renter who comply to the 30-days rule, with renters who comply to the older rule (60-days rule) and renters who are not complying to any rule at all. To create equal time span we take a maximum of 90 days (so people who are renting their house between 61-90 days). As a control variable, we will take a look at the neighbourhood of the rented houses, we will compare 'Noord' to 'Centrum', while 'Centrum' will be crowded and the prices will be the highest, and 'Noord' is the most quiet [neighbourhood], and therefore will have lower prices (https://nl.wikipedia.org/wiki/Buurten_en_wijken_in_Amsterdam). After this we will look at the characteristics of those three groups of renters (we will compare the number of bedrooms and bathrooms). We will make a PDF report with the conclusion of our analysis and research question. 

## Method and results
### Data collection and preperation
We downloaded the dataset from the Airbnb website with the listings data for Amsterdam. This was already a very detailed dataset, but not complete for our analysis. First, we have deleted every home type that was not rented as a whole house but as a room. Because the 30-days- rule only counts for houses as a whole, not for renting a room. Also, we have removed additional data that is not significant for this project (we removed column ...). After that, we had to create new variables: 1) price per person, 2) dummy variable to see which airbnbs stick to the 30-days rule, still stick to the 60-days rule, and that do not stick to the rule (61-90 days), and 3) dummy variable to see whether the Airbnb is located in the centre of Amsterdam or in Noord-Amsterdam. This last variable is included as a control variable for the analysis. We have included this variable, because Amsterdam is a big city. So, it would make sense that the Airbnb prices are more expensive in the centre than in a suburb as Amsterdam-Noord. With this control variable this location factor will not be the reason for different pricing. Now the data is prepared for our analysis. 

### Analysis and results
Since the dependent variable (price per person for renting a house in Amsterdam) is metric, and the independent variable (renter who comply to the 30-days rule, renters who comply to the 60-days rule, and renter who rent their house between 61-90 days) is non-metric, as is our control variable (neighbourhood) non-metric therefore the chosen research method for our research is ANOVA. With ANOVA we can measure the average price per person of each renter group (0-30, 31-60, 61-90), and when comparing these differences we can measure if these price differences are significant.  
 
Second, summarize your results concisely. Make use of subheaders where appropriate.

## Repository overview
There are three folders (data, gen, and src), a .gitignore file, and a README.md file. The README.md file is this file that you are reasing right now. 

## Running instructions
- You can donwload the data by clicking [here]([Uploading listings (1).csv.gz…]())

- Install [RStudio and R](https://tilburgsciencehub.com/get/r)
- Install additional packages

```
install.packages("eventstudies")
```

```
priceperson_aov0 <- lm(priceperson ~ RULEDUMMY*CONTROLVARIABLE,listings.csv) MOET ANDERE NAMEN VAN VARIABELEN
anova(priceperson_aov0)
```

## More resources
- More information about the 30-days rule can be found [here](https://www.airbnb.com/help/article/860/amsterdam?locale=en&_set_bev_on_new_domain=1632399829_ZDVkNDgwYmU4YjY2) (this article is also available in [Dutch](https://www.airbnb.nl/help/article/860/amsterdam?_set_bev_on_new_domain=1632399829_ZDVkNDgwYmU4YjY2))
- An overview of the airbnbs in Amsterdam can be found [here](http://insideairbnb.com/amsterdam/).
- Similar datasets as the one we used for this project are avalable on the airbnb website under the "[Get the data](http://insideairbnb.com/get-the-data.html)" tab.

## About
This repository has been created in assignment of the Tilburg University course [Data Preperation and Workflow Managament](https://dprep.hannesdatta.com/). The contributors of this repository are [Sharda Hinsenveld](https://github.com/Shardahinsenveld), [Miranda Manschot](https://github.com/mirandamanschot), [Nikki Tissen](https://github.com/nikkitissen), [Lauren Verhoeven](https://github.com/LaurenVerhoeven), and [Lotte Verkuijlen](https://github.com/LotteVerkuijlen). 
