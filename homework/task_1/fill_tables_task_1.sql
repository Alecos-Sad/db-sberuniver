--Наполнение таблиц

--Таблица с жанрами
INSERT INTO student16.music_service_genres (name)
VALUES ('POP');
INSERT INTO student16.music_service_genres (name)
VALUES ('ROCK');
INSERT INTO student16.music_service_genres (name)
VALUES ('CLASSIC');

--Таблица с исполнителями
INSERT INTO student16.music_service_artists(name)
VALUES ('RIHANNA');
INSERT INTO student16.music_service_artists(name)
VALUES ('PINK FLOYD');
INSERT INTO student16.music_service_artists(name)
VALUES ('MOZART');

--Таблица с альбомами
INSERT INTO student16.music_service_albums(name, artist_id, year, genre_id)
VALUES ('Anti',
        (SELECT artist_id FROM music_service_artists WHERE music_service_artists.name = 'RIHANNA'),
        2014,
        (SELECT genre_id FROM music_service_genres WHERE music_service_genres.name = 'POP'));

INSERT INTO student16.music_service_albums(name, artist_id, year, genre_id)
VALUES ('The Wall',
        (SELECT artist_id FROM music_service_artists WHERE music_service_artists.name = 'PINK FLOYD'),
        1979,
        (SELECT genre_id FROM music_service_genres WHERE music_service_genres.name = 'ROCK'));

INSERT INTO student16.music_service_albums(name, artist_id, year, genre_id)
VALUES ('The best of Mozart',
        (SELECT artist_id FROM music_service_artists WHERE music_service_artists.name = 'MOZART'),
        2000,
        (SELECT genre_id FROM music_service_genres WHERE music_service_genres.name = 'CLASSIC'));

--Таблица с треками
INSERT INTO student16.music_service_tracks(name, album_id)
VALUES ('Kiss It Better',
        (SELECT album_id FROM music_service_albums where music_service_albums.name = 'Anti')),
    450;

INSERT INTO student16.music_service_tracks(name, album_id)
VALUES ('Another Brick Im The Wall',
        (SELECT album_id FROM music_service_albums where music_service_albums.name = 'The Wall')), 150;

INSERT INTO student16.music_service_tracks(name, album_id)
VALUES ('Requiem',
        (SELECT album_id FROM music_service_albums where music_service_albums.name = 'The best of Mozart')), 15;