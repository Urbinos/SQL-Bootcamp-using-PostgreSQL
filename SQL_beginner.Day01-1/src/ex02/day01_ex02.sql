SELECT pizza_name
FROM menu AS t1
WHERE NOT EXISTS(
        SELECT 1
        FROM menu AS t2
        WHERE t2.pizza_name = t1.pizza_name
        AND t2.id < t1.id
    )
 ORDER BY pizza_name DESC;

