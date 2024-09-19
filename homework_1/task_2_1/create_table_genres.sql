CREATE TABLE IF NOT EXISTS student16.book_shop_genres
(
);


ALTER TABLE IF EXISTS student16.book_shop_genres
    ADD COLUMN IF NOT EXISTS genre_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name     VARCHAR
;

COMMENT ON TABLE student16.book_shop_genres IS 'Таблица жанрами книг';
COMMENT ON COLUMN student16.book_shop_genres.genre_id IS 'Идентификатор жанра';
COMMENT ON COLUMN student16.book_shop_genres.name IS 'Имя жанра';



ALTER TABLE student16.book_shop_genres ADD primary key (genre_id);

