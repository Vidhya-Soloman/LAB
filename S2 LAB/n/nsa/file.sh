read -p "Enter file name" f1
echo "Enter"
cat >$f1
read -p "Enter file name" f2
echo "enter"
cat > $f2
read -p "Enter one more file name" f3
echo "$f1 and $ f2 difference is"
diff -a $f1 $f2 >$f3
cat $f3