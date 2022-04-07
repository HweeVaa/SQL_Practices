#저자의 이름에 따라 그룹화
SELECT title, author_fname, author_lname FROM books
GROUP BY author_lname;

#저자별 저서 수
SELECT author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;

#년도별 발간된 책 수
SELECT concat('In ',released_year,' ', COUNT(*),' book(s) released') AS year FROM books GROUP BY released_year;

