read -p "Enter a string" s
ns=""
l=${#s}
for i in $(seq $l -1 1)
do
a=$(expr substr "$s" $i 1)
ns="$ns$a"
done 
echo $ns