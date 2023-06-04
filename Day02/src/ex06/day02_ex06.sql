select pizza_name, p2.name
from menu
inner join (select * from person_order) po on menu.id = po.menu_id
inner join (select * from person  where name = 'Denis' or name = 'Anna') p on p.id = po.person_id
inner join (select * from pizzeria) p2 on p2.id = menu.pizzeria_id
order by 1, 2


