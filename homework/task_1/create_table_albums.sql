CREATE TABLE IF NOT EXISTS student16.music_service_albums
(
);

ALTER TABLE IF EXISTS student16.music_service_albums
    ADD COLUMN IF NOT EXISTS album_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name     VARCHAR,
    ADD COLUMN IF NOT EXISTS artist_id BIGSERIAL,
    ADD COLUMN IF NOT EXISTS year SMALLINT,
    ADD COLUMN IF NOT EXISTS genre_id BIGSERIAL
;

COMMENT ON TABLE student16.music_service_albums IS 'Таблица с музыкальными альбомами';
COMMENT ON COLUMN student16.music_service_albums.album_id IS 'Идентификатор альбома';
COMMENT ON COLUMN student16.music_service_albums.name IS 'Имя альбома';
COMMENT ON COLUMN student16.music_service_albums.artist_id IS 'Идентификатор исполнителя';
COMMENT ON COLUMN student16.music_service_albums.year IS 'Год выпуска альбома';
COMMENT ON COLUMN student16.music_service_albums.genre_id IS 'Идентификатор жанра';

ALTER TABLE IF EXISTS student16.music_service_albums ADD primary key (album_id);
ALTER TABLE IF EXISTS student16.music_service_albums ADD foreign key (artist_id) references student16.music_service_artists (artist_id);
ALTER TABLE IF EXISTS student16.music_service_albums ADD foreign key (genre_id) references student16.music_service_genres (genre_id);


