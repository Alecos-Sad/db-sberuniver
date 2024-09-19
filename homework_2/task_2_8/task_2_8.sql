-- Составьте запрос для определения суммы прослушиваний по жанрам, отсортированным по возрастанию количества прослушиваний.
SELECT genres.name AS genre_name, SUM(tracks.number_of_plays) AS total_plays
FROM student16.music_service_tracks tracks
         JOIN student16.music_service_albums albums ON tracks.album_id = albums.album_id
         JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id
GROUP BY genres.name
ORDER BY total_plays ASC;