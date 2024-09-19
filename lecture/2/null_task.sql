SELECT * FROM student16.tb_films
WHERE genre_id = (
    SELECT genre_id
    FROM student16.tb_genres
    WHERE name = 'драма'
    );

SELECT * FROM student16.tb_films
WHERE  tb_films.rating > 7
       AND (
           genre_id IS NULL
           OR genre_id NOT IN (
                SELECT genre_id
                FROM student16.tb_genres
                WHERE name = 'драма' OR name = 'комедия'
            )
       );
