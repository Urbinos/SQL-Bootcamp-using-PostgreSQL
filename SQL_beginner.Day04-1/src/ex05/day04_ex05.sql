-- Создайте представление базы данных v_price_with_discount,
-- которое возвращает заказы человека с именами людей, названиями пиццы,
-- реальной ценой и расчетным столбцом discount_price(с примененной скидкой 10 % и
-- удовлетворяющей формуле price - price*0.1).
-- Результат отсортируйте по имени человека и названию пиццы и округлите столбец discount_priceдо целочисленного типа.

CREATE VIEW v_price_with_discount AS
(SELECT name,
       pizza_name,
       price,
       CAST(price - price * 0.1 AS INTEGER) AS discount_price
FROM person_order
         JOIN menu ON person_order.menu_id = menu.id
         JOIN person on person_order.person_id = person.id
ORDER BY name, pizza_name);

