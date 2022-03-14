SELECT reverse(upper('Why does my cat look at me with such hatred?'));

SELECT REPLACE(title,' ','->') AS 'title' FROM books;

SELECT author_lname AS 'forwards', reverse(author_lname) AS 'backwards' FROM books;

SELECT upper(concat(author_fname,' ',author_lname)) AS 'full name in caps' FROM books;

SELECT concat(title,' was released in ', released_year) AS 'blurb' FROM books;

SELECT title, char_length(title) AS 'character count' FROM books;

SELECT concat(substring(title,1,10), '...') AS 'short title', 
concat(author_fname,',',author_lname) AS author,
concat(stock_quantity,' in stock') AS quantity FROM books ORDER BY title ASC LIMIT 2 ;