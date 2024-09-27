--Поиск имен фильмов, снятых в жанре фантастика, а также фильмы снятые корейскими режиссерами
SELECT name FROM student16.vw_films
WHERE genre_id = (
    SELECT genre_id from student16.tb_genres where name='фантастика'
    )
    OR director_id IN (
          SELECT director_id from student16.tb_directors
          WHERE country_id = (
              SELECT country_id from student16.tb_countries where name = 'Южная Корея'
              )
    );
DELETE FROM student16.vw_films
WHERE genre_id = (
    SELECT genre_id from student16.tb_genres where name='фантастика'
)
   OR director_id IN (
    SELECT director_id from student16.tb_directors
    WHERE country_id = (
        SELECT country_id from student16.tb_countries where name = 'Южная Корея'
    )
);
--проверим: удалились ли фильмы?
SELECT name FROM student16.vw_films
WHERE genre_id = (
    SELECT genre_id from student16.tb_genres where name='фантастика'
)
   OR director_id IN (
    SELECT director_id from student16.tb_directors
    WHERE country_id = (
        SELECT country_id from student16.tb_countries where name = 'Южная Корея'
    )
);
/*
truncate table student16.tb_films cascade ;
truncate table student16.tb_directors cascade ;
truncate table student16.tb_genres cascade ;
truncate table student16.tb_countries cascade ;
*/


