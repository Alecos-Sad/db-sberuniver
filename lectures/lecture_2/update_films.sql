SELECT * FROM student16.tb_films;
--посмотрим текущий рейтинг фильмов, снятых режиссерами из Южной Кореи
SELECT * FROM student16.tb_films
WHERE director_id IN (
    SELECT director_id from student16.tb_directors
    WHERE country_id = (
        SELECT country_id from student16.tb_countries where name = 'СССР'
    ) OR name ='Андрей Звягинцев'
);
--Установим рейтинг фильмов, снятых режиссерами из СССР, а также Андреем Звягинцевым, равным 8.5
UPDATE student16.tb_films
SET rating = 8.5
WHERE director_id IN (
    SELECT director_id from student16.tb_directors
    WHERE country_id = (
        SELECT country_id from student16.tb_countries where name = 'СССР'
    ) OR name ='Андрей Звягинцев'
);
--Проверим, что рейтинг изменился
SELECT * FROM student16.tb_films
WHERE director_id IN (
    SELECT director_id from student16.tb_directors
    WHERE country_id = (
        SELECT country_id from student16.tb_countries where name = 'СССР'
    ) OR name ='Андрей Звягинцев'
);
/*
truncate table student16.tb_films cascade ;
truncate table student16.tb_directors cascade ;
truncate table student16.tb_genres cascade ;
truncate table student16.tb_countries cascade ;
*/
truncate table student16.tb_films cascade ;
truncate table student16.tb_directors cascade ;
truncate table student16.tb_genres cascade ;
truncate table student16.tb_countries cascade ;

