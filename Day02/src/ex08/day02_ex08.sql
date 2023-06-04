select name
from person
inner join (select * from person_order) po on person.id = po.person_id
inner join (select * from menu where pizza_name = 'pepperoni pizza' or pizza_name = 'mushroom pizza') m
on m.id = po.menu_id
where gender = 'male' and (address = 'Moscow' or address = 'Samara')
order by name desc