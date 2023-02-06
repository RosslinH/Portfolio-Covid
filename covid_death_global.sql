-- Global numbers

SELECT 
			date,
			SUM(new_cases) as total_cases,
			SUM(new_deaths) as total_deaths,
			SUM(new_deaths)/SUM(new_Cases)*100 as dealth_rate

FROM covid_death
WHERE continent IS NOT NULL
GROUP BY date
ORDER BY date
