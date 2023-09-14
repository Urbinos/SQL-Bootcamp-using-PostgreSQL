-- сеанс № 1
BEGIN
TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- сеанс № 2
BEGIN
TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Sсеанс № 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- сеанс № 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- сеанс № 1
UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';
-- сеанс № 2
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';
-- сеанс № 1
COMMIT;
-- сеанс № 2
COMMIT;
-- сеанс № 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
-- сеанс № 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';