test=open("test.txt","w")
f1=open("test.txt","a")
for i in range(0,10,2):
 i=int(i)
 if i%2==0:
  i=str(i)
  f1.write(i)