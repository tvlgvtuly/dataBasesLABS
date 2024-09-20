CREATE TABLE Airline_info(
    airline_id INT,
    airline_code VARCHAR(50),
    airline_name VARCHAR(50),
    airline_country VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    info VARCHAR(50)
);

CREATE TABLE Airport(
    airport_id INT,
    airport_name VARCHAR(50),
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
CREATE TABLE Baggage_check (
    baggage_check_id INT,
    check_result VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    booking_id INT,
    passenger_id INT
);

CREATE TABLE Baggage (
    baggage_id INT,
    weight_in_kg DECIMAL(4,2),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    booking_id INT
);

CREATE TABLE Boarding_pass (
    boarding_pass_id INT,
    booking_id INT,
    seat VARCHAR(50),
    boarding_time TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Booking_flight (
    booking_flight_id INT,
    booking_id INT,
    flight_id INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Booking (
    booking_id INT,
    flight_id INT,
    passenger_id INT,
    booking_platform VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status VARCHAR(50),
    price DECIMAL(7,2)
);

CREATE TABLE Flights (
    flight_id INT,
    sch_departure_time TIMESTAMP,
    sch_arrival_time TIMESTAMP,
    departing_airport_id INT,
    arriving_airport_id INT,
    departing_gate VARCHAR(50),
    arriving_gate VARCHAR(50),
    airline_id INT,
    act_departure_time TIMESTAMP,
    act_arrival_time TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Passengers (
    passenger_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(50),
    country_of_citizenship VARCHAR(50),
    country_of_residence VARCHAR(50),
    passport_number VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Security_check (
    security_check_id INT,
    check_result VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    passenger_id INT
);

ALTER TABLE Airline_info ADD PRIMARY KEY (airline_id);
ALTER TABLE Airport ADD PRIMARY KEY (airport_id);
ALTER TABLE Baggage_check ADD PRIMARY KEY (baggage_check_id);
ALTER TABLE Baggage ADD PRIMARY KEY (baggage_id);
ALTER TABLE Boarding_pass ADD PRIMARY KEY (boarding_pass_id);
ALTER TABLE Booking_flight ADD PRIMARY KEY (booking_flight_id);
ALTER TABLE Booking ADD PRIMARY KEY (booking_id);
ALTER TABLE Flights ADD PRIMARY KEY (flight_id);
ALTER TABLE Passengers ADD PRIMARY KEY (passenger_id);
ALTER TABLE Security_check ADD PRIMARY KEY (security_check_id);

ALTER TABLE Airline_info
    ALTER COLUMN airline_id SET NOT NULL,
    ALTER COLUMN airline_code SET NOT NULL,
    ALTER COLUMN airline_name SET NOT NULL,
    ALTER COLUMN airline_country SET NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL;

ALTER TABLE Airport
    ALTER COLUMN airport_id SET NOT NULL,
    ALTER COLUMN airport_name SET NOT NULL,
    ALTER COLUMN country SET NOT NULL,
    ALTER COLUMN state DROP NOT NULL,
    ALTER COLUMN city DROP NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL;

ALTER TABLE Baggage_check
    ALTER COLUMN baggage_check_id SET NOT NULL,
    ALTER COLUMN check_result DROP NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL,
    ALTER COLUMN booking_id SET NOT NULL,
    ALTER COLUMN passenger_id SET NOT NULL;

ALTER TABLE Baggage
    ALTER COLUMN baggage_id SET NOT NULL,
    ALTER COLUMN weight_in_kg TYPE DECIMAL(4,2),
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL,
    ALTER COLUMN booking_id SET NOT NULL;

ALTER TABLE Boarding_pass
    ALTER COLUMN boarding_pass_id SET NOT NULL,
    ALTER COLUMN booking_id SET NOT NULL,
    ALTER COLUMN seat DROP NOT NULL,
    ALTER COLUMN boarding_time SET NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL;

ALTER TABLE Booking_flight
    ALTER COLUMN booking_flight_id SET NOT NULL,
    ALTER COLUMN booking_id SET NOT NULL,
    ALTER COLUMN flight_id SET NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL;

ALTER TABLE Booking
    ALTER COLUMN booking_id SET NOT NULL,
    ALTER COLUMN flight_id SET NOT NULL,
    ALTER COLUMN passenger_id SET NOT NULL,
    ALTER COLUMN booking_platform DROP NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL,
    ALTER COLUMN status DROP NOT NULL,
    ALTER COLUMN price SET NOT NULL;

ALTER TABLE Flights
    ALTER COLUMN flight_id SET NOT NULL,
    ALTER COLUMN sch_departure_time SET NOT NULL,
    ALTER COLUMN sch_arrival_time SET NOT NULL,
    ALTER COLUMN departing_airport_id SET NOT NULL,
    ALTER COLUMN arriving_airport_id SET NOT NULL,
    ALTER COLUMN departing_gate TYPE TEXT,
    ALTER COLUMN arriving_gate TYPE TEXT,
    ALTER COLUMN airline_id SET NOT NULL,
    ALTER COLUMN act_departure_time DROP NOT NULL,
    ALTER COLUMN act_arrival_time DROP NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL;

ALTER TABLE Passengers
    ALTER COLUMN passenger_id SET NOT NULL,
    ALTER COLUMN first_name SET NOT NULL,
    ALTER COLUMN last_name SET NOT NULL,
    ALTER COLUMN date_of_birth SET NOT NULL,
    ALTER COLUMN gender DROP NOT NULL,
    ALTER COLUMN country_of_citizenship DROP NOT NULL,
    ALTER COLUMN country_of_residence DROP NOT NULL,
    ALTER COLUMN passport_number SET NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL;

ALTER TABLE Security_check
    ALTER COLUMN security_check_id SET NOT NULL,
    ALTER COLUMN check_result DROP NOT NULL,
    ALTER COLUMN created_at SET NOT NULL,
    ALTER COLUMN updated_at SET NOT NULL,
    ALTER COLUMN passenger_id SET NOT NULL;


ALTER TABLE Airline_info RENAME TO Airline;

ALTER TABLE Booking RENAME COLUMN price TO ticket_price;

ALTER TABLE Flights ALTER COLUMN departing_gate TYPE TEXT;

ALTER TABLE Airline DROP COLUMN info;


