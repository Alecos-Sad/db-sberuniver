SELECT genres.name, SUM(books.download) AS total_downloads
FROM student16.books books
         JOIN student16.book_genres genres ON books.genre_id = genres.genre_id
GROUP BY genres.name;