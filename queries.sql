/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like = '%mon';
SELECT name from animals WHERE date_of_birth EXTRACT (year from date_of_birth) BETWEEN DATE 2016 and 2019; 
SELECT name from animals WHERE neutered is true and escape_attempts < 3;
SELECT date_of_birth from animals WHERE name in ('Agumon', 'Pikachu');
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered is true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg between 10.3 and 17.4;

//Day 2
SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) from animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MAX(weight_kg), MIN(weight_kg) FROM animals GROUP BY species ORDER BY species;
SELECT species, AVG(escape_attempts) from animals WHERE date_of_birth >= '1990-01-01' AND date_of_birth <= '2000-01-01' GROUP BY species;

// DAY 3
SELECT N.name, F.full_name from animals N JOIN owners F ON F.id = N.owner_id WHERE F.full_name = 'Melody Pond';

SELECT N.name, S.name from animals N JOIN species S ON S.id = N.species_id WHERE N.name = 'Pokemon';

SELECT O.full_name as Owners, A.name from animals A RIGHT JOIN owners O ON O.id = A.owner_id;

SELECT COUNT(*), S.name from animals A JOIN species S ON S.id = A.species_id GROUP BY S.name;

SELECT A.name, O.full_name FROM animals A JOIN species S ON S.id = A.species_id JOIN owners O ON O.id = A.owner_id WHERE O.full_name = 'Jennifer Orwell';

SELECT A.name, O.full_name FROM animals A JOIN species S ON S.id = A.species_id JOIN owners O  ON O.id = A.owner_id WHERE O.full_name = 'Dean Winchester' AND A.escape_attempts = 0;

SELECT owners.id, full_name FROM animals JOIN owners ON animals.owner_id = owners.id GROUP BY owners.id, owners.full_name ORDER BY count(*) DESC LIMIT 1;


-- WEEK 2 DAY 1:
EXPLAIN ANALYZE SELECT COUNT(*) FROM visits WHERE animal_id = 4;
