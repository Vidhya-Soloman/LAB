read -p "Enter the file1 name" f1
read -p "Enter the file2 name" f2
read -p "Enter the file3 name" f3
echo "Enter contents of f1"
cat>$f1
echo "Enter contents of f2"
cat>$f2
echo "difference of $f1 and $f2 is"
diff -a $f1 $f2 > $f3
cat $f3