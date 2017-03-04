drop table hospital_variability;

create table hospital_variability as select measure_name, stddev(score) from my_eff_care where score <100 AND score >0 group by measure_name order by stddev(score) desc;
