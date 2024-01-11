-- What is the population of the US? (HINT: 278357000)
select name, population
from country
-- What is the area of the US? (HINT: 9.36352e+06)
select name, surfacearea
from country
-- Which countries gained their independence before 1963?
select *
from country
where indepyear < 1963
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
select name, continent, lifeexpectancy
	FROM country
	where continent= 'Africa'
	and population < 3e+7
	and lifeexpectancy > 45
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
select name, governmentform
from country
where governmentform
like '%Republic'
-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
select name, governmentform, indepyear
from country
where governmentform
 not like '%Republic'
and indepyear > 1945
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
select name, governmentform, indepyear
from country
where governmentform
not like '%Republic'
and indepyear > 1945
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
-- Which countries have the highest population density?(HINT: starts with Macao)
-- Which is the smallest country by area? (HINT: .4)
-- Which is the smallest country by population? (HINT: 50)?
-- Which is the biggest country by area? (HINT: 1.70754e+07)
-- Which is the biggest country by population? (HINT: 1277558000)
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
-- Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
-- Which region has the highest average gnp? (HINT: North America)
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
-- What is the aWhat is the population of the US? (HINT: 278357000)
-- What is the area of the US? (HINT: 9.36352e+06)
-- Which countries gained their independence before 1963?
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
-- Which countries have the highest population density?(HINT: starts with Macao)
-- Which is the smallest country by area? (HINT: .4)
-- Which is the smallest country by population? (HINT: 50)?
-- Which is the biggest country by area? (HINT: 1.70754e+07)
-- Which is the biggest country by population? (HINT: 1277558000)
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
-- Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
-- Which region has the highest average gnp? (HINT: North America)
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
-- What is the average life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
-- How many countries are in North America?
-- What is the total population of all continents?verage life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
SELECT COUNT(name), region
FROM country
WHERE region='North America'
GROUP BY region;
-- How many countries are in North America?
SELECT country, name
FROM country
Where region=('North')
-- What is the total population of all continents?
SELECT continent, name, population
FROM country