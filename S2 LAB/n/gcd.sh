read -p "Enter two numbers" a b
m=$a
if [ $b -lt $m ]
then
m=$b
fi
while [ $m -gt 0 ]
do
x=$((a%m))
y=$((b%m))
if [ $x -eq 0 -a $y -eq 0 ]
then 
echo $m
break
fi
m=$((m-1))
done
l=$((a*b/m))
echo $l