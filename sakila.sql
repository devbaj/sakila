-- 1
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address ON customer.address_id = address.address_id AND address.city_id = 312;

-- 2
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id AND category.name = 'Comedy';
