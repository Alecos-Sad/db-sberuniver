
CREATE TABLE IF NOT EXISTS student16.tb_popular_films
(
    id          BIGSERIAL,
    name        VARCHAR,
    year        SMALLINT,
    genre       VARCHAR,
    director    VARCHAR,
    rating      float4,
    views       int8
);

COMMENT ON TABLE  student16.tb_popular_films                                IS 'Таблица с ТОП-3 фильмов по числу просмотров';
COMMENT ON COLUMN student16.tb_popular_films.id                             IS 'Идентификатор фильма';
COMMENT ON COLUMN student16.tb_popular_films.name                           IS 'Имя фильма';
COMMENT ON COLUMN student16.tb_popular_films.year                           IS 'Год создания фильма';
COMMENT ON COLUMN student16.tb_popular_films.genre                          IS 'Жанр фильма';
COMMENT ON COLUMN student16.tb_popular_films.director                       IS 'Режиссер фильма';
COMMENT ON COLUMN student16.tb_popular_films.rating                         IS 'Рейтинг фильма в онлайн кинотеатре';
COMMENT ON COLUMN student16.tb_popular_films.views                          IS 'Число просмотров фильма';
-- проверим сначала SELECT
SELECT f.id,
       f.name,
       f.year,
       g.name as genre,
       d.name as director,
       f.rating,
       f.views
FROM student16.tb_films f
         LEFT JOIN student16.tb_genres g
                   ON f.genre_id = g.genre_id
         LEFT JOIN student16.tb_directors d
                   ON f.director_id = d.director_id
         LEFT JOIN student16.tb_countries c
                   on d.country_id = c.country_id
ORDER BY views desc  limit(3);


CREATE OR REPLACE PROCEDURE save_top3()
LANGUAGE SQL
AS $$
    TRUNCATE TABLE student16.tb_popular_films;
    INSERT INTO student16.tb_popular_films (id, name, year, genre, director, rating, views)
    SELECT f.id,
           f.name,
           f.year,
           g.name as genre,
           d.name as director,
           f.rating,
           f.views
    FROM student16.tb_films f
        LEFT JOIN student16.tb_genres g
    ON f.genre_id = g.genre_id
        LEFT JOIN student16.tb_directors d
        ON f.director_id = d.director_id
        LEFT JOIN student16.tb_countries c
        on d.country_id = c.country_id
    ORDER BY views desc  limit(3);
$$;

select * from student16.tb_popular_films;

call save_top3();
