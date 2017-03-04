drop table my_eff_care_best;
drop table my_read_best;
drop table my_hospitals_best;
drop table hosp_eff_read;
drop table hospitals_best;

create table my_eff_care_best as 
select id, name, avg(score) eff_score from my_eff_care 
group by id, name;

create table my_read_best as 
select id, name, avg(score) read_score from my_readmissions 
group by id, name;

create table my_hospitals_best as
select * from my_hospitals where hosp_over_rate like '5' AND
mort_nat_comp not like 'Below%'
AND
read_nat_comp not like 'Below%'
AND
eff_nat_comp not like 'Below%'
AND
timeliness not like 'Below%';

create table hosp_eff_read as 
select my_read.id, 
hosp.state,
my_read.name, 
read_score, 
eff_score
from my_hospitals_best hosp 
inner join my_eff_care_best eff on eff.id=hosp.id 
inner join my_read_best my_read on my_read.id=hosp.id;

create table hospitals_best as
select id, name, state, eff_score+read_score*3.2 score_tot 
from hosp_eff_read;

select * from hospitals_best order by score_tot desc limit 10;
