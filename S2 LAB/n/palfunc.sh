pal()
{
n=$1
num=$n
while [ $n -ne 0 ]
do
rem=$((n%10))
rev=$((rev*10+rem))
n=$((n/10))
done
if [ $rev -eq $num ]
then
echo "Palindrome"
else
echo "not"
fi
}
pal 123