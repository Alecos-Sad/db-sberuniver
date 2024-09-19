-- Составьте запрос для поиска исполнителей, у которых нет ни одного трека в жанре “M” (например, кантри).
SELECT artists.name AS artist_name
FROM student16.music_service_artists artists
WHERE artist_id NOT IN
      (SELECT DISTINCT artists_2.artist_id
       FROM student16.music_service_artists artists_2
                JOIN student16.music_service_albums albums ON artists_2.artist_id = albums.artist_id
                JOIN student16.music_service_genres genres ON albums.genre_id = genres.genre_id
                JOIN student16.music_service_tracks tracks ON albums.album_id = tracks.album_id
       WHERE genres.name = 'ROCK');