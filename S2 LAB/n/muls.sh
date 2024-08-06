sum=0
for i in $(seq 10)
do
mul=$((i*5))
sum=$((sum+mul))
echo $i*5=$mul
done
echo $sum
for i in $(seq 10)
do
mul=$((i*3))
sum=$((sum+mul))
echo $i*3=$mul
done
echo $sum