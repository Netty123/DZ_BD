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

-- Задание №3 --

-- 1 --
SELECT genre.genre_name, COUNT(performers_genre.id_performers) FROM genre
LEFT JOIN performers_genre ON genre.id = performers_genre.id_genre
GROUP BY genre.id, genre.genre_name;

-- 2 --
SELECT COUNT(tracks.id) FROM tracks
JOIN albums ON tracks.album = albums.id
WHERE albums.release_date BETWEEN 2019 AND 2020;

-- 3 --
SELECT albums.name_albums, AVG(tracks.duration) FROM albums
LEFT JOIN tracks ON albums.id = tracks.album
GROUP BY albums.id, albums.name_albums
ORDER BY AVG(tracks.duration) DESC;

-- 4 --
SELECT performers.name FROM performers
WHERE performers.id NOT IN (SELECT DISTINCT performers_albums.id_performer FROM performers_albums
JOIN albums ON performers_albums.id_album = albums.id
WHERE albums.release_date = 2020
);

-- 5 --
SELECT DISTINCT collections.collection_name FROM collections
JOIN collections_track ON collections.id = collections_track.id_collection
JOIN tracks ON collections_track.id_track = tracks.id
JOIN performers_albums ON tracks.album = performers_albums.id_album
JOIN performers ON performers_albums.id_performer = performers.id
WHERE performers.name = 'Папин Олимпос';