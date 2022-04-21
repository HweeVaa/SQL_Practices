SELECT COUNT(*) FROM books;


SELECT released_year, COUNT(*) AS 'released books' FROM books GROUP BY released_year;


SELECT SUM(stock_quantity) AS 'total stock' FROM books;


SELECT author_fname, author_lname, AVG(released_year) AS 'AVG released_year' 
FROM books GROUP BY author_lname, author_fname;


SELECT concat(author_fname,' ', author_lname) AS 'author', pages 
FROM books ORDER BY pages DESC LIMIT 1;


SELECT released_year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' 
FROM books GROUP BY released_year;