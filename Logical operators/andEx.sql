SELECT * FROM books WHERE author_lname = 'Eggers';

SELECT * FROM books WHERE released_year > 2010;

SELECT * FROM books WHERE author_lname = 'Eggers' && released_year > 2010;

SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' && released_year > 2010;