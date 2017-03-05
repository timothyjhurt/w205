drop table my_surv_float;
drop view agg_surv_scores;
drop table my_eff_care_best;
drop table my_read_best;
drop table hospitals_best;
drop table hosp_eff_read;
drop table normalize_eff;
drop table normalize_read;
drop table norm_read;
drop table norm_eff_care;

create table normalize_eff as 
select measure_name, min(score) min_score, max(score) max_score
from my_eff_care 
group by measure_name;

create table norm_eff_care as 
select id, name, eff.measure_name, score, min_score, max_score from my_eff_care eff
inner join normalize_eff norm on
eff.measure_name=norm.measure_name;

create table my_eff_care_best as 
select id, name, avg((score-min_score)/(max_score-min_score)) eff_score from norm_eff_care
group by id, name;

create table normalize_read as 
select measure_name, min(score) min_score, max(score) max_score
from my_readmissions 
group by measure_name;

create table norm_read as 
select id, name, readm.measure_name, score, min_score, max_score from my_readmissions readm
inner join normalize_read norm on
readm.measure_name=norm.measure_name;

create table my_read_best as 
select id, name, avg((score-min_score)/(max_score-min_score)) read_score from norm_read
group by id, name;

create table hosp_eff_read as 
select my_read.id, 
hosp.state,
my_read.name, 
read_score, 
hosp_over_rate,
eff_score
from my_hospitals hosp 
inner join my_eff_care_best eff on eff.id=hosp.id 
inner join my_read_best my_read on my_read.id=hosp.id
where hosp_over_rate >=0
and
hosp_over_rate <=5;

create table hospitals_best as
select id, name, state, eff_score+read_score*3.2+hosp_over_rate*20 score_tot 
from hosp_eff_read;

create table my_surv_float as
select
id,
name,
state,
cast(h_base_score as float) score1,
cast(h_cons_score as float) score2
from my_surveys;

create view agg_surv_scores as 
select id, name, state, score1+score2*4 as score_tot 
from my_surv_float;

select corr(s.score_tot, h.score_tot) 
from hospitals_best h 
inner join agg_surv_scores s on h.id=s.id;
