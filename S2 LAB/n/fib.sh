read -p "Enter a limit" l
a=0
b=1
echo $a
echo $b
i=2
for i in $(seq $((l-2)))
do
c=$((a+b))
a=$b
b=$c
echo "$c"
done
