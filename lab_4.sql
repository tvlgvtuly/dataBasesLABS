SELECT concat(              --concat used for объединение двух и более стрингов
       upper (airline_name)     --in this case u may not use this word
       )
FROM airline;

select replace(airline_name, 'AIR', 'AERO')
from airline;

select flight_id from flights
where airline_id in (1, 2);

select airport_name from airport
where airport_name like '%Regional%';
select airport_name from airport
where airport_name like '%Air%';

select first_name, TO_CHAR(date_of_birth, 'Month DD, YYYY')
from passengers;

select flight_id from flights
where act_arrival_time > sch_arrival_time;

SELECT first_name, last_name,
       CASE
           WHEN AGE(date_of_birth) BETWEEN interval '18 years' and '35 years' then 'Young'
            WHEN AGE(date_of_birth) BETWEEN interval '36 years' and '55 years' then 'Adult'
        END AS age_group
from passengers;

select booking_id,
       case
           when ticket_price < 1000 then 'Cheap'
            when ticket_price between 1000 and 5000 then 'Medium'
            else 'Expensive'
        end as price_category
from booking;

select airline_country, count(airline_name) as number_ofAirlines
from airline
group by airline_country;

select flight_id, airline_id
from flights
where act_arrival_time > sch_arrival_time;