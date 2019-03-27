use sakila;

-- 1
SELECT 
    customer.first_name,
    customer.last_name,
    customer.email,
    address.address
FROM
    customer
        JOIN
    address ON customer.address_id = address.address_id
        AND address.city_id = 312;

-- 2
SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features,
    category.name
FROM
    film
        INNER JOIN
    film_category ON film.film_id = film_category.film_id
        INNER JOIN
    category ON film_category.category_id = category.category_id
        AND category.name = 'Comedy';

-- 3
SELECT 
    actor.actor_id,
    CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name,
    film.title,
    film.description,
    film.release_year
FROM
    film
        INNER JOIN
    film_actor ON film.film_id = film_actor.film_id
        INNER JOIN
    actor ON film_actor.actor_id = actor.actor_id
        AND actor.actor_id = 5;

-- 4
SELECT 
    customer.first_name,
    customer.last_name,
    customer.email,
    address.address
FROM
    customer
        INNER JOIN
    address ON customer.address_id = address.address_id
        AND (address.city_id = 1
        OR address.city_id = 42
        OR address.city_id = 312
        OR address.city_id = 459)
        INNER JOIN
    store ON customer.store_id = store.store_id
        AND store.store_id = 1;

-- 5
SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features
FROM
    film
        JOIN
    film_actor ON film.film_id = film_actor.film_id
        AND film_actor.actor_id = 15
        AND film.special_features LIKE '%behind the scenes%'
        AND film.rating = 'G';

-- 6
SELECT 
    film.film_id,
    film.title,
    film_actor.actor_id,
    CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM
    film
        INNER JOIN
    film_actor ON film.film_id = film_actor.film_id
        AND film.film_id = 369
        INNER JOIN
    actor ON film_actor.actor_id = actor.actor_id;

-- 7
SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features,
    category.name
FROM
    film
        INNER JOIN
    film_category ON film.film_id = film_category.film_id
        AND film.rental_rate = 2.99
        INNER JOIN
    category ON film_category.category_id = category.category_id
        AND category.name = 'Drama';

-- 8
SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features,
    category.name AS genre,
    actor.first_name,
    actor.last_name
FROM
    film
        INNER JOIN
    film_category ON film.film_id = film_category.film_id
        INNER JOIN
    category ON film_category.category_id = category.category_id
        AND category.name = 'Action'
        INNER JOIN
    film_actor ON film.film_id = film_actor.film_id
        INNER JOIN
    actor ON film_actor.actor_id = actor.actor_id
        AND actor.first_name = 'SANDRA'
        AND actor.last_name = 'KILMER';