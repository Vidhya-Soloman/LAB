odd=open("odd.txt","w")
f1=open("num.txt","r")
f2=open("odd.txt","a")
for i in f1:
 i=int(i)
 if i%2!=0:
  i=str(i)
  f2.write(i)

even=open("even.txt","w")
f1=open("num.txt","r")
f2=open("even.txt","a")
for i in f1:
 i=int(i)
 if i%2==0:
  i=str(i)
  f2.write(i)
  