--Приведение к 2НФ

CREATE TABLE IF NOT EXISTS student16.tb_directors();


ALTER TABLE IF EXISTS student16.tb_directors
    ADD COLUMN IF NOT EXISTS director_id                BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name                       VARCHAR,
    drop COLUMN IF EXISTS country_id                ,
    ADD COLUMN IF NOT EXISTS country_id                 bigserial
;

COMMENT ON TABLE  student16.tb_directors                            IS 'Таблица с режиссерами';
COMMENT ON COLUMN student16.tb_directors.director_id                IS 'Идентификатор фильма';
COMMENT ON COLUMN student16.tb_directors.name                       IS 'Имя фильма';
COMMENT ON COLUMN student16.tb_directors.country_id                 IS 'Год создания фильма';


DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_directors''
              and lower(table_schema) = ''student25''
              and lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student16.tb_directors ADD primary key (director_id);
    END IF;
END ';


DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_directors''
              and lower(table_schema) = ''student25''
              and lower(constraint_type) = ''foreign key''
        )
    THEN
        ALTER TABLE student16.tb_directors ADD foreign key (country_id) REFERENCES student16.tb_countries(country_id);
    END IF;
END ';
