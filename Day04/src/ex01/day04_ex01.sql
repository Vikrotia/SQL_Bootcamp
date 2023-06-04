SELECT v_persons_female.name as name from v_persons_female
union
SELECT v_persons_male.name as name from v_persons_male
ORDER BY name

