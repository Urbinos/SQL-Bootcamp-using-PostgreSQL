-- Сеанс №1
BEGIN
TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- Сеанс №2
BEGIN
TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- Сеанс №1
SHOW
TRANSACTION ISOLATION LEVEL;
-- Сеанс №2
SHOW
TRANSACTION ISOLATION LEVEL;
-- Сеанс №1
UPDATE pizzeria
SET rating = 1
WHERE id = 1;
-- Сеанс №2
UPDATE pizzeria
SET rating = 2
WHERE id = 2;
-- Сеанс №1
UPDATE pizzeria
SET rating = 1
WHERE id = 2;
-- Сеанс №2
UPDATE pizzeria
SET rating = 2
WHERE id = 1;
-- Сеанс №1
COMMIT;
-- Сеанс №2
COMMIT;
-- Сеанс №1
SELECT *
FROM pizzeria;
-- Сеанс №2
SELECT *
FROM pizzeria;