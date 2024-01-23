USE sakila;
# 1 exercise
SHOW tables;

# 2 exercise
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3.1 Titles of all films from the film table
SELECT title FROM film;

#3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM language;

#3.3 List of first names of all employees from the staff table
SELECT first_name 
FROM staff;

# 4 Retrieve unique release years.
SELECT DISTINCT release_year 
FROM film;

#5.1 Determine the number of stores that the company has.
SELECT  COUNT(DISTINCT store_id) AS store
FROM store;

#5.2 Determine the number of employees that the company has
SELECT  COUNT(DISTINCT staff_id) AS staff
FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT  COUNT(DISTINCT film_id) AS available_films
FROM film;

#5.4 Determine the number of distinct last names of the actors in the database.
SELECT  COUNT(DISTINCT film_id) AS films_rented
FROM inventory;

#Retrieve the 10 longest films
SELECT  COUNT(DISTINCT last_name)
FROM actor;

#6 Retrieve the 10 longest films.
SELECT  title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT  first_name,last_name
FROM actor
WHERE first_name = "Scarlett";


