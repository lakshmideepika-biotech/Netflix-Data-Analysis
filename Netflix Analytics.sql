USE Netflix_Analytics;
GO

-- 1. Movies vs TV Shows count
SELECT type, COUNT(*) AS Total_Titles
FROM netflix_titles
GROUP BY type;

-- 2. Titles added by year
SELECT YEAR(date_added) AS Year_Added, COUNT(*) AS Titles_Added
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY YEAR(date_added)
ORDER BY Year_Added;

-- 3. Top 10 countries by title count
SELECT TOP 10 country, COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY Total_Titles DESC;

-- 4. Top 10 genres
SELECT TOP 10 listed_in, COUNT(*) AS Total_Titles
FROM netflix_titles
GROUP BY listed_in
ORDER BY Total_Titles DESC;

-- 5. Content by Rating
SELECT rating, COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY Total_Titles DESC;

-- 6. Titles by Release Year (last 10 years)
SELECT release_year, COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE release_year >= 2015
GROUP BY release_year
ORDER BY release_year;

-- 7. Top 10 Directors by title count
SELECT TOP 10 director, COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY Total_Titles DESC;

-- 8. Movies vs TV Shows by year added
SELECT YEAR(date_added) AS Year_Added, type, COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY YEAR(date_added), type
ORDER BY Year_Added, type;