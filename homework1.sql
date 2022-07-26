-- 1 How many actors are there with the last name 'Wahlberg'? 2 actors
select first_name , last_name 
from actor 
where last_name = 'Wahlberg';

-- 2 How many payments were made between 3.99 and 5.99? 5567
select amount 
from payment 
where amount <= 5.99 and amount >= 3.99

-- 3 What film does the store have the most of? (search in inventory) Film 200 with 9
select film_id, count(film_id)
from inventory 
group by film_id 
order by count desc 

-- 4 How many customers have the last name 'William'? 0 customers
select last_name 
from customer 
where last_name = 'William'

-- 5 What store employee (get the id) sold the most rentals? Employee 1 with 8040
select staff_id , count(staff_id) 
from rental
group by staff_id 
order by count desc 

-- 6 How many different district names are there? 378 districts 
select district, count(district) 
from address
group by district 

-- 7 What film has the most actors in it? use film_actor table and get film_id.    film id 508 - 15 actors
select film_id , count(actor_id)
from film_actor 
group by film_id 
order by count desc 


-- 8 From store_id how many customers have a last name ending with 'es' (use customer table) 13
select last_name 
from customer 
where last_name like '%es';

-- 9 How many payment amounts (4.99, 5.99, etc) had a nuumber of rentals above 250 for customers
-- with ids between 380 and 430 (use group by and having > 250)    3
select customer_id  , count(amount) 
from payment 
group by customer_id 
order by count desc

-- 10 Within the film table, how many rating categories are there? And what rating has the most movies total. 5 ratings, PG13 has most
select rating , count(rating) 
from film 
group by rating 
order by count desc

