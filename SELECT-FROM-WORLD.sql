--1. Read the notes about this table. Observe the result of running a simple SQL command.

SELECT name, continent, population FROM world;

--2. Show the name for the countries that have a population of at least 200 million.

SELECT name FROM world
WHERE population>=200000000;

--3. Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population FROM world WHERE population>200000000;

--4. Show the name and population in millions for the countries of the continent 'South America'.

SELECT name, population/1000000 FROM world WHERE continent = 'South America';

--5. Show the name and population for France, Germany, Italy

SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy');

--6. Show the countries which have a name that includes the word 'United'

SELECT name FROM world WHERE name LIKE '%united%';

--7. Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000;
--8. Show the countries that are big by area or big by population but not both. Show name, population and area.

SELECT name, population, area FROM world WHERE (area > 3000000 OR population < 250000000) 
AND NOT (area > 3000000 AND population < 250000000);

--9. For South America show population in millions and GDP in billions to 2 decimal places.

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) 
FROM world WHERE continent = 'South America';

--10. Show per-capita GDP for the trillion dollar countries to the nearest $1000.

SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp > 1000000000000;
--Show the name and capital where the name and the capital have the same number of characters.
SELECT name, capital
  FROM world
 WHERE LEN(name) = LEN(capital);
