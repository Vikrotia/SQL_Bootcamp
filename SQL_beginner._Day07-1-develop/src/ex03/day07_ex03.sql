SELECT name, SUM(count)
FROM ((SELECT p.name as name, COUNT(person_id) as count, 'visit' as action_type
from person_visits
join pizzeria p on p.id = person_visits.pizzeria_id
GROUP BY p.name)
UNION ALL
(SELECT p2.name as name, COUNT(person_id) as count, 'order' as action_type
from person_order
join menu m on m.id = person_order.menu_id
join pizzeria p2 on p2.id = m.pizzeria_id
GROUP BY p2.name)
ORDER BY 3, 2 DESC) as hell
GROUP BY name
ORDER BY 2 DESC, 1 ASC;


