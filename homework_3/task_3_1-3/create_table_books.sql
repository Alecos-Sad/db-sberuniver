CREATE TABLE IF NOT EXISTS student16.books
(
    id        BIGSERIAL,
    name      VARCHAR,
    author_id BIGSERIAL,
    year      SMALLINT,
    page      int8,
    genre_id  BIGSERIAL,
    download  int8 NOT NULL
) PARTITION BY RANGE (download);

ALTER TABLE student16.books
    ADD foreign key (author_id) REFERENCES student16.book_authors (author_id);
ALTER TABLE student16.books
    ADD foreign key (genre_id) REFERENCES student16.book_genres (genre_id);

CREATE INDEX IF NOT EXISTS books_name_index on student16.books (name);

CREATE TABLE student16.books_smaller_1000 PARTITION OF student16.books
    FOR VALUES FROM (0) TO (1000);
CREATE TABLE student16.books_10000 PARTITION OF student16.books
    FOR VALUES FROM (1000) TO (10000);
CREATE TABLE student16.books_greater_10000 PARTITION OF student16.books
    FOR VALUES FROM (10000) TO (maxvalue);


SELECT * FROM books_smaller_1000;
SELECT * FROM books_10000;
SELECT * FROM books_greater_10000;
