read -p "Enter a number" num
rev=0
n=$num
while [ $num -ne 0 ]
do
rem=$((num%10))
rev=$((rev*10+rem))
num=$((num/10))
done
if [ $rev -eq $n ]
then
echo "Palindrome"
else
echo "not palindrome"
fi