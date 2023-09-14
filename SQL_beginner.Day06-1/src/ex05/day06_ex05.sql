comment on table person_discounts is 'Таблица person_discounts';
comment on column person_discounts.id is 'ID таблицы person_discounts';
comment on column person_discounts.person_id is 'Колонка с ID человека';
comment on column person_discounts.pizzeria_id is 'Колонка с ID пицерией';
comment on column person_discounts.discount is 'Колонка со скидками';

-- SELECT count(*) = 5 as check
-- FROM   pg_description
-- WHERE  objoid = 'person_discounts'::regclass;