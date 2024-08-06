read -p "Enter the file name" f1
echo "enter the contents"
cat >$f1
read -p "Enter the line number" ln
tail +$ln $f1