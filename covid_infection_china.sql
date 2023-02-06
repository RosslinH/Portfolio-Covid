-- Looking at the infection rate of covid in China

SELECT 
	location,
	date,
	total_cases,
	population,
	(total_cases / population)*100 AS infection_rate

FROM covid_death
WHERE location LIKE 'china'
ORDER BY location, date
