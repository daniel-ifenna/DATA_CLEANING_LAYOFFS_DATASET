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
 The Country's GDP began to gain traction from the year 2000 and reached a recorded all-time high in 2014 as $574,183,763,412.00. From the year 2016 - 2023, we begin to see a decline in the GDP Revenue due to certain economic, political, and social factors such as Dependency on Oil, Shift in Human capital from the motherland to other parts of the world, poor policy formulation in the support of businesses, insecurity and many more. 
 Looking at the graph, the forecast alone highlights further declines in the coming year. Take a look below
 ![Nigeri's GDP from 1990 - 2023](
 
 

