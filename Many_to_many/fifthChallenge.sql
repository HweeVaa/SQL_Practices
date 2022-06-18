SELECT
    genre,
    AVG(rating) AS avg_rating
FROM series
INNER JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre;

--round함수
SELECT
    genre,
    ROUND(AVG(rating),2) AS avg_rating
FROM series
INNER JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre;