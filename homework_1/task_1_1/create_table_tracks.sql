CREATE TABLE IF NOT EXISTS student16.music_service_tracks
(
);

ALTER TABLE IF EXISTS student16.music_service_tracks
    ADD COLUMN IF NOT EXISTS track_id        BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name            VARCHAR,
    ADD COLUMN IF NOT EXISTS album_id        BIGSERIAL,
    ADD COLUMN IF NOT EXISTS number_of_plays BIGSERIAL
;

COMMENT ON TABLE student16.music_service_tracks IS 'Таблица с музыкальными треками';
COMMENT ON COLUMN student16.music_service_tracks.track_id IS 'Идентификатор трека';
COMMENT ON COLUMN student16.music_service_tracks.name IS 'Имя трека';
COMMENT ON COLUMN student16.music_service_tracks.album_id IS 'Идентификатор альбома';
COMMENT ON COLUMN student16.music_service_tracks.number_of_plays IS 'Количество прослушиваний';

ALTER TABLE IF EXISTS student16.music_service_tracks
    ADD primary key (track_id);
ALTER TABLE IF EXISTS student16.music_service_tracks
    ADD foreign key (album_id) references student16.music_service_albums (album_id);


