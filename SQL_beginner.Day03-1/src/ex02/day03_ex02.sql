SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM (SELECT id AS menu_id
      FROM menu
      EXCEPT
      SELECT menu_id
      FROM person_order) AS po
         JOIN menu ON menu.id = po.menu_id
         JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2;


-- Пожалуйста, используйте оператор SQL из упражнения № 01 и покажите названия пицц из пиццерий,
-- которые никем не заказаны, включая соответствующие цены.
-- Результат должен быть отсортирован по названию и цене пиццы.