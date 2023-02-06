-- Looking at the death rate of covid in China

SELECT 
			location,
			date,
			total_cases,
			total_deaths,
			(total_deaths / total_cases)*100 AS dealth_rate

FROM covid_death
WHERE location LIKE 'china'
ORDER BY location, date
