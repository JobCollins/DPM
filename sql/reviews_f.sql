SELECT country, STDDEV(review) AS STD 
FROM reviews_f WHERE product_id=3 
GROUP BY country ORDER BY STD DESC