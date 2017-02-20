DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
 provider_id string,
 hospital_name string,
 address string,
 city string,
 state string,
 zip_Code string,
 county_name string,
 phone_number string,
 hospital_type string,
 hospital_ownership string,
 emergency_services string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals'
;


DROP TABLE effective_care;

CREATE EXTERNAL TABLE effective_care
(
 provider_id string,
 hospital_name string,
 address string,
 city string,
 state string,
 zip_code string,
 county_name string,
 phone_number string,
 condition string,
 measure_id string,
 measure_name string,
 score string,
 sample string,
 footnote string,
 measure_start_date string,
 measure_end_date string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care'
;


DROP TABLE measures;

CREATE EXTERNAL TABLE measures
(
 measure_name string,
 measure_id string,
 measure_start_quarter string,
 measure_start_date string,
 measure_end_quarter string,
 measure_end_date string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures'
;


DROP TABLE readmissions;

CREATE EXTERNAL TABLE readmissions
(
 provider_id string,
 hospital_name string,
 address string,
 city string,
 state string,
 zip_code string,
 county_name string,
 phone_number string,
 measure_name string,
 measure_id string,
 compared_to_national string,
 denominator string,
 score string,
 lower_estimate string,
 higher_estimate string,
 footnote string,
 measure_start_date string,
 measure_end_date string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions'
;


DROP TABLE survey_responses;

CREATE EXTERNAL TABLE survey_responses
(
 provider_number string,
 hospital_name string,
 address string,
 city string,
 state string,
 zip_code string,
 county_name string,
 communication_with_nurses_achievement_points string,
 communication_with_nurses_improvement_points string,
 communication_with_nurses_dimension_score string,
 communication_with_doctors_achievement_points string,
 communication_with_doctors_improvement_points string,
 communication_with_doctors_dimension_score string,
 responsiveness_of_hospital_staff_achievement_points string,
 responsiveness_of_hospital_staff_improvement_points string,
 responsiveness_of_hospital_staff_dimension_score string,
 pain_management_achievement_points string,
 pain_management_improvement_points string,
 pain_management_dimension_score string,
 communication_about_medicines_achievement_points string,
 communication_about_medicines_improvement_points string,
 communication_about_medicines_dimensio_score string,
 cleanliness_and_quietness_of_hospital_environment_achievement_points string,
 cleanliness_and_quietness_of_hospital_environment_improvement_points string,
 cleanliness_and_quietness_of_hospital_environment_dimension_score string,
 discharge_information_achievement_points string,
 discharge_information_improvement_points string,
 discharge_information_dimension_score string,
 overall_rating_of_hospital_achievement_points string,
 overall_rating_of_hospital_improvement_points string,
 overall_rating_of_hospital_dimension_score string,
 hcahps_base_score string,
 hcahps_consistency_score string
)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/survey_responses'
;
