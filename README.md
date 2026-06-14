# COVID-19 Global Impact Analysis using SQL & Tableau

## Overview

The COVID19 pandemic generated an unprecedented amount of data, creating opportunities to better understand how different countries were affected over time. In this project, I used SQL to clean, transform, and analyze global COVID 19 datasets before visualizing key findings in Tableau.

Rather than focusing solely on total case counts, I explored how population size, mortality burden, infection rates, and vaccination coverage shaped the pandemic's impact across countries.

---

## Project Goals

* Clean and prepare raw COVID-19 datasets for analysis.
* Explore country-level infection and mortality trends.
* Compare pandemic outcomes using population-adjusted metrics.
* Investigate the relationship between vaccination coverage and death rates.
* Build an interactive dashboard to communicate findings visually.

---

## Dataset

The analysis combines multiple datasets containing:

* Country demographics and population data
* Daily COVID-19 case and death statistics
* Testing and positivity metrics
* Vaccination progress data

Key tables used:

| Table        | Description                                 |
| ------------ | ------------------------------------------- |
| Countries    | Country metadata and population information |
| Cases        | Daily COVID-19 cases and deaths             |
| Vaccinations | Vaccination progress and coverage           |
| Tests        | Testing metrics and positivity rates        |

---

## Data Preparation

Before analysis, the data required several preprocessing steps:

* Standardized date formats across datasets
* Converted blank values to NULLs
* Corrected datatype inconsistencies
* Removed invalid or incomplete records
* Validated relationships using ISO country codes
* Handled missing vaccination and testing values

---

## Analysis Performed

### 1. Population Context

Identified the most populous countries in Asia to establish context for later comparisons.

**Key Observation:**
Large populations naturally contribute to higher case counts, making population-adjusted metrics essential for meaningful comparisons.

---

### 2. Countries with the Highest COVID-19 Cases

Identified the countries with the highest recorded number of cases during the pandemic.

**Key Observation:**
The United States, India, and Brazil recorded some of the largest outbreaks globally, though absolute case counts alone do not fully reflect pandemic severity.

---

### 3. Death Burden Relative to Population

Calculated deaths per million residents to compare mortality impact fairly across countries.

**Key Observation:**
Several smaller nations experienced a disproportionately high mortality burden despite having far fewer total cases than larger countries.

---

### 4. Country Comparison Study

Compared:

* United States
* India
* China
* Peru

Using:

* Total Cases
* Total Deaths
* Deaths per Million

**Key Observation:**
Population-adjusted metrics revealed significantly different outcomes than raw totals alone. Peru, for example, emerged as one of the hardest-hit countries despite its smaller population.

---

### 5. Case Fatality Analysis

Calculated the percentage of reported cases that resulted in death across selected countries.

**Key Observation:**
Fatality rates varied significantly across countries and evolved throughout the pandemic, reflecting differences in healthcare capacity, reporting practices, and treatment effectiveness.

---

### 6. Infection Rate Analysis

Measured the percentage of each country's population that had been infected over time.

**Key Observation:**
Some countries experienced substantially higher infection penetration despite having smaller populations.

---

### 7. Highest Infection Rates

Determined which countries ultimately recorded the highest share of infections relative to population size.

**Key Observation:**
Population size alone did not determine infection spread; public health measures and demographic factors likely played important roles.

---

### 8. Population-Level Death Rate

Calculated the percentage of each country's population that died from COVID-19.

**Key Observation:**
This metric provided a broader view of societal impact than traditional case fatality calculations.

---

### 9. Relative Outbreak Scale

Measured how large outbreaks in major countries were compared to the country with the highest total case count.

**Key Observation:**
Many countries that appeared heavily affected represented only a fraction of the total cases observed in the global leader.

---

### 10. Vaccination Coverage vs Mortality

Using Common Table Expressions (CTEs), vaccination coverage and death rates were calculated and compared at the country level.

**Key Observation:**
Countries with higher vaccination coverage generally showed lower mortality rates, although healthcare quality, demographics, and reporting differences also influenced outcomes.

---

## Tableau Dashboard

The dashboard was built to complement the SQL analysis and present findings visually.

### Dashboard Components

* Total Cases vs Total Deaths by Country
* New Vaccinations vs New Deaths Trends
* Positive Rate vs New Cases
* Global Infection & Vaccination Rate Map

The visualizations help highlight geographic differences, pandemic progression, and vaccination outcomes across countries.

---

## SQL Skills Demonstrated

Throughout this project, I applied:

* Data Cleaning & Transformation
* Joins across multiple tables
* Aggregate Functions
* GROUP BY & ORDER BY
* Common Table Expressions (CTEs)
* Subqueries
* Derived Metrics
* Population-Normalized Analysis
* Exploratory Data Analysis (EDA)

---

## Key Takeaways

* Raw case counts can be misleading without population context.
* Deaths per million provide a more meaningful measure of pandemic severity.
* Infection rates often tell a different story than total case counts.
* Countries with similar case counts experienced vastly different mortality outcomes.
* Vaccination coverage appears associated with improved outcomes, though it is not the sole determinant of mortality.

---

## Conclusion

This project demonstrates an end-to-end data analytics workflow, beginning with raw COVID-19 datasets and ending with interactive visual insights. Beyond writing SQL queries, the focus was on asking meaningful questions, validating assumptions with data, and communicating findings through effective visual storytelling.
