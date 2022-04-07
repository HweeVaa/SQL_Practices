SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT Max(pages) FROM books;


#min max subquery 괄호 안의 쿼리를 먼저 실행함
SELECT title, pages FROM books WHERE pages = (SELECT max(pages) FROM books);

SELECT title, pages FROM books WHERE pages = (SELECT min(pages) FROM books);


#앞의 방법보다 훨씬 빠르게 처리하는 법
SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;