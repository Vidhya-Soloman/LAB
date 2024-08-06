new=open("new.txt","w")
f1=open("txt.txt","r")
f2=open("new.txt","a")
t=0
for i in f1:
 t+=1
 if t%2!=0:
  f2.write(i)