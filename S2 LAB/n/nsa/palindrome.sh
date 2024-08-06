read -p "Enter a number" num
n=$num
while [ $num -ne 0 ]
do
rem=$((num%10))
rev=$((rev*10+rem))
num=$((num/10))
done
if [ $n -eq $rev ]
then
echo "Palindrome"
else
echo "not"
fi