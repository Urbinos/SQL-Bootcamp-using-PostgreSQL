-- Используйте два представления базы данных из упражнения № 00 и напишите SQL,
-- чтобы получить имена женщин и мужчин в одном списке.
-- Пожалуйста, установите порядок по имени человека.

SELECT name
FROM v_persons_female
UNION
SELECT name
FROM v_persons_male
ORDER BY name;


