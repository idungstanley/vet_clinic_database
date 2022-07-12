/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like = '%mon';
SELECT name from animals WHERE date_of_birth EXTRACT (year from date_of_birth) BETWEEN DATE 2016 and 2019; 
SELECT name from animals WHERE neutered is true and escape_attempts < 3;
SELECT date_of_birth from animals WHERE name in ('Agumon', 'Pikachu');
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered is true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg between 10.3 and 17.4;