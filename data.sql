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

