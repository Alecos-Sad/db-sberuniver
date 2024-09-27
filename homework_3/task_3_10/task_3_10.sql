--Таблица с жанрами
INSERT INTO student16.book_genres(name)
VALUES ('Детектив'),
       ('Фентези'),
       ('Биография');

--INNER JOIN
SELECT books.id    AS book_id,
       books.name  AS book_name,
       genres.name AS genre_name,
       books.year,
       books.page,
       books.download
FROM student16.books books
         INNER JOIN student16.book_genres genres ON books.genre_id = genres.genre_id

--LEFT OUTER JOIN
SELECT books.id    AS book_id,
       books.name  AS book_name,
       genres.name AS genre_name,
       books.year,
       books.page,
       books.download
FROM student16.books books
         LEFT OUTER JOIN student16.book_genres genres ON books.genre_id = genres.genre_id

--RIGHT OUTER JOIN
SELECT books.id    AS book_id,
       books.name  AS book_name,
       genres.name AS genre_name,
       books.year,
       books.page,
       books.download
FROM student16.books books
         RIGHT OUTER JOIN student16.book_genres genres ON books.genre_id = genres.genre_id

--FULL JOIN
SELECT books.id    AS book_id,
       books.name  AS book_name,
       genres.name AS genre_name,
       books.year,
       books.page,
       books.download
FROM student16.books books
         FULL JOIN student16.book_genres genres ON books.genre_id = genres.genre_id