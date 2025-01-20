# Food Insecurity in Kansas City, MO
## Links to Code
Data tranformation and some initial analysis: https://github.com/GiavannaFranklin/Food-Insecurity-Project/blob/main/Food_Insecurity_Project.ipynb

Additional analysis: https://github.com/GiavannaFranklin/Food-Insecurity-Project/blob/main/Food_Insecurity_Project.sql

## Introduction/Problem Statement
Many in the U.S. suffer from food insecurity. In 2023, around 13.5% of U.S. households were food insecure.[1] It is estimated 13% of residents in Missouri are food insecure.[2] For counties in Kansas City, it was estimated to be 19% in Jackson County and 13% in Clay County in 2014.[3] Food insecurity is defined by the USDA as “a lack of consistent access to enough food for every person in a household to live an active, healthy life.”[4] Food insecurity is multi-faceted, where it is not only about not affording enough food, but also healthy food.[5] It also involves not being able to access stores with healthy food. Being food insecure can have negative health effects, such as increasing the likelihood for obesity, heart disease, and diabetes.[6]

### Problem Statement
Since food insecurity is multi-faceted, it is important to understand how different factors are associated with it or contribute to it and how it varies geographically. This could help us better understand and address food insecurity.

## Approach/Methodology
This project, inspired by how Healthy Food Priority Areas are calculated in Pittsburgh, analyzes the various factors that are reflective of food insecurity: being able to afford adequate food, being able to eat healthy food, and having easy availability of stores with healthy food.[7] This analysis looks at how these factors vary geographically across census tracts in the Kansas City, MO metropolitan area. Included in the analysis to estimate these factors is the prevalence of families’ income below 200% of the federal poverty line, which the USDA has used to determine low-income areas.[8] Those who are low income have less opportunity to afford adequate food. Obesity prevalence, which is a health factor associated with poor diet, is also used as an estimate for food insecurity in terms of affording healthy food. Those who are food insecure tend to have more unhealthy diets.[9] This project also analyzes the prevalence of households with no vehicle to estimate access to grocery stores since not having access to a vehicle can make it challenging to attend.

Additionally, the prevalence of food stamps/SNAP is analyzed as it reflects those requiring assistance to afford food, though it may not include all who are food insecure. In 2023, 12.6% of U.S. residents received SNAP benefits, a figure similar to the estimated percentage of food-insecure individuals nationwide.[10] In Missouri, 10.7% of residents received SNAP benefits in 2023, slightly below the estimated 13% who were food insecure.[11] Finally, food insecurity factors are examined at the county level.

## Results
### Families Under 200% of the Federal Poverty Line
A map of the prevalence of families under 200% of the federal poverty line by census tract is depicted in Figure 1. The data was gathered from the American Community Survey 2020 5-Year Estimates Detailed Tables titled “B17026 Ratio of Income to Poverty Level of Families in the Past 12 Months” for Jackson, Clay, Cass, and Platte counties, which are counties in Kansas City, MO. Of all the areas mapped, the average rate is 24.9%, so it is slightly below the national average of 26.9%.[12] Many census tracts with the highest proportions are clustered most densely around the west-central part of the metropolitan area, though they are less clustered very near the western border.

**Figure 1.** Families Under 200% of the Federal Poverty Line 

<img width="431" alt="Map-Families Under 200% of the Federal Poverty Line" src="https://github.com/user-attachments/assets/a96f6005-2afe-46de-b377-443b53afab21" />

<ins> % Under 200% of FPL</ins>

<img width="150" alt="Legend-Families Under 200% of the Federal Poverty Line" src="https://github.com/user-attachments/assets/6fe4df5f-8b59-4f9c-8c8c-f51f0542b52d" />

### Obesity Prevalence
A map on obesity rates by census tract is illustrated in Figure 2. The data was collected from the “CDC’s 500 Cities: Census Tract Level Data” that measures health data. The average obesity prevalence among the census tracts is 39.2% among adults, which is lower than the national average. The average obesity prevalence among adults nationally is over 41.9%.[13] Many census tracts with the highest proportions are toward the west-central of the metropolitan area but less clustered very near the western border, as well.

**Figure 2**. Obesity Prevalence

<img width="439" alt="Map-Obesity Prevalence" src="https://github.com/user-attachments/assets/3435d5c3-716f-42a0-a32a-c488398b8fea" />

<ins> % Obese </ins>

<img width="150" alt="Legend-Obesity Prevalence" src="https://github.com/user-attachments/assets/9937cb3e-af00-4d6c-89e9-5a8c385ae5cf" />

### Households with No Vehicle Prevalence
Additionally, a map on the rate of households with no vehicle by census tract is shown in Figure 3. The data used comes from the American Community Survey 2022 5-Year Estimates Detailed Tables titled “B25044 Tenure by Vehicles Available” for Jackson, Platte, Cass, and Clay counties. The average proportion of households with no vehicle is 7.6%, which is similar to the national average of 8.3%.[14] Areas with the highest proportions are also clustered most densely around the west-central part of the Kansas City area.

**Figure 3**. Households with No Vehicle Prevalence

<img width="438" alt="Map-Households with No Vehicle Prevalence" src="https://github.com/user-attachments/assets/d2d22be9-9582-40b0-87c1-d7feeab3bb0b" />

<ins> % No Vehicle </ins>

<img width="150" alt="Legend-Households with No Vehicle Prevalence" src="https://github.com/user-attachments/assets/bc6b2d3f-9b95-4942-82fe-d38fb80adb0d" />

### Households with Food Stamps/SNAP Prevalence
Furthermore, a map on the prevalence of households with food stamps/SNAP by census tract is depicted in Figure 4. The data is from the American Community Survey 2022 5-Year Estimates Detailed Tables titled “S2201 Food Stamps/Supplemental Nutrition Assistance Program (SNAP)” for Jackson, Platte, Cass, and Clay counties. The average prevalence of households with food stamps/SNAP in the Kansas City area is 9.9%, which is lower than the national average of 12.6%.[15] Census tracts toward the west-central area tend to have the highest percentages, though not as dense very near the western border.

**Figure 4.** Households with Food Stamps/SNAP Prevalence

<img width="432" alt="Map-Households with Food Stamps/SNAP Prevalence" src="https://github.com/user-attachments/assets/66bbdbb9-3edb-4108-a4b3-633afeb1f298" />

<ins> % SNAP </ins>

<img width="150" alt="Legend-Households with Food Stamps/SNAP Prevalence" src="https://github.com/user-attachments/assets/5d96e190-db3b-4423-b397-28a86d62d339" />


### Average Prevalence of Food Insecurity Factors Across By County
Additionally, Figure 5 illustrates the average prevalence of food insecurity metrics by county. The rankings for the average rate of households with no vehicle and families under 200% of the federal poverty line are identical: Jackson County ranks highest, followed by Clay, Platte, and Cass. For households receiving food stamps/SNAP, the ranking shifts slightly to Jackson, Clay, Cass, and Platte. The average obesity prevalence follows yet another pattern: Jackson, Platte, Clay, and Cass.

Across the factors, Cass, Clay, and Platte counties show minimal variation, while Jackson County consistently ranks highest and differs significantly from the others, except in obesity prevalence, where variation among counties is not as high. These patterns highlight the associations among these factors.

**Figure 5.** Average Prevalence of Food Insecurity Factors By County

<img src="https://github.com/user-attachments/assets/200303cb-1a1e-41d9-ab9a-0cafd4ff958d" alt="Sheet 1-9" width="800">

## Conclusion
In conclusion, food insecurity involves a variety of factors. These include not only being able to afford enough food, but also healthy food. It also involves not being able to access stores with healthy food. Since food insecurity is multi-faceted, it is important to understand how different factors are associated with it or contribute to it and how it varies geographically. This could help us better understand and address food insecurity. This project analyzed the various factors that are reflective of food insecurity in the Kansas City, MO metropolitan area: families under 200% of the federal poverty line, obesity, households with no vehicle, and households with food stamps/SNAP prevalence rates. It found that the city is a bit below the national average in these factors. However, census tracts with the highest rates are in Jackson County and are clustered toward the west-central part of the city. This suggests a higher need for intervention in these areas.

For future work, it might be useful to investigate more factors related to food insecurity, such as diabetes and heart disease prevalence. It may also be useful to analyze proximity to grocery stores. To better understand the severity of need in certain areas, it may also be beneficial to study the prevalence of households under different proportions of the Federal Poverty Line, such those under 125% and 150% of the Federal Poverty Line.

## Data Sources
“CDC’s 500 Cities: Census Tract Level Data (GIS Friendly Format), 2024 release.” Centers for Disease Control and Prevention. https://data.cdc.gov/500-Cities-Places/PLACES-Census-Tract-Data-GIS-Friendly-Format-2024-/yjkw-uj5s/about_data

U.S Census Bureau. American Community Survey, 2020 5-Year Estimates Detailed Tables. “B17026 Ratio of Income to Poverty Level of Families in the Past 12 Months”. https://data.census.gov/table/ACSDT5Y2022.B17022?q=ratio%20of%20income%20to%20poverty%20level&g=050XX00US29037$1400000,29047$1400000,29095$1400000,29165$1400000 

US Census Bureau. American Community Survey, 2022 5-Year Estimates Detailed Tables. “B25044 Tenure by Vehicles Available”. https://data.census.gov/table?q=B25044:%20Tenure%20by%20Vehicles%20Available&g=050XX00US29037$1400000,29047$1400000,29095$1400000,29165$1400000 

US Census Bureau. American Community Survey, 2022 5-Year Estimates Detailed Tables. “S2201 Food Stamps/Supplemental Nutrition Assistance Program (SNAP)”. https://data.census.gov/table/ACSST5Y2022.S2201?q=food%20stamps&g=050XX00US29037$1400000,29047$1400000,29095$1400000,29165$1400000 

US Census Bureau. “2021 TIGER/Line Shapefiles: Census Tracts”. https://www.census.gov/cgi-bin/geo/shapefiles/index.php?year=2021&layergroup=Census+Tracts 

MDR Education. “U.S. FIPS County Codes”. https://mdreducation.com/pdfs/US_FIPS_Codes.xls 

## References
[1] “Key Statistics & Graphics.” USDA ERS - Key Statistics Graphics. https://www.ers.usda.gov/topics/food-nutrition-assistance/food-security-in-the-u-s/key-statistics-graphics/.

[2] “Food Fight: How Kansas City Struggles to Feed Its Families.” Flatland, June 17, 2022. https://flatlandkc.org/news-issues/food-fight-how-kansas-city-struggles-to-feed-its-families/.

[3] Food Insecurity: Open Data KC.” City of Kansas City, MO. https://data.kcmo.org/Sustainability/Food-Insecurity/7nxr-5euy.

[4] What Is Food Insecurity?” Feeding America. Accessed December 9, 2022. https://www.feedingamerica.org/hunger-in-america/food-insecurity.

[5] “FeedPGH: Understanding Food Insecurity in the City of Pittsburgh.” The City of Pittsburgh, July 2020. https://apps.pittsburghpa.gov/redtail/images/16669_FeedPGH_Print_Version_11.18.21.pdf.

[6] Ibid.

[7] Ibid.

[8] “Appendix C-Methods, Supporting Tables, and Maps for National-Level Analysis of Supermarket Access,” USDA, https://www.ers.usda.gov/webdocs/publications/42711/12712_ap036l_1_.pdf?v=0.

[9] “FeedPGH: Understanding Food Insecurity.”

[10] "Key Statistics & Research." USDA ERS - Supplemental Nutrition Assistance Program (SNAP). https://www.ers.usda.gov/topics/food-nutrition-assistance/supplemental-nutrition-assistance-program-snap/key-statistics-and-research#:~:text=Download%20chart%20image-,Download%20chart%20data%20in%20Excel%20format.,as%20low%20as%204.6%20percent.&text=Download%20chart%20data%20in%20Excel%20format.,-SNAP%20benefits%20are.

[11] Ibid.

[12] Bureau, US Census. “POV-01. Age and Sex of All People, Family Members, and Unrelated Individuals.” Census.gov, August 29, 2024. https://www.census.gov/data/tables/time-series/demo/income-poverty/cps-pov/pov-01.html#par_textimage_30.

[13] “Adult Obesity Facts.” Centers for Disease Control and Prevention, May 14, 2024. https://www.cdc.gov/obesity/adult-obesity-facts/?CDC_AAref_Val=https://www.cdc.gov/obesity/data/adult.html.

[14] Bureau, US Census. “Vehicles Available.” Census.gov, March 2, 2022. https://www.census.gov/acs/www/about/why-we-ask-each-question/vehicles/.

[15] "Key Statistics & Research." USDA ERS - Supplemental Nutrition Assistance Program (SNAP).
