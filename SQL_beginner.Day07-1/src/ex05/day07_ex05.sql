-- Напишите, пожалуйста, простой SQL-запрос, который возвращает список уникальных имен людей,
-- делавших заказы в любых пиццериях.
-- Результат должен быть отсортирован по имени человека.

SELECT DISTINCT name
FROM person_order
         INNER JOIN person ON person_order.person_id = person.id
ORDER BY name;
