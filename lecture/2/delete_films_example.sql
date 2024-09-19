SELECT name FROM student16.vw_films
WHERE genre_id = (
    SELECT genre_id from student16.tb_genres where name='драма'
    );
--Удалим фильмы в жанре "драма"
DELETE FROM student16.vw_films
WHERE genre_id = (
    SELECT genre_id from student16.tb_genres where name='драма'
);
--проверим: удалились ли фильмы?
SELECT name FROM student16.vw_films
WHERE genre_id = (
    SELECT genre_id from student16.tb_genres where name='драма'
);
/*
truncate table student16.tb_films cascade ;
truncate table student16.tb_directors cascade ;
truncate table student16.tb_genres cascade ;
truncate table student16.tb_countries cascade ;
*/


