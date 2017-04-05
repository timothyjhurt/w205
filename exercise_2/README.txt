Exercise 2 for Timothy Hurt

To run this application, git clone the exercise 2 repository into an Amazon Instance built off of the UCB MIDS W205 EX2-FULL AMI.
Make sure hadoop and postgres are running. (You can check using ps -ef|grep hadoop and ps -ef|grep postgres)
Make sure psycopg is installed (pip install psycopg2==2.6.2)
Inside the excercise 2 directory is another directory named: extweetwordcount. Change into that directory (cd extweetwordcount)
Once in the directory, type: sparse run

The application will run until you hit: Ctrl+C

At this point, if you would like to view results or word counts from postrges, you can change back to the exercise_2 directory (cd ..)
and type python finalresults.py to see all of the words and their counts in alphabetical order. 
If you want to look up a single word's count, type: python finalresults.py word
Where word is the word you want to look up.

If you want to find words that occured a certain number of times.
Type: python histogram.py X,Y
Where X is the lower bound (inclusive)
and Y is the upper bound (inclusive)
