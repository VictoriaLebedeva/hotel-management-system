DROP TABLE IF EXISTS log_status;
DROP TABLE IF EXISTS guest_bookings;
DROP TABLE IF EXISTS booking;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS guest;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS room_type;
DROP TABLE IF EXISTS agent;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS city;

CREATE TABLE IF NOT EXISTS city (
  id BIGINT PRIMARY KEY,
  status VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS hotel (
  hotel_id BIGINT PRIMARY KEY,
  hotel_type CHAR(2) NOT NULL CHECK(hotel_type IN ('H1', 'H2')),
  address VARCHAR(255) NOT NULL,
  city_id BIGINT NOT NULL,
  FOREIGN KEY (city_id) REFERENCES city(id)
);

CREATE TABLE IF NOT EXISTS guest (
  id BIGINT PRIMARY KEY,
  first_name VARCHAR(35) NOT NULL,
  last_name VARCHAR(35) NOT NULL,
  contact_number VARCHAR(35) NOT NULL,
  email VARCHAR(35) NOT NULL
);

CREATE TABLE IF NOT EXISTS room_type (
  id BIGINT PRIMARY KEY,
  description VARCHAR(500) NOT NULL,
  guest_number INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS room (
  id BIGINT PRIMARY KEY,
  hotel_id BIGINT NOT NULL,
  room_type_id BIGINT NOT NULL,
  non_smoking INTEGER NOT NULL CHECK(non_smoking IN (0, 1)),
  description VARCHAR(500),
  price NUMERIC NOT NULL CHECK(price > 0), 
  FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id),
  FOREIGN KEY (room_type_id) REFERENCES room_type(id)
);

CREATE TABLE IF NOT EXISTS agent (
  id BIGINT PRIMARY KEY,
  agent_name VARCHAR(35) NOT NULL,
  contact_number VARCHAR(35) NOT NULL,
  email VARCHAR(35) NOT NULL
);

CREATE TABLE IF NOT EXISTS company (
  id BIGINT PRIMARY KEY,
  company_name VARCHAR(35) NOT NULL,
  contact_number VARCHAR(35) NOT NULL,
  email VARCHAR(35) NOT NULL
);

CREATE TABLE IF NOT EXISTS payment (
  id BIGINT PRIMARY KEY,
  booking_id BIGINT NOT NULL,
  payment_type VARCHAR(10) NOT NULL CHECK(payment_type IN ('Cash', 'Card')),
  payment_method VARCHAR(30) NOT NULL,
  amount NUMERIC(10, 2) NOT NULL CHECK(amount > 0),
  currency CHAR(3) NOT NULL,
  payment_date DATE NOT NULL,
  transaction_number VARCHAR(20),
  status VARCHAR(20) DEFAULT 'Pending' CHECK(status IN ('Pending', 'Approved', 'Declined')),
  payment_gateway_used VARCHAR(30),
  billing_address VARCHAR(100),
  cardholder_name VARCHAR(50),
  card_number VARCHAR(16),
  expiry_date TIMESTAMP
);


CREATE TABLE IF NOT EXISTS booking_status (
  id BIGINT PRIMARY KEY,
  status VARCHAR(25) NOT NULL CHECK(status IN ('To Be Confirmed', 'Confirmed', 'Canceled', 'Check-out', 'No-show'))
);

CREATE TABLE IF NOT EXISTS booking (
  id BIGINT PRIMARY KEY,
  status_id BIGINT NOT NULL,
  booking_date DATE NOT NULL,
  arrival_date_year INTEGER NOT NULL CHECK(arrival_date_year > 2015),
  arrival_date_month CHAR(3) NOT NULL CHECK(arrival_date_month IN ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')),
  arrival_date_week_number INTEGER NOT NULL CHECK(arrival_date_week_number >= 1 AND arrival_date_week_number <= 53),
  arrival_date_day_of_month INTEGER NOT NULL CHECK(arrival_date_day_of_month >= 1 AND arrival_date_day_of_month <= 31),
  stays_in_weekend_nights INTEGER NOT NULL CHECK(stays_in_weekend_nights >= 1 AND stays_in_weekend_nights <= 53),
  stays_in_week_nights INTEGER NOT NULL CHECK(stays_in_week_nights >= 1 AND stays_in_week_nights <= 53),
  adults INTEGER NOT NULL,
  children INTEGER NOT NULL,
  babies INTEGER NOT NULL,
  meal VARCHAR(12),
  assigned_room_id BIGINT NOT NULL,
  deposit_type VARCHAR(15) NOT NULL,
  agent_id BIGINT,
  company_id BIGINT,
  customer_type VARCHAR(15),
  required_car_parking_spaces INTEGER NOT NULL,
  additional_request VARCHAR(500),
  payment_id BIGINT,
  FOREIGN KEY (status_id) REFERENCES booking_status(id),
  FOREIGN KEY (assigned_room_id) REFERENCES room(id),
  FOREIGN KEY (agent_id) REFERENCES agent(id),
  FOREIGN KEY (company_id) REFERENCES company(id),
  FOREIGN KEY (payment_id) REFERENCES payment(id)
);

CREATE TABLE guest_bookings (
  guest_id BIGINT, 
  booking_id BIGINT, 
  CONSTRAINT guest_bookings_pk PRIMARY KEY (guest_id, booking_id),
  FOREIGN KEY (guest_id) REFERENCES guest(id),
  FOREIGN KEY (booking_id) REFERENCES booking(id)
);
 
CREATE TABLE IF NOT EXISTS log_status (
  id BIGINT PRIMARY KEY, 
  booking_id BIGINT NOT NULL, 
  new_status_id BIGINT NOT NULL, 
  status_update_date TIMESTAMP NOT NULL, 
  status_reason TEXT, 
  FOREIGN KEY (booking_id) REFERENCES booking(id),
  FOREIGN KEY (new_status_id) REFERENCES booking_status(id)
);