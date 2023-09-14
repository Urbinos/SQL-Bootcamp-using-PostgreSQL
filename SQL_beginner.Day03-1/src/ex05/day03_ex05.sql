-- Напишите, пожалуйста, SQL-запрос, который возвращает список пиццерий,
-- которые Андрей посетил, но не сделал заказов.
-- Пожалуйста, заказывайте по названию пиццерии.
-- Пицца Хат

SELECT pizzeria.name AS pizzeria_name
FROM person_visits
         JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
         JOIN person ON person_visits.person_id = person.id
WHERE person.name = 'Andrey'
EXCEPT
SELECT pizzeria.name AS pizzeria_name
FROM menu
         JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
         JOIN person_order ON person_order.menu_id = menu.id
         JOIN person on person_order.person_id = person.id
WHERE person.name = 'Andrey';




