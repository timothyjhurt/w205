drop table my_readmissions;

create table my_readmissions as
select
  provider_id id,
  hospital_name name,
  state,
  measure_name,
  measure_id,
  compared_to_national comp_to_nat,
  score
from readmissions
where score > 0
and
score < 100
;
