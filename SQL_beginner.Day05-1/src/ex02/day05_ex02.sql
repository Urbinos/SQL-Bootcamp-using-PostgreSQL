CREATE INDEX idx_person_name ON person (upper(name));
SET
    ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT *
FROM person
WHERE upper(name) = 'DENIS';

-- DROP INDEX idx_person_name;

-- Создайте функциональный индекс B-дерева с именем idx_person_name для имени столбца таблицы person.
-- Индекс должен содержать имена людей в верхнем регистре.
-- Пожалуйста, напишите и предоставьте любой SQL с доказательством ( EXPLAIN ANALYZE), что индекс idx_person_name работает