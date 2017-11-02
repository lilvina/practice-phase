DROP DATABASE db_hotel;
CREATE DATABASE db_hotel;

DROP TABLE IF EXISTS guests;
CREATE TABLE guests(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50)
);

DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms(
  id SERIAL PRIMARY KEY,
  room_number VARCHAR(50),
  capacity INTEGER,
  available BOOLEAN DEFAULT true
);

DROP TABLE IF EXISTS bookings;
CREATE TABLE bookings(
  id SERIAL PRIMARY KEY,
  room_id INTEGER REFERENCES rooms (id),
  guest_id INTEGER REFERENCES guests (id),
  check_in DATE,
  check_out DATE
);