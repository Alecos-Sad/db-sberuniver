CREATE TABLE IF NOT EXISTS student16.book_shop_authors
(
);

ALTER TABLE IF EXISTS student16.book_shop_authors
    ADD COLUMN IF NOT EXISTS authors_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name     VARCHAR
;

COMMENT ON TABLE student16.book_shop_authors IS 'Таблица с авторами';
COMMENT ON COLUMN student16.book_shop_authors.authors_id IS 'Идентификатор автора';
COMMENT ON COLUMN student16.book_shop_authors.name IS 'Имя автора';

ALTER TABLE IF EXISTS student16.book_shop_authors ADD primary key (authors_id);

