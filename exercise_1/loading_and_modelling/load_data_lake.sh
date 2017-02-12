#!bin/bash
file1="Hospital General Information.csv"
file2="Timely and Effective Care - Hospital.csv"
file3="Readmissions and Deaths - Hospital.csv"
file4="Measure Dates.csv"

if [-f $hvpb_hcahps_05_28_2015.csv]; then
	mv hvpb_hcahps_05_28_2015.csv hvpb_hcahps_11_10_2016.csv
fi

file5="hvbp_hcahps_11_10_2016.csv"

tail -n +2 "$file1" >hospitals.csv
tail -n +2 "$file2" >effective_care.csv
tail -n +2 "$file3" >readmissions.csv
tail -n +2 "$file4" >measures.csv
tail -n +2 "$file5" >survey_responses.csv


