SELECT authors.name AS author_name, SUM(books.download) AS total_downloads
FROM student16.books books
         JOIN student16.book_authors authors ON books.author_id = authors.author_id
GROUP BY authors.name;