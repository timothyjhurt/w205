import tweepy

consumer_key = "ichtW56Qhbv300uqkL1Hhib7n";
#eg: consumer_key ="ichtW56Qhbv300uqkL1Hhib7n";


consumer_secret = "ByZNM826tKFHYfD5DjG7mcsOclxt69cBx82IKQ2Y7X65QT7zaj";
#eg: consumer_secret = "ByZNM826tKFHYfD5DjG7mcsOclxt69cBx82IKQ2Y7X65QT7zaj";

access_token = "386660716-7LxdG9FEz4j2LzXSGcqWrOm4xAuKySqOxA5PRoFR";
#eg: access_token = "386660716-7LxdG9FEz4j2LzXSGcqWrOm4xAuKySqOxA5PRoFR";

access_token_secret = "oLbxilJET2U4go4nviNvob3Q1xkfqC3EAqGpjVcLKEZ7O";
#eg: access_token_secret = "oLbxilJET2U4go4nviNvob3Q1xkfqC3EAqGpjVcLKEZ7O";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



