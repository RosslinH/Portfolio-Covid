-- Looking at countries with the highest infection rate of covid compared to population

SELECT 
			location,
			population,
			MAX(total_cases) AS highest_infection,
			MAX((total_cases / population)*100) AS infection_rate
            
FROM covid_death
GROUP BY location, population
ORDER BY infection_rate DESC 