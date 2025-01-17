## World Bank Data- Country analysis Nigeria

## This data is purely for learning as I aimed to improve my Data Cleaning, Manipulation, and Visualization skills. 

## Data set
The data is in Excel for your view [Download here](https://1drv.ms/x/c/fc11b36f16d1a624/EaHQQL3K7gdGnQeR0lP2plkB8Wrh4va4MEcR5VV8oQ6mYg?e=QFpFBB)

## Tools
R Programming- for manipulation, Cleaning, and Visualization 

## Little bit of code 
~~~(r)
nigeria_data<- World_bank %>%
  filter(`Country Name`=="Nigeria")
selected_criteria <- c("Population, total",
         "Population growth (annual %)",
         "Surface area (sq. km)",
         "Poverty headcount ratio at national poverty line",
         "GDP (current US$)",
         "GDP growth (annual %)")
nigeria_data_filter<-nigeria_data %>% 
  filter(`Series Name` %in% selected_criteria)

nigeria_long<-nigeria_data_filter %>% 
  pivot_longer(cols=5:16,
               names_to = "Year",
               values_to = "Values") %>% 
              mutate(Year= as.numeric(str_extract(Year, "\\d{4}")))
View(nigeria_long)
~~~
### ANALYSIS FINDINGS 
The data took into account the growth of Nigeria's Gross Domestic Product, GDP per capita, and Population growth from 1990 to 2023.
#### Report on Nigeria's Population
The population has been on a steady rise from 1990 to 2023, even considering the COVID-19 outbreak from the graph below we see consistency in the increase in Nigeria's population.
 ![Nigeria Population from 1990- 2023](https://github.com/daniel-ifenna/Journey-into-data-analytics-/blob/aa1c42c7f1c8326eb6ebca8a32fe464cd3a52460/population%20growth.png) 

 #### Report on GDP
The country's GDP experienced significant growth from 2000, reaching an all-time high of $574,183,763,412 in 2014. However, from 2016 to 2023, the GDP revenue declined due to various economic, political, and social factors. These challenges included:

- Over-reliance on oil
- Brain drain: Human capital migration from the country to other parts of the world
- Inadequate policy support for businesses
- Insecurity and other issues

As evident from the graph, the forecast suggests further declines in the coming year.
 ![Nigeri's GDP from 1990 - 2023](https://github.com/daniel-ifenna/Journey-into-data-analytics-/blob/e18a3d1c0dcf9d47b5cf738146923ee29780b70b/GDP%20growth.png)


 #### Report on GDP per capita
 The GDP per capita trend mirrors the GDP growth trend. But with differing implications. In 2014, the average Nigerian citizen's income was around $3,000, which was relatively sufficient for the standard of living at the time. However, as GDP declined, so did the per capita income. Currently, the average Nigerian citizen earns between $2,000-$2,200, which is insufficient due to economic inflation and population growth. 
 ![GDP PER CAPITA](https://github.com/daniel-ifenna/Journey-into-data-analytics-/blob/7d4253e5ee755d0a637b87d385b5ae95fac16752/GDP%20per%20capita.png)



 ## RECOMMENDATION 
 Human capital is a major contributor to economic growth coupled with good policy and Job availability. My recommendations are as follows
 - The Nigeria government should not rely on Oil as a major economic resource and therefore explore other mineral resources such as; Tin, Minerals, Kaolin, renewable energy (geothermal wells), increases in exportation, etc
 - The Nigeria government should create favorable policies that ensure the country is a safe space for businesses to grow that way Jobs are created.
 - curbing inflation, as the current increase in the standard of living poses as a threat to job security and everyday lifestyle.
 - All sovereign accounts should have money recorded in Naira rather than dollar. This may help in increasing the purchasing power of Naira.
 
 

