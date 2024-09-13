--Приведение к 2НФ

CREATE TABLE IF NOT EXISTS student16.tb_films();


ALTER TABLE IF EXISTS student16.tb_films
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name                       VARCHAR,
    ADD COLUMN IF NOT EXISTS year                       SMALLINT,
    DROP COLUMN IF EXISTS genre,
    ADD COLUMN IF NOT EXISTS genre_id                   SMALLINT,
    ADD COLUMN IF NOT EXISTS director_id                SMALLINT,
    ADD COLUMN IF NOT EXISTS genre                      VARCHAR,
    ADD COLUMN IF NOT EXISTS age_rating                 VARCHAR,
    ADD COLUMN IF NOT EXISTS rating                     SMALLINT
;

COMMENT ON TABLE  student16.tb_films                                IS 'Таблица с фильмами онлайн кинотеатра';
COMMENT ON COLUMN student16.tb_films.id                             IS 'Идентификатор фильма';
COMMENT ON COLUMN student16.tb_films.name                           IS 'Имя фильма';
COMMENT ON COLUMN student16.tb_films.year                           IS 'Год создания фильма';
COMMENT ON COLUMN student16.tb_films.genre_id                       IS 'Идентификатор жанра фильма';
COMMENT ON COLUMN student16.tb_films.director_id                    IS 'Идентификатор режиссера фильма';
COMMENT ON COLUMN student16.tb_films.age_rating                     IS 'Возрастной рейтинг фильма';
COMMENT ON COLUMN student16.tb_films.rating                         IS 'Рейтинг фильма в онлайн кинотеатре';



DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_films''
              and lower(table_schema) = ''student25''
              and lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student16.tb_films ADD primary key (id);
    END IF;
END ';



DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_films''
              and lower(table_schema) = ''student25''
              and lower(constraint_type) = ''foreign key''
        )
    THEN
        ALTER TABLE student16.tb_films ADD foreign key (director_id) REFERENCES student16.tb_directors(director_id);
    END IF;
END ';



DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_films''
              and lower(table_schema) = ''student25''
              and lower(constraint_type) = ''foreign key''
        )
    THEN
        ALTER TABLE student16.tb_films ADD foreign key (genre_id) REFERENCES student16.tb_genres(genre_id);
    END IF;
END ';

