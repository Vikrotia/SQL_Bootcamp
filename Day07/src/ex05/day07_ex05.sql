SELECT p.name
FROM person_order
join person p on person_order.person_id = p.id
GROUP BY p.name
ORDER BY 1


