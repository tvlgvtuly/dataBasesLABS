-- Create an index for the actual departure time if it doesn't already exist
CREATE INDEX IF NOT EXISTS idx_act_departure_time ON flights(act_departure_time);

-- Add a new column 'flights_number' if it doesn't exist and update it
ALTER TABLE flights ADD COLUMN IF NOT EXISTS flights_number INT;
UPDATE flights
SET flights_number = 1000 + flight_id
WHERE flights_number IS NULL;

-- Create a unique index for flight schedules on flights_number and scheduled departure time
CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_flight_schedules ON flights(flights_number, sch_departure_time);

-- Create an index for the departure and arrival airport IDs
CREATE INDEX IF NOT EXISTS idx_departure_arrival_airport ON flights(departing_airport_id, arriving_airport_id);

-- Run explain analyze to check index performance on specific queries
EXPLAIN ANALYZE
SELECT * FROM flights
WHERE act_departure_time = '2024-11-01 10:00:00';

EXPLAIN ANALYZE
SELECT * FROM flights
WHERE departing_airport_id = 1
  AND arriving_airport_id = 2;

-- Create a unique index on the passport_number column in passengers table
CREATE UNIQUE INDEX IF NOT EXISTS idx_passport_number ON passengers(passport_number);

-- Verify the created indexes in the passengers table
SELECT indexname
FROM pg_indexes
WHERE tablename = 'passengers';

-- Insert sample data into passengers table
INSERT INTO passengers (passenger_id, first_name, last_name, date_of_birth, gender, country_of_citizenship, country_of_residence, passport_number, created_at, updated_at)
VALUES (51, 'John', 'Johnovich','2002-01-07', 'Male', 'Russia', 'Kazakhstan', '777770829-7', '2023-11-02', '2022-11-02');

INSERT INTO passengers (passenger_id, first_name, last_name, date_of_birth, gender, country_of_citizenship, country_of_residence, passport_number, created_at, updated_at)
VALUES (52, 'Abram', 'Johnovich','2001-10-02', 'Male', 'Russia', 'Kazakhstan', '777770829-7', '2023-12-02', '2022-09-09');

-- Create an index on multiple columns in passengers table to optimize multi-column searches
CREATE INDEX IF NOT EXISTS idx_passenger_info ON passeng
