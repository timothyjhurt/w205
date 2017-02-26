create table good_hosp as select state, count(state) num_state from my_hospitals where hosp_over_rate=5 or hosp_over_rate=4 group by state;


create table tot_hosp as select state, count(state) den_state from my_hospitals group by state;

create table best_states select tot_hosp.state, num_state/den_state perc_good from tot_hosp inner join good_hosp on tot_hosp.state=good_hosp.state order by perc_good desc;
