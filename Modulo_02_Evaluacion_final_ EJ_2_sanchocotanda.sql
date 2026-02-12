/* Ejercicio 2. Base de Datos Sakila
Para este ejercicio utilizaremos la bases de datos de Sakila. Es una base de datos de ejemplo que simula
una tienda de alquiler de películas. 
Contiene tablas como film (películas), actor (actores), customer (clientes), rental (alquileres), category (categorías), entre otras. 
Estas tablas contienen información sobre películas, actores, clientes, alquileres y más, y se utilizan para realizar consultas y análisis de datos
en el contexto de una tienda de alquiler de películas.
*/

USE sakila;

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.
SELECT DISTINCT title 
FROM film;

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".
SELECT title, rating 
FROM film
WHERE rating = "PG-13";

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.
SELECT title, description
FROM film
WHERE description REGEXP 'amazing';

SELECT title, description
FROM film
WHERE description LIKE '%amazing%';

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.
SELECT title, length 
FROM film
WHERE length > 120;

-- 5. Recupera los nombres de todos los actores.
SELECT first_name, last_name 
FROM actor;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM actor;

-- 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
SELECT first_name, last_name
FROM actor
WHERE last_name REGEXP "Gibson";

-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
SELECT actor_id, first_name 
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

-- 8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
SELECT title, rating
FROM film
WHERE NOT (rating = 'R' OR rating = 'PG-13');

-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating;

-- 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
SELECT customer.customer_id, customer.first_name,customer.last_name,
COUNT(rental.rental_id) AS total_alquileres
FROM customer AS customer  
INNER JOIN rental AS rental ON customer.customer_id = rental.customer_id  
GROUP BY customer.customer_id;

SELECT c.customer_id, c.first_name,c.last_name,
COUNT(r.rental_id) AS total_alquileres
FROM customer AS c  
INNER JOIN rental AS r ON c.customer_id = r.customer_id 
GROUP BY c.customer_id;

-- 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.

SELECT category.name,
COUNT(rental.rental_id) AS total_alquileres_por_categoria
FROM category
INNER JOIN film_category ON category.category_id = film_category.category_id
INNER JOIN film ON film_category.film_id = film.film_id
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY category.name;

-- 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
SELECT rating, AVG(length) AS promedio_duracion
FROM film
GROUP BY rating;

-- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
SELECT actor.first_name, actor.last_name, film.title
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE film.title = 'Indian Love';

-- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción
SELECT title, description 
FROM film
WHERE description REGEXP 'dog|cat';

-- 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.
SELECT title, release_year 
FROM film
WHERE release_year BETWEEN 2005 AND 2010;

