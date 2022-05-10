SELECT country, STDDEV(review) AS STD 
FROM reviews_f WHERE product_id=3 
GROUP BY country ORDER BY STD DESC

select country, avg(review) as average_rating 
from reviews_f group by country 
order by average_rating desc
