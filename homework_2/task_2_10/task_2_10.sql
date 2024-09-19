-- Составьте запрос для определения суммы числа прослушиваний по исполнителям, отсортированным по возрастанию числа прослушиваний.
SELECT artists.name AS artist_name, SUM(tracks.number_of_plays) AS sum_plays
FROM student16.music_service_artists artists
         JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
GROUP BY artists.name
ORDER BY sum_plays ASC;