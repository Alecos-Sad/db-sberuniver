-- Напишите JOIN запросы для таблиц исполнители и песни: INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL JOIN.

-- INNER JOIN
SELECT artists.name AS artist_name, tracks.name AS track_name, genres.name AS genre_name
FROM student16.music_service_artists artists
         INNER JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         INNER JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
         INNER JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id;

-- LEFT OUTER JOIN
SELECT artists.name AS artist_name, tracks.name AS track_name, genres.name AS genre_name
FROM student16.music_service_artists artists
         LEFT OUTER JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         LEFT OUTER JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
         LEFT OUTER JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id;

-- RIGHT OUTER JOIN
SELECT artists.name AS artist_name, tracks.name AS track_name, genres.name AS genre_name
FROM student16.music_service_artists artists
         RIGHT OUTER JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         RIGHT OUTER JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
         RIGHT OUTER JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id;

-- FULL JOIN
SELECT artists.name AS artist_name, tracks.name AS track_name, genres.name AS genre_name
FROM student16.music_service_artists artists
         FULL JOIN student16.music_service_albums albums ON artists.artist_id = albums.artist_id
         FULL JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
         FULL JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id;