--Наполнение таблиц

--Таблица с жанрами
INSERT INTO student16.book_genres(name)
VALUES ('Non-fiction'),
       ('Исторический роман'),
       ('Фантастика');

--Таблица с авторами
INSERT INTO student16.book_authors(name)
VALUES ('Митио Каку'),
       ('Ричард Докинз'),
       ('Ричард Фейнман'),
       ('Юрий Тынянов'),
       ('Аркадий и Борис Стругацкие');

--Таблица с книгами
INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Физика немозможного',
        (SELECT author_id from book_authors where book_authors.name = 'Митио Каку'),
        2008,
        460,
        (SELECT genre_id from book_genres where book_genres.name = 'Non-fiction'),
        2000);

INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Эгоистичный ген',
        (SELECT author_id from book_authors where book_authors.name = 'Ричард Докинз'),
        1989,
        610,
        (SELECT genre_id from book_genres where book_genres.name = 'Non-fiction'),
        400);

INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Вы, конечно, шутите, мистер Фейнман!',
        (SELECT author_id from book_authors where book_authors.name = 'Ричард Фейнман'),
        1985,
        450,
        (SELECT genre_id from book_genres where book_genres.name = 'Non-fiction'),
        1000);

INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Кюхля',
        (SELECT author_id from book_authors where book_authors.name = 'Юрий Тынянов'),
        1925,
        350,
        (SELECT genre_id from book_genres where book_genres.name = 'Исторический роман'),
        2300);

INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('За миллиард лет до конца света',
        (SELECT author_id from book_authors where book_authors.name = 'Аркадий и Борис Стругацкие'),
        1977,
        150,
        (SELECT genre_id from book_genres where book_genres.name = 'Фантастика'),
        20000);

INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Понедельник начинается в субботу',
        (SELECT author_id from book_authors where book_authors.name = 'Аркадий и Борис Стругацкие'),
        1964,
        250,
        (SELECT genre_id from book_genres where book_genres.name = 'Фантастика'),
        21000);

INSERT INTO student16.books(name, author_id, year, page, genre_id, download)
VALUES ('Уравнение Бога. В поисках теории всего',
        (SELECT author_id from book_authors where book_authors.name = 'Митио Каку'),
        2021,
        200,
        (SELECT genre_id from book_genres where book_genres.name = 'Non-fiction'),
        1700);
