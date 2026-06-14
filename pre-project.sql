CREATE DATABASE covid19_project;
USE covid19_project;

CREATE TABLE countries (
    iso_code   VARCHAR(10),
    continent  VARCHAR(50),
    location   VARCHAR(100),
    population VARCHAR(20)
);

CREATE TABLE cases (
    iso_code     VARCHAR(10),
    date         VARCHAR(10),
    total_cases  VARCHAR(20),
    new_cases    VARCHAR(20),
    total_deaths VARCHAR(20),
    new_deaths   VARCHAR(20)
);

CREATE TABLE hospitals (
    iso_code               VARCHAR(10),
    date                   VARCHAR(10),
    icu_patients           VARCHAR(20),
    hosp_patients          VARCHAR(20),
    weekly_icu_admissions  VARCHAR(20),
    weekly_hosp_admissions VARCHAR(20)
);

CREATE TABLE tests (
    iso_code       VARCHAR(10),
    date           VARCHAR(10),
    total_tests    VARCHAR(20),
    new_tests      VARCHAR(20),
    positive_rate  VARCHAR(20),
    tests_per_case VARCHAR(20),
    tests_units    VARCHAR(50)
);

CREATE TABLE vaccinations (
    iso_code                VARCHAR(10),
    date                    VARCHAR(10),
    total_vaccinations      VARCHAR(20),
    people_vaccinated       VARCHAR(20),
    people_fully_vaccinated VARCHAR(20),
    total_boosters          VARCHAR(20),
    new_vaccinations        VARCHAR(20)
);

