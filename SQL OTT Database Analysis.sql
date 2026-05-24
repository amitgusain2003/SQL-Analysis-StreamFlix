-- SQL OTT Database Analysis
-- Tool: PostgreSQL | Author: Amit Gusain

-- 1. All movies
SELECT * FROM movies;

-- 2. Netflix movies only  
SELECT title, genre, rating FROM movies
WHERE platform = 'Netflix';

-- 3. Movies with rating above 8.5
SELECT title, rating, platform FROM movies
WHERE rating > 8.5 ORDER BY rating DESC;

-- 4. Movies count per platform
SELECT platform, COUNT(*) as total_movies
FROM movies GROUP BY platform
ORDER BY total_movies DESC;

-- 5. Average rating per platform
SELECT platform, ROUND(AVG(rating),2) as avg_rating
FROM movies GROUP BY platform
ORDER BY avg_rating DESC;

-- 6. Who rated how many movies
SELECT users.name, COUNT(*) AS total_rated
FROM ratings
JOIN users ON ratings.user_id = users.user_id
GROUP BY users.name ORDER BY total_rated DESC;

-- 7. Most rated movie
SELECT movies.title, COUNT(*) AS total_ratings
FROM ratings
JOIN movies ON ratings.movie_id = movies.movie_id
GROUP BY movies.title
ORDER BY total_ratings DESC LIMIT 1;

-- 8. User wise highest rating given
SELECT users.name, MAX(ratings.user_rating) AS highest_rating
FROM ratings
JOIN users ON ratings.user_id = users.user_id
GROUP BY users.name ORDER BY highest_rating DESC;