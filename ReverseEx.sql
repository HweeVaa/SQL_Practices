SELECT
substring(REPLACE(title,'e','3'),1,10)
FROM books;

SELECT concat('woof',reverse('woof'));

SELECT concat(author_fname,reverse(author_fname)) FROM books;
