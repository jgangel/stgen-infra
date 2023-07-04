SELECT (SELECT COUNT(1)
FROM Animal
-- 0 for female, 1 for male
WHERE Sex = 0
-- Not defined, but probably the case (0 for active, 1 for inactive)
AND Status = 0)
AS Female,
(SELECT COUNT(1)
FROM Animal
-- 0 for female, 1 for male
WHERE Sex = 1
-- Not defined, but probably the case (0 for active, 1 for inactive)
AND Status = 0)
AS Male