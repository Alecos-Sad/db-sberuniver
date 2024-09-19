SELECT *
FROM student16.tb_genres;

--SELECT DISTINCT
--добавим дубли в таблицу с жанрами
INSERT INTO student16.tb_genres (name)
VALUES ('фантастика');
INSERT INTO student16.tb_genres (name)
VALUES ('ужасы');

SELECT ALL * FROM student16.tb_genres;

SELECT DISTINCT * FROM student16.tb_genres;

SELECT ALL name FROM student16.tb_genres;

SELECT DISTINCT name FROM student16.tb_genres;

--список выбора
SELECT name, rating, rating * 10 as mult_rating FROM student16.tb_films;

-- ORDER BY
SELECT * FROM student16.tb_films ORDER BY rating;
SELECT * FROM student16.tb_films ORDER BY rating desc;

--
SELECT *
FROM student16.tb_films WHERE rating BETWEEN 7 AND 8 ORDER BY rating DESC;

SELECT * FROM student16.tb_films WHERE name LIKE 'Сол%';

SELECT * FROM student16.tb_films WHERE rating IN (6.9, 8) ORDER BY rating;
