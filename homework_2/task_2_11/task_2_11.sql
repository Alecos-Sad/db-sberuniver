-- Составьте запрос для определения количества песен у каждого исполнителя.
SELECT artists.name, COUNT(tracks.track_id) AS tracks_count
FROM student16.music_service_artists artists
         JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
GROUP BY artists.name
ORDER BY tracks_count DESC;