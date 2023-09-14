SELECT DISTINCT visit_date
FROM ( SELECT id FROM person pos
        WHERE pos.id = 1 OR pos.id = 2 ) p
RIGHT JOIN person_visits pv
     on pv.person_id = p.id
WHERE (visit_date > '2022-01-01' AND visit_date <= '2022-01-10') AND p.id IS NULL;







