Create or replace procedure insert_new_flights(
    pr_flight_id INT,
    pr_sch_departure_time TIMESTAMP,
    pr_sch_arrival_time timestamp,
    pr_departing_airport_id int,
    pr_arriving_airport_id int,
    pr_departing_gate text,
    pr_arriving_gate text,
    pr_airline_id int,
    pr_act_departure_time timestamp,
    pr_act_arrival_time timestamp,
    pr_created_at timestamp,
    pr_updated_at timestamp,
    pr_flights_number int
)
language plpgsql
AS $$
    BEGIN
        INSERT INTO flights(flight_id, sch_departure_time, sch_arrival_time, departing_airport_id, arriving_airport_id, departing_gate, arriving_gate, airline_id, act_departure_time, act_arrival_time, created_at, updated_at, flights_number)
        values (pr_flight_id, pr_sch_departure_time, pr_sch_arrival_time, pr_departing_airport_id, pr_arriving_airport_id, pr_departing_gate, pr_arriving_gate,
                pr_airline_id, pr_act_departure_time, pr_act_arrival_time, pr_created_at, pr_updated_at, pr_flights_number);
    end;
    $$;

ALTER TABLE flights
ADD COLUMN status VARCHAR(50) DEFAULT 'Scheduled';
UPDATE flights
SET status = CASE
    WHEN flight_id % 3 = 0 THEN 'Cancelled'
    WHEN flight_id % 3 = 1 THEN 'Delayed'
    ELSE 'Scheduled'
END
WHERE flight_id <= 50;

Create or replace procedure update_flight_status (pr_flight_id int, pr_status varchar(50))
language plpgsql
as $$
    begin
        update flights
        set status = pr_status
        where flight_id = pr_flight_id;
        if not found then
            raise exception 'Flight with ID % not found' , pr_flight_id;
        end if;
    end;
$$;

CREATE OR REPLACE PROCEDURE list_departing_flights(pr_departing_airport_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT flight_id, sch_departure_time
    FROM flights
    WHERE departing_airport_id = pr_departing_airport_id;
END;
$$;

Create or replace procedure avg_delay_f(pr_arriving_airport_id int)
language plpgsql
as $$
declare
    avg_delay interval;
        begin
        select avg(act_arrival_time - sch_arrival_time)
        into avg_delay
        from flights
        where arriving_airport_id = pr_arriving_airport_id;
        raise notice 'Average delay: %', avg_delay;
end;
    $$;


create or replace procedure list_of_passengers(pr_flight_id int)
language plpgsql
as $$
    begin
        select passengers.passenger_id, first_name
        from passengers
        join booking on passengers.passenger_id = booking.passenger_id
        join flights on booking.flight_id = flights.flight_id
        where flights.flight_id = pr_flight_id;
    end;
    $$;

create or replace procedure greatest_passenger()
language plpgsql
as $$
    begin
        select passenger_id, count(flight_id) as flight_count
        from booking
        group by passenger_id
        order by flight_count desc
        limit 1;
    end;
    $$;

-- create or replace procedure greatest_pass()
-- language plpgsql
-- as $$
--     declare
--     greatest_pass int;
--     flight_count int;
--         begin
--         select passenger_id, count(flight_id)
--         into greatest_pass, flight_count
--         from booking
--         group by passenger_id
--         order by flight_count desc
--         limit 1;
--
--         raise notice 'Greatest and counter %, %', greatest_pass, flight_count;
--     end;
--     $$;
-- call greatest_pass();
-- drop procedure greatest_pass();

create or replace procedure delayed_24_hours()
language plpgsql
as $$
    begin
        select flight_id, sch_departure_time, act_departure_time
        from flights
        where act_departure_time - flights.sch_departure_time > interval '24 hours';
    end;
    $$;

create or replace procedure flights_per_airline()
language plpgsql
as $$
    begin
        select airline_id, count(*) as flight_count
        from flights
        group by airline_id;
    end;
    $$;

create or replace procedure avg_ticket_price(pr_flight_id int)
language plpgsql
as $$
    declare
    avg_price decimal;
        begin
        select avg(ticket_price)
        into avg_price
        from booking
        where flight_id = pr_flight_id;

        raise notice 'Avg ticket price for flight id: %: and %', pr_flight_id, avg_price;
    end;
    $$;


create or replace procedure highest_ticket_price()
language plpgsql
as $$
    declare
        max_price decimal;
    begin
        select flights.flight_id, departing_airport_id, arriving_airport_id, max(ticket_price)
        into max_price
        from flights
        join booking on flights.flight_id = booking.flight_id
        group by flights.flight_id, departing_airport_id, arriving_airport_id
        order by max_price desc
        limit 1;

        raise notice 'Max price: %', max_price;
    end;
    $$;

-- call highest_ticket_price()
