-- create index
create index if not exists films_name_index on student16.tb_films (name);



-- drop index
drop index if exists student16.films_name_index;
