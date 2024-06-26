# SQL Join exercise
#
USE world;
#
# 1: Get the cities with a name starting with ping sorted by their population with the least populated cities first

SELECT *
FROM city
WHERE Name LIKE "ping%" ORDER BY Population ASC;

# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first

SELECT *
FROM city
WHERE Name LIKE "ran%" ORDER BY Population DESC;

# 3: Count all cities

SELECT COUNT(Name) AS TotalNumberOfCities
FROM city;

# 4: Get the average population of all cities

SELECT AVG(Population) AS AveragePopulationOfAllCities
FROM city;

# 5: Get the biggest population found in any of the cities

SELECT MAX(Population) AS BiggestPopulation
FROM city;

# 6: Get the smallest population found in any of the cities

SELECT MIN(Population) AS SmallestPopulation
FROM city;

# 7: Sum the population of all cities with a population below 10000

SELECT SUM(Population) AS TotalPopulation
FROM city
WHERE Population < 10000;

# 8: Count the cities with the countrycodes MOZ and VNM

SELECT COUNT(Name) AS TotalNumberOfCities
FROM city
WHERE CountryCode = "MOZ" OR CountryCode = "VNM";

# 9: Get individual count of cities for the countrycodes MOZ and VNM

SELECT COUNT(Name) AS TotalNumberOfCities
FROM city
WHERE CountryCode = "MOZ";

SELECT COUNT(Name) AS TotalNumberOfCities
FROM city
WHERE CountryCode = "VNM";

# 10: Get average population of cities in MOZ and VNM

SELECT AVG(Population) AS AveragePopulation
FROM city
WHERE CountryCode = "MOZ" OR CountryCode = "VNM";

# 11: Get the countrycodes with more than 200 cities

SELECT CountryCode, COUNT(DISTINCT city.Name) AS NumberOfCities
FROM city JOIN country ON city.CountryCode = country.Code
GROUP BY CountryCode
HAVING COUNT(DISTINCT city.Name) > 200;

# 12: Get the countrycodes with more than 200 cities ordered by city count

SELECT CountryCode, COUNT(DISTINCT city.Name) AS NumberOfCities
FROM city JOIN country ON city.CountryCode = country.Code
GROUP BY CountryCode
HAVING COUNT(DISTINCT city.Name) > 200 ORDER BY COUNT(DISTINCT city.Name); # By default it is asc order

# 13: What language(s) is spoken in the city with a population between 400 and 500 ?

SELECT city.Name AS City_Name, Language AS City_Language
FROM countrylanguage JOIN city ON city.CountryCode = countrylanguage.CountryCode
WHERE city.Population BETWEEN 400 AND 500;

# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them

SELECT city.Name AS City_Names, city.Population, Language AS City_Language
FROM countrylanguage JOIN city ON city.CountryCode = countrylanguage.CountryCode
WHERE city.Population BETWEEN 500 AND 600;

# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)

SELECT Name 
FROM city JOIN country ON city.C

# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
#
#
# 17: What are the city names in the country where Luanda is capital?
#
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
#
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
#
#
# 20: Get the name of the most populous city
#