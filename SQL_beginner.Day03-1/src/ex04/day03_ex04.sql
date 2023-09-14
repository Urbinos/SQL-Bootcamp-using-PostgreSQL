(SELECT pizzeria.name AS pizzeria_name
 FROM person_order po
          JOIN menu ON po.menu_id = menu.id
          JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
          JOIN person ON po.person_id = person.id
 WHERE person.gender = 'female'
 EXCEPT
 SELECT pizzeria.name AS pizzeria_name
 FROM person_order po
          JOIN menu ON po.menu_id = menu.id
          JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
          JOIN person ON po.person_id = person.id
 WHERE person.gender = 'male')
UNION
(SELECT pizzeria.name AS pizzeria_name
 FROM person_order po
           JOIN menu ON po.menu_id = menu.id
          JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
          JOIN person ON po.person_id = person.id
 WHERE person.gender = 'male'
 EXCEPT
 SELECT pizzeria.name AS pizzeria_name
 FROM person_order po
           JOIN menu ON po.menu_id = menu.id
          JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
          JOIN person ON po.person_id = person.id
 WHERE person.gender = 'female')
ORDER BY pizzeria_name;
