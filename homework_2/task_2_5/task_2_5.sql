-- Составьте запрос для поиска треков в жанре “Х” (например, поп) с числом прослушиваний, более 30000.
SELECT tracks.name AS tracks_name
FROM student16.music_service_tracks tracks
         JOIN student16.music_service_albums albums ON tracks.album_id = albums.album_id
         JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id
WHERE genres.name = 'ROCK'
  and avg(tracks.number_of_plays);
