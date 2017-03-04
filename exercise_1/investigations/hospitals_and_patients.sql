drop table my_surv_float;
drop view agg_surv_scores;
drop table my_eff_care_best;
drop table my_read_best;
drop table my_hospitals_best;
drop table hosp_eff_read;
drop table hospitals_best;

create table my_eff_care_best as 
select id, name, avg(score) eff_score from my_eff_care 
group by id, name 
order by eff_score desc;

create table my_read_best as 
select id, name, avg(score) read_score from my_readmissions 
group by id, name order by read_score desc;

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
select id, name, state, eff_score*read_score score_tot from hosp_eff_read 
order by score_tot desc;

create table my_surv_float as
select
id,
name,
state,
cast(overall_score as float) score1,
cast(h_base_score as float) score2,
cast(h_cons_score as float) score3
from my_surveys;

create view agg_surv_scores as 
select id, name, state, score1*8+score2+score3*4 as score_tot 
from my_surv_float;

select corr(s.score_tot, h.score_tot) 
from hospitals_best h 
inner join agg_surv_scores s on h.id=s.id;
