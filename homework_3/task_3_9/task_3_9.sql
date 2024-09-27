SELECT authors.name AS author_name, count(books.id) AS book_count
FROM student16.books books
         JOIN student16.book_authors authors ON books.author_id = authors.author_id
GROUP BY authors.name;