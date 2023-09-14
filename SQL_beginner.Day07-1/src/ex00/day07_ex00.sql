SELECT person_id, COUNT(*) AS count_of_visits
FROM person_visits
GROUP BY person_id
ORDER BY count_of_visits DESC, person_id;

-- напишите оператор SQL, который возвращает идентификаторы людей и
-- соответствующее количество посещений в любых пиццериях,
-- сортирует по количеству посещений в режиме убывания и
-- сортирует в режиме возрастания person_id.


