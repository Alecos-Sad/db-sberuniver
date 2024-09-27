CREATE OR REPLACE PROCEDURE increase_views()
LANGUAGE SQL
AS $$
UPDATE student16.tb_films SET views = views + 100;
$$;

select * from student16.tb_films;

call increase_views();
