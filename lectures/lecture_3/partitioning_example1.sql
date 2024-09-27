DROP TABLE student16.tb_films;

CREATE TABLE IF NOT EXISTS student16.tb_films
(
    id          BIGSERIAL,
    name        VARCHAR,
    year        SMALLINT,
    genre_id    SMALLINT,
    director_id SMALLINT,
    age_rating  VARCHAR,
    rating      float4,
    views       int8 NOT NULL
) PARTITION BY LIST (views);

COMMENT ON TABLE student16.tb_films IS 'Таблица с фильмами онлайн кинотеатра';
COMMENT ON COLUMN student16.tb_films.id IS 'Идентификатор фильма';
COMMENT ON COLUMN student16.tb_films.name IS 'Имя фильма';
COMMENT ON COLUMN student16.tb_films.year IS 'Год создания фильма';
COMMENT ON COLUMN student16.tb_films.genre_id IS 'Идентификатор жанра фильма';
COMMENT ON COLUMN student16.tb_films.director_id IS 'Идентификатор режиссера фильма';
COMMENT ON COLUMN student16.tb_films.age_rating IS 'Возрастной рейтинг фильма';
COMMENT ON COLUMN student16.tb_films.rating IS 'Рейтинг фильма в онлайн кинотеатре';
COMMENT ON COLUMN student16.tb_films.views IS 'Число просмотров фильма';



DO '
BEGIN
IF NOT EXISTS (SELECT 1
FROM information_schema.table_constraints
WHERE lower(table_name) = ''tb_films''
    and lower(table_schema) = ''student25''
    and lower(constraint_type) = ''foreign key'')
    THEN
        ALTER TABLE student16.tb_films ADD foreign key (director_id) REFERENCES student16.tb_directors (director_id);
    END IF;
END ';


DO '
BEGIN
IF NOT EXISTS (SELECT 1
FROM information_schema.table_constraints
WHERE lower(table_name) = ''tb_films''
    and lower(table_schema) = ''student25''
    and lower(constraint_type) = ''foreign key'')
    THEN
        ALTER TABLE student16.tb_films ADD foreign key (genre_id) REFERENCES student16.tb_genres (genre_id);
    END IF;
END ';


CREATE TABLE student16.tb_films_5000 PARTITION OF student16.tb_films
    FOR VALUES FROM (0) TO (5000);
CREATE TABLE student16.tb_films_10000 PARTITION OF student16.tb_films
    FOR VALUES FROM (5000) TO (10000);
CREATE TABLE student16.tb_films_100000 PARTITION OF student16.tb_films
    FOR VALUES FROM (10000) TO (maxvalue);

CREATE INDEX ON student16.tb_films (views);
-- Таблица с фильмами
INSERT INTO student16.tb_films (name, year, genre_id, director_id, age_rating, rating, views)
VALUES ('Паразиты',
        2019,
        (SELECT genre_id FROM student16.tb_genres WHERE name = 'триллер'),
        (SELECT director_id FROM student16.tb_directors WHERE name = 'Пон Джун-хо'),
        '18+',
        8.0,
        1000),
       ('Минари',
        2020,
        (SELECT genre_id FROM student16.tb_genres WHERE name = 'драма'),
        (SELECT director_id FROM student16.tb_directors WHERE name = 'Ли Айзек Чун'),
        '16+',
        6.9,
        2000),
       ('Воспоминания об убийстве',
        2003,
        (SELECT genre_id FROM student16.tb_genres WHERE name = 'детектив'),
        (SELECT director_id FROM student16.tb_directors WHERE name = 'Пон Джун-хо'),
        '18+',
        7.7,
        2000),
       ('Левиафан', 2014,
        (SELECT genre_id FROM student16.tb_genres WHERE name = 'драма'),
        (SELECT director_id FROM student16.tb_directors WHERE name = 'Андрей Звягинцев'),
        '18+',
        6.9,
        10000),
       ('Солярис', 1972,
        (SELECT genre_id FROM student16.tb_genres WHERE name = 'фантастика'),
        (SELECT director_id FROM student16.tb_directors WHERE name = 'Андрей Тарковский'),
        '12+',
        8.0,
        15000);

SELECT *
from student16.tb_films;

SELECT *
from student16.tb_films_5000;

SELECT *
from student16.tb_films_10000;

SELECT *
from student16.tb_films_100000;
