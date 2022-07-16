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

CREATE TABLE vets (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name varchar(100),
    age INT,
    date_of_graduation DATE
)

