BEGIN;
delete from booking where booking_id = 52;
--simulate error: delete from booking where booking_id = 555;
rollback;

begin;
update flights set sch_departure_time = '2024-12-01 10:00:00'
where flight_id = 1;
--simulate error: update flights set sch_departure_time = '2024-12-01 10:00:00' where flight_id = 555;
rollback;

begin;
update booking set ticket_price = ticket_price - 20 where flight_id = 1;
--simulate errors: update booking set ticket_price = - 20 where flight_id = 1;
rollback;

begin;
update passengers set first_name = 'Abai', last_name = 'Abzalov'
where passenger_id = 1 ;
commit;
rollback;

BEGIN;
INSERT INTO passengers (passenger_id, first_name, last_name, date_of_birth, gender, country_of_citizenship, country_of_residence, passport_number, created_at, updated_at)
VALUES (200, 'Will', 'Smith', '2002-12-12', 'Male', 'Kyrgyzstan', 'Kazakhstan', '402121141-1', '2023-12-12', current_date);
INSERT INTO booking (booking_id, flight_id, passenger_id, booking_platform, created_at, updated_at, status, ticket_price, ticket_discount)
VALUES (203, 256, 211, 'Savieuer-Bret', current_date, current_date, 'Male', 5782.99, null);
commit;
rollback -- Ensures no booking without passenger

begin;
update booking set ticket_price = ticket_price + 46 where flight_id = 2;
commit;

begin;
update baggage set weight_in_kg = 15
where baggage.booking_id = 4;
commit;

begin;
update booking set ticket_price = ticket_price - 50
where passenger_id = 3;
rollback;

begin;
update booking set flight_id = 2
where flight_id = 1;
rollback;

