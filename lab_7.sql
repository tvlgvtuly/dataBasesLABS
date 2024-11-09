CREATE index idx_act_departure_time on flights(act_departure_time);

-- ALTER TABLE flights ADD COLUMN flights_number INT;
-- UPDATE flights
-- SET flights_number = 1000 + flight_id
-- WHERE flights_number IS NULL;

create unique index idx_unique_flight_schedules on flights(flights_number, sch_departure_time);

create index idx_departure_arrival_airport on flights(departing_airport_id, arriving_airport_id)

explain analyze
select * from flights
where act_departure_time = '2024-11-01 10:00:00';

explain analyze
select * from flights
where departing_airport_id = 1
and arriving_airport_id = 2;

create unique index idx_passport_number on passengers(passport_number);
SELECT Indexname
FROM pg_indexes
WHERE tablename = 'passengers';
INSERT INTO passengers (passenger_id, first_name, last_name, date_of_birth, gender, country_of_citizenship, country_of_residence, passport_number, created_at, updated_at)
VALUES (51, 'John', 'Johnovich','2002-01-07', 'Male', 'Russia', 'Kazakhstan', 777770829-7, '2023-11-02', '2022-11-02');
insert into passengers(passenger_id, first_name, last_name, date_of_birth, gender, country_of_citizenship, country_of_residence, passport_number, created_at, updated_at)
VALUES (52, 'Abram', 'Johnovich','2001-10-02', 'Male', 'Russia', 'Kazakhstan', 777770829-7, '2023-12-02', '2022-09-09');


create index idx_passenger_info on passengers(first_name, last_name, date_of_birth, country_of_citizenship)
explain analyze
select * from passengers
where country_of_citizenship = 'Philippines'
and date_of_birth between '1984-01-01' AND '1984-12-31';

select indexname
from pg_indexes
where tablename = 'passengers';

drop index if exists idx_passport_number;
drop index if exists passengers_pkey;       --if i want to drop index, i should first of all drop primary key itself
--alter table passengers drop constraint passengers_pkey
--and only after that i can drop index(line 42)
drop index if exists unique_date_of_birth;
drop index if exists idx_passenger_info;
