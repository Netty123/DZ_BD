-- Задание №2 --

-- 1 --
SELECT track_name, duration  FROM tracks 
ORDER BY duration DESC
LIMIT 1

-- 2 --
SELECT track_name, duration FROM tracks
WHERE duration >= 330

-- 3 --
SELECT collection_name FROM collections
WHERE year_of_release BETWEEN 2018 AND 2020

-- 4 -- 
SELECT name FROM performers
WHERE name NOT LIKE '% %'

-- 5 --
SELECT track_name FROM tracks
WHERE track_name LIKE '%Мой%'