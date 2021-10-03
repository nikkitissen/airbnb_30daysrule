# Which AirBnB should I visit while staying in Amsterdam?
This study shows interest in the [30-days rule](https://www.engadget.com/2018-01-10-amsterdam-airbnb-rental-30-day-limit.html?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAACSA-L7X_l1GZsI5sgU9BXuy4sX6EUP0fkHapl0HKwO4zOPZJ0MEeLZIDhIEoE2g32AcAW_jcdybRXXK3YddeFH0q7ZTXtKFqS8m67DWMjanp-rGH2kTTv7Ejf6HtuI0Pq6qQ4WHOszvmWAPzwccfirxqzsRSgymmuTnM2rpWr9h) which is implied in Amsterdam. Our research question is formulated as follows: "To what extent does the announcement of the 30-days rule impact the Airbnb housing price in Amsterdam?" This study will be conducted by comparing the airbnbs located in Amsterdam that follow this 30-days rule with the airbnbs located in Amsterdam that do not follow the 30-days rule. 
 
 ![airbnb](https://user-images.githubusercontent.com/89909366/134505161-8c77de18-1d4d-4369-a780-accafbd86086.gif)

## Motivation
Amsterdam's excecutive board hopes to reduce tourists problems and the number of people who use their home as a way to earn money by implementing the 30-days rule. This means that an airbnb rental cannot be longer than 30 days in a calander year. This rule has been adopted at the start of 2019 (before this rule the 60-days rule was valid). This new rule results in extra costs for the airbnb owners (cleaning, administrative, etc.) and is therefore less profitable. You would say that the logical response is to let the price rise, but does the 30-days rule indeed have a significant effect on the price? And if so, how much do the prices rise? 

## Method and results
### Data collection and preperation
We downloaded the dataset from the airbnb website with the listings data for Amsterdam. This was already a very detailed dataset, but not complete for our analysis. We had to create new variables: 1) price per person, 2) dummy variable to see which airbnbs stick to the 30-days rule, still stick to the 60-days rule, and that do not stick to the rule, and 3) dummy variable to see wheter the airbnb is located in the centre of Amsterdam or in Noord-Amsterdam. This last variable is included as a control variable for the analysis. We have invluded this variable, because Amsterdam is a big city. So, it would make sense that the airbnb prices are more expensive in the centre than in a suburb as Amsterdam-Noord. With this control variable this location factor will not be the reason for different pricing. 
Also, we have removed additional data that is not significant for this project. The final dataset can be found ... (LINK NAAR DATASET OF PLEK VERMELDEN). 

### Analysis and results
To analyse whether the 30-days rule has a significant effect on the price of airbnbs, an ANOVA test will be conducted. To run this analysis we have used the following code:

```
priceperson_aov0 <- lm(priceperson ~ RULEDUMMY*CONTROLVARIABLE,listings.csv) MOET ANDERE NAMEN VAN VARIABELEN
anova(priceperson_aov0)
```

## Repository overview
There are three folders (data, gen, and src), a .gitignore file, and a README.md file. The README.md file is this file that you are reasing right now. 

## Running instructions

- You can donwload the data from this button: 
```
st.download_button('Download CSV', text_contents, 'text/csv')
with open('listings (1).csv.gz', 't') as f:
	st.download_button('Download CSV', f)  # Defaults to 'text/plain'
```
- Install [RStudio and R](https://tilburgsciencehub.com/get/r)
- Install additional packages

```
install.packages("eventstudies")
```


## More resources
- More information about the 30-days rule can be found [here](https://www.airbnb.com/help/article/860/amsterdam?locale=en&_set_bev_on_new_domain=1632399829_ZDVkNDgwYmU4YjY2) (this article is also available in [Dutch](https://www.airbnb.nl/help/article/860/amsterdam?_set_bev_on_new_domain=1632399829_ZDVkNDgwYmU4YjY2))
- An overview of the airbnbs in Amsterdam can be found [here](http://insideairbnb.com/amsterdam/).
- Similar datasets as the one we used for this project are avalable on the airbnb website under the "[Get the data](http://insideairbnb.com/get-the-data.html)" tab.

## About

This repository has been created in assignment of the Tilburg University course [Data Preperation and Workflow Managament](https://dprep.hannesdatta.com/). The contributors of this repository are [Sharda Hinsenveld](https://github.com/Shardahinsenveld), [Miranda Manschot](https://github.com/mirandamanschot), [Nikki Tissen](https://github.com/nikkitissen), [Lauren Verhoeven](https://github.com/LaurenVerhoeven), and [Lotte Verkuijlen](https://github.com/LotteVerkuijlen). 
