# Boating Accident Analysis Project

**Author:** Tyler Meyers  
**Course:** CS50's Introduction to Programming with R  
**Date:** September 12, 2024  
**GitHub:** [tylermeyers351](https://github.com/TylerMeyers351)

**Video Demo:** [youtube](https://www.youtube.com/watch?v=AurmOduGnRY))



## Project Overview

This project analyzes data from the **Boating Accident Report Database (BARD)**, sourced through the **Data Liberation Project**. BARD includes incidents submitted by the U.S. Coast Guard involving accidents where people were injured, killed, or where there was vessel damage.

The analysis is conducted using R, and the project implements functions to manipulate and analyze the data, including summarizing statistics on accidents, fatalities, and injuries. The project also includes tests and visualizations of key trends in the data.

## Data Source

The dataset is provided by the U.S. Coast Guard through the Boating Accident Report Database (BARD) and is available via the **Data Liberation Project**.

**Data Liberation Project:** [https://www.data-liberation-project.org/datasets/](https://www.data-liberation-project.org/datasets/)

**Data Is Plural:** [https://www.data-is-plural.com/](https://www.data-is-plural.com/)

## Files and Code Structure

- **`setup.R`**: Loads required libraries, cleans the dataset, and saves it as an RData file for use in other functions.
- **Functions**:
  - `totalDeathsPerYear(year)`: Returns the number of boating-related deaths for a given year.
  - `totalInjuriesPerYear(year)`: Returns the number of boating-related injuries for a given year.
  - `deadliestDayPerYear(year)`: Identifies the day with the most fatalities in a given year.
  
  Each function includes custom documentation.

- **Tests**: Unit tests are implemented for each of the functions. These tests can be run to ensure the functions are working correctly.
- **Documentation**: Documentation for each function is provided in the 'man' folder.

## Visualizations

The project generates several key visualizations to highlight important insights from the data (see the graphs folder for corresponding code):

- **Fatalities by Water Condition**: Most fatalities occur on calm water, followed by choppy and rough waters.
- **Fatalities by Day**: A higher number of fatalities happen on weekends.
- **Fatalities by Event Type**: Capsizing, flooding/swamping, and collisions with fixed objects are common causes of fatalities.
- **Fatalities by Cause**: Alcohol is the leading cause of boating-related fatalities.

These visualizations are saved as PNG files in the 'graphs' folder and can be used to visually explore trends in the data.

## Conclusion

This project demonstrates the use of R for data analysis, including data manipulation, custom functions, unit testing, and creating visualizations. The analysis of boating accidents highlights important safety concerns, such as the dangers of alcohol consumption while boating.

---

*Note: The csv and it's corresponding RData file is not included in this repo. See above data sources.*
