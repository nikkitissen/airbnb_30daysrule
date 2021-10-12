# Which AirBnB should I visit while staying in Amsterdam?
This study shows interest in the [30-days rule](https://www.engadget.com/2018-01-10-amsterdam-airbnb-rental-30-day-limit.html?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAACSA-L7X_l1GZsI5sgU9BXuy4sX6EUP0fkHapl0HKwO4zOPZJ0MEeLZIDhIEoE2g32AcAW_jcdybRXXK3YddeFH0q7ZTXtKFqS8m67DWMjanp-rGH2kTTv7Ejf6HtuI0Pq6qQ4WHOszvmWAPzwccfirxqzsRSgymmuTnM2rpWr9h) which is implied in Amsterdam. Our research question is formulated as follows: "How does the announcement of the 30-days rule impact the Airbnb housing price in Amsterdam?" This study will be conducted by comparing the Airbnbs located in Amsterdam that follow this 30-days rule with the Airbnbs located in Amsterdam that follow the 60-days rule, and the Airbnbs that do not follow these rules.
 
 ![airbnb](https://user-images.githubusercontent.com/89909366/135813509-5a5c30be-5306-4947-9385-72c1367efdfa.gif)


## Motivation
Amsterdam's excecutive board hopes to reduce tourists problems and the number of people who use their home as a way to earn money by implementing the 30-days rule. This means that an Airbnb rental cannot be longer than 30 days in a calander year. This rule has been adopted at the start of 2019 (before this rule the 60-days rule was valid). This new rule results in less profit for the Airbnb owners since they can only rent out their Airbnb for half of the number of days (from 60 days to 30 days). Even though many of the renters in Amsterdam follow the new 30-days rule, there are still hosts that don't. You would say that the logical response of the Airbnbs that follow the 30-days rule is to let the price rise, but does the 30-days rule indeed have a significant effect on the price? And if so, how much do the prices rise? 
  We are going to measure the impact of the 30-days rule by comparing the price per person of the Airbnbs that follow the 30-days rule with the price per person of the Airbnbs that follow the 60-days rule, and with the Airbnbs who do not follow the 30- or 60-days rule. This means that we are comparing 3 groups with each other. To create equal time spans, we decided to compare the renting days of 0-30 days, 31-60 days, and 61-90 days (do not follow the 30- or 60-days rule). 
  As a control variable, we decided to take a look at the [neigbourhood](https://nl.wikipedia.org/wiki/Buurten_en_wijken_in_Amsterdam) of the Airbnbs. We will compare the Airbnbs located in the centre of Amsterdam with Airbnbs located in Noord-Amsterdam, because the centre of Amsterdam is more crowded (higher prices) than Noord-Amsterdam (lower prices). After this we will look at characteristics of the 3 renting days groups such as the number of bedrooms/bathrooms etc. This research will be exported as a PDF report including our research question, results of the analysis, and conclusion. 

## Method and results
### Data collection and preperation
We downloaded the dataset from the Airbnb website with the listings data for Amsterdam. This was already a very detailed dataset, but not complete for our analysis. First, we have selected only the Airbnbs which can be rented as a whole house, since the 30-days rule only applies to entire houses and not just a room. Also, we have removed additional data that is not significant for this project by removing a number of variables from the dataset. After that, we had to create new variables: 
  1) price per person.
  2) dummy variable to see which Airbnbs follow the 30-days rule, follow the 60-days rule, and that do not follow these rules.
  3) dummy variable to see whether the Airbnb is located in the centre of Amsterdam or in Noord-Amsterdam. 

This last variable is included as a control variable for the analysis. We have included this variable, because Amsterdam is a big city. So, it would make sense that the airbnb prices are more expensive in the centre than in a suburb as Amsterdam-Noord. With this control variable this location factor will not be the reason for different pricing. Now the data is prepared for our analysis. 

### Analysis and results
The dependent variable (price per person) is metric, the independent variable (renting days (0-30, 31-60, 61-90)) is non-metric, and the control variable (neighbourhood) is also non-metric. Therefore, the chosen research method is ANOVA. With ANOVA we can measure the average price per person of each group of renting days. 

Second, summarize your results concisely. Make use of subheaders where appropriate.

## Repository overview
There are three folders (data, gen, and src), a .gitignore file, and a README.md file. The README.md file is this file that you are reasing right now. 

## Running instructions

- Install [RStudio and R](https://tilburgsciencehub.com/get/r)
- Install additional packages

```
install.packages("eventstudies")
```

To analyse whether the 30-days rule has a significant effect on the price of Airbnbs, we have used the following code: 
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
