-- Составьте запрос определения среднего числа прослушиваний у исполнителей, отсортированных по убыванию количества прослушиваний.
SELECT artists.name AS artist_name, AVG(tracks.number_of_plays) AS avg_plays
FROM student16.music_service_artists artists
         JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
GROUP BY artists.name
ORDER BY avg_plays DESC;