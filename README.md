<p align="center">
  <img src="https://github.com/user-attachments/assets/fa6a8702-fb68-4490-9eac-ecb733102748" alt="OutOfGasGIF">
</p>

 ## Fuel Price Analysis in Argentina 


This data analysis project investigates the trends and fluctuations of fuel prices across Argentina over the past few years from 2016 to 2023, focusing on various fuel types and sellers. By collecting and examining data from sources such as government databases and fuel companies, the study aims to uncover patterns of price adjustments, seasonal trends, and regional differences. The dataset, obtained from FP20 Analytics, can be found on [FP20 Analytics Data](https://fp20analytics.com/) website, and contains 30,784 rows and 18 columns.

To reduce redundancy and improve data organization, I applied data normalization techniques. The dataset includes columns such as Year & Month ID, Company ID (Seller), Legal ID, Company Name, Address, City, Province, Region, Product ID, Product Type, Shift ID, Shift Type, Price (Argentine Pesos), Date, Flag Company ID, Flag Company, Latitude, and Longitude.


 ### Key Questions to Guide Investigation 🔍
 #### General Trends
 - How have average fuel prices changed over the last few years in Argentina?
 -  What are the yearly average fuel prices for each type of fuel?
 -  Are there any noticeable seasonal trends or patterns in fuel prices?
 #### Fuel Type Comparison 
 - How do the prices of different fuel types (e.g., gasoline, diesel, natural gas) compare over time?
 - Which fuel type has shown the highest price increase or decrease?
 #### Regional Analysis 
 - How do fuel prices vary across different regions or provinces in Argentina?
 - What is the total market size for each company?
 - Which fuel types exhibit the highest price volatility?

### Relationship Table 
![Relationship Table](https://github.com/Uche-Clare/Argentina-FuelPrice-Analysis/blob/e2159f0055dda24a7a3cb890b4c19e651901772a/Relationship%20Diagram.png)
### Key Findings 📄
Following the result of the guide questions from the investigation, these were my key findings :-
- Overall Trend: There has been a continuous upward trend in fuel prices each year from 2016 to 2023.
- Price Variations: Petrol Premium tends to be more expensive than Petrol Unleaded. Compressed Natural Gas and Gasoil prices are lower compared to petrol but still show a significant upward trend.
- Recent Increase: The steep increase in prices from 2022 to 2023 is notable across all fuel types, suggesting possible factors such as economic conditions, inflation, or market changes impacting fuel prices significantly in the most recent year.
#### Monthly Trends: 📈📈
- **High Prices:** Prices tend to be higher in the middle to later months of the year. For instance, prices peak in October and September for the years provided, often showing the highest values of the year during these months.
- **Lower Prices:** Prices tend to be lower at the beginning of the year, especially in January and February. This pattern is observable across the years, though the gap between the lowest and highest prices has grown over time.
#### Seasonal Patterns:
- **Spring and Summer Peaks:** April to August shows relatively high prices compared to earlier months of the year. Specifically, August and October are consistently among the months with the highest prices in each year.
- **End-of-Year Trends: ** Prices in November and December also show significant values but typically do not surpass the peaks seen in mid-year months like October and September.
#### Company Market Share Size 
1. **Market Share Distribution:** The market share price varies significantly among the companies. Most companies have a market share price of 0.01 or 0.02, which is relatively low. However, a few companies have a higher market share price, indicating a more significant presence or influence in the market. For instance:

    - Automovil Club Argentino has a market share price of 3.16, the highest in the list.
    - Agricultores Federados Argentinos S.C.L. has a market share price of 0.16.
    - Azul Combustibles SA has a market share price of 0.22.
    - Barbero Hermanos S.A. has a market share price of 0.21.
2. **High Market Volumes:** Several companies have high market volumes, suggesting a substantial market presence or activity. Notable examples include:

    - Automovil Club Argentino with a market volume of 377,235.
    - Agricultores Federados Argentinos S.C.L. with a market volume of 18,979.46.
    - Barbero Hermanos S.A. with a market volume of 25,017.02.
3. **Low Market Volumes and Shares:** Many companies have relatively low market volumes and market shares. For example:

    - ABALSAMO EGIDIO has a market volume of 412.4 with a market share price of 0.
    - ALBA LISANDRO has a market volume of 2,933.4 with a market share price of 0.02.
4. **Concentration of Market Share:** A few companies dominate the market, as evidenced by their high market share prices and volumes. These companies might be key players or leaders in the industry, whereas the majority of the others have minor shares.

5. **Market Share Price Variability:** Companies with higher market shares tend to have higher market volumes. For example:
**
    - Barbero Hermanos S.A.** and **Agricultores Federados Argentinos S.C.L.**, both with high market shares, also have large market volumes.
6. **Outliers and Special Cases:** Companies with extremely low or high market volumes compared to others might represent special cases or anomalies. For instance:

    - Automovil Club Argentino stands out with an unusually high market volume compared to the rest.


