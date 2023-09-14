CREATE TABLE nodes
(
    point1 CHAR,
    point2 CHAR,
    cost   INT
);

INSERT INTO nodes (point1, point2, cost)
VALUES ('A', 'B', 10),
       ('B', 'A', 10),
       ('B', 'C', 35),
       ('C', 'B', 35),
       ('B', 'D', 25),
       ('D', 'B', 25),
       ('C', 'D', 30),
       ('D', 'C', 30),
       ('C', 'A', 15),
       ('A', 'C', 15),
       ('D', 'A', 20),
       ('A', 'D', 20);

CREATE VIEW v_tours_all_cities AS
WITH RECURSIVE recursive_tour AS (
    SELECT point1::bpchar AS tour,
           point1         AS last_point,
           0              AS sum
    FROM nodes
    WHERE point1 = 'A'

    UNION

    SELECT l.tour || ',' || r.point2 AS tour,
           r.point2                  AS last_point,
           l.sum + r.cost            AS sum
    FROM nodes AS r
             join recursive_tour AS l
                  on l.last_point = r.point1
    WHERE l.tour NOT LIKE '%' || r.point2 || '%'
)
SELECT *
FROM recursive_tour
WHERE length(tour) = 7;

WITH final_tours AS
         (SELECT t.sum + nodes.cost                  AS total_cost,
                 '{' || tour || ',' || point2 || '}' AS tour
          FROM v_tours_all_cities AS t
                   JOIN nodes ON t.last_point = nodes.point1
          WHERE nodes.point2 = 'A')
SELECT *
FROM final_tours
WHERE total_cost = (SELECT MIN(total_cost) FROM final_tours)
ORDER BY total_cost, tour;


