-- Составьте запрос для поиска исполнителей, у которых есть треки в жанре “N” (например, рок).
SELECT DISTINCT artists.name AS artist_name
FROM student16.music_service_artists artists
         JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id
         JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
WHERE genres.name = 'ROCK';