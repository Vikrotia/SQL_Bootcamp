select COALESCE(person.name, '-') as person_name, COALESCE(visit_date, null) as visit_date,
       COALESCE(Pi.name, '-') as pizzeria_name
from person
full outer join
(select * from person_visits where visit_date between '2022-01-01'and '2022-01-03') as visit_date_1
on visit_date_1.person_id = person.id
full outer join (select id, name from pizzeria) as Pi
on visit_date_1.pizzeria_id = Pi.id
order by 1, 2, 3;



