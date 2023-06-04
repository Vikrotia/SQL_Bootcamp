create or replace function fnc_person_visits_and_eats_on_date(in pperson
    varchar default 'Dmitriy', in pprice
    numeric default 500,in pdate
    date default '2022-01-08')
 returns table(name varchar) as
$code$
    BEGIN

    RETURN QUERY  (select DISTINCT pizzeria.name from pizzeria
        join menu m on pizzeria.id = m.pizzeria_id
        join person_order po on m.id = po.menu_id
        join person p on p.id = po.person_id
        where p.name = pperson and m.price < pprice and po.order_date = pdate);
END;
$code$
 language plpgsql;

-- DROP FUNCTION fnc_person_visits_and_eats_on_date;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);
SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');