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
