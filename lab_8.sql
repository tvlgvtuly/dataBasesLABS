Create view flights_departure as
select *
from flights
where sch_departure_time = '2024-01-22';

create view booking_flights as
select booking.booking_id,
    booking.passenger_id,
    booking.flight_id,
    flights.sch_departure_time
from booking
join flights on booking.flight_id = flights.flight_id
where sch_departure_time between current_date and current_date + interval '7 days';

create view top_populars_flights as
select departing_airport_id, arriving_airport_id, count(*) as booking_count
from booking
join flights on booking.flight_id = flights.flight_id
group by departing_airport_id, arriving_airport_id
order by booking_count desc
limit 5;

create view flights_by_airline as
select *
from flights
where airline_id = 1;

create or replace view flights_for_airline as
select *
from flights
where airline_id = 1
and sch_departure_time between current_date and current_date + interval '7 days';

create view delayed_flights as
select *
from flights
where act_departure_time > flights.sch_departure_time + interval '24 days';

create view passenger_Leffler_Thompson as
select first_name, last_name, country_of_citizenship
from passengers
join booking on passengers.passenger_id = booking.passenger_id
where booking_platform = 'Leffler-Thompson';

create view most_visited_countries as
select country, count(*) as visit_count
from flights
join airport on flights.arriving_airport_id = airport.airport_id
group by country
order by visit_count desc
limit 10;

drop view flights_departure;
create view flights_departure_on_date as
select flight_id, airline.airline_id, airline_name
from flights
join airline on flights.airline_id = airline.airline_id
where sch_departure_time = '2024-04-14';

drop view if exists booking_flights;
drop view if exists delayed_flights;
drop view if exists flights_by_airline;
drop view if exists flights_departure_on_date;
drop view if exists flights_for_airline;
drop view if exists most_visited_countries;
drop view if exists passenger_Leffler_Thompson;
drop view if exists top_populars_flights;
