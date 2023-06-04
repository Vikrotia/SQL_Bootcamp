create materialized view mv_dmitriy_visits_and_eats as select * from (select pizzeria.name
from pizzeria
inner join (select * from person_visits where visit_date = '2022-01-08') pv on pizzeria.id = pv.pizzeria_id
inner join (select * from person where name = 'Dmitriy') p on pv.person_id = p.id
inner join (select * from menu where price < 800) m on pizzeria.id = m.pizzeria_id) as new