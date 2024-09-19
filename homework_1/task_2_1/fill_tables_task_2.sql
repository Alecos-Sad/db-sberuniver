--Наполнение таблиц

--Таблица с жанрами
INSERT INTO student16.book_shop_genres(name)
VALUES ('Детектив');
INSERT INTO student16.book_shop_genres(name)
VALUES ('Фантастика');
INSERT INTO student16.book_shop_genres(name)
VALUES ('Классика');

--Таблица с авторами
INSERT INTO student16.book_shop_authors(name)
VALUES ('Агата Кристи');
INSERT INTO student16.book_shop_authors(name)
VALUES ('Гарри Гаррисон');
INSERT INTO student16.book_shop_authors(name)
VALUES ('Федор Достоевский');

--Таблица с книгами
INSERT INTO student16.book_shop_books(name, author_id, genre_id, price)
VALUES ('Смерть на Ниле',
        (SELECT book_shop_authors.authors_id from book_shop_authors where book_shop_authors.name = 'Агата Кристи'),
        (SELECT book_shop_genres.genre_id from book_shop_genres where book_shop_genres.name = 'Детектив'),
        240);

INSERT INTO student16.book_shop_books(name, author_id, genre_id, price)
VALUES ('Стальная Крыса',
        (SELECT book_shop_authors.authors_id from book_shop_authors where book_shop_authors.name = 'Гарри Гаррисон'),
        (SELECT book_shop_genres.genre_id from book_shop_genres where book_shop_genres.name = 'Фантастика'),
        240);

INSERT INTO student16.book_shop_books(name, author_id, genre_id, price)
VALUES ('Идиот',
        (SELECT book_shop_authors.authors_id from book_shop_authors where book_shop_authors.name = 'Федор Достоевский'),
        (SELECT book_shop_genres.genre_id from book_shop_genres where book_shop_genres.name = 'Классика'),
        102);