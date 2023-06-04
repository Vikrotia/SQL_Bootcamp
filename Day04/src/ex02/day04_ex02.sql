CREATE VIEW v_generated_dates AS SELECT generate_series('2022-01-01'::timestamp,
    '2022-01-31'::timestamp, interval '1 day')::date as generated_date;
select * from v_generated_dates order by generated_date