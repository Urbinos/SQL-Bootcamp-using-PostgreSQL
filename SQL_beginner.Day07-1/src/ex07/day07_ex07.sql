-- Напишите оператор SQL, который возвращает общий средний рейтинг (имя выходного атрибута — global_rating)
-- для всех ресторанов.
-- Округлите свой средний рейтинг до 4 плавающих чисел.

SELECT ROUND(AVG(rating), 4) AS global_rating
FROM pizzeria;
