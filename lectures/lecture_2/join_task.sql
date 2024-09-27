/*
 Выведем при помощи LEFT JOIN список фильмов с информацией о фильме, режиссере,
 стране режиссера и жанре
 */

-- выведет 6 фильмов
select * from student16.tb_films;
-- выведет 8 жанров
select * from student16.tb_genres;

-- LEFT JOIN выведет 6 записей
SELECT f.name as film,
       g.name as genre,
       d.name as director,
       c.name as country
FROM student16.tb_films f
        LEFT JOIN student16.tb_genres g
        ON f.genre_id = g.genre_id
        LEFT JOIN student16.tb_directors d
            ON f.director_id = d.director_id
        LEFT JOIN student16.tb_countries c
            on d.country_id = c.country_id;

