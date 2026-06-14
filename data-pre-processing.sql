SELECT * FROM countries;
SELECT * FROM cases;
SELECT * FROM hospitals;
SELECT * FROM tests;
SELECT * FROM vaccinations;

-- Data Pre-Cleansing 

SET SQL_SAFE_UPDATES = 0;

UPDATE countries
SET population = NULL
WHERE population = '';

ALTER TABLE countries
MODIFY population BIGINT NULL;


UPDATE cases
SET total_cases = NULL
WHERE total_cases = '';

UPDATE cases
SET new_cases = NULL
WHERE new_cases = '';

UPDATE cases
SET total_deaths = NULL
WHERE total_deaths = '';

UPDATE cases
SET new_deaths = NULL
WHERE new_deaths = '';

ALTER TABLE cases
MODIFY total_cases BIGINT NULL,
MODIFY new_cases BIGINT NULL,
MODIFY total_deaths BIGINT NULL,
MODIFY new_deaths BIGINT NULL;


UPDATE hospitals
SET icu_patients = NULL
WHERE icu_patients = '';

UPDATE hospitals
SET hosp_patients = NULL
WHERE hosp_patients = '';

UPDATE hospitals
SET weekly_icu_admissions = NULL
WHERE weekly_icu_admissions = '';

UPDATE hospitals
SET weekly_hosp_admissions = NULL
WHERE weekly_hosp_admissions = '';

ALTER TABLE hospitals
MODIFY icu_patients INT NULL,
MODIFY hosp_patients INT NULL,
MODIFY weekly_icu_admissions INT NULL,
MODIFY weekly_hosp_admissions INT NULL;


UPDATE tests
SET total_tests = NULL
WHERE total_tests = '';

UPDATE tests
SET new_tests = NULL
WHERE new_tests = '';

UPDATE tests
SET positive_rate = NULL
WHERE positive_rate = '';

UPDATE tests
SET tests_per_case = NULL
WHERE tests_per_case = '';

ALTER TABLE tests
MODIFY total_tests BIGINT NULL,
MODIFY new_tests BIGINT NULL,
MODIFY positive_rate DECIMAL(10,6) NULL,
MODIFY tests_per_case DECIMAL(10,2) NULL;


UPDATE vaccinations
SET total_vaccinations = NULL
WHERE total_vaccinations = '';

UPDATE vaccinations
SET people_vaccinated = NULL
WHERE people_vaccinated = '';

UPDATE vaccinations
SET people_fully_vaccinated = NULL
WHERE people_fully_vaccinated = '';

UPDATE vaccinations
SET total_boosters = NULL
WHERE total_boosters = '';

UPDATE vaccinations
SET new_vaccinations = NULL
WHERE new_vaccinations = '';

ALTER TABLE vaccinations
MODIFY total_vaccinations BIGINT NULL,
MODIFY people_vaccinated BIGINT NULL,
MODIFY people_fully_vaccinated BIGINT NULL,
MODIFY total_boosters BIGINT NULL,
MODIFY new_vaccinations BIGINT NULL;

UPDATE cases
SET date = DATE_FORMAT(STR_TO_DATE(date, '%m/%d/%Y'), '%Y-%m-%d');

UPDATE hospitals
SET date = DATE_FORMAT(STR_TO_DATE(date, '%m/%d/%Y'), '%Y-%m-%d');

UPDATE tests
SET date = DATE_FORMAT(STR_TO_DATE(date, '%m/%d/%Y'), '%Y-%m-%d');

UPDATE vaccinations
SET date = DATE_FORMAT(STR_TO_DATE(date, '%m/%d/%Y'), '%Y-%m-%d');

ALTER TABLE cases MODIFY date DATE;
ALTER TABLE hospitals MODIFY date DATE;
ALTER TABLE tests MODIFY date DATE;
ALTER TABLE vaccinations MODIFY date DATE;

SET SQL_SAFE_UPDATES = 1;

