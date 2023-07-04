-- Create
INSERT INTO Animal (Name, Breed, BirthDate, Sex, Price, Status)
VALUES
('Test', 'TestBreed', GETDATE(), 0, 100, 0);

-- Validate
SELECT AnimalId, Name, Breed, BirthDate, Sex, Price, Status
FROM Animal
WHERE Name = 'Test'

-- Update
UPDATE Animal
SET Price = 200
WHERE Name = 'Test'

-- Validate change
SELECT AnimalId, Name, Breed, BirthDate, Sex, Price, Status
FROM Animal
WHERE Name = 'Test'

-- Delete
DELETE Animal
WHERE Name = 'Test'