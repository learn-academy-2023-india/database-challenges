--What is the population of the US? (HINT: 278357000)
SELECT population
FROM country
WHERE name = 'United States'

--What is the area of the US? (HINT: 9.36352e+06)
SELECT surfacearea
FROM country
WHERE name = 'United States'


--Which countries gained their independence before 1963?
SELECT name, indepyear 
FROM country
WHERE indepyear < 1963


--List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, population, lifeexpectancy 
FROM country
WHERE continent = 'Africa'
     AND population < 30000000
	 AND lifeexpectancy > 45

--Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform
FROM country
WHERE LOWER (governmentform) LIKE '%republic%';

--Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE LOWER(governmentform) LIKE '%republic%'
    AND indepyear > 1945;

--Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE indepyear > 1945
    AND LOWER(governmentform) NOT LIKE '%republic%';

--Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy
LIMIT 15;

--Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC
LIMIT 15;

--Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population IS NOT NULL 
  AND surfacearea IS NOT NULL 
  AND (population / surfacearea) IS NOT NULL 
  AND (population / surfacearea) > 0
ORDER BY density
LIMIT 5;

--Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population IS NOT NULL 
  AND surfacearea IS NOT NULL 
  AND (population / surfacearea) IS NOT NULL
ORDER BY density DESC
LIMIT 5;

--Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country
WHERE surfacearea IS NOT NULL
ORDER BY surfacearea
LIMIT 1;

--Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country
WHERE population IS NOT NULL
  AND population > 0
ORDER BY population
LIMIT 1;

--Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country
WHERE surfacearea IS NOT NULL
ORDER BY surfacearea DESC
LIMIT 1;

--Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country
WHERE population IS NOT NULL
ORDER BY population DESC
LIMIT 1;

--Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT headofstate, name, population
FROM country
WHERE headofstate IS NOT NULL
ORDER BY population DESC
LIMIT 1;

--Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
SELECT name, gnp, population
FROM (
    SELECT name, gnp, population
    FROM country
    WHERE gnp IS NOT NULL
    ORDER BY gnp DESC
    LIMIT 10
) AS top_10_countries
ORDER BY population
LIMIT 1;

--Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
SELECT name, population, surfacearea
FROM (
    SELECT name, population, surfacearea
    FROM country
    WHERE population > 0
    ORDER BY population
    LIMIT 10
) AS least_populated_countries
ORDER BY surfacearea DESC
LIMIT 1;

--Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp) AS average_gnp
FROM country
WHERE gnp IS NOT NULL
GROUP BY region
ORDER BY average_gnp DESC
LIMIT 1;

--Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, SUM(surfacearea) AS total_surfacearea
FROM country
WHERE headofstate IS NOT NULL
GROUP BY headofstate
ORDER BY total_surfacearea DESC
LIMIT 1;

--What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy) AS average_life_expectancy
FROM country
WHERE lifeexpectancy IS NOT NULL
GROUP BY continent;

--What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(*) AS count
FROM country
GROUP BY governmentform
ORDER BY count DESC;

--How many countries are in North America?
SELECT COUNT(*) AS number_of_countries
FROM country
WHERE continent = 'North America';

--What is the total population of all continents?
SELECT SUM(population) AS total_population
FROM country
WHERE population IS NOT NULL;
