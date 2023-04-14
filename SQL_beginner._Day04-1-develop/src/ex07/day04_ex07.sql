
-- insert into person_visits(id, person_id, pizzeria_id, visit_date) VALUES
-- ((SELECT MAX(id) + 1 FROM person_visits),
--        (SELECT id FROM person WHERE name = 'Dmitriy'),
--        (SELECT  p.id from ((select pizzeria.id from pizzeria join menu m
--            on pizzeria.id = m.pizzeria_id where m.price < 800)) as p  limit 1),
--        '2022-01-08');
-- закоменчено потому что выполнено

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;