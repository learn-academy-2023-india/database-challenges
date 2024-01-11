-- What is the population of the US? (HINT: 278357000)
278357000
SELECT name, continent, population
FROM country
WHERE name = 'United States'
-- What is the area of the US? (HINT: 9.36352e+06)
9.36352e+06
SELECT name, continent, surfacearea
FROM country
WHERE name = 'United States'

-- Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963
"name"	"indepyear"
"Afghanistan"	1919
"Netherlands"	1581
"Albania"	1912
"Algeria"	1962
"Andorra"	1278
"Argentina"	1816
"Australia"	1901
"Belgium"	1830
"Benin"	1960
"Bhutan"	1910
"Bolivia"	1825
"Brazil"	1822
"United Kingdom"	1066
"Bulgaria"	1908
"Burkina Faso"	1960
"Burundi"	1962
"Chile"	1810
"Costa Rica"	1821
"Dominican Republic"	1844
"Ecuador"	1822
"Egypt"	1922
"El Salvador"	1841
"Spain"	1492
"South Africa"	1910
"Ethiopia"	-1000
"Philippines"	1946
"Gabon"	1960
"Ghana"	1957
"Guatemala"	1821
"Guinea"	1958
"Haiti"	1804
"Honduras"	1838
"Indonesia"	1945
"India"	1947
"Iraq"	1932
"Iran"	1906
"Ireland"	1921
"Iceland"	1944
"Israel"	1948
"Italy"	1861
"Austria"	1918
"Jamaica"	1962
"Japan"	-660
"Yemen"	1918
"Jordan"	1946
"Yugoslavia"	1918
"Cambodia"	1953
"Cameroon"	1960
"Canada"	1867
"Central African Republic"	1960
"China"	-1523
"Colombia"	1810
"Congo"	1960
"Congo, The Democratic Republic of the"	1960
"North Korea"	1948
"South Korea"	1948
"Greece"	1830
"Cuba"	1902
"Kuwait"	1961
"Cyprus"	1960
"Laos"	1953
"Lebanon"	1941
"Liberia"	1847
"Libyan Arab Jamahiriya"	1951
"Liechtenstein"	1806
"Luxembourg"	1867
"Madagascar"	1960
"Malaysia"	1957
"Mali"	1960
"Morocco"	1956
"Mauritania"	1960
"Mexico"	1810
"Monaco"	1861
"Mongolia"	1921
"Myanmar"	1948
"Nepal"	1769
"Nicaragua"	1838
"Niger"	1960
"Nigeria"	1960
"Norway"	1905
"Cï¿½te dï¿½Ivoire"	1960
"Oman"	1951
"Pakistan"	1947
"Panama"	1903
"Paraguay"	1811
"Peru"	1821
"Portugal"	1143
"Poland"	1918
"France"	843
"Romania"	1878
"Rwanda"	1962
"Sweden"	836
"Germany"	1955
"Samoa"	1962
"San Marino"	885
"Saudi Arabia"	1932
"Senegal"	1960
"Sierra Leone"	1961
"Somalia"	1960
"Sri Lanka"	1948
"Sudan"	1956
"Finland"	1917
"Switzerland"	1499
"Syria"	1941
"Taiwan"	1945
"Tanzania"	1961
"Denmark"	800
"Thailand"	1350
"Togo"	1960
"Trinidad and Tobago"	1962
"Chad"	1960
"Tunisia"	1956
"Turkey"	1923
"Uganda"	1962
"Hungary"	1918
"Uruguay"	1828
"New Zealand"	1907
"Holy See (Vatican City State)"	1929
"Venezuela"	1811
"Vietnam"	1945
"United States"	1776
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
"name"	"continent"	"population"	"lifeexpectancy"
"Benin"	"Africa"	6097000	50.2
"Burkina Faso"	"Africa"	11937000	46.7
"Burundi"	"Africa"	6695000	46.2
"Djibouti"	"Africa"	638000	50.8
"Eritrea"	"Africa"	3850000	55.8
"Gabon"	"Africa"	1226000	50.1
"Gambia"	"Africa"	1305000	53.2
"Ghana"	"Africa"	20212000	57.4
"Guinea"	"Africa"	7430000	45.6
"Guinea-Bissau"	"Africa"	1213000	49
"Cameroon"	"Africa"	15085000	54.8
"Cape Verde"	"Africa"	428000	68.9
"Comoros"	"Africa"	578000	60
"Congo"	"Africa"	2943000	47.4
"Lesotho"	"Africa"	2153000	50.8
"Liberia"	"Africa"	3154000	51
"Libyan Arab Jamahiriya"	"Africa"	5605000	75.5
"Western Sahara"	"Africa"	293000	49.8
"Madagascar"	"Africa"	15942000	55
"Mali"	"Africa"	11234000	46.7
"Morocco"	"Africa"	28351000	69.1
"Mauritania"	"Africa"	2670000	50.8
"Mauritius"	"Africa"	1158000	71
"Mayotte"	"Africa"	149000	59.5
"Cï¿½te dï¿½Ivoire"	"Africa"	14786000	45.2
"Equatorial Guinea"	"Africa"	453000	53.6
"Rï¿½union"	"Africa"	699000	72.7
"Saint Helena"	"Africa"	6000	76.8
"Sao Tome and Principe"	"Africa"	147000	65.3
"Senegal"	"Africa"	9481000	62.2
"Seychelles"	"Africa"	77000	70.4
"Sierra Leone"	"Africa"	4854000	45.3
"Somalia"	"Africa"	10097000	46.2
"Sudan"	"Africa"	29490000	56.6
"Togo"	"Africa"	4629000	54.7
"Chad"	"Africa"	7651000	50.5
"Tunisia"	"Africa"	9586000	73.7
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform
FROM country 
WHERE governmentform LIKE ('%Republic')
-- this query produces 143 including Federal Republics and Socialist Republics
        SELECT name, governmentform
        FROM country 
        WHERE governmentform IN ('Republic')
            -- This option is restricted to Republic and produces 122


-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform, indepyear
FROM country 
WHERE indepyear > 1945 AND governmentform LIKE ('%Republic') 

"name"	"governmentform"	"indepyear"
"Algeria"	"Republic"	1962
"Angola"	"Republic"	1975
"Armenia"	"Republic"	1991
"Azerbaijan"	"Federal Republic"	1991
"Bangladesh"	"Republic"	1971
"Benin"	"Republic"	1960
"Bosnia and Herzegovina"	"Federal Republic"	1992
"Botswana"	"Republic"	1966
"Burkina Faso"	"Republic"	1960
"Burundi"	"Republic"	1962
"Djibouti"	"Republic"	1977
"Dominica"	"Republic"	1978
"Eritrea"	"Republic"	1993
"Fiji Islands"	"Republic"	1970
"Philippines"	"Republic"	1946
"Gabon"	"Republic"	1960
"Gambia"	"Republic"	1965
"Georgia"	"Republic"	1991
"Ghana"	"Republic"	1957
"Guinea"	"Republic"	1958
"Guinea-Bissau"	"Republic"	1974
"Guyana"	"Republic"	1966
"India"	"Federal Republic"	1947
"Israel"	"Republic"	1948
"Cameroon"	"Republic"	1960
"Cape Verde"	"Republic"	1975
"Kazakstan"	"Republic"	1991
"Kenya"	"Republic"	1963
"Central African Republic"	"Republic"	1960
"Kyrgyzstan"	"Republic"	1991
"Kiribati"	"Republic"	1979
"Comoros"	"Republic"	1975
"Congo"	"Republic"	1960
"Congo, The Democratic Republic of the"	"Republic"	1960
"North Korea"	"Socialistic Republic"	1948
"South Korea"	"Republic"	1948
"Croatia"	"Republic"	1991
"Cyprus"	"Republic"	1960
"Laos"	"Republic"	1953
"Latvia"	"Republic"	1991
"Lithuania"	"Republic"	1991
"Madagascar"	"Federal Republic"	1960
"Macedonia"	"Republic"	1991
"Malawi"	"Republic"	1964
"Maldives"	"Republic"	1965
"Mali"	"Republic"	1960
"Malta"	"Republic"	1964
"Marshall Islands"	"Republic"	1990
"Mauritania"	"Republic"	1960
"Mauritius"	"Republic"	1968
"Micronesia, Federated States of"	"Federal Republic"	1990
"Moldova"	"Republic"	1991
"Mozambique"	"Republic"	1975
"Myanmar"	"Republic"	1948
"Namibia"	"Republic"	1990
"Nauru"	"Republic"	1968
"Niger"	"Republic"	1960
"Nigeria"	"Federal Republic"	1960
"Cï¿½te dï¿½Ivoire"	"Republic"	1960
"Pakistan"	"Republic"	1947
"Palau"	"Republic"	1994
"Equatorial Guinea"	"Republic"	1968
"Rwanda"	"Republic"	1962
"Germany"	"Federal Republic"	1955
"Zambia"	"Republic"	1964
"Sao Tome and Principe"	"Republic"	1975
"Senegal"	"Republic"	1960
"Seychelles"	"Republic"	1976
"Sierra Leone"	"Republic"	1961
"Singapore"	"Republic"	1965
"Slovakia"	"Republic"	1993
"Slovenia"	"Republic"	1991
"Somalia"	"Republic"	1960
"Sri Lanka"	"Republic"	1948
"Sudan"	"Islamic Republic"	1956
"Suriname"	"Republic"	1975
"Tajikistan"	"Republic"	1991
"Tanzania"	"Republic"	1961
"Togo"	"Republic"	1960
"Trinidad and Tobago"	"Republic"	1962
"Chad"	"Republic"	1960
"Czech Republic"	"Republic"	1993
"Tunisia"	"Republic"	1956
"Turkmenistan"	"Republic"	1991
"Uganda"	"Republic"	1962
"Ukraine"	"Republic"	1991
"Uzbekistan"	"Republic"	1991
"Belarus"	"Republic"	1991
"Vanuatu"	"Republic"	1980
"Russian Federation"	"Federal Republic"	1991
"Estonia"	"Republic"	1991
"Zimbabwe"	"Republic"	1980

-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear
FROM country 
WHERE indepyear > 1945 AND governmentform NOT LIKE ('%Republic')

"name"	"governmentform"	"indepyear"
"Antigua and Barbuda"	"Constitutional Monarchy"	1981
"United Arab Emirates"	"Emirate Federation"	1971
"Bahamas"	"Constitutional Monarchy"	1973
"Bahrain"	"Monarchy (Emirate)"	1971
"Barbados"	"Constitutional Monarchy"	1966
"Belize"	"Constitutional Monarchy"	1981
"Brunei"	"Monarchy (Sultanate)"	1984
"Grenada"	"Constitutional Monarchy"	1974
"Jamaica"	"Constitutional Monarchy"	1962
"Jordan"	"Constitutional Monarchy"	1946
"Cambodia"	"Constitutional Monarchy"	1953
"Kuwait"	"Constitutional Monarchy (Emirate)"	1961
"Lesotho"	"Constitutional Monarchy"	1966
"Libyan Arab Jamahiriya"	"Socialistic State"	1951
"Malaysia"	"Constitutional Monarchy, Federation"	1957
"Morocco"	"Constitutional Monarchy"	1956
"Oman"	"Monarchy (Sultanate)"	1951
"Papua New Guinea"	"Constitutional Monarchy"	1975
"Qatar"	"Monarchy"	1971
"Saint Kitts and Nevis"	"Constitutional Monarchy"	1983
"Saint Lucia"	"Constitutional Monarchy"	1979
"Saint Vincent and the Grenadines"	"Constitutional Monarchy"	1979
"Solomon Islands"	"Constitutional Monarchy"	1978
"Samoa"	"Parlementary Monarchy"	1962
"Swaziland"	"Monarchy"	1968
"Tonga"	"Monarchy"	1970
"Tuvalu"	"Constitutional Monarchy"	1978

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name, lifeexpectancy
FROM country 
ORDER BY lifeexpectancy, name DESC
LIMIT 15

"name"	"lifeexpectancy"
"Zambia"	37.2
"Mozambique"	37.5
"Malawi"	37.6
"Zimbabwe"	37.8
"Angola"	38.3
"Rwanda"	39.3
"Botswana"	39.3
"Swaziland"	40.4
"Niger"	41.3
"Namibia"	42.5
"Uganda"	42.9
"Central African Republic"	44
"Ethiopia"	45.2
"Cï¿½te dï¿½Ivoire"	45.2
"Sierra Leone"	45.3
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country 
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC
LIMIT 15

"name"	"lifeexpectancy"
"Andorra"	83.5
"Macao"	81.6
"San Marino"	81.1
"Japan"	80.7
"Singapore"	80.1
"Australia"	79.8
"Switzerland"	79.6
"Sweden"	79.6
"Hong Kong"	79.5
"Canada"	79.4
"Iceland"	79.4
"Gibraltar"	79
"Italy"	79
"Cayman Islands"	78.9
"Spain"	78.8
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
-- What is the total population of all continents?
