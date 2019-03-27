use sakila;

-- 1
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address ON customer.address_id = address.address_id AND address.city_id = 312;

-- 2
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id AND category.name = 'Comedy';

-- 3
select actor.actor_id, concat(' ', actor.first_name, actor.last_name) as actor_name, film.title, film.description, film.release_year
FROM film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id and actor.actor_id = 5;

-- 4
select customer.first_name, customer.last_name, customer.email, address.address
FROM customer
inner join address on customer.address_id = address.address_id and (address.city_id = 1 OR address.city_id = 42 OR address.city_id = 312 OR address.city_id = 459)
inner join store on customer.store_id = store.store_id and store.store_id = 1;

-- 5
select film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
join film_actor on film.film_id = film_actor.film_id and film_actor.actor_id = 15 and film.special_features like "%behind the scenes%" and film.rating = "G";

-- 6
select film.film_id, film.title, film_actor.actor_id, concat(actor.first_name, ' ', actor.last_name) as actor_name
from film
inner join film_actor on film.film_id = film_actor.film_id and film.film_id = 369
inner join actor on film_actor.actor_id = actor.actor_id;