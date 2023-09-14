SELECT p.name
FROM person_order
JOIN (SELECT * FROM person WHERE person.gender = 'female') p ON person_order.person_id = p.id
JOIN  (SELECT * FROM menu WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'cheese pizza') m
    ON person_order.menu_id = m.id
GROUP BY p.name
HAVING COUNT(*) > 1
ORDER BY name;


-- Пожалуйста, найдите имена всех женщин, которые заказывали и пепперони, и сырную пиццу (в любое время и в любых пиццериях).
-- Убедитесь, чт
-- о результат упорядочен по имени человека.