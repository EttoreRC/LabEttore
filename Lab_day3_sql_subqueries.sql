USE sakila;


#Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.

SELECT f.film_id, f.title,
       (SELECT COUNT(inv.inventory_id)
        FROM inventory AS inv
        WHERE inv.film_id = f.film_id) AS number_of_copies
FROM film AS f
WHERE f.title = 'Hunchback Impossible';




#List all films whose length is longer than the average length of all the films in the Sakila database.

SELECT film_id, title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film);



#Use a subquery to display all actors who appear in the film "Alone Trip".

SELECT actor.actor_id, actor.first_name, actor.last_name
FROM actor
WHERE actor.actor_id IN (SELECT film_actor.actor_id
						FROM film_actor
						WHERE film_actor.film_id IN (SELECT film_id
													FROM film
													WHERE title = 'Alone Trip'));


