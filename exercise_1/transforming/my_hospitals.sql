create table my_hospitals as
select
  provider_id id,
  state,
  hospital_name name,
  hospital_overall_rating hosp_over_rate,
  mortality_national_comparison mort_nat_comp,
  safety_of_care_national_comparison safe_nat_comp,
  readmission_national_comparison read_nat_comp,
  effectiveness_of_care_national_comparison eff_nat_comp,
  timeliness_of_care_national_comparison timeliness
from hospitals
where 
 meets_criteria_for_meaningful_use_of_ehrs like 'Y'
AND
 hospital_type like 'Acute%'
AND
 mortality_national_comparison not like 'Not%'
AND
 safety_of_care_national_comparison not like 'Not%'
AND
 readmission_national_comparison not like 'Not%'
AND
 effectiveness_of_care_national_comparison not like 'Not%'
AND
 timeliness_of_care_national_comparison not like 'Not%'
;
