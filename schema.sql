/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(255),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal(8,2)
);

ALTER TABLE animals ADD COLUMN species VARCHAR(100);
ALTER TABLE animals ADD PRIMARY KEY (id);

-- Create Owners table

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(50),
  age INTEGER
);

-- Create species table

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);


-- Remove species column from animals table

ALTER TABLE animals DROP COLUMN species;

-- Add species_id in animals table its foriegn key from species table

ALTER TABLE animals ADD COLUMN species_id INTEGER REFERENCES species(id);

-- Add owner_id in animals table its foriegn key from owners table

ALTER TABLE animals ADD COLUMN owner_id INTEGER REFERENCES owners(id);
