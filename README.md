# maxpreps-data-analysis

## Description

This GitHub repository includes Jupyter notebooks used to scrape High School Basketball data from [MaxPreps](https://www.maxpreps.com/). The dataset encompasses all recorded games from the 2021-2022 season. Additional demographic and financial data for each high school was sourced from [NCES](https://nces.ed.gov/). By merging these datasets, we created a comprehensive dataset that includes detailed information on each high school basketball game along with corresponding demographic data. This combined dataset is being used for statistical analysis to investigate whether a high school's socioeconomic status influences the performance of its basketball teams.


## Notebooks
(1) **Final_Scraping.ipynb** - used to create MaxPreps dataframe. Utilized bs4, requests, pandas to scrape and format data.  
(2) **50 States Merge and Clean.ipynb** - used to concatenate MaxPreps dataframes for each state to form one grand dataframe with all basketball data in the country.  
(3) **Filling Nulls.ipynb** - This notebook addresses null values in Team 2's location data. Initially, location data for Team 2 was inferred from Team 1’s data using the school's mascot image address as a unique key. For schools without mascot data on MaxPreps, null values were present. This notebook fills these null entries by matching Team 2’s location to Team 1’s using team names and scores as keys.  
(4) **Demographic Data.ipynb** - used to clean and format data downloaded from [NCES](https://nces.ed.gov/). Public school and private data are combined into one final Demographics.csv.   
(5) **Merge Maxpreps and Demographics Data.ipynb** - Uses location data from the MaxPreps and the Demographics dataset to merge the two together. Python package *thefuzz* is used to match the location data for not 100% matches.  
(6) **Add Fiscal Data.ipynb** - This notebook adds fiscal data on each school district to the final dataset.  
(7) **making subsets for analysis.ipynb** - Makes a subset of data that is each school's demographic and financial information with the win% and average margin of victory for their basketball team. This subset is used for linear regression analysis.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install the required packages.

```bash
pip install -r requirements.txt
```