-- DROP FUNCTION fnc_persons_male;
-- DROP FUNCTION fnc_persons_female;



create or replace function fnc_persons(in pgender varchar default 'female')
 returns table(id bigint, name varchar, age integer, gender varchar, address varchar) as
$code$
    select * from person where gender = pgender;

$code$
 language sql;


select *
from fnc_persons(pgender := 'male');

select *
from fnc_persons();