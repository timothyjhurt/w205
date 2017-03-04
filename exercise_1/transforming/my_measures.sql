drop table my_measures;

create table my_measures as
select
  measure_name,
  measure_id,
  measure_start_date start_date,
  measure_end_date end_date
from measures
;
