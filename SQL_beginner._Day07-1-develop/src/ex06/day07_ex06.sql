SELECT p.name, COUNT(person_id) as count_of_orders,  ROUND(AVG(m.price), 2) as average_price,
       MAX(price) as max_price, MIN(price) as min_price
from person_order
join menu m on m.id = person_order.menu_id
join pizzeria p on m.pizzeria_id = p.id
GROUP BY p.name
ORDER BY p.name






