#저자의 첫 저서 발행년도를 찾는 쿼리
SELECT author_fname, author_lname, min(released_year) FROM books GROUP BY author_lname, author_fname;

#저자의 가장 두꺼운 책을 찾는 쿼리
SELECT author_fname, author_lname, max(pages) FROM books GROUP BY author_lname, author_fname;

#더 보기 좋게 만든 쿼리
SELECT concat(author_fname,' ',author_lname) AS author, max(pages) AS 'longest book'
FROM books GROUP BY author_lname, author_fname;