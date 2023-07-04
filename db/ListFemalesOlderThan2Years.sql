SELECT AnimalId, Name, Breed, BirthDate, Sex, Price, Status
FROM Animal
-- 0 for female, 1 for male
WHERE Sex = 0
-- If we compare by year, there might be missing animals
AND DATEDIFF(day, BirthDate, GETDATE()) < 365*2
-- Not defined, but probably the case (0 for active, 1 for inactive)
AND Status = 0
ORDER BY Name