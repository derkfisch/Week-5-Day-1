--Question 1
--How many actors are there with the last name 'Wahlberg'?

SELECT COUNT(*)
FROM actor
WHERE last_name LIKE 'Wahlberg';

--Question 2
--How many payments were made between $3.99 and $5.99?

SELECT COUNT(*)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3
--What films have exactly 7 copies? (search in inventory)

SELECT inventory_id
FROM inventory
WHERE film_id = 7;

--Question 4
--How many customers have the first name ‘Willie’?

SELECT COUNT(first_name)
FROM customer
WHERE first_name LIKE 'Willie';

--Question 5
--What store employee (get the id) sold the most rentals (use the rental table)?

SELECT staff_id, COUNT(*) AS max_sold
FROM rental
GROUP BY staff_id
ORDER BY max_sold DESC;

--Question 6
--How many unique district names are there?

SELECT COUNT(district)
FROM address;

--Question 7
--What film has the most actors in it? (use film_actor table and get film_id)

SELECT MAX(film_id)
FROM film_actor;

--Question 8
--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT Count(last_name)
FROM customer
WHERE last_name LIKE '%es';

--Question 9
--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT *
FROM payment;

SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY payment_id, amount 
having rental_id > 250;

-- ^^^???^^^

--Question 10
--Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT COUNT(rating), MAX(rating)
FROM film;

--Wasn't sure how to set these last two up