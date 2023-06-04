SELECT action_date, name AS person_name FROM person
    INNER JOIN (SELECT order_date AS action_date, person_id AS person_id FROM person_order
INTERSECT
SELECT visit_date, person_id FROM person_visits) AS v1
    ON person.id = v1.person_id
ORDER BY action_date ASC, person_name DESC