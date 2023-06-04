select date::date as missing_date
from generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, interval '1 day') date
left join (select * from person_visits where person_id = 1 or person_id = 2) Pe
on date = Pe.visit_date
where Pe.visit_date is null
order by visit_date







