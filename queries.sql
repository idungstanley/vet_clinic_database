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

//Day 4
SELECT A.name FROM animals A
JOIN visits VI
ON A.id = VI.animal_id
JOIN vets V
ON V.id = VI.vet_id
WHERE V.name = 'William Tatcher'
ORDER BY VI.date_of_visit DESC LIMIT 1;

SELECT count(A.name), V.name FROM animals A
JOIN visits VI
ON A.id = VI.animal_id
JOIN vets V
ON V.id = VI.vet_id
WHERE V.name ='Stephanie Mendez'
GROUP BY  V.name;


SELECT V.name as name_of_vets, S.name as name_of_animals FROM  vets V
LEFT  JOIN specialization SP
ON V.id = SP.vet_id
LEFT JOIN species S
ON  S.id = SP.species_id;

SELECT A.name, V.name, VI.date_of_visit  FROM animals A
JOIN visits VI
ON A.id = VI.animal_id
JOIN vets V
ON V.id = VI.vet_id
WHERE V.name = 'Stephanie Mendez' and VI.date_of_visit >= 'Apr 01, 2020' and VI.date_of_visit >= 'Aug 30, 2020';

SELECT A.name, COUNT(VI.animal_id) AS visit_number FROM animals A
JOIN visits VI
ON VI.animal_id = A.id
GROUP BY A.name
ORDER BY (visit_number)
DESC LIMIT 1;

SELECT A.name,VI.date_of_visit FROM animals A
JOIN visits VI
ON A.id = VI.animal_id
JOIN vets V
ON V.id = VI.vet_id
WHERE V.name = 'Maisy Smith'
ORDER BY VI.date_of_visit
ASC LIMIT 1;

SELECT A.* as animal, VI.*, V.* as vet from animals A
JOIN visits VI
ON VI.animal_id = A.id
JOIN vets V
ON V.id = VI.vet_id
ORDER BY VI.date_of_visit
DESC LIMIT 1;

SELECT V.name, COUNT(VI.vet_id) FROM vets V
JOIN visits VI
ON VI.vet_id = V.id
JOIN animals A
ON A.id = VI.animal_id
WHERE A.species_id IN (
SELECT SP.species_id FROM specialization SP
JOIN vets VI
ON VI.id = SP.vet_id
WHERE VI.name = V.name
)
GROUP BY V.name;

SELECT V.name, A.species_id , COUNT(A.species_id) AS species_count FROM vets V JOIN visits VI ON VI.vet_id = V.id JOIN animals A ON A.id = VI.animal_id WHERE V.name = 'Maisy Smith' GROUP BY (V.name, A.species_id) ORDER BY species_count DESC LIMIT 1;