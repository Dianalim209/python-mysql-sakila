#NUMBER 1
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
RIGHT JOIN address ON address.address_id = customer.address_id
WHERE city_id = 312;

#NUMBER 2
SELECT title, description, release_year, rating, special_features, category.name as genre 
FROM film
LEFT JOIN film_category ON film_category.film_id = film.film_id
LEFT JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'comedy';

#NUMBER 3
SELECT film.title, film.description, film.release_year FROM film
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
WHERE actor_id = '5';

#NUMBER 4
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
LEFT JOIN address ON address.address_id = customer.address_id
LEFT JOIN store ON store.store_id = customer.store_id
WHERE customer.store_id = 1 AND (city_id = 1 OR city_id = 24 OR city_id = 312 OR city_id = 459);

#NUMBER 5
SELECT film.title, film.description, film.release_year, rating, special_features FROM film
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
LEFT JOIN actor ON actor.film_actor.id = film_actor.actor_id
WHERE rating = 'G' AND actor.actor_id = '15' AND film.special_features LIKE '%behind the scenes%';

#NUMBER 6 
SELECT actor.first_name, actor.last_name, actor.last_update FROM actor
LEFT JOIN film_actor ON film_actor.actor_id = actor.actor_id
WHERE film_actor.film_id = 369;

#NUMBER 7
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genres FROM film
LEFT JOIN film_category ON film_category.film_id = film.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "drama" AND film.rental_rate = 2.99;

#NUMBER 8
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre, actor.first_name, actor.last_name FROM film
LEFT JOIN film_actor On film_actor.film_id = film.film_id
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
LEFT JOIN film_category ON film_category.film_id = film.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "action" AND actor.first_name = "SANDRA" AND actor.last_name = "KILMER";
