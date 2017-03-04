drop table my_surv_float;
drop view agg_surv_scores;

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
