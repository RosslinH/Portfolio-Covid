-- Global numbers

SELECT 
	date,
	SUM(new_cases) AS total_cases,
	SUM(new_deaths) AS total_deaths,
	SUM(new_deaths)/SUM(new_Cases)*100 AS dealth_rate

FROM covid_death
WHERE continent IS NOT NULL
GROUP BY date
ORDER BY date
