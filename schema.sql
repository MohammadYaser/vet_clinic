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
