drop table hospital_variability;

create table hospital_variability as 
select measure_name, stddev(score) score_vary
from my_eff_care 
group by measure_name 
order by score_vary desc;

select * from hospital_variability 
order by score_vary desc limit 10;
