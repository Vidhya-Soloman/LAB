read -p "Enter a number" num
for i in $(seq $num)
do 
if [ $((num%i)) -eq 0 ]
then
echo $i
fi
done