CREATE TABLE IF NOT EXISTS student16.music_service_genres
(
);

ALTER TABLE IF EXISTS student16.music_service_genres
    ADD COLUMN IF NOT EXISTS genre_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name     VARCHAR
;

COMMENT ON TABLE student16.music_service_genres IS 'Таблица с жанрами музыки';
COMMENT ON COLUMN student16.music_service_genres.genre_id IS 'Идентиффикатор жанра';
COMMENT ON COLUMN student16.music_service_genres.name IS 'Имя жанра';

ALTER TABLE IF EXISTS student16.music_service_genres ADD primary key (genre_id);


