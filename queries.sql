/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals where name like '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth from animals WHERE name IN ('Agumon', 'Pikachu') ;
SELECT (name, escape_attempts) from animals WHERE weight_kg > 10.50;

