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
DROP COLUMN species
ADD COLUMN species_id
ADD COLUMN owner_id
ADD FOREIGN KEYS(species_id) REFERENCES species (id)
ADD FOREIGN KEYS(owners) REFERENCES owners (id)


UPDATE animals SET species = 'unspecified';
UPDATE animals SET species = 'digimon' WHERE name like '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
DELETE FROM animals;
DELETE FROM animals WHERE date_of_birth > DATE '2022-01-01';
UPDATE animals SET weight_kg = weight_kg * -1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

