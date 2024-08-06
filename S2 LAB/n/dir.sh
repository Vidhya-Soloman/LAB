read -p "enter your directory" dir
for filename in "C:\Users\Vidhiya\OneDrive\Desktop\dir"
do 
if [ -d "$filename" ]
then
echo "exist";
else
echo "not";
fi
done