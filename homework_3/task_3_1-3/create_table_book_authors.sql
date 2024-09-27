CREATE TABLE IF NOT EXISTS student16.book_authors
(
);

ALTER TABLE IF EXISTS student16.book_authors
    ADD COLUMN IF NOT EXISTS author_id  BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name       VARCHAR
;

COMMENT ON TABLE student16.book_authors IS 'Таблица с авторами';
COMMENT ON COLUMN student16.book_authors.author_id IS 'Идентификатор автора';
COMMENT ON COLUMN student16.book_authors.name IS 'Имя автора';

ALTER TABLE student16.book_authors
    ADD primary key (author_id);
