-- Create a table, `owners`
CREATE TABLE owners (
  id INTEGER PRIMARY KEY,
  name TEXT
);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (
  id INTEGER PRIMARY KEY,
  type TEXT,
  owner_id INTEGER,
  FOREIGN KEY (owner_id) REFERENCES owners(id)
);
-- Create 3 bicycles and 2 owners
INSERT INTO owners (name) VALUES ('Kyle'), ('Claire');
INSERT INTO bicycles (type, owner_id) VALUES ('mountain', '1'), ('street', '2'), ('racer', '2');
-- Update the properties of one of the bicycles
UPDATE bicycles
SET type = 'racing'
WHERE bicycles.id = '3';
-- List all the bicycles
SELECT bicycles.type 
FROM bicycles;
-- List all the bicycles with their owners
SELECT bicycles.type, owners.name
FROM bicycles
INNER JOIN owners ON bicycles.owner_id = owners.id;
-- Delete one of the bicycles
DELETE FROM bicycles
WHERE bicycles.type = 'street';
--Prove Deleted
SELECT *
FROM bicycles;
--Output correct
--Running biking.db in SQLite3 verifies
