-- Напишите запрос по выводу списка , для которых нет имен песен в таблице (с учетом особенностей сравнения с NULL).

SELECT *
FROM student16.music_service_tracks
WHERE number_of_plays > 1000
  AND (name IS NULL
    OR name NOT IN (
                    'Requiem', 'Kiss It Better', 'Another Brick Im The Wall'
        )
    );
