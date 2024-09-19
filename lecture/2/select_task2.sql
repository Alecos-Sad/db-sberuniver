SELECT * FROM student16.tb_films;

SELECT director_id, AVG(rating) as avg_rating
FROM student16.tb_films
GROUP BY director_id
ORDER BY avg_rating;


SELECT directors.name, directors.director_id, avg_rating FROM student16.tb_directors as directors
    LEFT JOIN (
        SELECT director_id, AVG(rating) as avg_rating
               FROM student16.tb_films
               GROUP BY director_id
               ORDER BY avg_rating
        ) as tb_raiting on directors.director_id = tb_raiting.director_id;