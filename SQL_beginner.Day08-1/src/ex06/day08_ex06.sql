-- Сеанс №1
BEGIN
TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--  Сеанс №2
BEGIN
TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--  Сеанс №1
SHOW
TRANSACTION ISOLATION LEVEL;
--  Сеанс №2
SHOW
TRANSACTION ISOLATION LEVEL;
--  Сеанс №1
SELECT SUM(rating)
FROM pizzeria;
--  Сеанс №2
UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';
--  Сеанс №2
COMMIT;
--  Сеанс №1
SELECT SUM(rating)
FROM pizzeria;
--  Сеанс №1
COMMIT;
--  Сеанс №1
SELECT SUM(rating)
FROM pizzeria;
--  Сеанс №2
SELECT SUM(rating)
FROM pizzeria;