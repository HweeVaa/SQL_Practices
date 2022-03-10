SELECT substring('Hello World',1,4);

SELECT substring('Hello World',3);

SELECT substring('Hello World',7);

SELECT substring('Hello World',-3);

SELECT title FROM books;

SELECT substring(title,1,10) AS 'short title' FROM books ;

SELECT
concat(
    substring(title,1,10),
    '...'
) AS 'short title'
FROM books;