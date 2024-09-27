SELECT * FROM student16.tb_films;

SELECT rating, count(*) FROM student16.tb_films GROUP BY rating ORDER BY rating;
