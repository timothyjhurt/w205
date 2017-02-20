#!/bin/bash

# save current dir
starting_dir=$(pwd)

# creating staging directories
mkdir ~/staging
mkdir ~/staging/exercise_1

# change to staging
cd ~/staging/exercise_1

# set URL
THE_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"

# get zip file
wget "$THE_URL" -O medicare_data.zip

# unzip file
unzip medicare_data.zip

# remove first line of files and rename
file1="Hospital General Information.csv"
tail -n +2 "$file1" >hospitals.csv

file2="Timely and Effective Care - Hospital.csv"
tail -n +2 "$file2" >effective_care.csv

file3="Readmissions and Deaths - Hospital.csv"
tail -n +2 "$file3" >readmissions.csv

file4="Measure Dates.csv"
tail -n +2 "$file4" >measures.csv

file5="hvbp_hcahps_11_10_2016.csv"
tail -n +2 "$file5" >survey_responses.csv


# create hdfs dir and move file into it
hdfs dfs ~mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -put $hospitals.csv /user/w205/hospital_compare/hospitals

hdfs dfs ~mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -put $effective_care.csv /user/w205/hospital_compare/effective_care

hdfs dfs ~mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -put $readmissions.csv /user/w205/hospital_compare/readmissions

hdfs dfs ~mkdir /user/w205/hospital_compare/measures
hdfs dfs -put $measures.csv /user/w205/hospital_compare/measures

hdfs dfs ~mkdir /user/w205/hospital_compare/survey_responses
hdfs dfs -put $survey_responses.csv /user/w205/hospital_compare/survey_responses

#change directory back to the original
cd $starting_dir

#clean exit
exit
