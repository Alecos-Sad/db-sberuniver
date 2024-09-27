-- DROP table
DROP TABLE student16.tb_genres; --ошибка: ERROR: cannot drop table tb_genres because other objects depend on it
drop table student16.tb_genres cascade; --успешно выполнится
select * from student16.tb_films; --идентификаторы genre_id остались
--Попробуем снова создать таблицу с жанрами и связать ее с фильмами
--create_table_genres.sql
ALTER TABLE student16.tb_films ADD foreign key (genre_id) REFERENCES student16.tb_genres(genre_id);
/* Будет ошибка:
   23503] ERROR: insert or update on table "tb_films" violates foreign key constraint "tb_films_genre_id_fkey" Подробности: Key (genre_id)=(2) is not present in table "tb_genres".
 Почему она возникает? Как ее исправить?
   */
 -- наполним таблицу с жанрами

INSERT INTO student16.tb_genres (name) VALUES ('комедия');
INSERT INTO student16.tb_genres (name) VALUES ('триллер');
INSERT INTO student16.tb_genres (name) VALUES ('драма');
INSERT INTO student16.tb_genres (name) VALUES ('детектив');
INSERT INTO student16.tb_genres (name) VALUES ('фантастика');
INSERT INTO student16.tb_genres (name) VALUES ('ужасы');
ALTER TABLE student16.tb_films ADD foreign key (genre_id) REFERENCES student16.tb_genres(genre_id);
-- Теперь снова получилось связать таблицы
