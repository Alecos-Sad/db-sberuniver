--Наполнение таблиц
--Таблица с жанрами
INSERT INTO student16.tb_genres (name) VALUES ('комедия');
INSERT INTO student16.tb_genres (name) VALUES ('триллер');
INSERT INTO student16.tb_genres (name) VALUES ('драма');
INSERT INTO student16.tb_genres (name) VALUES ('детектив');
INSERT INTO student16.tb_genres (name) VALUES ('фантастика');
INSERT INTO student16.tb_genres (name) VALUES ('ужасы');

-- Добавление нескольких строк с использованием многострочного синтаксиса VALUES:
INSERT INTO student16.tb_genres (name) VALUES ('комедия'),
                                              ('триллер'),
                                              ('драма'),
                                              ('детектив'),
                                              ('фантастика'),
                                              ('ужасы');
