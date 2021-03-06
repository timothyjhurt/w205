DROP TABLE jobs94_06;

CREATE EXTERNAL TABLE jobs94_06
(
zip string,
name string,
empflag string,
employees float,
payroll float,
annual_pay float,
establishments float,
year int
)


ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/project/jobs94_06'
;

DROP TABLE jobs07_09;

CREATE EXTERNAL TABLE jobs07_09
(
zip string,
name string,
empflag string,
emp_noise string,
employees float,
payroll_noise string,
payroll float,
annual_pay_noise string,
annual_pay float,
establishments float,
year int
)


ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/project/jobs07_09'
;

DROP TABLE jobs10_14;

CREATE EXTERNAL TABLE jobs10_14
(
zip string,
name string,
empflag string,
emp_noise string,
employees float,
payroll_noise string,
payroll float,
annual_pay_noise string,
annual_pay float,
establishments float,
city string,
state string,
county string,
year int
)


ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/project/jobs10_14'
;





DROP TABLE zip_lat_long;

CREATE EXTERNAL TABLE zip_lat_long
(
zip string,
zip_type string,
city string,
state string,
location_type string,
lat double,
long double,
location string,
decommisioned string,
tax_returns_filed int,
estimated_population int,
total_wages int
)


ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/project/zip_lat_long'
;
