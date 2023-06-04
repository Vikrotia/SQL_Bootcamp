select generated_date from v_generated_dates
left join person_visits on person_visits.visit_date = v_generated_dates.generated_date
where visit_date is null
