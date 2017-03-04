drop table my_eff_care_best;
drop table my_read_best;
drop table my_hospitals_best;
drop table hosp_eff_read;
drop table hospitals_best;



create table my_eff_care_best as select id, name, avg(score) eff_score from my_eff_care where score < 100 AND score > 0 group by id, name order by avg(score) desc;

create table my_read_best as select id, name, avg(score) read_score from my_readmissions where score < 100 and score > 0 group by id, name order by avg(score) desc;

create table my_hospitals_best as
select * from my_hospitals where hosp_over_rate like '5' AND
mort_nat_comp not like 'Below%'
AND
read_nat_comp not like 'Below%'
AND
eff_nat_comp not like 'Below%'
AND
timeliness not like 'Below%';

create table hosp_eff_read as select my_read.name, my_read.id, read_score,  eff_score from my_hospitals_best hosp inner join my_eff_care_best eff on eff.id=hosp.id inner join my_read_best my_read on my_read.id=hosp.id;

create table hospitals_best as
select id, name, eff_score*read_score from hosp_eff_read order by eff_score*read_score desc;
