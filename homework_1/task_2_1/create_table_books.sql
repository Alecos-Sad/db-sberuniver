CREATE TABLE IF NOT EXISTS student16.book_shop_books
(
);

ALTER TABLE IF EXISTS student16.book_shop_books
    ADD COLUMN IF NOT EXISTS book_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name     VARCHAR,
    ADD COLUMN IF NOT EXISTS author_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS genre_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS price SMALLINT
;

COMMENT ON TABLE student16.book_shop_books IS 'Таблица с книгами';
COMMENT ON COLUMN student16.book_shop_books.book_id IS 'Идентификатор книги';
COMMENT ON COLUMN student16.book_shop_books.name IS 'Имя книги';
COMMENT ON COLUMN student16.book_shop_books.author_id IS 'Идентификатор автора';
COMMENT ON COLUMN student16.book_shop_books.genre_id IS 'Идентификатор жанра';
COMMENT ON COLUMN student16.book_shop_books.price IS 'Стоимость книги';

ALTER TABLE IF EXISTS student16.book_shop_books ADD primary key (book_id);
ALTER TABLE IF EXISTS student16.book_shop_books ADD foreign key (author_id) references student16.book_shop_authors (authors_id);
ALTER TABLE IF EXISTS student16.book_shop_books ADD foreign key (genre_id) references student16.book_shop_genres(genre_id);


