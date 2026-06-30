-- Task 5 Verification

SELECT COUNT(*) AS Total_Movies
FROM IMDB_Clean;

SELECT *
FROM IMDB_Clean
LIMIT 5 OFFSET 100;

DELETE FROM IMDB_Clean
WHERE "IMBD Title ID" IS NULL;

SELECT COUNT(*) AS Total_Movies
FROM IMDB_Clean;

-- Exploratory Query 1

SELECT Country,
       COUNT(*) AS Movie_Count
FROM IMDB_Clean
GROUP BY Country
ORDER BY Movie_Count DESC;

-- Exploratory Query 2

SELECT Country,
       ROUND(AVG(Score), 2) AS Average_Rating
FROM IMDB_Clean
GROUP BY Country
ORDER BY Average_Rating DESC;

-- Exploratory Query 3

SELECT "Original Title",
       Score
FROM IMDB_Clean
ORDER BY Score DESC
LIMIT 10;

-- Business Query 1

SELECT Country,
       SUM(Income) AS Total_Income
FROM IMDB_Clean
GROUP BY Country
ORDER BY Total_Income DESC;

-- Business Query 2

SELECT "Original Title",
       Votes
FROM IMDB_Clean
ORDER BY Votes DESC
LIMIT 10;

-- Business Query 3

SELECT Director,
       ROUND(AVG(Score),2) AS Average_Rating,
       COUNT(*) AS Movie_Count
FROM IMDB_Clean
GROUP BY Director
HAVING COUNT(*) >= 2
ORDER BY Average_Rating DESC;