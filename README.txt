UCB 205 Repository for Labs and Exercises

Create an EC2 instance using the following AMI. 
AMI Name: UCB MIDS W205 EX2-FULL
AMI ID: ami-d4dd4ec3

Also attach and mount the EBS volume at /data

Once your instance is running and the EBS volume is mounted, type the following commands, in order:

/root/start-hadoop.sh
/data/start_postgres.sh
mkdir "W205 GIT"
cd "W205 GIT"
git clone https://github.com/yannie30/W205.git
install -U nltk
python -m nltk.downloader punkt

cd "W205 GIT"/W205/FinalProject/
bash loading_census_postgres.sh

at this point you should duplicate your session and have one session in the directory:
/root/"W205 GIT"/W205/FinalProject/extweetcount/
run this command:
sparse run

and the other in
/root/"W205 GIT"/W205/FinalProject/ZipCode
run this command:
python bot25top25.py
