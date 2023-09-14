-- Зарегистрируйте новые заказы от Дениса и Ирины 24 февраля 2022 года на новое меню с «сицилийской пиццей».

INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT MAX(id) + 1 FROM person_order),
        (SELECT id FROM person WHERE name = 'Denis'),
        (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'), '2022-02-24');

INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT MAX(id) + 1 FROM person_order),
        (SELECT id FROM person WHERE name = 'Irina'),
        (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'), '2022-02-24');

        DELETE FROM menu WHERE id = '21';

select count(*) = 2 as check
from person_order
where order_date = '2022-02-24'
  and person_id in (6, 4)
  and menu_id = (select id from menu where pizza_name = 'sicilian pizza')

