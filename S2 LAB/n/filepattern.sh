read -p"Enter the name of the file" file
echo "Enter the content"
cat >$file
read -p "Enter the pattern to be searched" pt
grep -i "$pt" $file