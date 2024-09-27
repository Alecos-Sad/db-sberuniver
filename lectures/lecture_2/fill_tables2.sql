--Наполнение таблиц
--Таблица с жанрами
-- Добавление нескольких строк с использованием многострочного синтаксиса VALUES:

INSERT INTO student16.tb_genres (name) VALUES
                                              ('комедия'),
                                              ('триллер'),
                                              ('драма'),
                                              ('детектив'),
                                              ('фантастика'),
                                              ('ужасы');
--Таблица со странами

INSERT INTO student16.tb_countries (name) VALUES
                                                 ('США'),
                                                 ('Южная Корея'),
                                                 ('Россия'),
                                                 ('СССР');

--Таблица с режиссерами

INSERT INTO student16.tb_directors (name, country_id)  VALUES
     (
     'Пон Джун-хо',
     (SELECT country_id FROM student16.tb_countries WHERE name='Южная Корея')
     ),
     (
     'Брайан Левант',
     (SELECT country_id FROM student16.tb_countries WHERE name='США')
     ),
     (
     'Ли Айзек Чун',
     (SELECT country_id FROM student16.tb_countries WHERE name='США')
     ),
     (
     'Андрей Звягинцев',
     (SELECT country_id FROM student16.tb_countries WHERE name='Россия')
     ),
     (
     'Андрей Тарковский',
     (SELECT country_id FROM student16.tb_countries WHERE name='СССР')
     );

-- Таблица с фильмами
INSERT INTO student16.tb_films (name, year, genre_id, director_id, age_rating, rating)  VALUES (
        'Паразиты',
        2019,
        (SELECT genre_id FROM student16.tb_genres WHERE name='триллер'),
        (SELECT director_id FROM student16.tb_directors WHERE name='Пон Джун-хо'),
        '18+',
        8.0
);
INSERT INTO student16.tb_films ( name, year, genre_id, director_id, age_rating, rating)  VALUES (
        'Минари',
        2020,
        (SELECT genre_id FROM student16.tb_genres WHERE name='драма'),
        (SELECT director_id FROM student16.tb_directors WHERE name='Ли Айзек Чун'),
        '16+',
       6.9
);
INSERT INTO student16.tb_films (name, year, genre_id, director_id, age_rating, rating)  VALUES (
        'Воспоминания об убийстве',
        2003,
        (SELECT genre_id FROM student16.tb_genres WHERE name='детектив'),
        (SELECT director_id FROM student16.tb_directors WHERE name='Пон Джун-хо'),
        '18+',
        7.7
);
INSERT INTO student16.tb_films (name, year, genre_id, director_id, age_rating, rating)  VALUES (
        'Левиафан', 2014,
        (SELECT genre_id FROM student16.tb_genres WHERE name='драма'),
        (SELECT director_id FROM student16.tb_directors WHERE name='Андрей Звягинцев'),
        '18+',
        6.9);
INSERT INTO student16.tb_films (name, year, genre_id, director_id, age_rating, rating) VALUES (
        'Солярис', 1972,
        (SELECT genre_id FROM student16.tb_genres WHERE name='фантастика'),
        (SELECT director_id FROM student16.tb_directors WHERE name='Андрей Тарковский'),
        '12+',
        8.0
);



