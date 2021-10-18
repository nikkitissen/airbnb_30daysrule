# Which AirBnB should I visit while staying in Amsterdam?
This study shows interest in the [30-days rule](https://www.engadget.com/2018-01-10-amsterdam-airbnb-rental-30-day-limit.html?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAACSA-L7X_l1GZsI5sgU9BXuy4sX6EUP0fkHapl0HKwO4zOPZJ0MEeLZIDhIEoE2g32AcAW_jcdybRXXK3YddeFH0q7ZTXtKFqS8m67DWMjanp-rGH2kTTv7Ejf6HtuI0Pq6qQ4WHOszvmWAPzwccfirxqzsRSgymmuTnM2rpWr9h) which is implied in Amsterdam. Our research question is formulated as follows: "How does the announcement of the 30-days rule impact the Airbnb housing price in Amsterdam?" This study will be conducted by comparing 1) the Airbnbs located in Amsterdam that follow this 30-days rule with 2) the Airbnbs located in Amsterdam that follow the 60-days rule, and 3) the Airbnbs that do not follow these rules.
 
 ![airbnb](https://user-images.githubusercontent.com/89909366/135813509-5a5c30be-5306-4947-9385-72c1367efdfa.gif)


## Motivation
Amsterdam's excecutive board hopes to reduce tourists problems and the number of people who use their home as a way to earn money by implementing the 30-days rule. This means that an Airbnb rental cannot be longer than 30 days in a calander year. This rule has been adopted at the start of 2019 (before this rule the [60-days rule](https://www.airbnb.nl/help/article/1624/ik-verhuur-mijn-woning-in-amsterdam-welke-wetgeving-op-het-gebied-van-kortetermijnverhuur-is-hierop-van-toepassing?_set_bev_on_new_domain=1633511767_Yjc2OGFmODMwOTQy) was valid). This new rule results in less profit for the Airbnb owners since they can only rent out their Airbnb for half of the number of days (from 60 days to 30 days). Even though many of the renters in Amsterdam follow the new 30-days rule, there are still hosts that don't. You would say that the logical response of the Airbnbs that follow the 30-days rule is to let the price rise, but does the 30-days rule indeed have a significant effect on the price? And if so, how much do the prices rise? 
  We are going to measure the impact of the 30-days rule by comparing the price per person of the Airbnbs that follow the 30-days rule with the price per person of the Airbnbs that follow the 60-days rule, and with the Airbnbs who do not follow the 30- or 60-days rule. This means that we are comparing 3 groups with each other. To create equal time spans, we decided to compare the renting days of 0-30 days, 31-60 days, and 61-90 days (do not follow the 30- or 60-days rule). 
  As a control variable, we decided to take a look at the [neigbourhood](https://nl.wikipedia.org/wiki/Buurten_en_wijken_in_Amsterdam) of the Airbnbs. We will compare the Airbnbs located in the centre of Amsterdam with Airbnbs located in Noord-Amsterdam, because the centre of Amsterdam is more crowded (higher prices) than Noord-Amsterdam (lower prices). This research will be exported as a PDF report including our research question, results of the analysis, and conclusion. 

## Method and results
### Data collection and preperation
We downloaded the dataset from the Airbnb website with the listings data for Amsterdam. This was already a very detailed dataset, but not complete for our analysis. First, we have selected only the Airbnbs which can be rented as a whole house, since the 30-days rule only applies to entire houses and not just a room. Also, we have removed additional data that is not significant for this project by removing a number of variables from the dataset. After that, we had to create new variables: 
  1) price per person.
  2) dummy variable, classification_nights, to see which Airbnbs follow the 30-days rule, follow the 60-days rule, and that do not follow these rules.
  3) dummy variable, classification_neighbourhood, to see whether the Airbnb is located in the centre of Amsterdam or in Noord-Amsterdam. 

This last variable is included as a control variable for the analysis. We have included this variable, because Amsterdam is a big city. So, it would make sense that the Airbnb prices are more expensive in the centre than in a suburb as Amsterdam-Noord. With this control variable this location factor will not be the reason for different pricing.

### Analysis and results
The dependent variable (price per person) is metric, the independent variable (classification_nights (0-30, 31-60, 61-90)) is non-metric, and the control variable (neighbourhood) is also non-metric. Therefore, the chosen research method is ANOVA. With ANOVA we can measure the average price per person of each group of renting days. We ran multiple ANOVAs, one where we focused on the classifications of nights and neighbourhoods and one where we looked at the renting days more specifically. To visualise these results we created graphs.

##### - ANOVA classification_nights & classification_neighbourhood
With this ANOVA, we can conclude that both variables have a significant effect on the price. The neighbourhood is found to have the greatest effect on the price, where appartments in the centre demand a higher price per person than in Amsterdam Noord. The variable Classification_nights only proved marginally significant, hence we decided to run an extra analysis to draw a conclusion. Moreover, there was no interaction effect found between the two variables.

##### - ANOVA dummy variables nights rent out
To further investigate the significance of the classification_nights, we ran the ANOVA again but now only with the dummy variables. Here we concluded that the hosts who do not stick to the rules but do not rent out the appartment for more than 60 days, demand a significantly higher price than the other hots. Those who stuck to the rules or who rented it out for more than 60 days did not demand a significantly higher price

## Repository overview
There are three folders (data, gen/output, and src), a .gitignore file, a makefile, a Rproj file, and a README.md file. The README.md file are reading right now. 
- In the data folder ... 
- In the gen/output folder you can find the results. 
- In the src folder, you can find the codes used for the downloading, preperation, analysis and making graphs of the dataset. 
- The makefile includes code that can be run in the commans prompt/terminal by typing "make".
- The gitignore file includes files that should be ignored by Git and remain untracked. 
- The Rproj file contains the settings and option of this project. 

## Running instructions

- Install [RStudio and R](https://tilburgsciencehub.com/get/r)
- Install [Make](https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/)
- Install additional packages

```
install.packages("dplyr")
install.packages("readr")
install.packages("car")
install.packages("ggplot2")
```
In order to properly run the analysis, the code has to be run using the code in the folder src. The code has to be run in the following order:
1) preparation.R
2) analysis.R
3) graphs.R


## More resources
- More information about the 30-days rule can be found [here](https://www.airbnb.com/help/article/860/amsterdam?locale=en&_set_bev_on_new_domain=1632399829_ZDVkNDgwYmU4YjY2) (this article is also available in [Dutch](https://www.airbnb.nl/help/article/860/amsterdam?_set_bev_on_new_domain=1632399829_ZDVkNDgwYmU4YjY2))
- An overview of the airbnbs in Amsterdam can be found [here](http://insideairbnb.com/amsterdam/).
- Similar datasets as the one we used for this project are avalable on the airbnb website under the "[Get the data](http://insideairbnb.com/get-the-data.html)" tab.

## About
This repository has been created in assignment of the Tilburg University course [Data Preperation and Workflow Managament](https://dprep.hannesdatta.com/). The contributors of this repository are [Sharda Hinsenveld](https://github.com/Shardahinsenveld), [Miranda Manschot](https://github.com/mirandamanschot), [Nikki Tissen](https://github.com/nikkitissen), [Lauren Verhoeven](https://github.com/LaurenVerhoeven), and [Lotte Verkuijlen](https://github.com/LotteVerkuijlen). 
