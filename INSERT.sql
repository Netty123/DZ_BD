INSERT INTO performers(name)
VALUES
('Morgenshtern'),
('KENTUKU'),
('Пошлая Молли'),
('Папин Олимпос'),
('ooes');

INSERT INTO genre(genre_name)
VALUES
('Поп'),
('Рок'),
('Классика'),
('Рэп'),
('Фанк');

INSERT INTO albums(name_albums, release_date)
VALUES
('До того как стал известен', 2019),
('Last One', 2022),
('Снова твой цвет',2020),
('В тишине тоскую', 2019),
('Олимпос', 2020),
('Медляк', 2017);

INSERT INTO tracks(track_name, album, duration)
VALUES
('Замигает свет', 3, 179),
('Быстро', 2, 137),
('Мой дом', 2, 148),
('Динозаврики', 5, 189),
('Огонь', 5, 163),
('Алёша', 5, 444);

INSERT INTO collections(collection_name, year_of_release)
VALUES
('Хиты 2018', 2018),
('Хиты 2019', 2019),
('Хиты 2020', 2020),
('Хиты 2021', 2021),
('Хиты 2022', 2022),
('Хиты 2023', 2023),
('Хиты 2024', 2024),
('Хиты 2025', 2025);

INSERT INTO performers_albums(id_performer, id_album)
VALUES (1, 1), (1, 2), (2, 3), (2, 4), (4, 5), (4,6);

INSERT INTO performers_genre(id_performers, id_genre)
VALUES (1, 2), (1, 4), (2, 1), (2, 2), (3, 1), (3, 2), (4, 1), (4, 2), (5, 1), (5, 2);

INSERT INTO collections_track(id_collection, id_track)
VALUES (2, 2), (2, 3), (2, 4), (3, 5), (4, 5), (6, 1)
