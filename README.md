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

### 1. Countries with the Highest COVID-19 Cases

Identified the countries with the highest recorded number of cases during the pandemic.

<img width="299" height="292" alt="Screenshot 2026-06-14 at 9 54 07 PM" src="https://github.com/user-attachments/assets/225f7df2-a45b-43db-8dc6-9a6a34cc367e" />

**Key Observation:**
The United States, India, and Brazil recorded some of the largest outbreaks globally, though absolute case counts alone do not fully reflect pandemic severity as population varies.

---

### 2. Death Burden Relative to Population

Calculated deaths per million residents to compare mortality impact fairly across countries.

<img width="551" height="312" alt="Screenshot 2026-06-14 at 9 55 29 PM" src="https://github.com/user-attachments/assets/853c254e-9dfa-4962-8357-2abd33bb6d23" />

**Key Observation:**
Several smaller nations experienced a disproportionately high mortality burden despite having far fewer total cases than larger countries.

---

### 3. Country Comparison Study

Compared:

* United States
* India
* China
* Peru

Using:

* Total Cases
* Total Deaths
* Deaths per Million

<img width="471" height="142" alt="Screenshot 2026-06-14 at 9 56 12 PM" src="https://github.com/user-attachments/assets/e98f29fd-5b81-4dd4-b303-8b76d0f3b168" />

**Key Observation:**
Population-adjusted metrics revealed significantly different outcomes than raw totals alone. Peru, for example, emerged as one of the hardest-hit countries despite its smaller population, whereas China seems to have under-reported cases.

---

### 3. Infection Rate Analysis

Measured the percentage of the country's population that had been infected over time.

<img width="379" height="165" alt="Screenshot 2026-06-14 at 9 57 57 PM" src="https://github.com/user-attachments/assets/1db57ffd-cd9f-41be-9a7a-aca2cb10e720" />

**Key Observation:**
Some countries experienced substantially higher infection penetration despite having smaller populations.

---

### 4. Population-Level Death Rate

Calculated the percentage of the country's population that died from COVID-19.

<img width="359" height="160" alt="Screenshot 2026-06-14 at 9 59 58 PM" src="https://github.com/user-attachments/assets/12ebfb2a-89e0-4a35-9c73-cb28cc8a47c7" />

**Key Observation:**
This metric provided a broader view of societal impact than traditional case fatality calculations.

---

### 9. Relative Outbreak Scale

Measured how large outbreaks in major countries were compared to the country with the highest total case count.

<img width="388" height="289" alt="Screenshot 2026-06-14 at 10 00 32 PM" src="https://github.com/user-attachments/assets/96497750-e208-4629-8ec9-b3b7626ef427" />

**Key Observation:**
Many countries that appeared heavily affected represented only a fraction of the total cases observed in the global leader.

---

### 10. Vaccination Coverage vs Mortality

Using Common Table Expressions (CTEs), vaccination coverage and death rates were calculated and compared at the country level.

<img width="458" height="538" alt="Screenshot 2026-06-14 at 10 01 15 PM" src="https://github.com/user-attachments/assets/feb1c087-4a5c-4886-b4c5-9a9d3bf0d914" />

**Key Observation:**
Countries with higher vaccination coverage generally showed lower mortality rates, although healthcare quality, demographics, and reporting differences also influenced outcomes.

---

## Tableau Dashboard

The dashboard was built to complement the SQL analysis and present findings visually.

<img width="2048" height="1411" alt="image" src="https://github.com/user-attachments/assets/17c767ae-5192-434e-a317-98e63bbfd45b" />

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
* Common Table Expressions
* Subqueries
* Derived Metrics
* Population-Normalized Analysis
* Exploratory Data Analysis 

---

## Key Takeaways

* Raw case counts can be misleading without population context.
* Deaths per million provide a more meaningful measure of pandemic severity.
* Infection rates often tell a different story than total case counts.
* Countries with similar case counts experienced vastly different mortality outcomes.
* Vaccination coverage appears associated with improved outcomes, though it is not the sole determinant of mortality.

---

