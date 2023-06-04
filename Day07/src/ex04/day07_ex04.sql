SELECT p.name, COUNT(pizzeria_id) as count_of_visits
FROM person_visits
join person p on person_visits.person_id = p.id
GROUP BY p.name
HAVING COUNT(pizzeria_id) > 3
ORDER BY 2 DESC, 1



