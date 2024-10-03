Select * from passengers
where first_name = last_name;

SELECT distinct last_name
from passengers;

Select * from passengers
where gender = 'Male'
and date_of_birth between '1990-01-01' and '2000-12-31';

select extract(month from created_at) as month, sum(ticket_price) as ticket_price
from booking
group by month
order by month;

select * from flights
join airport on flights.arriving_airport_id = airport.airport_id
where airport.country = 'China';

select airline_name from airline
where airline_country = 'Kazakhstan';

update booking
set ticket_price = ticket_price * 0.9
where created_at < '2010-12-12';

select * from baggage
where weight_in_kg > 25
order by weight_in_kg desc
limit 3;

select first_name, last_name from passengers
order by date_of_birth desc
limit 1;

select booking_platform, min(ticket_price) as cheapest_price
from booking
group by booking_platform;