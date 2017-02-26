create table my_hospitals_best as
select * from my_hospitals where hosp_over_rate like '5' AND
mort_nat_comp not like 'Below%'
AND
read_nat_comp not like 'Below%'
AND
eff_nat_comp not like 'Below%'
AND
timeliness not like 'Below%'

create table hosp_eff_read as 
select my_read.name, my_read.id, my_read.score read_score, eff.score eff_score 
from my_eff_care eff inner join my_hospitals_best hosp on eff.id=hosp.id 
inner join my_read_best my_read on my_read.id=eff.id;

create table best_hospitals as 
select id, name, eff_score, avg(read_score) 
from hosp_eff_read 
where eff_score<100 
group by id, name, eff_score 
order by eff_score desc, avg(read_score) desc;
