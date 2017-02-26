
create table my_surveys as
select
  provider_number id,
  state,
  hospital_name name,
  overall_rating_of_hospital_dimension_score over_rate_score,
  hcahps_base_score h_base_score,
  hcahps_consistency_score h_cons_score
from survey_responses
where
 overall_rating_of_hospital_dimension_score not like 'Not%'
AND
 hcahps_base_score not like 'Not%'
AND
 hcahps_consistency_score not like 'Not%'
;
