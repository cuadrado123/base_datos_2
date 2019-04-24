Antonio

SELECT last_name from actor a1 WHERE EXISTS(SELECT * from actor a2 WHERE a1.last_name = a2.last_name) order by last_name ASC

SELECT a.first_name FROM actor a, film_actor fa WHERE a.actor_id = fa.actor_id GROUP BY a.actor_id

SELECT c.first_name FROM customer c, rental r WHERE c.customer_id = r.customer_id GROUP BY c.customer_id HAVING COUNT(r.rental_id) = 1 

SELECT c.first_name FROM customer c, rental r WHERE c.customer_id = r.customer_id GROUP BY c.customer_id HAVING COUNT(r.rental_id) > 1

SELECT first_name, a.actor_id FROM actor a WHERE a.actor_id IN (SELECT f.actor_id FROM film_actor f WHERE f.film_id IN 
(SELECT fm.film_id FROM film fm WHERE fm.title = 'BETRAYED REAR' OR fm.title = 'CATCH AMISTAD')) 



