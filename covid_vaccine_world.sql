-- Looking at number of people got vaccined worldwide

SELECT 
	cd.continent,
	cd.location, 
	cd.date, 
	cd.population,
	cv.new_vaccinations
                
FROM covid_death cd
JOIN covid_vaccination cv
		 ON cd.date = cv.date
         AND cd.location = cv.location

WHERE cd.continent IS NOT NULL
ORDER BY 2,3

         
            
            


