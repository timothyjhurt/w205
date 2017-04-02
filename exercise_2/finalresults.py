from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

import sys
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()
if len(sys.argv)>1:
    word=sys.argv[1]
    cur.execute("SELECT word, count from tweetwordcount WHERE word=%s",(word,))
    records=cur.fetchall()
    for rec in records:
        print("Total number of occurances of the word '"+rec[0]+"':",rec[1])
else:
    cur.execute("SELECT * from tweetwordcount ORDER BY word")
    records=cur.fetchall()
    for rec in records:
        print(rec)

