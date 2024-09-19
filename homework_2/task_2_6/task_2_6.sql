-- Составьте запрос для поиска исполнителей жанра Y (например, рэп), у которых среднее число прослушиваний треков более 20 000 000.
SELECT artists.name, AVG(tracks.number_of_plays) as avg_plays
FROM student16.music_service_artists artists
         JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id
         JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
WHERE genres.name = 'ROCK'
GROUP BY artists.artist_id
HAVING AVG(tracks.number_of_plays) > 2000;
