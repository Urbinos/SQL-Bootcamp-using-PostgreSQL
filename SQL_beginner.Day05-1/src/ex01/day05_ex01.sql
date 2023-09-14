SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT pizza_name, name  AS pizzeria_name
FROM menu m JOIN pizzeria p on m.pizzeria_id = p.id

-- Прежде чем выполнять дальнейшие действия, напишите оператор SQL, который возвращает названия пицц и соответствующих им пиццерий.
-- Пожалуйста, взгляните на образец результата ниже
-- (сортировка не требуется)