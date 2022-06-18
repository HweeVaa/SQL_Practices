SELECT
    title AS unreviewes_series,
    rating
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;