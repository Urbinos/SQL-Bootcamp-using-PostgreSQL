(SELECT pizzeria.name AS pizzeria_name
 FROM person_visits
          JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
          JOIN person ON person_visits.person_id = person.id
 WHERE person.gender = 'female'
 EXCEPT ALL
 SELECT pizzeria.name AS pizzeria_name
 FROM person_visits
          JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
          JOIN person ON person_visits.person_id = person.id
 WHERE person.gender = 'male'
)
UNION ALL
(SELECT pizzeria.name AS pizzeria_name
 FROM person_visits
          JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
          JOIN person ON person_visits.person_id = person.id
 WHERE person.gender = 'male'
 EXCEPT ALL
 SELECT pizzeria.name AS pizzeria_name
 FROM person_visits
          JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
          JOIN person ON person_visits.person_id = person.id
 WHERE person.gender = 'female')
ORDER BY pizzeria_name;



-- Пожалуйста, найдите пиццерии, которые чаще посещают женщины или мужчины.
-- Для любых операторов SQL с наборами сохраняйте дубликаты (конструкции UNION ALL, EXCEPT ALL, INTERSECT ALL).
-- Пожалуйста, отсортируйте результаты по названию пиццерии.

SELECT pizzeria.name                                                  AS pizzeria_name,
       COUNT(CASE WHEN person.gender = 'Female' THEN 1 ELSE NULL END) AS female_visits,
       COUNT(CASE WHEN person.gender = 'Male' THEN 1 ELSE NULL END)   AS male_visits
FROM person_visits
         INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
         INNER JOIN person ON person_visits.person_id = person.id
GROUP BY pizzeria.name
HAVING female_visits > male_visits

UNION ALL

SELECT pizzeria.name                                                  AS pizzeria_name,
       COUNT(CASE WHEN person.gender = 'Female' THEN 1 ELSE NULL END) AS female_visits,
       COUNT(CASE WHEN person.gender = 'Male' THEN 1 ELSE NULL END)   AS male_visits
FROM person_visits
         INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
         INNER JOIN person ON person_visits.person_id = person.id
GROUP BY pizzeria.name
HAVING male_visits > female_visits

ORDER BY pizzeria_name;
