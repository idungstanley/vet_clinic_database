/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Agumon', date '2020-02-03', 0, true, 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Gabumon', date '2018-11-15', 2, true, 8);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Pikachu', date '2021-01-07', 1, false, 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Devimon', date '2017-05-12', 5, true, 11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Charmander', date '2020-02-08', 0, false, -11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Plantmon', date '2021-11-15', 2, true, -5.7);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Squirtle', date '1993-04-02', 3, false, -12.13);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Angemon', date '2005-06-12', 1, true, -45);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Boarmon', date '2005-06-07', 7, true, 20.4);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Blossom', date '1998-09-13', 3, true, 17);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered,weight_kg) 
VALUES ('Ditto', date '2022-05-14', 4, true, 22);

//DAY 3 owners
INSERT INTO owners (full_name, age)
VALUES('Sam Smith', 34);
INSERT INTO owners (full_name, age)
VALUES('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age)
VALUES('Bob', 45);
INSERT INTO owners (full_name, age)
VALUES('Melody Pond', 77);
INSERT INTO owners (full_name, age)
VALUES('Dean Winchester', 14);
INSERT INTO owners (full_name, age)
VALUES('Jodie Whittaker', 38);

//species
INSERT INTO species (name)
VALUES('Pokemon');
INSERT INTO species (name)
VALUES('Digimon');


//UPDATE DAY 2
UPDATE animals SET species = 'unspecified';
UPDATE animals SET species = 'digimon' WHERE name like '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
DELETE FROM animals;
DELETE FROM animals WHERE date_of_birth > DATE '2022-01-01';
UPDATE animals SET weight_kg = weight_kg * -1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

//UPDATE DAY 3 on species_id
UPDATE animals SET species_id = 2 WHERE  name like '%mon';
UPDATE animals SET species_id = 1 WHERE  species_id is NULL;

// update on owner_id COLUMN
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon','Boarmon');


//DAY 4

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Vet William Tatcher', 45, 'Apr 23 2000');
INSERT INTO vets (name, age, date_of_graduation)
VALUES('Vet Maisy Smith', 26 ,'Jan 17 2019');
INSERT INTO vets (name, age, date_of_graduation)
VALUES('Vet Stephanie Mendez', 64, 'May 04 1981');
INSERT INTO vets (name, age, date_of_graduation)
VALUES('Vet Jack Harkness', 38,'Jun 08 2008');

UPDATE vets SET name = 'William Tatcher' WHERE id = 1;
UPDATE vets SET name = 'Maisy Smith' WHERE id = 2;
UPDATE vets SET name = 'Stephanie Mendez' WHERE id = 3;
UPDATE vets SET name = 'Jack Harkness' WHERE id = 4;


INSERT INTO specialization (vet_id, species_id) 
VALUES(1, 1);
INSERT INTO specialization (vet_id, species_id) 
VALUES(3, 2);
INSERT INTO specialization (vet_id, species_id) 
VALUES(3, 1);
INSERT INTO specialization (vet_id, species_id) 
VALUES(4, 2);


INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES(1, 1, date '2020-05-24'), (1, 3, date '2020-07-22'), (2, 4, date '2021-02-20'), (3, 2, date '2020-01-05'), (3, 2, date '2020-03-08'), (3, 2, date '2020-05-14'), (4, 3, date '2021-05-04'), (5, 4, date '2021-02-24'), (6, 2, date '2019-12-21'), (6, 1, date '2020-08-10'), (6, 2, date '2021-04-07'), (7, 3, date '2019-09-29'), (8, 4, date '2020-10-03'), (8, 4, date '2020-11-04'), (9, 2, date '2019-01-24'), (9, 2, date '2019-05-15'), (9, 2, date '2020-02-27'), (9, 2, date '2020-08-03'), (10, 3, date '2020-03-24'), (10, 1, date '2021-01-11');



