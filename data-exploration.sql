-- Which Asian countries have the largest populations?
SELECT *
FROM countries
WHERE continent = 'Asia'
ORDER BY population DESC;

-- What does the COVID-19 dataset look like when sorted by total cases?
SELECT *
FROM cases
ORDER BY total_cases DESC;

-- Which 10 countries recorded the highest number of COVID-19 cases?
SELECT c.location, c.continent, MAX(cs.total_cases) AS total_cases
FROM cases cs
JOIN countries c ON cs.iso_code = c.iso_code
GROUP BY c.location, c.continent
ORDER BY total_cases DESC
LIMIT 10;

-- Which countries experienced the highest death burden relative to their population?
SELECT c.location, c.continent,
       MAX(cs.total_cases) AS total_cases,
       MAX(cs.total_deaths) AS total_deaths,
       ROUND(MAX(cs.total_deaths) / c.population * 1000000, 2) AS deaths_per_million
FROM cases cs
JOIN countries c ON cs.iso_code = c.iso_code
GROUP BY c.location, c.continent, c.population
ORDER BY deaths_per_million DESC
LIMIT 20;

-- How do India, China, the United States, and Peru compare in terms of deaths per million?
SELECT c.location, c.population,
       MAX(cs.total_cases) AS total_cases,
       MAX(cs.total_deaths) AS total_deaths,
       ROUND(MAX(cs.total_deaths) / c.population * 1000000, 2) AS deaths_per_million
FROM cases cs
JOIN countries c ON cs.iso_code = c.iso_code
WHERE c.location IN ('India', 'China', 'United States', 'Peru')
GROUP BY c.location, c.population;

-- For selected countries, what was the daily likelihood of death among reported cases?
SELECT ct.location, cs.date, cs.total_cases, cs.total_deaths,
       100.0 * cs.total_deaths / cs.total_cases AS death_infected_rate
FROM cases cs
JOIN countries ct ON cs.iso_code = ct.iso_code
WHERE ct.location IN ('United States', 'United Kingdom', 'Italy', 'Chile', 'India')
ORDER BY ct.location, cs.date;

-- What percentage of the population had been infected over time?
SELECT ct.location, cs.date, cs.total_cases, ct.population,
       100.0 * cs.total_cases / ct.population AS infection_rate
FROM cases cs
JOIN countries ct ON cs.iso_code = ct.iso_code
WHERE ct.location IN ('United States', 'United Kingdom', 'Italy', 'Chile', 'India')
ORDER BY ct.location, cs.date;

-- Which of these countries reached the highest infection rate during the pandemic?
SELECT ct.location, ct.population,
       MAX(cs.total_cases) AS total_cases,
       100.0 * MAX(cs.total_cases) / ct.population AS infection_rate
FROM cases cs
JOIN countries ct ON cs.iso_code = ct.iso_code
WHERE ct.location IN ('United States', 'United Kingdom', 'Italy', 'Chile', 'India')
GROUP BY ct.location, ct.population;

-- What share of each country's population ultimately died from COVID-19?
SELECT ct.location, ct.population,
       MAX(cs.total_deaths) AS total_deaths,
       100.0 * MAX(cs.total_deaths) / ct.population AS death_rate
FROM cases cs
JOIN countries ct ON cs.iso_code = ct.iso_code
WHERE ct.location IN ('United States', 'United Kingdom', 'Italy', 'Chile', 'India')
GROUP BY ct.location, ct.population;

-- How much larger was the outbreak in the top countries compared to the global leader?
SELECT c.location, c.continent,
       MAX(cs.total_cases) AS total_cases,
       ROUND(MAX(cs.total_cases) / (
           SELECT MAX(total_cases)
           FROM cases
       ) * 100, 2) AS pct_of_highest
FROM cases cs
JOIN countries c ON cs.iso_code = c.iso_code
GROUP BY c.location, c.continent
ORDER BY total_cases DESC
LIMIT 10;

-- Is there a relationship between vaccination coverage and COVID-19 death rates?
WITH vax_rates AS (
    SELECT c.location, c.continent,
           ROUND(100.0 * MAX(v.people_fully_vaccinated) / c.population, 2) AS fully_vaccinated_pct
    FROM vaccinations v
    JOIN countries c ON v.iso_code = c.iso_code
    WHERE c.population IS NOT NULL
      AND c.continent IS NOT NULL
    GROUP BY c.location, c.continent, c.population
),
death_rates AS (
    SELECT c.location,
           ROUND(100.0 * MAX(cs.total_deaths) / MAX(cs.total_cases), 2) AS death_rate
    FROM cases cs
    JOIN countries c ON cs.iso_code = c.iso_code
    WHERE cs.total_cases > 0
      AND c.continent IS NOT NULL
    GROUP BY c.location
)
SELECT v.location, v.continent,
       v.fully_vaccinated_pct,
       d.death_rate
FROM vax_rates v
JOIN death_rates d ON v.location = d.location
WHERE v.fully_vaccinated_pct IS NOT NULL
ORDER BY v.fully_vaccinated_pct DESC
LIMIT 20;