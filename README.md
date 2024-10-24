# maxpreps-data-analysis

## Description

This GitHub repository includes Jupyter notebooks used to scrape High School Basketball data from [MaxPreps](https://www.maxpreps.com/). The dataset encompasses all recorded games from the 2021-2022 season. Additional demographic and financial data for each high school was sourced from [NCES](https://nces.ed.gov/) and [NGHIS](https://www.nhgis.org/). By merging these datasets, I created a comprehensive dataset that includes detailed information on each high school basketball game along with corresponding demographic data. This combined dataset is being used for statistical analysis to investigate whether a high school's socioeconomic status influences the performance of its basketball teams.


## Notebooks
(1) **Final_Scraping.ipynb** - used to create MaxPreps dataframe. Utilized bs4, requests, pandas to scrape and format data.  
(2) **Demographic Data.ipynb** - used to clean and format data downloaded from [NCES](https://nces.ed.gov/). Public school and private data are combined into one final Demographics.csv.   
(3) **merge_maxpreps_demographics.ipynb** - Uses location data from the MaxPreps and the Demographics dataset to merge the two together. Python package *thefuzz* is used to match the location data for differently formatted addresses.  
(4) **add_income_education.ipynb** - Adds median household income and the percentage of people aged 25 and older with a bachelor's degree to the final dataset.  
(5) **mv_xgboost.ipynb** - XGboost model that uses sociodemographic features to predict average margin of victory and win percentage of high schools.  
(6) **winpred_xgboost.ipynb** XGboost model that uses Team 1 and Team 2's sociodemographic features to predict who will win that game.  

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install the required packages.

```bash
pip install -r requirements.txt
```