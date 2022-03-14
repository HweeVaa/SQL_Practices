SELECT author_fname, char_length(author_lname) AS 'length' FROM books;

SELECT concat(author_lname,' is ', char_length(author_lname),' characters long') from books;