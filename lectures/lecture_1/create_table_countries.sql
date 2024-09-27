--Приведение к 2НФ

CREATE TABLE IF NOT EXISTS student16.tb_countries();


ALTER TABLE IF EXISTS student16.tb_countries
    ADD COLUMN IF NOT EXISTS country_id                BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name                      VARCHAR
;

COMMENT ON TABLE  student16.tb_countries                            IS 'Таблица со странами';
COMMENT ON COLUMN student16.tb_countries.country_id                 IS 'Идентификатор страны';
COMMENT ON COLUMN student16.tb_countries.name                       IS 'Имя страны';



DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''tb_countries''
              and lower(table_schema) = ''student25''
              and lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student16.tb_countries ADD primary key (country_id);
    END IF;
END ';

