-- =========================================
-- PostgreSQL Practice: Cars Table
-- Demonstrates: CREATE, INSERT, SELECT,
-- ALTER, UPDATE, DELETE, and DROP
-- =========================================

CREATE TABLE cars(
  brand VARCHAR(255),
  model VARCHAR(255),
  year INT
);

-- Insert records
INSERT INTO cars (brand, model, year)
VALUES ('Ford', 'Mustang', 1964);

INSERT INTO cars (brand, model, year)
VALUES ('Volvo', 'XC90', 2021);

-- View all data
SELECT * FROM cars;

-- Select specific columns
SELECT brand, year FROM cars;

-- Add new column
ALTER TABLE cars ADD COLUMN color VARCHAR(255);

-- Update color values
UPDATE cars
SET color = 'red'
WHERE brand = 'Volvo';

UPDATE cars
SET color = 'red'
WHERE brand = 'Ford';

SELECT * FROM cars;

-- Remove column
ALTER TABLE cars
DROP COLUMN color;

SELECT * FROM cars;

-- Delete a specific row
DELETE FROM cars
WHERE brand = 'Volvo';

SELECT * FROM cars;

-- Drop the table (demonstration)
DROP TABLE cars;

-- This will intentionally cause an error
-- (table no longer exists after DROP TABLE)
ALTER TABLE cars
ALTER COLUMN year TYPE VARCHAR(4);

SELECT * FROM cars;
