select Me.pizza_name as pizza_name,  name as pizzeria_name, Me.price as price
from pizzeria
inner join (select pizza_name, pizzeria_id, price from menu) as Me
on Me.pizzeria_id = pizzeria.id
where Me.pizza_name = 'mushroom pizza' or Me.pizza_name = 'pepperoni pizza'
order by pizza_name, pizzeria_name
