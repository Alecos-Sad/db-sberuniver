--Добавить автора
INSERT INTO student16.book_authors(name)
VALUES ('Борис Пастернак');
--Добавить книгу
INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Доктор Живаго',
        (SELECT author_id from book_authors where book_authors.name = 'Борис Пастернак'),
        1955,
        NULL,
        (SELECT genre_id from book_genres where book_genres.name = 'Non-fiction'),
        20300);

--Напишите запрос по выводу списка книг, для которых не указано количество страниц (с учетом особенностей сравнения с NULL).
SELECT id, name, author_id, year, genre_id, download
FROM student16.books
WHERE page IS NULL
   OR page NOT BETWEEN 1 AND 10000;