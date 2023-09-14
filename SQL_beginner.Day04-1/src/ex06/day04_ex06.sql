-- Пожалуйста, создайте материализованное представление mv_dmitriy_visits_and_eats(с включенными данными)
-- на основе оператора SQL, которое находит название пиццерии, которую Дмитрий посетил 8 января 2022 года и
-- где он мог есть пиццу менее чем за 800 рублей (этот SQL вы можете узнать в упражнении № 07 дня № 02). ).

CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
(
SELECT pizzeria.name AS pizzeria_name
FROM person_visits pv
         INNER JOIN person ON pv.person_id = person.id
         JOIN menu ON pv.pizzeria_id = menu.pizzeria_id
         JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Dmitriy'
  AND visit_date = '2022-01-08'
  AND price < 800
ORDER BY pizzeria_name
    );