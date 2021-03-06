drop table my_eff_care;

create table my_eff_care as
select
 provider_id id,
 hospital_name name,
 state,
 measure_id,
 measure_name,
 condition,
 cast(score as float) score
from effective_care
where
 score >= 0
 AND
 score <= 1400
;
