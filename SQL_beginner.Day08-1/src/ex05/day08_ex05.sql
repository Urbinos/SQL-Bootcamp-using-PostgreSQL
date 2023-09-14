-- сеанса №1
BEGIN
TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- сеанса №2
BEGIN
TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- сеанса №1
SHOW
TRANSACTION ISOLATION LEVEL;
-- сеанса №2
SHOW
TRANSACTION ISOLATION LEVEL;
-- сеанса №1
SELECT SUM(rating)
FROM pizzeria;
-- сеанса №2
UPDATE pizzeria
SET rating = 1
WHERE name = 'Pizza Hut';
-- сеанса №2
COMMIT;
-- сеанса №1
SELECT SUM(rating)
FROM pizzeria;
-- сеанса №1
COMMIT;
-- сеанса №1
SELECT SUM(rating)
FROM pizzeria;
-- сеанса №2
SELECT SUM(rating)
FROM pizzeria;

