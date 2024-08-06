read -p "Enter a number" num
f=1
for i in $(seq $num)
do
f=$((f*i))
done
echo $f