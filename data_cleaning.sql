-- Unnecessary Data
SELECT *
FROM countries
WHERE continent ='';

DELETE FROM countries
WHERE continent = '';

SELECT * FROM countries;

DELETE FROM cases
WHERE iso_code NOT IN (SELECT iso_code FROM countries);

DELETE FROM hospitals
WHERE iso_code NOT IN (SELECT iso_code FROM countries);

DELETE FROM tests
WHERE iso_code NOT IN (SELECT iso_code FROM countries);

DELETE FROM vaccinations
WHERE iso_code NOT IN (SELECT iso_code FROM countries);

-- Data Pre-Exploration

SELECT MIN(date), MAX(date) FROM cases;

SELECT * FROM tests
WHERE positive_rate < 0 OR positive_rate > 1;