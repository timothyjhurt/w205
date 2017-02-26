create table my_eff_care as
select
 provider_id id,
 hospital_name name,
 state,
 measure_id,
 measure_name,
 condition,
 score
from effective_care
where
 score not like 'Not%'
;
