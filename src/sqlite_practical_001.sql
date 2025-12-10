-- database: ../runtime/db/starwars.db

-- Practical 1: datbases and tables
-- Student Name: [your Name]
-- Date: [Today's Date]
--
--This script creates the star wars characters database

CREATE TABLE IF NOT EXISTS characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT , 
    name TEXT NOT NULL,
    species TEXT,
    homeworld TEXT
);

--insertster wars characters
INSERT INTO characters (name, species, homeworld) VALUES
    ('Luke Skywalker', 'Human', 'Tatooine'),
    ('Leia Organa', 'Human', 'Alderaan'),
    ('Han solo', 'Human', 'Corellia'),
    ('chewbacca', 'Wookiee', 'Kashyyyk'),
    ('Obi-wan Kenobi', 'Human', 'Stewjon'),
    ('Darth Vader', 'Human', 'Tatooine'),
    ('Yoda', 'Yday''s species', 'Unknown'),
    ('R2-D2', 'Droid', 'Naboo');

INSERT INTO characters (name, species, homeworld) VALUES
    ('Boba Fett', 'Human', 'Kamino'),
    ('Jabba the Hutt', 'Hutt', 'Nal Hutta'),
    ('Ahsoka Tano', 'Togruta', 'Shili');

-- view all charaters
SELECT * FROM characters