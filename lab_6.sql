Select *
from flights join airline
on flights.airline_id = airline.airline_id
where airline_name = 'IPC';

select flight_id, airport_name as departure_airports
from flights join airport
on flights.departing_airport_id = airport.airport_id;

select airline_name
from airline left join flights
on airline.airline_id = flights.airline_id
and extract(Month from sch_departure_time) = extract(month from current_date + interval '1 month')
where flight_id is null;

select first_name, last_name
from passengers
join booking on passengers.passenger_id = booking.passenger_id
join flights on booking.flight_id = flights.flight_id
where flights.flight_id = 2;

select flights.flight_id,
       avg(ticket_price) as avg_price,
        sum(booking.ticket_price) as total_price,
        max(booking.ticket_price) as max_price,
        min(booking.ticket_price) as min_price
from flights
join booking on flights.flight_id = booking.flight_id
group by flights.flight_id;

select flight_id, airport_name
from flights
join airport on flights.arriving_airport_id = airport.airport_id
join airline on flights.airline_id = airline.airline_id
where airline_country = 'China';

select first_name, last_name, airport_name
from passengers
join booking on passengers.passenger_id = booking.passenger_id
join flights on booking.flight_id = flights.flight_id
join airport on flights.arriving_airport_id = airport.airport_id
where age(date_of_birth) < interval '18 years';

select first_name, last_name, passport_number, sch_arrival_time
from passengers
join booking on passengers.passenger_id = booking.passenger_id
join flights on booking.flight_id = flights.flight_id;

select country, flight_id, airline_name
from flights
join airport on flights.departing_airport_id = airport.airport_id
join airline on flights.airline_id = airline.airline_id
where airline_country = country
group by country, flight_id, airline_name;