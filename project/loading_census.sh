#!/bin/bash

#save current dir
starting_dir=$(pwd)

#creating staging directories
mkdir ~/staging
mkdir ~/staging/project

# change to staging
cd ~/staging/project

# set URL
THE_URL2014="https://www2.census.gov/programs-surveys/cbp/datasets/2014/zbp14totals.zip"
THE_URL2013="https://www2.census.gov/programs-surveys/cbp/datasets/2013/zbp13totals.zip"
THE_URL2012="https://www2.census.gov/programs-surveys/cbp/datasets/2012/zbp12totals.zip"
THE_URL2011="https://www2.census.gov/programs-surveys/cbp/datasets/2011/zbp11totals.zip"
THE_URL2010="https://www2.census.gov/programs-surveys/cbp/datasets/2010/zbp10totals.zip"
THE_URL2009="https://www2.census.gov/programs-surveys/cbp/datasets/2009/zbp09totals.zip"
THE_URL2008="https://www2.census.gov/programs-surveys/cbp/datasets/2008/zbp08totals.zip"
THE_URL2007="https://www2.census.gov/programs-surveys/cbp/datasets/2007/zbp07totals.zip"
THE_URL2006="https://www2.census.gov/programs-surveys/cbp/datasets/2006/zbp06totals.zip"
THE_URL2005="https://www2.census.gov/programs-surveys/cbp/datasets/2005/zbp05totals.zip"
THE_URL2004="https://www2.census.gov/programs-surveys/cbp/datasets/2004/zbp04totals.zip"
THE_URL2003="https://www2.census.gov/programs-surveys/cbp/datasets/2003/zbp03totals.zip"
THE_URL2002="https://www2.census.gov/programs-surveys/cbp/datasets/2002/zbp02totals.zip"
THE_URL2001="https://www2.census.gov/programs-surveys/cbp/datasets/2001/zbp01totals.zip"
THE_URL2000="https://www2.census.gov/programs-surveys/cbp/datasets/2000/zbp00totals.zip"
THE_URL1999="https://www2.census.gov/programs-surveys/cbp/datasets/1999/zbp99totals.zip"
THE_URL1998="https://www2.census.gov/programs-surveys/cbp/datasets/1998/zbp98totals.zip"
THE_URL1997="https://www2.census.gov/programs-surveys/cbp/datasets/1997/zbp97totals.zip"
THE_URL1996="https://www2.census.gov/programs-surveys/cbp/datasets/1996/zbp96totals.zip"
THE_URL1995="https://www2.census.gov/programs-surveys/cbp/datasets/1995/zbp95totals.zip"
THE_URL1994="https://www2.census.gov/programs-surveys/cbp/datasets/1994/zbp94totals.zip"




# get zip file
wget "$THE_URL1994" -O 1994.zip


# unzip file
unzip 1994.zip

# remove first line of files and rename

file1="zbp94totals.txt"

mv "$file1" "1994.csv"
tail -n +2 "1994.csv" > "jobs_94.csv"
rm 1994.zip
rm 1994.csv

year=1994
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_94.csv > jobs94.csv
rm jobs_94.csv



# get zip file

wget "$THE_URL1995" -O 1995.zip


# unzip file

unzip 1995.zip

# remove first line of files and rename

file1="zbp95totals.txt"

mv "$file1" "1995.csv"
tail -n +2 "1995.csv" > "jobs_95.csv"
rm 1995.zip
rm 1995.csv


year=1995
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_95.csv > jobs95.csv
rm jobs_95.csv




# get zip file

wget "$THE_URL1996" -O 1996.zip


# unzip file

unzip 1996.zip

# remove first line of files and rename

file1="zbp96totals.txt"

mv "$file1" "1996.csv"
tail -n +2 "1996.csv" > "jobs_96.csv"
rm 1996.zip
rm 1996.csv

year=1996
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_96.csv > jobs96.csv
rm jobs_96.csv



# get zip file

wget "$THE_URL1997" -O 1997.zip


# unzip file

unzip 1997.zip

# remove first line of files and rename

file1="zbp97totals.txt"

mv "$file1" "1997.csv"
tail -n +2 "1997.csv" > "jobs_97.csv"
rm 1997.zip
rm 1997.csv

year=1997
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_97.csv > jobs97.csv
rm jobs_97.csv



# get zip file

wget "$THE_URL1998" -O 1998.zip


# unzip file

unzip 1998.zip

# remove first line of files and rename

file1="zbp98totals.txt"

mv "$file1" "1998.csv"
tail -n +2 "1998.csv" > "jobs_98.csv"
rm 1998.zip
rm 1998.csv

year=1998
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_98.csv > jobs98.csv
rm jobs_98.csv



# get zip file

wget "$THE_URL1999" -O 1999.zip


# unzip file

unzip 1999.zip

# remove first line of files and rename

file1="zbp99totals.txt"

mv "$file1" "1999.csv"
tail -n +2 "1999.csv" > "jobs_99.csv"
rm 1999.zip
rm 1999.csv

year=1999
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_99.csv > jobs99.csv
rm jobs_99.csv



# get zip file

wget "$THE_URL2000" -O 2000.zip


# unzip file

unzip 2000.zip

# remove first line of files and rename

file1="zbp00totals.txt"

mv "$file1" "2000.csv"
tail -n +2 "2000.csv" > "jobs_00.csv"
rm 2000.zip
rm 2000.csv

year=2000
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_00.csv > jobs00.csv
rm jobs_00.csv




# get zip file

wget "$THE_URL2001" -O 2001.zip


# unzip file

unzip 2001.zip

# remove first line of files and rename

file1="zbp01totals.txt"

mv "$file1" "2001.csv"
tail -n +2 "2001.csv" > "jobs_01.csv"
rm 2001.zip
rm 2001.csv

year=2001
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_01.csv > jobs01.csv
rm jobs_01.csv




# get zip file

wget "$THE_URL2002" -O 2002.zip


# unzip file

unzip 2002.zip

# remove first line of files and rename

file1="zbp02totals.txt"

mv "$file1" "2002.csv"
tail -n +2 "2002.csv" > "jobs_02.csv"
rm 2002.zip
rm 2002.csv

year=2002
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_02.csv > jobs02.csv
rm jobs_02.csv




# get zip file

wget "$THE_URL2003" -O 2003.zip


# unzip file

unzip 2003.zip

# remove first line of files and rename

file1="zbp03totals.txt"

mv "$file1" "2003.csv"
tail -n +2 "2003.csv" > "jobs_03.csv"
rm 2003.zip
rm 2003.csv

year=2003
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_03.csv > jobs03.csv
rm jobs_03.csv



# get zip file

wget "$THE_URL2004" -O 2004.zip


# unzip file

unzip 2004.zip

# remove first line of files and rename

file1="zbp04totals.txt"

mv "$file1" "2004.csv"
tail -n +2 "2004.csv" > "jobs_04.csv"
rm 2004.zip
rm 2004.csv

year=2004
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_04.csv > jobs04.csv
rm jobs_04.csv


# get zip file

wget "$THE_URL2005" -O 2005.zip


# unzip file

unzip 2005.zip

# remove first line of files and rename

file1="zbp05totals.txt"

mv "$file1" "2005.csv"
tail -n +2 "2005.csv" > "jobs_05.csv"
rm 2005.zip
rm 2005.csv

year=2005
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_05.csv > jobs05.csv
rm jobs_05.csv


# get zip file

wget "$THE_URL2006" -O 2006.zip


# unzip file

unzip 2006.zip

# remove first line of files and rename

file1="zbp06totals.txt"

mv "$file1" "2006.csv"
tail -n +2 "2006.csv" > "jobs_06.csv"
rm 2006.zip
rm 2006.csv


year=2006
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$9=y; print}' jobs_06.csv > jobs06.csv
rm jobs_06.csv




# get zip file

wget "$THE_URL2007" -O 2007.zip


# unzip file

unzip 2007.zip

# remove first line of files and rename

file1="zbp07totals.txt"

mv "$file1" "2007.csv"
tail -n +2 "2007.csv" > "jobs_07.csv"
rm 2007.zip
rm 2007.csv

year=2007
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$12=y; print}' jobs_07.csv > jobs07.csv
rm jobs_07.csv




# get zip file

wget "$THE_URL2008" -O 2008.zip


# unzip file

unzip 2008.zip

# remove first line of files and rename

file1="zbp08totals.txt"

mv "$file1" "2008.csv"
tail -n +2 "2008.csv" > "jobs_08.csv"
rm 2008.zip
rm 2008.csv

year=2008
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$12=y; print}' jobs_08.csv > jobs08.csv
rm jobs_08.csv



# get zip file

wget "$THE_URL2009" -O 2009.zip


# unzip file

unzip 2009.zip

# remove first line of files and rename

file1="zbp09totals.txt"

mv "$file1" "2009.csv"
tail -n +2 "2009.csv" > "jobs_09.csv"
rm 2009.zip
rm 2009.csv

year=2009
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$12=y; print}' jobs_09.csv > jobs09.csv
rm jobs_09.csv



# get zip file

wget "$THE_URL2010" -O 2010.zip


# unzip file

unzip 2010.zip

# remove first line of files and rename

file1="zbp10totals.txt"

mv "$file1" "2010.csv"
tail -n +2 "2010.csv" > "jobs_10.csv"
rm 2010.zip
rm 2010.csv

year=2010
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$15=y; print}' jobs_10.csv > jobs10.csv
rm jobs_10.csv


# get zip file

wget "$THE_URL2011" -O 2011.zip


# unzip file

unzip 2011.zip

# remove first line of files and rename

file1="zbp11totals.txt"

mv "$file1" "2011.csv"
tail -n +2 "2011.csv" > "jobs_11.csv"
rm 2011.zip
rm 2011.csv

year=2011
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$15=y; print}' jobs_11.csv > jobs11.csv
rm jobs_11.csv


# get zip file

wget "$THE_URL2012" -O 2012.zip


# unzip file

unzip 2012.zip

# remove first line of files and rename

file1="zbp12totals.txt"

mv "$file1" "2012.csv"
tail -n +2 "2012.csv" > "jobs_12.csv"
rm 2012.zip
rm 2012.csv


year=2012
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$15=y; print}' jobs_12.csv > jobs12.csv
rm jobs_12.csv


# get zip file

wget "$THE_URL2013" -O 2013.zip


# unzip file

unzip 2013.zip

# remove first line of files and rename

file1="zbp13totals.txt"

mv "$file1" "2013.csv"
tail -n +2 "2013.csv" > "jobs_13.csv"
rm 2013.zip
rm 2013.csv

year=2013
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$15=y; print}' jobs_13.csv > jobs13.csv
rm jobs_13.csv


# get zip file

wget "$THE_URL2014" -O 2014.zip


# unzip file

unzip 2014.zip

# remove first line of files and rename

file1="zbp14totals.txt"

mv "$file1" "2014.csv"
tail -n +2 "2014.csv" > "jobs_14.csv"
rm 2014.zip
rm 2014.csv


year=2014
awk -v y="$year" -F"," 'BEGIN { OFS = "," } {sub(/\r/,"")}1 {$15=y; print}' jobs_14.csv > jobs14.csv
rm jobs_14.csv


# make all of the concatenated files
cat jobs94.csv jobs95.csv jobs96.csv jobs97.csv jobs98.csv jobs99.csv jobs00.csv jobs01.csv jobs02.csv jobs03.csv jobs04.csv jobs05.csv jobs06.csv > jobs94_06.csv

cat jobs07.csv jobs08.csv jobs09.csv > jobs07_09.csv

cat jobs10.csv jobs11.csv jobs12.csv jobs13.csv jobs14.csv > jobs10_14.csv


# create hdfs dir and move file into it

hdfs dfs -mkdir /user/w205/project

hdfs dfs -mkdir /user/w205/project/jobs94_06
hdfs dfs -put "jobs94_06.csv" /user/w205/project/jobs94_06


hdfs dfs -mkdir /user/w205/project/jobs07_09
hdfs dfs -put "jobs07_09.csv" /user/w205/project/jobs07_09



hdfs dfs -mkdir /user/w205/project/jobs10_14
hdfs dfs -put "jobs10_14.csv" /user/w205/project/jobs10_14

# delete the leftovers
rm *

#change directory back to the original

cd $starting_dir



#clean exit

exit
