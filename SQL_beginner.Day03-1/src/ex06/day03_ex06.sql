-- Найдите одинаковые названия пицц по одинаковой цене, но из разных пиццерий.
-- Убедитесь, что результат упорядочен по названию пиццы.
-- Убедитесь, что имена ваших столбцов соответствуют именам столбцов ниже.

SELECT menu1.pizza_name,
       p1.name AS pizza_name_1,
       p2.name AS pizzeria_name_2,
       menu1.price
FROM menu AS menu1
         JOIN menu AS menu2 ON menu1.price = menu2.price AND menu1.pizza_name = menu2.pizza_name
         JOIN pizzeria AS p1 ON menu1.pizzeria_id = p1.id
         JOIN pizzeria AS p2 ON menu2.pizzeria_id = p2.id
WHERE p1.id > p2.id

ORDER BY pizza_name;