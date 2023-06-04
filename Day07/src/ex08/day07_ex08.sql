SELECT address, p.name, COUNT(person_id) as count_of_orders
FROM person
join person_order po on person.id = po.person_id
join menu m on m.id = po.menu_id
join pizzeria p on p.id = m.pizzeria_id
GROUP BY address, p.name
ORDER BY 1, 2



