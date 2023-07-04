CREATE DATABASE STGenetics;

USE STGenetics;

CREATE TABLE Animal (
	AnimalId INT IDENTITY(1,1),
	Name NVARCHAR (50) NOT NULL,
	-- This should be in another table, but to stick to description, will be defined here
	Breed NVARCHAR (50) NOT NULL,
	BirthDate DATE NOT NULL,
	-- 0 for female, 1 for male
	Sex BIT NOT NULL,
	Price DECIMAL NOT NULL,
	-- 0 for active, 1 for inactive
	Status BIT NOT NULL,
	CONSTRAINT PK_Animal PRIMARY KEY (AnimalId)
);