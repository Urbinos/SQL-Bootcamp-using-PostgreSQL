drop sequence if exists seq_person_discounts cascade;

create sequence seq_person_discounts start WITH 1;
select setval('seq_person_discounts', (SELECT max(id) FROM person_discounts));
alter table person_discounts
alter column id set default nextval('seq_person_discounts');

insert into person_discounts (person_id, pizzeria_id, discount)
values (4, 4, 12);

select count(*)=1 as check1,
    max("start_value") = 1 as check2,
    max("last_value") > 5 as check3
from pg_sequences
where sequencename  = 'seq_person_discounts'