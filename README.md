# SQL2

SELECT *
FROM nobel
WHERE yr = 1980 AND NOT subject IN ('Chemistry', 'Medicine');


SELECT *
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910 OR
subject = 'Literature' AND yr >= 2004 


SELECT * 
FROM nobel
WHERE winner = 'Peter Grünberg'; 


SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill'


SELECT winner, subject
FROM nobel
WHERE yr = 1984 
ORDER BY subject IN ('Chemistry', 'Physics'), subject, winner;

# nested select
SELECT name
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Russia');


SELECT name 
FROM world
WHERE continent = 'Europe' AND gdp / population > (SELECT gdp / population FROM world WHERE name = 'United Kingdom');
