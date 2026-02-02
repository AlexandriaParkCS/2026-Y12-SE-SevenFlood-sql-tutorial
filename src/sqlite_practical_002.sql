-- database: ../runtime/db/starwars.db

-- practical 2: selevting and filtering Data
-- Student Name: [Your Name]
-- Date: [Today's Date]
--
-- This script demonstrates SELECT queries with WHERE clauese

-- Query 1: View all characters and all columns
SELECT * FROM characters;

-- Query 2: view only names and species
SELECT name, species FROM characters;

-- Query 3: View cloumns in a different order
SELECT homeworld, name, species FROM characters;

-- Query 4: Find all human charaters
SELECT * FROM characters WHERE species = 'Human';

--Query 5: Find all characters from tatooine
SELECT name, homeworld FROM characters WHERE homeworld = 'Tatooine';

--Query 6: Find all characters who are NOT human
SELECT name, species FROM characters WHERE species != 'Human';

--Query 7: Fine humans from Tatooine
SELECT name, species, homeworld
FROM characters
WHERE species = 'Human' AND  homeworld = 'Tatooine';

--Query 8: find characters who are either Droids OR from Naboo
SELECT name, species, homeworld
FROM characters
WHERE species = 'Droid' OR homeworld = 'Naboo';

--Query 9: Find humans from either Tatooine or Alderaan
SELECT name, species, homeworld
FROM characters
WHERE species = 'Human' AND (homeworld = 'Tatooine' OR homeworld = 'Alderaan');

--Query 10: Find all characters whose names start with 'L'
SELECT name FROM characters WHERE name LIKE 'L%';

--Query 11: Find all characters  whose names end with 'o'
SELECT name FROM characters WHERE name LIKE '%o';

--Query 12: Find all characters with 'Darth' in their name
SELECT name FROM characters WHERE name LIKE '%Darth%';

--Query 13: Find all species containing 'old'
SELECT DISTINCT species FROM characters WHERE species LIKE '%Doid%';

-- Exercise 1: Find all characters from Kashyyyk
SELECT name, homeworld FROM characters WHERE homeworld = 'Kashyyyk';

-- exercise 2: Find all characters who are not droids
SELECT name, species FROM characters WHERE species != 'Droid';

-- Exercies 3: find all humans NOT from Tatooine
SELECT name, species, homeworld
FROM characters
WHERE species = 'Human' AND homeworld != 'Tatooine';

--Exercise 4: Find all characters whose names contain 'Sky'
SELECT name FROM characters WHERE name LIKE '%Sky%'