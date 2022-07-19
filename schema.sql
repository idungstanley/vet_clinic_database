/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name varchar(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOL,
    weight_kg DECIMAL,
    species varchar 
);

CREATE TABLE owners (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    full_name varchar(100) NOT NULL,
    age INT 
)

CREATE TABLE species (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name varchar(100)
)

ALTER TABLE animals 
DROP COLUMN species;


ALTER TABLE animals 
ADD COLUMN species_id INT,
ADD FOREIGN KEY(species_id) REFERENCES species (id);

ALTER TABLE animals
ADD COLUMN owner_id INT,
ADD FOREIGN KEY(owner_id) REFERENCES owners (id);


UPDATE animals SET species = 'unspecified';
UPDATE animals SET species = 'digimon' WHERE name like '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
DELETE FROM animals;
DELETE FROM animals WHERE date_of_birth > DATE '2022-01-01';
UPDATE animals SET weight_kg = weight_kg * -1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

--performance audit
-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX visits_animal_id ON visits(animal_id);

Create Index visits_vet_id on visits(vet_id);

Create index owners_email_index On owners(email);
