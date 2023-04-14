select name, rating from pizzeria Pi
left join person_visits Pe
on Pi.id = Pe.pizzeria_id
where Pe.pizzeria_id IS NULL







