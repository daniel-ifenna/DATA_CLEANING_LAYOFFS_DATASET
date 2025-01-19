# World Bank Data- Country analysis Nigeria
 This data is purely for learning to improve my Data Cleaning, Manipulation, and Visualization skills. 

The data is in Excel for your view [Download here](https://1drv.ms/x/c/fc11b36f16d1a624/EaHQQL3K7gdGnQeR0lP2plkB8faiGCVh0QkEHqKohzyluQ?e=bKvP6b)

## Tools
R Programming- for manipulation, Cleaning, and Visualization 

- Little bit of code


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
1. Report on Nigeria's Population
The population has been on a steady rise from 1990 to 2023, even considering the COVID-19 outbreak from the graph we see consistency in the increase in Nigeria's population.

2. Report on GDP
The country's GDP experienced significant growth from 2000, reaching an all-time high of $574,183,763,412 in 2014. However, from 2016 to 2023, the GDP revenue declined due to various economic, political, and social factors. These challenges included:

- Over-reliance on oil
- Brain drain: Human capital migration from the country to other parts of the world
- Inadequate policy support for businesses
- Insecurity and other issues

As evident from the graph the forecast suggests further declines in the coming year.
 
 3.  Report on GDP per capita

 The GDP per capita trend mirrors the GDP growth trend. But with differing implications. In 2014, the average Nigerian citizen's income was around $3,000, which was relatively sufficient for the standard of living at the time. However, as GDP declined, so did the per capita income. Currently, the average Nigerian citizen earns between $2,000-$2,200, which is insufficient due to economic inflation and population growth. 

### PLOTS

![](images/population%20growth.png)
![](images/GDP%20per%20capita.png)
![](images/GDP%20growth.png)

 
#### RECOMMENDATION 
 
 Human capital is a major contributor to economic growth coupled with good policy and Job availability. My recommendations are as follows
 - The Nigeria government should not rely on Oil as a major economic resource and therefore explore other mineral resources such as; Tin, Minerals, Kaolin, renewable energy (geothermal wells), increases in exportation, etc
 The Nigerian government should create favorable policies that ensure the country is a safe space for businesses to grow, which will create Jobs.
 Curbing inflation, as the current increase in the standard of living threatens job security and everyday lifestyle.
 - All sovereign accounts should have money recorded in Naira rather than dollars. This may help in increasing the purchasing power of Naira.
 
 

