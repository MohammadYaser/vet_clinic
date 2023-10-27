/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals where name like '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth from animals WHERE name IN ('Agumon', 'Pikachu') ;
SELECT (name, escape_attempts) from animals WHERE weight_kg > 10.50;
SELECT * from animals WHERE neutered = true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg BETWEEN 10.40 AND 17.30;

-- Begin a transaction
BEGIN;

UPDATE animals SET species = 'unspecified';

-- Veryfying that change was made in the database
SELECT * FROM animals;

--Rollback the transaction
ROLLBACK;

--Verify that the transaction was successful
SELECT * FROM animals;

--Update the species colunm
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
SELECT * FROM animals;
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;

COMMIT;
SELECT * FROM animals;

--deleting all Records
BEGIN;
DELETE FROM animals;

--Rollback the transaction
ROLLBACK;

--Verify that the transaction was successful
SELECT * FROM animals

DELETE FROM animals WHERE date_of_birth > 'Jan 1, 2022';
SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;

--update and commit
UPDATE
    animals
SET
    weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE
    animals
SET
    weight_kg = weight_kg * -1
WHERE
    weight_kg < 0;

COMMIT;

--Show the count of all animals
SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;


SELECT AVG(weight_kg) FROM animals;

SELECT
    MAX(escape_attempts),
    neutered
FROM
    animals
GROUP BY
    neutered;
