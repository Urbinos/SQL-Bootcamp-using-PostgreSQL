    SELECT name, rating
    FROM pizzeria
LEFT JOIN person_visits pv on pizzeria.id = pv.pizzeria_id
    WHERE   pv.pizzeria_id IS NULL;

