SELECT
    CONCAT(author_fname,' ',author_lname)
    AS full_name
FROM books;

SELECT
    concat_ws('-',title,author_fname, author_lname)
FROM books;