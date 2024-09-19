CREATE TABLE IF NOT EXISTS student16.music_service_artists
(
);

ALTER TABLE IF EXISTS student16.music_service_artists
    ADD COLUMN IF NOT EXISTS artist_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name     VARCHAR
;

COMMENT ON TABLE student16.music_service_artists IS 'Таблица с исполнителями';
COMMENT ON COLUMN student16.music_service_artists.artist_id IS 'Идентификатор артиста';
COMMENT ON COLUMN student16.music_service_artists.name IS 'Имя артиста';

ALTER TABLE IF EXISTS student16.music_service_artists ADD primary key (artist_id);

