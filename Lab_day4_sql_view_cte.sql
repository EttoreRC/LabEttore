USE sakila;


CREATE VIEW top5_movies AS 
SELECT title, COUNT(rental_id)
FROM film
INNER JOIN inventory
USING(film_id)
INNER JOIN rental
USING(inventory_id)
GROUP BY title
ORDER BY COUNT(rental_id) DESC
LIMIT 5 ;

SELECT * FROM top5_movies;


CREATE TEMPORARY TABLE names AS
SELECT first_name, last_name
FROM actor;

SELECT * FROM names

WITH average_spent AS (SELECT AVG(total_spent) avg_total_spent
							FROM   (SELECT SUM(amount) AS total_spent
									FROM payment
									GROUP BY customer_id) AS tspc)
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > (SELECT avg_total_spent
						FROM average_spent);


WITH RegionalSales AS (
    SELECT region, SUM(amount) AS total_sales
    FROM Sales
    GROUP BY region
)
SELECT region, total_sales
FROM RegionalSales
WHERE total_sales > 100000;













