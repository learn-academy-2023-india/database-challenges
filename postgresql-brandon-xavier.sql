What is the population of the US? (HINT: 278357000)
SELECT code, name, population
FROM country
WHERE code = 'USA'

What is the area of the US? (HINT: 9.36352e+06)
SELECT code, name, surfacearea
FROM country
WHERE code = 'USA'

Which countries gained their independence before 1963?
SELECT *
FROM country
Where indepyear < 1963

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT *
FROM country
Where continent = 'Africa'
AND population < 3e+7
AND lifeexpectancy > 45

Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT *
FROM country
WHERE governmentform 
LIKE '%epublic'

Answer:143

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT *
FROM country
WHERE governmentform 
LIKE '%epublic'
AND indepyear > 1945

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
WITH countries 
AS (
SELECT *
FROM country
WHERE governmentform != 'Republic'
AND governmentform != 'Federal Republic'
AND governmentform != 'Islamic Republic'
AND governmentform != 'Socialistic Republic')
SELECT *
FROM countries
WHERE 
 indepyear > 1945

Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT *
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT *
FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC
LIMIT 15

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT *, population/surfacearea AS density
FROM country
WHERE population != '0'
ORDER BY density ASC
LIMIT 5

Which countries have the highest population density?(HINT: starts with Macao)
SELECT *, population/surfacearea AS density
FROM country
WHERE population != '0'
ORDER BY density DESC
LIMIT 5

Which is the smallest country by area? (HINT: .4)
SELECT *
FROM country
ORDER BY surfacearea ASC
LIMIT 1

Which is the smallest country by population? (HINT: 50)?
SELECT *
FROM country
WHERE population != 0
ORDER BY population ASC
LIMIT 1

Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT *
FROM country
WHERE surfacearea != 0
ORDER BY surfacearea DESC
LIMIT 1

Which is the biggest country by population? (HINT: 1277558000)
SELECT *
FROM country
WHERE population != 0
ORDER BY population DESC
LIMIT 1

Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, population, headofstate
FROM country
WHERE population != 0
ORDER BY population DESC
LIMIT 1

Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH populated_countries AS (
	SELECT name, population, gnp
	FROM country
	ORDER BY gnp DESC
	LIMIT 10
)
SELECT name, population, gnp
FROM populated_countries
ORDER BY population ASC

Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH populated_countries AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population != 0
	ORDER BY population ASC
	LIMIT 10
)
SELECT name, population, surfacearea
FROM populated_countries
ORDER BY surfacearea DESC

Which region has the highest average gnp? (HINT: North America)
WITH countries AS (
	SELECT region, AVG(gnp)
	FROM country
	GROUP BY region
)
SELECT region, AVG
FROM countries
ORDER BY AVG DESC

Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT name, surfacearea, headofstate
FROM country
ORDER BY surfacearea DESC

What is the average life expectancy for all continents?
SELECT continent, avg(lifeexpectancy)
FROM country
GROUP BY continent

What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(*)
FROM country
GROUP BY governmentform
ORDER BY count DESC

How many countries are in North America?
SELECT continent, COUNT(*)
FROM country
WHERE continent = 'North America'
GROUP BY continent

What is the total population of all continents?
SELECT continent, sum (population)
FROM country
GROUP BY continent

Which countries have the letter "z" in the name? How many?
SELECT *
FROM country
WHERE name 
LIKE '%z%'

13 countries

Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)


Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database.
