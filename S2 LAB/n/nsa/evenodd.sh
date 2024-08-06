read -p "Enter a number" num
if [ $((num % 2 )) -eq 0 ]
then
echo "EVEN"
else
echo "ODD"
fi