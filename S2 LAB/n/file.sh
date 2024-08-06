read -p "Enter the name of the file" f1
echo "enter the contents of the file"
cat >$f1
read -p "Enter the name of the 2nd file:" f2
echo "enter the contents"
cat>$f2
echo "copying contents of f1 to f2"
cp $f1 $f2
cat $f2