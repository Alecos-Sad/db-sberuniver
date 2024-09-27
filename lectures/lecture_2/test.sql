DROP TABLE student16.tb_genres;
DROP table student16.tb_genres cascade;
select * from student16.tb_films;
select * from student16.tb_genres;

truncate table student16.tb_films;

alter table student16.tb_films add foreign key (genre_id) references student16.tb_genres(genre_id);