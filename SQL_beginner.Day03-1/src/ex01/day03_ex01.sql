SELECT id AS menu_id FROM menu
WHERE NOT EXISTS
    (SELECT menu_id FROM person_order WHERE menu_id = menu.id)
ORDER BY menu_id;

-- Пожалуйста, найдите все идентификаторы меню, которые никем не заказаны.
-- Результат должен быть отсортирован по идентификаторам.