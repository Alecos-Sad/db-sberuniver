--DROP VIEW student16.vw_films;

CREATE OR REPLACE VIEW student16.vw_films
AS
SELECT id,
    name,
    year,
    genre_id,
    director_id,
    age_rating,
    rating
FROM student16.tb_films;

COMMENT ON VIEW     student16.vw_films              IS 'Фильмы';
COMMENT ON COLUMN   student16.vw_films.id           IS 'Идентификатор фильма';
COMMENT ON COLUMN   student16.vw_films.name         IS 'Название фильма';
COMMENT ON COLUMN   student16.vw_films.year         IS 'Год выпуска фильма';
COMMENT ON COLUMN   student16.vw_films.genre_id     IS 'Идентификатор жанра фильма';
COMMENT ON COLUMN   student16.vw_films.director_id  IS 'Идентификатор режиссера';
COMMENT ON COLUMN   student16.vw_films.age_rating   IS 'Возрастной рейтинг';
COMMENT ON COLUMN   student16.vw_films.rating       IS 'Рейтинг фильма на платформе';


