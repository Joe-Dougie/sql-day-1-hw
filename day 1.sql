--1. How many actors are there with the last name ‘Wahlberg’?
select last_name
from actor 
where last_name like 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
select sum(amount)
from  payment 
where amount between 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory)
select *
from inventory 
order by inventory_id desc; 

--4. How many customers have the last name ‘William’?
select last_name
from actor 
where last_name like 'William';

--5. What store employee (get the id) sold the most rentals?
select staff_id 
from rental
group by staff_id;

--6. How many different district names are there?
select district
from address
group by district;

--7. What film has the most actors in it? (use film_actor table and get film_id)
select *
from film_actor 
order by film_id desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select store_id, last_name 
from customer
where last_name like '%es%'
order by store_id 

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select *
from payment
order by customer_id between 380 and 430

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select film_id, rating
from film
group by film_id
order by film_id desc;
