CREATE TABLE IF NOT EXISTS student16.tb_films();


ALTER TABLE IF EXISTS student16.tb_films
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name                       VARCHAR,
    ADD COLUMN IF NOT EXISTS year                       SMALLINT,
    ADD COLUMN IF NOT EXISTS genre                      VARCHAR,
    ADD COLUMN IF NOT EXISTS director_country           VARCHAR,
    ADD COLUMN IF NOT EXISTS age_rating                 VARCHAR,
    ADD COLUMN IF NOT EXISTS rating                     SMALLINT
;

COMMENT ON TABLE  student16.tb_films                                IS 'Таблица с фильмами онлайн кинотеатра';
COMMENT ON COLUMN student16.tb_films.id                             IS 'Идентификатор фильма';
COMMENT ON COLUMN student16.tb_films.name                           IS 'Имя фильма';
COMMENT ON COLUMN student16.tb_films.year                           IS 'Год создания фильма';
COMMENT ON COLUMN student16.tb_films.genre                          IS 'Жанр фильма';
COMMENT ON COLUMN student16.tb_films.director_country               IS 'Режиссер фильма; страна';
COMMENT ON COLUMN student16.tb_films.age_rating                     IS 'Возрастной рейтинг фильма';
COMMENT ON COLUMN student16.tb_films.rating                         IS 'Рейтинг фильма в онлайн кинотеатре';



DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_films''
              and lower(table_schema) = ''student16''
              and lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student16.tb_films ADD primary key (id);
    END IF;
END ';
