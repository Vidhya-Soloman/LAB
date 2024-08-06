#CHECKING WHETHER CONNECTED TO THE DATABASE OR NOT

import pymongo
DEFAULT_CONNECTION_URL="mongodb://localhost:27017"
client=pymongo.MongoClient(DEFAULT_CONNECTION_URL)
print(client);



#CONNECTING TO THE EXISTING DATABASE COLLEGE
#COLLECTION NAME STUDLIST

import pymongo
a=pymongo.MongoClient("mongodb://localhost:27017/")
db=a['college']
col=db['studlist']

#PYTHON CODE

x=db.studlist.find({"gender":"female"})
for i in x:
 print(i)