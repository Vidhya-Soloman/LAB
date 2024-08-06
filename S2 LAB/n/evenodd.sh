read -p "Enter a number" num
if [ $((num % 2)) -eq 0 ]
then
echo "even";
else
echo "not even";
fi