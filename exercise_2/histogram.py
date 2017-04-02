from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

import sys
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()
if len(sys.argv)!=2:
    print('Please try again and make sure to enter two numbers like 3,4')    
else:
    num1=sys.argv[1].split(',')[0]
    num2=sys.argv[1].split(',')[1]
    try:
        cur.execute("SELECT word, count from tweetwordcount WHERE count BETWEEN %s AND %s ORDER BY count DESC",(num1, num2))
        records=cur.fetchall()
        for rec in records:
            print(rec)
    except:
        print("Either you didn't put two numbers or the table doesn't exist")

